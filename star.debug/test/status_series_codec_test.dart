import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/utils/status_series.dart';
import 'package:star_debug/utils/status_series_codec.dart';

StatusSeries _sample() => StatusSeries(
  times: [1795512000123, 1795512002150, 1795512004960, 1795512030000],
  signalQuality: [0.934, null, 0.5, double.nan],
  gpsSats: [14, 13, null, 0],
  azimuth: [-179.996, -18.434, null, 180.0],
  elevation: [69.631, 0.004, 90, null],
  reboots: [3],
);

void main() {
  group('MessagePack', () {
    test('round trip keeps ×100 precision and nulls', () {
      var bytes = StatusSeriesCodec.toMsgPack(_sample());
      var s = StatusSeriesCodec.fromMsgPack(bytes)!;
      expect(s.times, [
        1795512000123,
        1795512002123,
        1795512004923,
        1795512030023,
      ]);
      expect(s.signalQuality, [0.93, null, 0.5, null]);
      expect(s.gpsSats, [14, 13, null, 0]);
      expect(s.azimuth, [-180.0, -18.43, null, 180.0]);
      expect(s.elevation, [69.63, 0.0, 90.0, null]);
      expect(s.reboots, [3]);
      // Encoding the decoded series is lossless.
      expect(StatusSeriesCodec.toMsgPack(s), bytes);
    });

    test('time quantization does not drift', () {
      var times = <int>[];
      var t = 1795512000000;
      for (var i = 0; i < 1800; ++i) {
        t += 2049; // Rounds down to 2.0 s every time if quantized per step.
        times.add(t);
      }
      var n = times.length;
      var s = StatusSeries(
        times: times,
        signalQuality: List.filled(n, 0.9),
        gpsSats: List.filled(n, 10),
        azimuth: List.filled(n, 1.0),
        elevation: List.filled(n, 2.0),
      );
      var d = StatusSeriesCodec.fromMsgPack(StatusSeriesCodec.toMsgPack(s))!;
      expect(d.length, n);
      for (var i = 0; i < n; ++i)
        expect((d.times[i] - times[i]).abs(), lessThanOrEqualTo(50));
    });

    test(
      'samples that collide after quantization are dropped, reboots kept',
      () {
        var s = StatusSeries(
          times: [1000, 1020, 3000],
          signalQuality: [0.1, 0.2, 0.3],
          gpsSats: [1, 2, 3],
          azimuth: [null, null, null],
          elevation: [null, null, null],
          reboots: [1],
        );
        var d = StatusSeriesCodec.fromMsgPack(StatusSeriesCodec.toMsgPack(s))!;
        expect(d.times, [1000, 3000]);
        expect(d.signalQuality, [0.1, 0.3]);
        expect(d.reboots, [1]);
      },
    );

    test('a full hour stays small', () {
      var n = 1800;
      var s = StatusSeries(
        times: [for (var i = 0; i < n; ++i) 1795512000000 + i * 2500],
        signalQuality: List.filled(n, 0.93),
        gpsSats: List.filled(n, 14),
        azimuth: List.filled(n, -18.43),
        elevation: List.filled(n, 69.63),
      );
      var bytes = StatusSeriesCodec.toMsgPack(s);
      expect(bytes.length, lessThan(n * 9 + 100));
    });

    test('empty series', () {
      var s = StatusSeries(
        times: [],
        signalQuality: [],
        gpsSats: [],
        azimuth: [],
        elevation: [],
      );
      var d = StatusSeriesCodec.fromMsgPack(StatusSeriesCodec.toMsgPack(s))!;
      expect(d.isEmpty, isTrue);
    });

    Uint8List encode(Map<String, Object?> root) {
      var w = MsgPackWriter();
      w.writeMap(root);
      return w.takeBytes();
    }

    Map<String, Object?> valid() => {
      'version': 1,
      't0': 1000,
      'dt': [0, 20],
      'signalQuality': [90, null],
      'azimuth': [-1800, 1],
      'elevation': [7000, 7001],
      'gpsSats': [12, 12],
      'reboots': <int>[],
    };

    test('rejects malformed input', () {
      expect(StatusSeriesCodec.fromMsgPack(encode(valid())), isNotNull);
      expect(StatusSeriesCodec.fromMsgPack(null), isNull);
      expect(StatusSeriesCodec.fromMsgPack(Uint8List(0)), isNull);
      expect(
        StatusSeriesCodec.fromMsgPack(encode(valid()..['version'] = 2)),
        isNull,
      );
      expect(
        StatusSeriesCodec.fromMsgPack(
          encode(valid()..['signalQuality'] = [90]),
        ),
        isNull,
      );
      expect(
        StatusSeriesCodec.fromMsgPack(encode(valid()..['dt'] = [0, 0])),
        isNull,
      );
      expect(
        StatusSeriesCodec.fromMsgPack(encode(valid()..['dt'] = [5, 20])),
        isNull,
      );
      expect(
        StatusSeriesCodec.fromMsgPack(encode(valid()..['gpsSats'] = ['x', 1])),
        isNull,
      );
      expect(
        StatusSeriesCodec.fromMsgPack(encode(valid()..['reboots'] = [2])),
        isNull,
      );
      expect(
        StatusSeriesCodec.fromMsgPack(encode(valid()..remove('t0'))),
        isNull,
      );
      var bytes = encode(valid());
      expect(
        StatusSeriesCodec.fromMsgPack(
          Uint8List.sublistView(bytes, 0, bytes.length - 1),
        ),
        isNull,
      );
      expect(
        StatusSeriesCodec.fromMsgPack(Uint8List.fromList([...bytes, 0])),
        isNull,
      );
      expect(
        StatusSeriesCodec.fromMsgPack(
          Uint8List.fromList([0xdd, 0xff, 0xff, 0xff, 0xff]),
        ),
        isNull,
      );
    });

    test('ignores unknown keys and missing value columns', () {
      var root = valid()
        ..['future'] = {
          'nested': [1, 'a', null],
        }
        ..remove('gpsSats');
      var s = StatusSeriesCodec.fromMsgPack(encode(root))!;
      expect(s.gpsSats, [null, null]);
      expect(s.times, [1000, 3000]);
      expect(s.azimuth, [-18.0, 0.01]);
    });
  });

  group('MsgPackReader', () {
    test('reads every integer width written', () {
      var values = [
        0,
        127,
        128,
        255,
        256,
        65535,
        65536,
        4294967295,
        4294967296,
        -1,
        -32,
        -33,
        -128,
        -129,
        -32768,
        -32769,
        -2147483648,
        -2147483649,
      ];
      var w = MsgPackWriter();
      w.writeList(values);
      expect(MsgPackReader(w.takeBytes()).read(), values);
    });

    test('reads types it does not write', () {
      // float32 1.5, bin8 [1,2], fixext1, str8 "ab"
      var bytes = Uint8List.fromList([
        0x94,
        0xca,
        0x3f,
        0xc0,
        0x00,
        0x00,
        0xc4,
        0x02,
        1,
        2,
        0xd4,
        0x01,
        0x00,
        0xd9,
        0x02,
        0x61,
        0x62,
      ]);
      var v = MsgPackReader(bytes).read() as List;
      expect(v[0], 1.5);
      expect(v[1], [1, 2]);
      expect(v[2], isNull);
      expect(v[3], 'ab');
    });
  });

  group('JSON', () {
    test('export shape uses seconds and decoded values', () {
      var json = StatusSeriesCodec.toJson(_sample());
      expect(json['version'], 1);
      expect(json['t0'], 1795512000.123);
      expect(json['t'], [0, 2, 4.8, 29.9]);
      expect(json['signalQuality'], [0.93, null, 0.5, null]);
      expect(json['azimuthDeg'], [-180, -18.43, null, 180]);
      expect(json['elevationDeg'], [69.63, 0, 90, null]);
      expect(json['gpsSats'], [14, 13, null, 0]);
      expect(json['reboots'], [3]);
    });

    test('round trip through JSON text and storage is stable', () {
      var json = jsonDecode(jsonEncode(StatusSeriesCodec.toJson(_sample())));
      var s = StatusSeriesCodec.fromJson(json)!;
      var stored = StatusSeriesCodec.fromMsgPack(
        StatusSeriesCodec.toMsgPack(s),
      )!;
      expect(
        StatusSeriesCodec.toJson(stored),
        StatusSeriesCodec.toJson(_sample()),
      );
      expect(stored.times, StatusSeriesCodec.quantize(_sample()).times);
    });

    test('lenient import returns null for malformed series', () {
      Map<String, dynamic> valid() => {
        'version': 1,
        't0': 1795512000.5,
        't': [0, 2.5],
        'signalQuality': [0.9, null],
        'azimuthDeg': [1, 2],
        'elevationDeg': [3, 4],
        'gpsSats': [5, 6.0],
        'reboots': [1],
      };
      expect(StatusSeriesCodec.fromJson(valid())!.times, [
        1795512000500,
        1795512003000,
      ]);
      expect(StatusSeriesCodec.fromJson(valid())!.gpsSats, [5, 6]);
      expect(StatusSeriesCodec.fromJson(null), isNull);
      expect(StatusSeriesCodec.fromJson('x'), isNull);
      expect(StatusSeriesCodec.fromJson(valid()..['version'] = 2), isNull);
      expect(StatusSeriesCodec.fromJson(valid()..['t'] = [2.5, 0]), isNull);
      expect(StatusSeriesCodec.fromJson(valid()..['t'] = [0, '1']), isNull);
      expect(
        StatusSeriesCodec.fromJson(valid()..['signalQuality'] = [0.9]),
        isNull,
      );
      expect(
        StatusSeriesCodec.fromJson(valid()..['signalQuality'] = ['a', 1]),
        isNull,
      );
      expect(
        StatusSeriesCodec.fromJson(valid()..['gpsSats'] = [1.5, 2]),
        isNull,
      );
      expect(StatusSeriesCodec.fromJson(valid()..['reboots'] = [7]), isNull);
      expect(
        StatusSeriesCodec.fromJson(valid()..remove('azimuthDeg'))!.azimuth,
        [null, null],
      );
    });

    test('oversized import keeps the most recent samples', () {
      var n = kStatusSeriesMaxSamples + 10;
      var json = {
        'version': 1,
        't0': 1795512000,
        't': [for (var i = 0; i < n; ++i) i * 2],
        'signalQuality': [for (var i = 0; i < n; ++i) 0.5],
        'reboots': [5, 20],
      };
      var s = StatusSeriesCodec.fromJson(json)!;
      expect(s.length, kStatusSeriesMaxSamples);
      expect(s.times.first, (1795512000 + 20) * 1000);
      expect(s.reboots, [10]);
    });
  });
}
