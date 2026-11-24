import 'dart:convert';
import 'dart:typed_data';

import 'package:star_debug/utils/status_series.dart';

/// Format version shared by the MessagePack and JSON encodings.
const int kStatusSeriesVersion = 1;

/// Longest series accepted from storage or import.
const int kStatusSeriesMaxSamples = 5000;

/// Encodes [StatusSeries] for the database (MessagePack) and for JSON export.
///
/// Values are stored at fixed precision: signal quality and angles as integers scaled by 100,
/// times in 100 ms steps from the first sample. Decoding storage is strict and returns null on any
/// malformed input; decoding JSON is lenient about shape but never returns an invalid series.
class StatusSeriesCodec {
  static const int _timeStepMs = 100;

  /// Quantizes [series] to the stored precision, dropping samples that collide after time
  /// quantization. Encoding the result is lossless.
  static StatusSeries quantize(StatusSeries series) {
    if (series.isEmpty) return series;
    var t0 = series.times.first;
    var times = <int>[];
    var sq = <double?>[];
    var gs = <int?>[];
    var az = <double?>[];
    var el = <double?>[];
    var reboots = <int>[];
    var rebootSet = series.reboots.toSet();
    var pendingReboot = false;
    int? lastQ;
    for (var i = 0; i < series.length; ++i) {
      if (rebootSet.contains(i)) pendingReboot = true;
      var q = ((series.times[i] - t0) / _timeStepMs).round();
      if (lastQ != null && q <= lastQ) continue;
      lastQ = q;
      if (pendingReboot) {
        reboots.add(times.length);
        pendingReboot = false;
      }
      times.add(t0 + q * _timeStepMs);
      sq.add(_q100(series.signalQuality[i]));
      gs.add(series.gpsSats[i]);
      az.add(_q100(series.azimuth[i]));
      el.add(_q100(series.elevation[i]));
    }
    return StatusSeries(
      times: times,
      signalQuality: sq,
      gpsSats: gs,
      azimuth: az,
      elevation: el,
      reboots: reboots,
    );
  }

  static double? _q100(double? v) {
    var i = _toInt100(v);
    return i == null ? null : i / 100;
  }

  static int? _toInt100(double? v) {
    if (v == null || !v.isFinite) return null;
    return (v * 100).round();
  }

  // ---- MessagePack (database) ----

  static Uint8List toMsgPack(StatusSeries series) {
    var s = quantize(series);
    var t0 = s.isEmpty ? 0 : s.times.first;
    var dt = <int>[];
    for (var i = 0; i < s.length; ++i)
      dt.add(i == 0 ? 0 : (s.times[i] - s.times[i - 1]) ~/ _timeStepMs);
    var w = MsgPackWriter();
    w.writeMap({
      "version": kStatusSeriesVersion,
      "t0": t0,
      "dt": dt,
      "signalQuality": [for (var v in s.signalQuality) _toInt100(v)],
      "azimuth": [for (var v in s.azimuth) _toInt100(v)],
      "elevation": [for (var v in s.elevation) _toInt100(v)],
      "gpsSats": s.gpsSats,
      "reboots": s.reboots,
    });
    return w.takeBytes();
  }

  /// Decodes a database value; null when the value is absent or malformed.
  static StatusSeries? fromMsgPack(Uint8List? bytes) {
    if (bytes == null || bytes.isEmpty) return null;
    try {
      var r = MsgPackReader(bytes);
      var root = r.read();
      if (!r.isAtEnd || root is! Map) return null;
      if (root["version"] != kStatusSeriesVersion) return null;
      var t0 = root["t0"];
      var dt = root["dt"];
      if (t0 is! int || dt is! List || dt.length > kStatusSeriesMaxSamples)
        return null;
      var n = dt.length;
      var times = <int>[];
      var t = t0;
      for (var i = 0; i < n; ++i) {
        var d = dt[i];
        if (d is! int || (i == 0 ? d != 0 : d <= 0)) return null;
        t += d * _timeStepMs;
        times.add(t);
      }
      var sq = _scaledColumn(root["signalQuality"], n);
      var az = _scaledColumn(root["azimuth"], n);
      var el = _scaledColumn(root["elevation"], n);
      var gs = _intColumn(root["gpsSats"], n);
      var reboots = _intColumn(root["reboots"], null);
      if (sq == null ||
          az == null ||
          el == null ||
          gs == null ||
          reboots == null ||
          reboots.contains(null))
        return null;
      return StatusSeries(
        times: times,
        signalQuality: sq,
        gpsSats: gs,
        azimuth: az,
        elevation: el,
        reboots: reboots.cast<int>(),
      );
    } catch (_) {
      return null;
    }
  }

