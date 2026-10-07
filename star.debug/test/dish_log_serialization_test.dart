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

const _dishId = 'serialization-dish';

Snapshot _fullSnapshot(int timestamp) => Snapshot(
  timestamp: timestamp,
  dishTs: timestamp - 200,
  dishGetStatus: DishGetStatusResponse(
    deviceInfo: DeviceInfo(id: _dishId),
    signalQuality: 0.5,
  ),
  dishGetHistory: DishGetHistoryResponse(popPingDropRate: [0.25, 0.5]),
  routerGetStatus: WifiGetStatusResponse(ipv4WanAddress: '192.0.2.1'),
  dishGetObstructionMap: DishGetObstructionMapResponse(
    numRows: 1,
    numCols: 2,
    snr: [0, 1],
    mapReferenceFrame: ObstructionMapReferenceFrame.FRAME_UT,
  ),
  obstructionMapTs: timestamp - 30000,
  obstructionMapApiVersion: 19,
  onlineJson: {'online': true, 'latency': 12},
  debug_data: jsonDecode(
    File('test_resources/debug_data_obstruction_map.json').readAsStringSync(),
  ),
);

Future<void> _storeAutomatically(
  DishLogController controller,
  Snapshot snapshot,
  int timestamp,
) async {
  final record = controller.latestRecord[_dishId] ?? Record(snapshot);
  record.dishId = _dishId;
  record.snap = snapshot;
  record.time = timestamp;
  record.timeLastStore = 0;
  record.stored = false;
  controller.latestRecord[_dishId] = record;
  // Seed the pending record directly to exercise the real writer without
  // initializing the platform preferences consulted by notify().
  await controller.run();
  expect(controller.isRunning, isFalse);
  expect(record.stored, isTrue);
}

void main() {
  late Directory directory;
  late Database db;

  setUp(() async {
    directory = await Directory.systemTemp.createTemp('star-debug-log-db-');
    db = Database.connect(
      DatabaseConnection(NativeDatabase(File('${directory.path}/sqlite.db'))),
    );
    R = Preloaded();
    R.db = db;
  });

  tearDown(() async {
    await db.close();
    await directory.delete(recursive: true);
  });

  for (final forced in [false, true]) {
    final caller = forced ? 'forced' : 'automatic';

    test(
      '$caller writer stores all payloads and preserves imported JSON',
      () async {
        final timestamp = DateTime.now().millisecondsSinceEpoch;
        final snapshot = _fullSnapshot(timestamp - 1000);
        final controller = DishLogController();

        if (forced) {
          await controller.forceStore(snapshot);
        } else {
          await _storeAutomatically(controller, snapshot, timestamp);
        }

        final rows = await db.select(db.dishLogs).get();
        expect(rows, hasLength(1));
        final row = rows.single;
        expect(row.dishId, _dishId);
        expect(row.timestamp, forced ? snapshot.dishTs : timestamp);
        expect(row.forceStore, forced);
        expect(row.dishStatusJson, snapshot.dishGetStatus!.writeToBuffer());
        expect(row.dishHistoryJson, snapshot.dishGetHistory!.writeToBuffer());
        expect(row.wifiStatusJson, snapshot.routerGetStatus!.writeToBuffer());
        expect(
          row.dishObstructionMap,
          snapshot.dishGetObstructionMap!.writeToBuffer(),
        );
        expect(row.obstructionMapTs, snapshot.obstructionMapTs);
        expect(row.obstructionMapApiVersion, 19);
        expect(row.onlineJson, jsonEncode(snapshot.onlineJson));
        expect(row.debugDataJson, jsonEncode(snapshot.debug_data));

        // Imported JSON intentionally disagrees with the protobuf columns. It
        // remains authoritative when a saved imported capture is reopened.
        final restored = Snapshot.ofRow(row);
        expect(restored.dishGetStatus!.deviceInfo.id, 'fixture-dish');
        expect(restored.dishTs, 1710000000000);
        expect(restored.dishTsIsEstimated, isFalse);
        expect(restored.dishGetObstructionMap!.snr, [-1, 0, 0.5, 1, 1, 0]);
        expect(restored.obstructionMapTs, 1710000000125);
        expect(restored.obstructionMapApiVersion, 42);
      },
    );

    test(
      '$caller update clears absent payloads on the existing automatic row',
      () async {
        final controller = DishLogController();
        final timestamp = DateTime.now().millisecondsSinceEpoch;
        await _storeAutomatically(
          controller,
          _fullSnapshot(timestamp - 1000),
          timestamp,
        );
        final previous = await db.select(db.dishLogs).getSingle();
        expect(previous.dishObstructionMap, isNotEmpty);
        expect(previous.debugDataJson, isNotNull);

        final updatedTime = DateTime.now().millisecondsSinceEpoch;
        final replacement = Snapshot(
          timestamp: updatedTime - 500,
          dishTs: forced ? updatedTime - 100 : null,
          dishGetStatus: forced
              ? DishGetStatusResponse(deviceInfo: DeviceInfo(id: _dishId))
              : null,
        );
        if (forced) {
          await controller.forceStore(replacement);
        } else {
          await _storeAutomatically(controller, replacement, updatedTime);
        }

        final rows = await db.select(db.dishLogs).get();
        expect(rows, hasLength(1));
        final row = rows.single;
        expect(row.id, previous.id);
        expect(row.dishId, _dishId);
        expect(row.timestamp, forced ? replacement.dishTs : updatedTime);
        expect(row.forceStore, forced);
        expect(row.dishStatusJson, replacement.dishGetStatus?.writeToBuffer());
        expect(row.dishHistoryJson, isNull);
        expect(row.wifiStatusJson, isNull);
        expect(row.dishObstructionMap, isNull);
        expect(row.obstructionMapTs, isNull);
        expect(row.obstructionMapApiVersion, isNull);
        // Preserve the callers' existing SQL NULL versus JSON null behavior.
        expect(row.debugDataJson, forced ? isNull : 'null');
        expect(row.onlineJson, 'null');
        final restored = Snapshot.ofRow(row);
        expect(restored.dishGetObstructionMap, isNull);
        expect(restored.obstructionMapTs, isNull);
        expect(restored.obstructionMapApiVersion, isNull);
        expect(restored.onlineJson, isNull);
        expect(restored.dishGetHistory, isNull);
        expect(restored.routerGetStatus, isNull);
        expect(restored.dishGetStatus?.deviceInfo.id, forced ? _dishId : null);
      },
    );
  }
}
