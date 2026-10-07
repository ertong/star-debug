import 'dart:io';

import 'package:drift/drift.dart' hide isNull, isNotNull;
import 'package:drift/native.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:star_debug/controller/dish_log_controller.dart';
import 'package:star_debug/db/database.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/shared_prefs.dart';
import 'package:star_debug/utils/snapshot.dart';
import 'package:star_debug/utils/wait_notify.dart';

class _ImmediateWait extends WaitNotify {
  @override
  Future<void> waitOrTimeout(int mSec) async {}
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late Database db;
  late DishLogController controller;
  late int now;

  Snapshot snapshot({
    String dishId = 'dish-1',
    int? uptime = 1000,
    int? timestamp,
    bool imported = false,
  }) {
    final ts = timestamp ?? now;
    return Snapshot(
      timestamp: ts,
      dishTs: ts,
      dishGetStatus: DishGetStatusResponse(
        deviceInfo: DeviceInfo(id: dishId),
        deviceState: uptime == null
            ? null
            : DeviceState(uptimeS: Int64(uptime)),
      ),
      debug_data: imported
          ? {
              'dish': {
                'timestamp': ts ~/ 1000,
                'rawStatus': {
                  'deviceInfo': {'id': dishId},
                },
              },
            }
          : null,
    );
  }

  DishLogController newController() =>
      DishLogController(now: () => now)..waitNotify = _ImmediateWait();

  Future<void> automatic(Snapshot snap) async {
    // Drive the real save loop deterministically without its background timer.
    controller.isRunning = true;
    controller.notify(snap);
    await controller.run();
  }

  Future<List<DishLog>> logs([String dishId = 'dish-1']) =>
      (db.select(db.dishLogs)..where((t) => t.dishId.equals(dishId))).get();

  Future<void> expectLatest(String dishId) async {
    final dish = await db.dishesDao.getDish(dishId).getSingle();
    final latest = await db.dishesDao.getLatestDishLog(dishId).getSingle();
    expect(dish.latestLogId, latest.id);
    expect(dish.latestLogTimestamp, latest.timestamp);
  }

  setUp(() async {
    now = DateTime.utc(2026, 10, 7, 12).millisecondsSinceEpoch;
    db = Database.connect(DatabaseConnection(NativeDatabase.memory()));
    R = Preloaded();
    R.db = db;
    SharedPreferences.setMockInitialValues({});
    R.prefs = SharedPrefs();
    await R.prefs.initialized.future;
    controller = newController();
  });

  tearDown(() async {
    await db.close();
  });

  test('ordinary live updates replace the same automatic entry', () async {
    await automatic(snapshot());
    final first = (await logs()).single;
    now += 6000;
    await automatic(snapshot(uptime: 1006));
    final updated = (await logs()).single;
    expect(updated.id, first.id);
    expect(updated.timestamp, now);
    expect(
      Snapshot.ofRow(updated).dishGetStatus!.deviceState.uptimeS,
      Int64(1006),
    );
    final dish = await db.dishesDao.getDish('dish-1').getSingle();
    expect(dish.lastAutomaticSnapshotTs, first.timestamp);
  });

  test('reboot preserves the preceding entry', () async {
    await automatic(snapshot());
    final first = (await logs()).single;
    now += 300000;
    await automatic(snapshot(uptime: 2));
    final rows = await logs();
    expect(rows, hasLength(2));
    expect(rows.first.dishStatusJson, first.dishStatusJson);
    expect(rows.last.forceStore, false);
    expect(
      Snapshot.ofRow(rows.last).dishGetStatus!.deviceState.uptimeS,
      Int64(2),
    );
    await expectLatest('dish-1');
  });

  test('repeated reboots coalesce until five minutes after creation', () async {
    await automatic(snapshot());
    final firstId = (await logs()).single.id;
    now += 6000;
    await automatic(snapshot(uptime: 5));
    now += 6000;
    await automatic(snapshot(uptime: 0));
    now += 281999;
    await automatic(snapshot(uptime: 281));
    expect((await logs()).single.id, firstId);
    // More than five seconds since the previous write, exactly five minutes
    // since the first automatic entry was created.
    now += 6001;
    await automatic(snapshot(uptime: 287));
    expect(await logs(), hasLength(2));
    now += 6000;
    await automatic(snapshot(uptime: 293));
    expect(await logs(), hasLength(2));
  });

  test('duplicate and older statuses do not report a reboot', () async {
    await automatic(snapshot());
    final firstTs = now;
    now += 300000;
    await automatic(snapshot(uptime: 1300));
    final newerTs = now;
    now += 6000;
    await automatic(snapshot(uptime: 0, timestamp: newerTs));
    now += 6000;
    await automatic(snapshot(uptime: 0, timestamp: firstTs));
    now += 6000;
    await automatic(snapshot(uptime: 1318));
    expect(await logs(), hasLength(1));
  });

