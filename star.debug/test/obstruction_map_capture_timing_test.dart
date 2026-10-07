import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/space/space_parser.dart';
import 'package:star_debug/utils/debug_data.dart';
import 'package:star_debug/utils/obstruction_map_context.dart';
import 'package:star_debug/utils/snapshot.dart';

Snapshot _snapshot({int? dishTs = 1700000012456, bool estimated = false}) {
  return Snapshot(
    timestamp: 1700000015789,
    dishTs: dishTs,
    dishTsIsEstimated: estimated,
    dishGetStatus: DishGetStatusResponse(
      deviceInfo: DeviceInfo(id: 'synthetic'),
    ),
    dishGetObstructionMap: DishGetObstructionMapResponse(
      numRows: 1,
      numCols: 2,
      snr: [0, 0.75],
    ),
    obstructionMapTs: 1700000001123,
    obstructionMapApiVersion: 17,
  );
}

void main() {
  setUp(() {
    R = Preloaded();
    R.versionName = 'test';
  });

  for (final binary in [true, false]) {
    test('capture timing survives ${binary ? 'binary' : 'JSON'} export', () {
      final original = _snapshot();
      final exported = DebugDataHelper.debugData(original);
      expect(exported['capture'], {
        'timestamp': 1700000015.789,
        'dishStatusTimestamp': 1700000012.456,
        'dishStatusTimestampEstimated': false,
      });
      if (binary) {
        exported['dishObstructionMap'].remove('rawMap');
      } else {
        exported['dish'].remove('_proto');
        exported['dishObstructionMap'].remove('_proto');
      }

      final restored = SpaceParser.ofJsonStr(jsonEncode(exported)).toSnapshot();
      expect(restored.timestamp, original.timestamp);
      expect(restored.dishTs, original.dishTs);
      expect(restored.dishTsIsEstimated, false);
      expect(restored.obstructionMapTs, original.obstructionMapTs);
      expect(restored.obstructionMapApiVersion, 17);
      expect(restored.dishGetStatus?.deviceInfo.id, 'synthetic');
      expect(
        restored.dishGetObstructionMap?.writeToBuffer(),
        original.dishGetObstructionMap!.writeToBuffer(),
      );
    });
  }

  test('native row timing remains estimated through repeated exports', () {
    final original = _snapshot(dishTs: 1700000015789, estimated: true);
    final first = SpaceParser.ofJsonStr(
      jsonEncode(DebugDataHelper.debugData(original)),
    ).toSnapshot();
    final second = SpaceParser.ofJsonStr(
      jsonEncode(DebugDataHelper.debugData(first)),
    ).toSnapshot();
    expect(second.timestamp, original.timestamp);
    expect(second.dishTs, original.dishTs);
    expect(second.dishTsIsEstimated, true);
    expect(second.obstructionMapTs, original.obstructionMapTs);
  });

  test('missing status reception stays unknown despite export time', () {
    final original = _snapshot(dishTs: null);
    final exported = DebugDataHelper.debugData(original);
    expect(exported['capture'].containsKey('dishStatusTimestamp'), false);
    expect(exported['dish']['timestamp'], greaterThan(0));
    final restored = SpaceParser.ofJsonStr(jsonEncode(exported)).toSnapshot();
    expect(restored.timestamp, original.timestamp);
    expect(restored.dishTs, isNull);
    expect(restored.dishTsIsEstimated, false);
  });

  test('invalid optional envelopes do not borrow the export timestamp', () {
    for (final capture in [null, false, 'invalid', 123, [], {}]) {
      final exported = DebugDataHelper.debugData(_snapshot());
      exported['capture'] = capture;
      final restored = SpaceParser.ofJson(exported).toSnapshot();
      expect(restored.timestamp, 0);
      expect(restored.dishTs, isNull);
      expect(restored.dishTsIsEstimated, false);
      expect(restored.dishGetStatus?.deviceInfo.id, 'synthetic');
      expect(restored.obstructionMapTs, 1700000001123);
    }
  });

  test('optional timestamps validate independently without exceptions', () {
    for (final invalid in [
      null,
      false,
      '1700000000',
      [],
      {},
      0,
      -1,
      double.nan,
      double.infinity,
      double.negativeInfinity,
      18446744073709552,
      1e100,
      1e308,
    ]) {
      final exported = DebugDataHelper.debugData(_snapshot());
      final capture = Map<String, dynamic>.from(exported['capture']);
      exported['capture'] = capture;
      capture['timestamp'] = invalid;
      var restored = SpaceParser.ofJson(exported).toSnapshot();
      expect(restored.timestamp, 0);
      expect(restored.dishTs, 1700000012456);
      capture['timestamp'] = 1700000015.789;
      capture['dishStatusTimestamp'] = invalid;
      restored = SpaceParser.ofJson(exported).toSnapshot();
      expect(restored.timestamp, 1700000015789);
      expect(restored.dishTs, isNull);
    }
  });

  test('out of range capture and status times cannot appear fresh', () {
    final exported = DebugDataHelper.debugData(_snapshot());
    exported['capture']['timestamp'] = 1e100;
    exported['capture']['dishStatusTimestamp'] = 1e100;
    final restored = SpaceParser.ofJsonStr(jsonEncode(exported)).toSnapshot();
    expect(restored.timestamp, 0);
    expect(restored.dishTs, isNull);
    final context = ObstructionMapContext(
      sourceMode: MapSourceMode.imported,
      referenceTime: restored.timestamp,
      mapReceivedTime: restored.obstructionMapTs,
      statusReceivedTime: restored.dishTs,
      statusTimestampIsEstimated: restored.dishTsIsEstimated,
    );
    expect(context.mapFreshness, MapDataFreshness.unknown);
    expect(context.statusFreshness, MapDataFreshness.unknown);
  });

  test('only a boolean true marks the status time estimated', () {
    for (final flag in [null, false, 'true', 1, [], {}]) {
      final exported = DebugDataHelper.debugData(_snapshot());
      exported['capture'] = Map<String, dynamic>.from(exported['capture']);
      exported['capture']['dishStatusTimestampEstimated'] = flag;
      final restored = SpaceParser.ofJson(exported).toSnapshot();
      expect(restored.dishTs, 1700000012456);
      expect(restored.dishTsIsEstimated, false);
    }
  });

  test('external data without capture keeps legacy source time semantics', () {
    final external = {
      'dish': {
        'timestamp': 1700000020.987,
        'rawStatus': {
          'deviceInfo': {'id': 'synthetic'},
        },
      },
    };
    final parser = SpaceParser.ofJson(external);
    expect(parser.dishTs, 1700000020);
    final restored = parser.toSnapshot();
    expect(restored.timestamp, 1700000020000);
    expect(restored.dishTs, 1700000020000);
    expect(restored.dishTsIsEstimated, false);
  });

  test('capture timing works independently of device status', () {
    final restored = SpaceParser.ofJson({
      'capture': {
        'timestamp': 1700000015.789,
        'dishStatusTimestamp': 1700000012.456,
        'dishStatusTimestampEstimated': true,
      },
    }).toSnapshot();
    expect(restored.timestamp, 1700000015789);
    expect(restored.dishTs, 1700000012456);
    expect(restored.dishTsIsEstimated, true);
    expect(restored.dishGetStatus, isNull);
  });
}
