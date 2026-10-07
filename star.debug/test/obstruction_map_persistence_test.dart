import 'dart:io';

import 'package:drift/drift.dart' hide isNull;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/controller/dish_log_controller.dart';
import 'package:star_debug/db/database.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/snapshot.dart';

Database _open(File file) =>
    Database.connect(DatabaseConnection(NativeDatabase(file)));

void main() {
  late Directory directory;
  late File file;

  setUp(() async {
    directory = await Directory.systemTemp.createTemp('star-debug-map-db-');
    file = File('${directory.path}/sqlite.db');
  });

  tearDown(() async {
    await directory.delete(recursive: true);
  });

  test('fresh database stores map bytes and capture metadata', () async {
    final db = _open(file);
    addTearDown(db.close);
    final map = DishGetObstructionMapResponse(
      numRows: 1,
      numCols: 3,
      snr: [-1, 0, 0.75],
      mapReferenceFrame: ObstructionMapReferenceFrame.FRAME_EARTH,
    );

    final row = await db.dishLogs.insertReturning(
      DishLogsCompanion.insert(
        timestamp: 1700000040000,
        dishId: 'dish-1',
        forceStore: false,
        dishObstructionMap: Value(map.writeToBuffer()),
        obstructionMapTs: const Value(1700000001000),
        obstructionMapApiVersion: const Value(17),
      ),
    );

    final restored = Snapshot.ofRow(row);
    expect(
      restored.dishGetObstructionMap?.writeToBuffer(),
      map.writeToBuffer(),
    );
    expect(restored.obstructionMapTs, 1700000001000);
    expect(restored.obstructionMapApiVersion, 17);

    final missing = await db.dishLogs.insertReturning(
      DishLogsCompanion.insert(
        timestamp: 1700000050000,
        dishId: 'dish-1',
        forceStore: true,
      ),
    );
    final noMap = Snapshot.ofRow(missing);
    expect(noMap.dishGetObstructionMap, isNull);
    expect(noMap.obstructionMapTs, isNull);
    expect(noMap.obstructionMapApiVersion, isNull);
  });

  test('forceStore saves a live snapshot and its map', () async {
    final db = _open(file);
    addTearDown(db.close);
    R = Preloaded();
    R.db = db;
    final map = DishGetObstructionMapResponse(
      numRows: 1,
      numCols: 2,
      snr: [0, 1],
    );
    final snap = Snapshot(
      timestamp: 1700000002000,
      dishTs: 1700000002000,
      dishGetStatus: DishGetStatusResponse(
        deviceInfo: DeviceInfo(id: 'dish-2'),
      ),
      dishGetObstructionMap: map,
      obstructionMapTs: 1700000001000,
      obstructionMapApiVersion: 18,
    );

    await DishLogController().forceStore(snap);

    final rows = await db.select(db.dishLogs).get();
    expect(rows, hasLength(1));
    expect(rows.single.forceStore, true);
    expect(rows.single.debugDataJson, isNull);
    final restored = Snapshot.ofRow(rows.single);
    expect(
      restored.dishGetObstructionMap?.writeToBuffer(),
      map.writeToBuffer(),
    );
    expect(restored.obstructionMapTs, 1700000001000);
    expect(restored.obstructionMapApiVersion, 18);
  });

  for (final version in [3, 4, 5]) {
    test('upgrades schema $version without losing existing log data', () async {
      final before = _open(file);
      await before.dishLogs.insertReturning(
        DishLogsCompanion.insert(
          timestamp: 1700000000000,
          dishId: 'dish-1',
          forceStore: true,
          dishStatusJson: Value(
            DishGetStatusResponse(signalQuality: 0.5).writeToBuffer(),
          ),
          dishHistoryJson: Value(
            DishGetHistoryResponse(popPingDropRate: [0.1]).writeToBuffer(),
          ),
          wifiStatusJson: Value(
            WifiGetStatusResponse(ipv4WanAddress: '192.0.2.1').writeToBuffer(),
          ),
          onlineJson: const Value('{"online":true}'),
        ),
      );
      await before.customStatement(
        'ALTER TABLE dish_logs DROP COLUMN dish_obstruction_map',
      );
      await before.customStatement(
        'ALTER TABLE dish_logs DROP COLUMN obstruction_map_ts',
      );
      await before.customStatement(
        'ALTER TABLE dish_logs DROP COLUMN obstruction_map_api_version',
      );
      await before.customStatement('PRAGMA user_version = $version');
      await before.close();

      final after = _open(file);
      addTearDown(after.close);
      final rows = await after.select(after.dishLogs).get();
      expect(rows, hasLength(1));
      final row = rows.single;
      expect(row.forceStore, true);
      expect(row.dishStatusJson, isNotEmpty);
      expect(row.dishHistoryJson, isNotEmpty);
      expect(row.wifiStatusJson, isNotEmpty);
      expect(row.onlineJson, '{"online":true}');
      expect(row.dishObstructionMap, isNull);
      final restored = Snapshot.ofRow(row);
      expect(restored.dishGetStatus?.signalQuality, 0.5);
      expect(
        restored.dishGetHistory?.popPingDropRate.single,
        closeTo(0.1, 0.000001),
      );
      expect(restored.routerGetStatus?.ipv4WanAddress, '192.0.2.1');
      expect(restored.onlineJson, {'online': true});
      expect(restored.dishGetObstructionMap, isNull);
    });
  }

  test('legacy schema below 3 still recreates log storage', () async {
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
      ),
    );
    expect(row.dishObstructionMap, isNull);
  });
}