  test('missing uptime is ignored; zero detects reboot', () async {
    await automatic(snapshot());
    now += 300000;
    await automatic(snapshot(uptime: null));
    expect(await logs(), hasLength(1));
    now += 6000;
    await automatic(snapshot(uptime: 0));
    expect(await logs(), hasLength(2));
  });

  test('cooldown survives controller restart and updates', () async {
    await automatic(snapshot());
    now += 290000;
    await automatic(snapshot(uptime: 1290));
    controller = newController();
    now += 10000;
    await automatic(snapshot(uptime: 1));
    expect(await logs(), hasLength(2));
    controller = newController();
    now += 6000;
    await automatic(snapshot(uptime: 0));
    expect(await logs(), hasLength(2));
  });

  test('forced entries remain protected during cooldown', () async {
    await automatic(snapshot());
    now += 6000;
    await controller.forceStore(snapshot(uptime: 1006));
    final forced = (await logs()).single;
    expect(forced.forceStore, true);
    now += 6000;
    await automatic(snapshot(uptime: 1));
    expect((await logs()).single.dishStatusJson, forced.dishStatusJson);
    now += 288000;
    await automatic(snapshot(uptime: 289));
    expect(await logs(), hasLength(2));
    expect((await logs()).first.forceStore, true);
  });

  test('manual saves keep the one-minute replacement rule', () async {
    await automatic(snapshot());
    now += 6000;
    await controller.forceStore(snapshot());
    expect(await logs(), hasLength(1));
    now += 6000;
    await controller.forceStore(snapshot());
    expect(await logs(), hasLength(2));
    expect((await logs()).every((row) => row.forceStore), true);
  });

  test('automatic cooldown is independent for each dish', () async {
    await automatic(snapshot());
    now += 6000;
    await automatic(snapshot(dishId: 'dish-2', uptime: 2000));
    now += 294000;
    await automatic(snapshot(uptime: 1));
    await automatic(snapshot(dishId: 'dish-2', uptime: 1));
    expect(await logs(), hasLength(2));
    expect(await logs('dish-2'), hasLength(1));
    now += 6000;
    await automatic(snapshot(dishId: 'dish-2', uptime: 7));
    expect(await logs('dish-2'), hasLength(2));
  });

  test('coalesced live updates retain reboot detection', () async {
    await automatic(snapshot());
    now += 300000;
    controller.isRunning = true;
    controller.notify(snapshot(uptime: 1));
    now += 1000;
    controller.notify(snapshot(uptime: 1001));
    await controller.run();
    expect(await logs(), hasLength(2));
    final latest = await db.dishesDao.getLatestDishLog('dish-1').getSingle();
    expect(
      Snapshot.ofRow(latest).dishGetStatus!.deviceState.uptimeS,
      Int64(1001),
    );
  });

  test('UTC day change remains pending during cooldown', () async {
    now = DateTime.utc(2026, 10, 7, 23, 59).millisecondsSinceEpoch;
    await automatic(snapshot());
    now += 60000;
    await automatic(snapshot(uptime: 1060));
    expect(await logs(), hasLength(1));
    now += 240000;
    await automatic(snapshot(uptime: 1300));
    expect(await logs(), hasLength(2));
  });

  test('six-hour gap still creates a new automatic entry', () async {
    await automatic(snapshot());
    now += 6 * 60 * 60 * 1000 + 1;
    await automatic(snapshot(uptime: 22600));
    expect(await logs(), hasLength(2));
  });

  test('disabled automatic saving ignores live notifications', () async {
    R.prefs.data.autoStoreDiskLog = false;
    await automatic(snapshot());
    now += 300000;
    await automatic(snapshot(uptime: 1));
    expect(await logs(), isEmpty);
    await controller.forceStore(snapshot());
    expect(await logs(), hasLength(1));
  });