  /// A missing column decodes as all-null; [n] null means any length.
  static List<int?>? _intColumn(Object? v, int? n) {
    if (v == null) return n == null ? <int?>[] : List<int?>.filled(n, null);
    if (v is! List || (n != null && v.length != n)) return null;
    var res = <int?>[];
    for (var e in v) {
      if (e != null && e is! int) return null;
      res.add(e as int?);
    }
    return res;
  }

  static List<double?>? _scaledColumn(Object? v, int n) {
    var ints = _intColumn(v, n);
    if (ints == null) return null;
    return [for (var e in ints) e == null ? null : e / 100];
  }

  // ---- JSON (export and import) ----

  /// The `capture.statusSeries` export value. Times are seconds, as in the `capture` envelope.
  static Map<String, dynamic> toJson(StatusSeries series) {
    var s = quantize(series);
    var t0 = s.isEmpty ? 0 : s.times.first;
    return {
      "version": kStatusSeriesVersion,
      "t0": t0 / 1000,
      "t": [for (var t in s.times) _round((t - t0) / 1000, 1)],
      "signalQuality": [
        for (var v in s.signalQuality) v == null ? null : _round(v, 2),
      ],
      "azimuthDeg": [for (var v in s.azimuth) v == null ? null : _round(v, 2)],
      "elevationDeg": [
        for (var v in s.elevation) v == null ? null : _round(v, 2),
      ],
      "gpsSats": s.gpsSats,
      "reboots": s.reboots,
    };
  }

  static num _round(double v, int digits) {
    var r = double.parse(v.toStringAsFixed(digits));
    return r == r.truncateToDouble() ? r.toInt() : r;
  }

  /// Reads an imported `capture.statusSeries`. Returns null for anything malformed: a bad series
  /// must never fail an import. A series longer than [kStatusSeriesMaxSamples] keeps its most
  /// recent samples.
  static StatusSeries? fromJson(Object? json) {
    try {
      if (json is! Map || json["version"] != kStatusSeriesVersion) return null;
      var t0 = json["t0"];
      var t = json["t"];
      if (t0 is! num || !t0.isFinite || t is! List) return null;
      var n = t.length;
      var sq = _jsonDoubles(json["signalQuality"], n);
      var az = _jsonDoubles(json["azimuthDeg"], n);
      var el = _jsonDoubles(json["elevationDeg"], n);
      var gs = _jsonInts(json["gpsSats"], n);
      var reboots = _jsonInts(json["reboots"], null);
      if (sq == null ||
          az == null ||
          el == null ||
          gs == null ||
          reboots == null ||
          reboots.contains(null))
        return null;
      var times = <int>[];
      var base = (t0 * 1000).round();
      for (var e in t) {
        if (e is! num || !e.isFinite) return null;
        var ms = base + (e * 1000).round();
        if (times.isNotEmpty && ms <= times.last) return null;
        times.add(ms);
      }
      var rebootIdx = reboots.cast<int>().toList()..sort();
      var start = n > kStatusSeriesMaxSamples ? n - kStatusSeriesMaxSamples : 0;
      var kept = <int>[];
      for (var r in rebootIdx) {
        if (r < 0 || r >= n) return null;
        if (r >= start && (kept.isEmpty || kept.last != r - start))
          kept.add(r - start);
      }
      return quantize(
        StatusSeries(
          times: times.sublist(start),
          signalQuality: sq.sublist(start),
          gpsSats: gs.sublist(start),
          azimuth: az.sublist(start),
          elevation: el.sublist(start),
          reboots: kept,
        ),
      );
    } catch (_) {
      return null;
    }
  }

  static List<double?>? _jsonDoubles(Object? v, int n) {
    if (v == null) return List<double?>.filled(n, null);
    if (v is! List || v.length != n) return null;
    var res = <double?>[];
    for (var e in v) {
      if (e == null) {
        res.add(null);
      } else if (e is num && e.isFinite) {
        res.add(e.toDouble());
      } else {
        return null;
      }
    }
    return res;
  }

