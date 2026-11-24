import 'dart:convert';
import 'dart:io';

import 'package:drift/drift.dart' hide isNull, isNotNull;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/controller/dish_log_controller.dart';
import 'package:star_debug/db/database.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/snapshot.dart';
import 'package:star_debug/utils/status_series.dart';
import 'package:star_debug/utils/status_series_codec.dart';

Database _open(File file) =>
    Database.connect(DatabaseConnection(NativeDatabase(file)));

StatusSeries _series({double first = 0.5}) => StatusSeries(
  times: [1700000000000, 1700000002500, 1700000005000],
  signalQuality: [first, null, 0.93],
  gpsSats: [12, 13, null],
  azimuth: [-12.34, -12.31, null],
  elevation: [61.5, 61.52, null],
  reboots: [2],
);

void _expectSeries(StatusSeries? actual, StatusSeries expected) {
  expect(actual, isNotNull);
  expect(actual!.times, expected.times);
  expect(actual.signalQuality, expected.signalQuality);
  expect(actual.gpsSats, expected.gpsSats);
  expect(actual.azimuth, expected.azimuth);
  expect(actual.elevation, expected.elevation);
  expect(actual.reboots, expected.reboots);
}

void main() {
  late Directory directory;
  late File file;

  setUp(() async {
    directory = await Directory.systemTemp.createTemp('star-debug-series-db-');
    file = File('${directory.path}/sqlite.db');
  });

  tearDown(() async {
    await directory.delete(recursive: true);
  });

  Snapshot live({StatusSeries? series, Map<String, dynamic>? imported}) =>
      Snapshot(
        timestamp: 1700000006000,
        dishTs: 1700000006000,
        dishGetStatus: DishGetStatusResponse(
          deviceInfo: DeviceInfo(id: 'dish-1'),
        ),
        statusSeries: series,
        debug_data: imported,
      );

  test('fresh database round-trips the series of a native row', () async {
    final db = _open(file);
    addTearDown(db.close);
    R = Preloaded();
    R.db = db;

    await DishLogController().forceStore(live(series: _series()));

    final row = (await db.select(db.dishLogs).get()).single;
    expect(row.debugDataJson, isNull);
    expect(row.statusSeries, isNotEmpty);
    _expectSeries(Snapshot.ofRow(row).statusSeries, _series());
  });

  test('a snapshot without samples stores SQL NULL', () async {
    final db = _open(file);
    addTearDown(db.close);
    R = Preloaded();
    R.db = db;
    final empty = StatusSeries(
      times: [],
      signalQuality: [],
      gpsSats: [],
      azimuth: [],
      elevation: [],
    );

    await DishLogController().forceStore(live(series: empty));

    final row = (await db.select(db.dishLogs).get()).single;
    expect(row.statusSeries, isNull);
    expect(Snapshot.ofRow(row).statusSeries, isNull);
  });

  test('updating a log replaces and clears its series', () async {
    final db = _open(file);
    addTearDown(db.close);
    R = Preloaded();
    R.db = db;
    var now = 1700000006000;
    final controller = DishLogController(now: () => now);
    final automatic = await db.dishLogs.insertReturning(
      DishLogsCompanion.insert(
        timestamp: now,
        dishId: 'dish-1',
        forceStore: false,
        statusSeries: Value(StatusSeriesCodec.toMsgPack(_series())),
      ),
    );
    await db.dishes.insertOne(
      DishesCompanion.insert(
        dishId: 'dish-1',
        latestLogId: Value(automatic.id),
        latestLogTimestamp: Value(now),
      ),
    );

    // A manual save within a minute updates the current automatic log.
    await controller.forceStore(live(series: _series(first: 0.25)));
    var row = (await db.select(db.dishLogs).get()).single;
    expect(row.id, automatic.id);
    _expectSeries(Snapshot.ofRow(row).statusSeries, _series(first: 0.25));

    controller.invalidateAll();
    await db.customStatement('UPDATE dish_logs SET force_store = 0');
    await controller.forceStore(live());
    row = (await db.select(db.dishLogs).get()).single;
    expect(row.id, automatic.id);
    expect(row.statusSeries, isNull);
  });

  test('a malformed stored series is ignored', () async {
    final db = _open(file);
    addTearDown(db.close);
    final status = DishGetStatusResponse(signalQuality: 0.5);
    final row = await db.dishLogs.insertReturning(
      DishLogsCompanion.insert(
        timestamp: 1700000000000,
        dishId: 'dish-1',
        forceStore: false,
        dishStatusJson: Value(status.writeToBuffer()),
        statusSeries: Value(Uint8List.fromList([0x81, 0xa1])),
      ),
    );

    final restored = Snapshot.ofRow(row);
    expect(restored.statusSeries, isNull);
    expect(restored.dishGetStatus?.signalQuality, 0.5);
  });

  test('imported JSON takes precedence over the series column', () async {
    final db = _open(file);
    addTearDown(db.close);
    R = Preloaded();
    R.db = db;
    final imported = {
      'capture': {
        'timestamp': 1700000006,
        'dishStatusTimestamp': 1700000006,
        'statusSeries': StatusSeriesCodec.toJson(_series()),
      },
      'dish': {
        'rawStatus': {
          'deviceInfo': {'id': 'dish-1'},
        },
      },
    };

    // The column holds a different series than the imported JSON.
    await DishLogController().forceStore(
      live(series: _series(first: 0.25), imported: imported),
    );

    final row = (await db.select(db.dishLogs).get()).single;
    expect(row.debugDataJson, jsonEncode(imported));
    expect(
      StatusSeriesCodec.fromMsgPack(row.statusSeries)?.signalQuality.first,
      0.25,
    );
    _expectSeries(Snapshot.ofRow(row).statusSeries, _series());
  });

  test('imported JSON without a series yields none', () async {
    final db = _open(file);
    addTearDown(db.close);
    final row = await db.dishLogs.insertReturning(
      DishLogsCompanion.insert(
        timestamp: 1700000040000,
        dishId: 'dish-imported',
        forceStore: true,
        debugDataJson: const Value(
          '{"dish":{"timestamp":1700000002,'
          '"rawStatus":{"deviceInfo":{"id":"dish-imported"}}}}',
        ),
        statusSeries: Value(StatusSeriesCodec.toMsgPack(_series())),
      ),
    );

    expect(Snapshot.ofRow(row).statusSeries, isNull);
  });

  Future<void> downgrade(Database db, int version) async {
    await db.customStatement('ALTER TABLE dish_logs DROP COLUMN status_series');
    if (version < 7) {
      await db.customStatement(
        'ALTER TABLE dishes DROP COLUMN last_automatic_snapshot_ts',
      );
    }
    if (version < 6) {
      for (final column in [
        'dish_obstruction_map',
        'obstruction_map_ts',
        'obstruction_map_api_version',
      ]) {
        await db.customStatement('ALTER TABLE dish_logs DROP COLUMN $column');
      }
    }
    await db.customStatement('PRAGMA user_version = $version');
  }

  for (final version in [3, 5, 6, 7]) {
    test('upgrades schema $version by adding an empty series column', () async {
      final before = _open(file);
      final status = DishGetStatusResponse(
        deviceInfo: DeviceInfo(id: 'dish-1'),
        signalQuality: 0.5,
      );
      final history = DishGetHistoryResponse(popPingDropRate: [0.1]);
      final inserted = await before.dishLogs.insertReturning(
        DishLogsCompanion.insert(
          timestamp: 1700000000000,
          dishId: 'dish-1',
          forceStore: false,
          dishStatusJson: Value(status.writeToBuffer()),
          dishHistoryJson: Value(history.writeToBuffer()),
        ),
      );
      await before.dishes.insertOne(
        DishesCompanion.insert(
          dishId: 'dish-1',
          latestLogId: Value(inserted.id),
          latestLogTimestamp: const Value(1700000000000),
        ),
      );
      await downgrade(before, version);
      await before.close();

      final after = _open(file);
      addTearDown(after.close);
      final row = (await after.select(after.dishLogs).get()).single;
      expect(row.id, inserted.id);
      expect(row.forceStore, false);
      expect(row.statusSeries, isNull);
      final restored = Snapshot.ofRow(row);
      expect(restored.statusSeries, isNull);
      expect(restored.dishGetStatus?.signalQuality, 0.5);
      expect(restored.dishGetHistory?.popPingDropRate, hasLength(1));
      final dish = await after.dishesDao.getDish('dish-1').getSingle();
      expect(dish.latestLogId, inserted.id);

      // The migrated table accepts a series.
      R = Preloaded();
      R.db = after;
      await DishLogController().forceStore(live(series: _series()));
      final rows = await after.select(after.dishLogs).get();
      _expectSeries(
        rows
            .map(Snapshot.ofRow)
            .firstWhere((s) => s.statusSeries != null)
            .statusSeries,
        _series(),
      );
    });
  }

  test('legacy schema below 3 recreates log storage with the column', () async {
    final before = _open(file);
    await before.dishLogs.insertReturning(
      DishLogsCompanion.insert(
        timestamp: 1700000000000,
        dishId: 'old-dish',
        forceStore: false,
      ),
    );
    await before.customStatement('PRAGMA user_version = 2');
    await before.close();

    final after = _open(file);
    addTearDown(after.close);
    expect(await after.select(after.dishLogs).get(), isEmpty);
    final row = await after.dishLogs.insertReturning(
      DishLogsCompanion.insert(
        timestamp: 1700000001000,
        dishId: 'new-dish',
        forceStore: false,
        statusSeries: Value(StatusSeriesCodec.toMsgPack(_series())),
      ),
    );
    _expectSeries(Snapshot.ofRow(row).statusSeries, _series());
  });
}
