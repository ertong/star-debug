import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/space/space_parser.dart';
import 'package:star_debug/utils/debug_data.dart';
import 'package:star_debug/utils/snapshot.dart';
import 'package:star_debug/utils/status_series.dart';
import 'package:star_debug/utils/status_series_codec.dart';

StatusSeries _series() => StatusSeries(
  times: [1700000000000, 1700000002500, 1700000030000],
  signalQuality: [0.5, null, 0.93],
  gpsSats: [12, 13, null],
  azimuth: [-179.99, 179.98, null],
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

Snapshot _live({StatusSeries? series}) => Snapshot(
  timestamp: 1700000031000,
  dishTs: 1700000030000,
  dishGetStatus: DishGetStatusResponse(
    deviceInfo: DeviceInfo(id: 'dish-1'),
    signalQuality: 0.93,
  ),
  statusSeries: series,
);

/// A StarDebug export whose `capture.statusSeries` is replaced by [series].
Map<String, dynamic> _exportWith(Object? series) {
  final data = DebugDataHelper.debugData(_live());
  (data['capture'] as Map)['statusSeries'] = series;
  return jsonDecode(jsonEncode(data));
}

void main() {
  R = Preloaded();
  R.versionName = "test-ver";

  test('export and import round-trip the series', () {
    final data = DebugDataHelper.debugData(_live(series: _series()));
    final exported = data['capture']['statusSeries'] as Map<String, dynamic>;
    expect(exported['version'], kStatusSeriesVersion);
    expect(exported['t0'], 1700000000);
    expect(exported['t'], [0, 2.5, 30]);
    expect(exported['signalQuality'], [0.5, null, 0.93]);
    expect(exported['azimuthDeg'], [-179.99, 179.98, null]);
    expect(exported['elevationDeg'], [61.5, 61.52, null]);
    expect(exported['gpsSats'], [12, 13, null]);
    expect(exported['reboots'], [2]);

    // Embedded protobuf form, then the JSON-only form.
    final json = jsonDecode(jsonEncode(data)) as Map<String, dynamic>;
    final first = SpaceParser.ofJson(json).toSnapshot();
    _expectSeries(first.statusSeries, _series());
    expect(first.dishGetStatus?.deviceInfo.id, 'dish-1');
    (json['dish'] as Map).remove('_proto');
    _expectSeries(
      SpaceParser.ofJson(json).toSnapshot().statusSeries,
      _series(),
    );

    // An imported snapshot exports its original JSON, series included.
    final again = jsonDecode(first.toDebugDataJson()) as Map<String, dynamic>;
    expect(again['capture']['statusSeries'], exported);
    _expectSeries(
      SpaceParser.ofJson(again).toSnapshot().statusSeries,
      _series(),
    );
  });

  test('a snapshot without samples exports no series', () {
    final empty = StatusSeries(
      times: [],
      signalQuality: [],
      gpsSats: [],
      azimuth: [],
      elevation: [],
    );
    for (final snap in [_live(), _live(series: empty)]) {
      final capture = DebugDataHelper.debugData(snap)['capture'] as Map;
      expect(capture.containsKey('statusSeries'), false);
      final json = jsonDecode(jsonEncode(DebugDataHelper.debugData(snap)));
      expect(SpaceParser.ofJson(json).toSnapshot().statusSeries, isNull);
    }
  });

  for (final name in [
    'debug_data_2024.36.0.json',
    'debug_data_obstruction_map.json',
    'debug_data_schema_update.json',
    'debug_data_star-debug-1.2.69a.json',
    'debug_data_v2.json',
    'debug_data_with_router.json',
  ]) {
    test('$name parses and yields no series', () async {
      final json = jsonDecode(
        await File('test_resources/$name').readAsString(),
      );
      final parser = SpaceParser.ofJson(json);
      expect(parser.hasData(), true);
      final snap = parser.toSnapshot();
      expect(snap.statusSeries, isNull);

      final exported = DebugDataHelper.debugData(snap);
      expect((exported['capture'] as Map).containsKey('statusSeries'), false);
      expect(SpaceParser.ofJson(exported).toSnapshot().statusSeries, isNull);
    });
  }

  group('a bad series is ignored without failing the import', () {
    final valid = StatusSeriesCodec.toJson(_series());
    Map<String, dynamic> changed(String key, Object? value) => {
      ...valid,
      key: value,
    };
    final cases = <String, Object?>{
      'wrong type': 'series',
      'list': [1, 2, 3],
      'number': 7,
      'empty map': <String, dynamic>{},
      'unknown version': changed('version', kStatusSeriesVersion + 1),
      'missing version': Map.of(valid)..remove('version'),
      'missing times': Map.of(valid)..remove('t'),
      'text start time': changed('t0', '1700000000'),
      'non-monotonic times': changed('t', [0, 5, 2.5]),
      'repeated times': changed('t', [0, 2.5, 2.5]),
      'text time': changed('t', [0, 'x', 30]),
      'column length mismatch': changed('signalQuality', [0.5, null]),
      'text value': changed('signalQuality', [0.5, 'high', 0.93]),
      'fractional satellite count': changed('gpsSats', [12, 13.5, null]),
      'reboot out of range': changed('reboots', [3]),
      'null reboot': changed('reboots', [null]),
    };
    for (final entry in cases.entries) {
      test(entry.key, () {
        final snap = SpaceParser.ofJson(_exportWith(entry.value)).toSnapshot();
        expect(snap.statusSeries, isNull);
        expect(snap.dishGetStatus?.deviceInfo.id, 'dish-1');
        expect(snap.timestamp, 1700000031000);
        expect(snap.dishTs, 1700000030000);
      });
    }

    test('nonfinite numbers in source text', () {
      // Lenient decoders can produce nonfinite doubles that strict JSON cannot carry.
      for (final series in [
        changed('t0', double.nan),
        changed('t', [0, double.infinity, 30]),
        changed('signalQuality', [0.5, double.nan, 0.93]),
        changed('azimuthDeg', [1.0, double.negativeInfinity, null]),
      ]) {
        final data = DebugDataHelper.debugData(_live());
        (data['capture'] as Map)['statusSeries'] = series;
        final snap = SpaceParser.ofJson(data).toSnapshot();
        expect(snap.statusSeries, isNull);
        expect(snap.dishGetStatus?.deviceInfo.id, 'dish-1');
      }
    });

    test('an oversized series keeps its most recent samples', () {
      const n = kStatusSeriesMaxSamples + 10;
      final series = {
        'version': kStatusSeriesVersion,
        't0': 1700000000,
        't': [for (var i = 0; i < n; i++) i * 2],
        'signalQuality': [for (var i = 0; i < n; i++) (i % 101) / 100],
        'reboots': [5, n - 1],
      };
      final snap = SpaceParser.ofJson(_exportWith(series)).toSnapshot();
      final imported = snap.statusSeries!;
      expect(imported.length, kStatusSeriesMaxSamples);
      expect(imported.firstTime, 1700000000000 + 10 * 2000);
      expect(imported.lastTime, 1700000000000 + (n - 1) * 2000);
      expect(imported.signalQuality.last, ((n - 1) % 101) / 100);
      expect(imported.gpsSats.every((v) => v == null), true);
      expect(imported.reboots, [kStatusSeriesMaxSamples - 1]);
      expect(snap.dishGetStatus?.deviceInfo.id, 'dish-1');
    });
  });
}