  test('automatic saves retain fifty entries per dish', () async {
    await automatic(snapshot(dishId: 'dish-2'));
    await controller.forceStore(snapshot(timestamp: now - 3600000));
    await controller.storeDebugData(
      snapshot(timestamp: now - 7200000, imported: true),
    );
    final protected = await logs();
    expect(protected, hasLength(2));
    now += 6000;
    final firstAutomaticTs = now;
    for (var i = 0; i < 51; i++) {
      await automatic(snapshot(uptime: 1000 - i));
      now += 300000;
    }
    final rows = await logs();
    final automaticRows = rows.where((row) => !row.forceStore).toList();
    expect(rows, hasLength(52));
    expect(automaticRows, hasLength(50));
    for (final saved in protected) {
      final retained = rows.singleWhere((row) => row.id == saved.id);
      expect(retained.forceStore, true);
      expect(retained.timestamp, saved.timestamp);
      expect(retained.dishStatusJson, saved.dishStatusJson);
      expect(retained.debugDataJson, saved.debugDataJson);
    }
    expect(automaticRows.first.timestamp, firstAutomaticTs + 300000);
    expect(await logs('dish-2'), hasLength(1));
    await expectLatest('dish-1');
    await expectLatest('dish-2');
  });

  test('manual and imported saves stay outside the cap', () async {
    for (var i = 0; i < 51; i++) {
      await controller.forceStore(snapshot());
      now += 6000;
    }
    expect(await logs(), hasLength(51));
    final previous = await logs();
    final oldImport = snapshot(timestamp: now - 3600000, imported: true);
    await controller.storeDebugData(oldImport);
    final withImport = await logs();
    expect(withImport, hasLength(52));
    expect(
      withImport.map((row) => row.id),
      containsAll(previous.map((row) => row.id)),
    );
    final imported = withImport.singleWhere(
      (row) => row.timestamp == oldImport.dishTs,
    );
    expect(imported.forceStore, true);
    expect(imported.debugDataJson, isNotNull);
    await expectLatest('dish-1');
    await controller.storeDebugData(snapshot(imported: true));
    expect(await logs(), hasLength(53));
    final newest = await db.dishesDao.getLatestDishLog('dish-1').getSingle();
    expect(newest.timestamp, now);
    await controller.storeDebugData(snapshot(imported: true));
    expect(await logs(), hasLength(53));
    expect(
      (await db.dishesDao.getLatestDishLog('dish-1').getSingle()).id,
      newest.id,
    );
    await expectLatest('dish-1');
  });

  test('equal timestamps retain newer ids', () async {
    for (var i = 0; i < 51; i++) {
      await db.dishLogs.insertReturning(
        DishLogsCompanion.insert(
          timestamp: now,
          dishId: 'dish-1',
          forceStore: false,
        ),
      );
    }
    await controller.forceStore(snapshot());
    final rows = await logs();
    expect(rows, hasLength(51));
    expect(rows.where((row) => !row.forceStore), hasLength(50));
    expect(rows.first.id, 2);
    expect(rows.last.id, 52);
    expect(rows.last.forceStore, true);
    await expectLatest('dish-1');
  });

  test('schema six migration prunes and sets the cooldown', () async {
    await db.close();
    final directory = await Directory.systemTemp.createTemp(
      'star-debug-history-',
    );
    addTearDown(() => directory.delete(recursive: true));
    final file = File('${directory.path}/sqlite.db');
    Database open() =>
        Database.connect(DatabaseConnection(NativeDatabase(file)));
    final before = open();
    final protected = await before.dishLogs.insertReturning(
      DishLogsCompanion.insert(
        timestamp: now - 3600000,
        dishId: 'dish-1',
        forceStore: true,
      ),
    );
    for (var i = 0; i < 52; i++) {
      await before.dishLogs.insertReturning(
        DishLogsCompanion.insert(
          timestamp: now + i * 1000,
          dishId: 'dish-1',
          forceStore: i == 51,
        ),
      );
    }
    await before.dishes.insertReturning(
      DishesCompanion.insert(
        dishId: 'dish-1',
        name: const Value('Keep this name'),
        latestLogId: Value(protected.id),
        latestLogTimestamp: Value(now),
      ),
    );
    await before.dishes.insertReturning(
      DishesCompanion.insert(dishId: 'empty'),
    );
    await before.customStatement(
      'ALTER TABLE dishes DROP COLUMN last_automatic_snapshot_ts',
    );
    await before.customStatement('PRAGMA user_version = 6');
    await before.close();
    final after = open();
    addTearDown(after.close);
    final rows = await after.select(after.dishLogs).get();
    expect(rows, hasLength(52));
    expect(rows.where((row) => !row.forceStore), hasLength(50));
    expect(rows.where((row) => row.forceStore), hasLength(2));
    expect(rows.any((row) => row.id == protected.id), true);
    final dish = await after.dishesDao.getDish('dish-1').getSingle();
    expect(dish.name, 'Keep this name');
    expect(dish.latestLogId, 53);
    expect(dish.latestLogTimestamp, now + 51000);
    expect(dish.lastAutomaticSnapshotTs, now + 50000);
    expect(
      (await after.dishesDao.getDish('empty').getSingle()).latestLogId,
      isNull,
    );
  });
}