  static List<int?>? _jsonInts(Object? v, int? n) {
    if (v == null) return n == null ? <int?>[] : List<int?>.filled(n, null);
    if (v is! List || (n != null && v.length != n)) return null;
    var res = <int?>[];
    for (var e in v) {
      if (e == null) {
        res.add(null);
      } else if (e is int) {
        res.add(e);
      } else if (e is double && e.isFinite && e == e.truncateToDouble()) {
        res.add(e.toInt());
      } else {
        return null;
      }
    }
    return res;
  }
}

/// Writes the MessagePack subset [StatusSeriesCodec] needs: nil, bool, int, string, list, and
/// maps with string keys.
class MsgPackWriter {
  final BytesBuilder _b = BytesBuilder();
  final ByteData _scratch = ByteData(8);

  Uint8List takeBytes() => _b.takeBytes();

  void write(Object? v) {
    if (v == null) {
      _b.addByte(0xc0);
    } else if (v is bool) {
      _b.addByte(v ? 0xc3 : 0xc2);
    } else if (v is int) {
      writeInt(v);
    } else if (v is String) {
      writeString(v);
    } else if (v is List) {
      writeList(v);
    } else if (v is Map<String, Object?>) {
      writeMap(v);
    } else {
      throw ArgumentError("Unsupported MessagePack value: ${v.runtimeType}");
    }
  }

  void writeInt(int v) {
    if (v >= 0) {
      if (v < 0x80) {
        _b.addByte(v);
      } else if (v <= 0xff) {
        _b.addByte(0xcc);
        _b.addByte(v);
      } else if (v <= 0xffff) {
        _b.addByte(0xcd);
        _scratch.setUint16(0, v);
        _b.add(_scratch.buffer.asUint8List(0, 2));
      } else if (v <= 0xffffffff) {
        _b.addByte(0xce);
        _scratch.setUint32(0, v);
        _b.add(_scratch.buffer.asUint8List(0, 4));
      } else {
        _b.addByte(0xcf);
        _scratch.setUint64(0, v);
        _b.add(_scratch.buffer.asUint8List(0, 8));
      }
    } else {
      if (v >= -32) {
        _b.addByte(v & 0xff);
      } else if (v >= -0x80) {
        _b.addByte(0xd0);
        _scratch.setInt8(0, v);
        _b.add(_scratch.buffer.asUint8List(0, 1));
      } else if (v >= -0x8000) {
        _b.addByte(0xd1);
        _scratch.setInt16(0, v);
        _b.add(_scratch.buffer.asUint8List(0, 2));
      } else if (v >= -0x80000000) {
        _b.addByte(0xd2);
        _scratch.setInt32(0, v);
        _b.add(_scratch.buffer.asUint8List(0, 4));
      } else {
        _b.addByte(0xd3);
        _scratch.setInt64(0, v);
        _b.add(_scratch.buffer.asUint8List(0, 8));
      }
    }
  }

  void writeString(String v) {
    var bytes = utf8.encode(v);
    var n = bytes.length;
    if (n < 32) {
      _b.addByte(0xa0 | n);
    } else if (n <= 0xff) {
      _b.addByte(0xd9);
      _b.addByte(n);
    } else if (n <= 0xffff) {
      _b.addByte(0xda);
      _scratch.setUint16(0, n);
      _b.add(_scratch.buffer.asUint8List(0, 2));
    } else {
      _b.addByte(0xdb);
      _scratch.setUint32(0, n);
      _b.add(_scratch.buffer.asUint8List(0, 4));
    }
    _b.add(bytes);
  }

  void writeList(List v) {
    _header(v.length, 0x90, 0xdc, 0xdd);
    for (var e in v) write(e);
  }

  void writeMap(Map<String, Object?> v) {
    _header(v.length, 0x80, 0xde, 0xdf);
    for (var e in v.entries) {
      writeString(e.key);
      write(e.value);
    }
  }

  void _header(int n, int fix, int b16, int b32) {
    if (n < 16) {
      _b.addByte(fix | n);
    } else if (n <= 0xffff) {
      _b.addByte(b16);
      _scratch.setUint16(0, n);
      _b.add(_scratch.buffer.asUint8List(0, 2));
    } else {
      _b.addByte(b32);
      _scratch.setUint32(0, n);
      _b.add(_scratch.buffer.asUint8List(0, 4));
    }
  }
}

/// Reads any MessagePack value, so unknown keys can be skipped. Floats decode to double, binary to
/// [Uint8List], extensions to null. Throws [FormatException] on truncated or invalid input.
class MsgPackReader {
  final Uint8List _bytes;
  final ByteData _data;
  int _pos = 0;

  MsgPackReader(Uint8List bytes)
    : _bytes = bytes,
      _data = ByteData.sublistView(bytes);

  bool get isAtEnd => _pos == _bytes.length;

  Object? read() {
    var b = _u8();
    if (b < 0x80) return b;
    if (b >= 0xe0) return b - 0x100;
    if (b & 0xf0 == 0x80) return _readMap(b & 0x0f);
    if (b & 0xf0 == 0x90) return _readList(b & 0x0f);
    if (b & 0xe0 == 0xa0) return _str(b & 0x1f);
    switch (b) {
      case 0xc0:
        return null;
      case 0xc2:
        return false;
      case 0xc3:
        return true;
      case 0xc4:
        return _bin(_u8());
      case 0xc5:
        return _bin(_u16());
      case 0xc6:
        return _bin(_u32());
      case 0xc7:
        return _ext(_u8());
      case 0xc8:
        return _ext(_u16());
      case 0xc9:
        return _ext(_u32());
      case 0xca:
        return _take(4, (o) => _data.getFloat32(o));
      case 0xcb:
        return _take(8, (o) => _data.getFloat64(o));
      case 0xcc:
        return _u8();
      case 0xcd:
        return _u16();
      case 0xce:
        return _u32();
      case 0xcf:
        return _take(8, (o) => _data.getUint64(o));
      case 0xd0:
        return _take(1, (o) => _data.getInt8(o));
      case 0xd1:
        return _take(2, (o) => _data.getInt16(o));
      case 0xd2:
        return _take(4, (o) => _data.getInt32(o));
      case 0xd3:
        return _take(8, (o) => _data.getInt64(o));
      case 0xd4:
        return _ext(1);
      case 0xd5:
        return _ext(2);
      case 0xd6:
        return _ext(4);
      case 0xd7:
        return _ext(8);
      case 0xd8:
        return _ext(16);
      case 0xd9:
        return _str(_u8());
      case 0xda:
        return _str(_u16());
      case 0xdb:
        return _str(_u32());
      case 0xdc:
        return _readList(_u16());
      case 0xdd:
        return _readList(_u32());
      case 0xde:
        return _readMap(_u16());
      case 0xdf:
        return _readMap(_u32());
    }
    throw FormatException("Invalid MessagePack type 0x${b.toRadixString(16)}");
  }

  T _take<T>(int n, T Function(int offset) get) {
    _need(n);
    var v = get(_pos);
    _pos += n;
    return v;
  }

  void _need(int n) {
    if (_pos + n > _bytes.length)
      throw FormatException("Truncated MessagePack");
  }

  int _u8() => _take(1, (o) => _data.getUint8(o));
  int _u16() => _take(2, (o) => _data.getUint16(o));
  int _u32() => _take(4, (o) => _data.getUint32(o));

  String _str(int n) {
    _need(n);
    var s = utf8.decode(Uint8List.sublistView(_bytes, _pos, _pos + n));
    _pos += n;
    return s;
  }

  Uint8List _bin(int n) {
    _need(n);
    var v = Uint8List.fromList(Uint8List.sublistView(_bytes, _pos, _pos + n));
    _pos += n;
    return v;
  }

  Object? _ext(int n) {
    _need(n + 1);
    _pos += n + 1;
    return null;
  }

  List<Object?> _readList(int n) {
    // Every element takes at least one byte, so this bounds allocation by the input size.
    _need(n);
    return [for (var i = 0; i < n; ++i) read()];
  }

  Map<String, Object?> _readMap(int n) {
    _need(n * 2);
    var res = <String, Object?>{};
    for (var i = 0; i < n; ++i) {
      var k = read();
      if (k is! String)
        throw FormatException("MessagePack map key is not a string");
      res[k] = read();
    }
    return res;
  }
}
