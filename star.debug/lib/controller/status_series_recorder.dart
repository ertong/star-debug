import 'dart:collection';
import 'dart:typed_data';

import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/utils/status_series.dart';

/// Collects one [StatusSeries] sample per dish status response, independently of connection
/// lifetimes. Owned by `Preloaded` and fed by `DishConnection`.
///
/// Keeps a separate buffer of the most recent [capacity] samples (about one hour at the 2–3 s
/// status cadence) for each of the last [maxDishes] dishes, so switching between dishes and back
/// resumes a dish's series; the time away shows as a gap. A status with an empty dish ID belongs to
/// the dish of the previous status. Samples recorded before any ID is known are adopted by the
/// first ID seen.
class StatusSeriesRecorder {
  static const int capacity = 1800;

  /// Dishes kept; the one whose status arrived longest ago is dropped first.
  static const int maxDishes = 4;

  /// Uptime may lag wall time by this much before a reboot is inferred.
  static const int rebootToleranceS = 10;

  /// Buffers by dish ID, least recently updated first.
  final LinkedHashMap<String, _DishRing> _rings = LinkedHashMap();

  /// Samples received before any dish ID was known.
  _DishRing? _pending;

  String? _currentId;

  /// The dish of the most recent status; null while unknown.
  String? get dishId => _currentId;

  _DishRing? get _current => _currentId == null ? _pending : _rings[_currentId];

  /// Samples held for the current dish.
  int get length => _current?.length ?? 0;

  /// Time of the current dish's last sample.
  int? get lastTime => _current?.lastTime;

  /// Time of the last sample of [dishId], or of the current dish when [dishId] is null or empty.
  int? lastTimeOf(String? dishId) => _ring(dishId)?.lastTime;

  /// Dish IDs with samples, least recently updated first.
  List<String> get dishIds => List.unmodifiable(_rings.keys);

  void clear() {
    _rings.clear();
    _pending = null;
    _currentId = null;
  }

  _DishRing? _ring(String? dishId) {
    if (dishId == null || dishId.isEmpty) return _current;
    return _rings[dishId];
  }

  /// Records [status], received at [now] epoch milliseconds.
  void add(int now, DishGetStatusResponse status) {
    var id = status.deviceInfo.id;
    _DishRing ring;
    if (id.isEmpty) {
      ring = _current ?? (_pending = _DishRing());
    } else {
      // Re-inserting moves the dish to the most recently updated end.
      ring = _rings.remove(id) ?? _pending ?? _DishRing();
      _pending = null;
      _rings[id] = ring;
      _currentId = id;
      while (_rings.length > maxDishes) _rings.remove(_rings.keys.first);
    }
    ring.add(now, status);
  }

  /// An immutable copy of the samples of [dishId] from [sinceMs] on, or null when there are none.
  /// A null or empty [dishId] means the dish of the most recent status.
  StatusSeries? series({String? dishId, int? sinceMs}) =>
      _ring(dishId)?.series(sinceMs);
}

/// One dish's samples and reboot-detection state.
class _DishRing {
  static const int capacity = StatusSeriesRecorder.capacity;

  final Int64List _times = Int64List(capacity);
  final Float64List _quality = Float64List(capacity);
  final Int32List _sats = Int32List(capacity);
  final Float64List _azimuth = Float64List(capacity);
  final Float64List _elevation = Float64List(capacity);
  final Uint8List _reboot = Uint8List(capacity);
  int _start = 0;
  int _length = 0;

  int? _lastBootcount;
  int? _lastUptimeS;

  int get length => _length;

  int? get lastTime => _length == 0 ? null : _times[_index(_length - 1)];

  int _index(int i) => (_start + i) % capacity;

  void _clear() {
    _start = 0;
    _length = 0;
    _lastBootcount = null;
    _lastUptimeS = null;
  }

  void add(int now, DishGetStatusResponse status) {
    var last = lastTime;
    if (last != null && now <= last) {
      // A wall clock that moved back further than the buffer makes every sample unusable.
      if (last - now > capacity * 2000) {
        _clear();
      } else {
        return;
      }
    }

    int? bootcount = status.deviceInfo.hasBootcount()
        ? status.deviceInfo.bootcount
        : null;
    int? uptimeS = status.deviceState.hasUptimeS()
        ? status.deviceState.uptimeS.toInt()
        : null;
    var reboot = false;
    var prev = lastTime;
    if (prev != null) {
      if (bootcount != null && _lastBootcount != null) {
        // Bootcount is authoritative when both statuses carry it; uptime alone can be fooled by
        // wall clock jumps.
        reboot = bootcount != _lastBootcount;
      } else if (uptimeS != null && _lastUptimeS != null) {
        var expected = _lastUptimeS! + (now - prev) ~/ 1000;
        reboot = uptimeS < expected - StatusSeriesRecorder.rebootToleranceS;
      }
    }
    if (bootcount != null) _lastBootcount = bootcount;
    if (uptimeS != null) _lastUptimeS = uptimeS;

    var sample = StatusSample.of(status);
    int slot;
    if (_length < capacity) {
      slot = _index(_length);
      _length++;
    } else {
      slot = _start;
      _start = (_start + 1) % capacity;
    }
    _times[slot] = now;
    _quality[slot] = sample.signalQuality ?? double.nan;
    _sats[slot] = sample.gpsSats ?? -1;
    _azimuth[slot] = sample.azimuth ?? double.nan;
    _elevation[slot] = sample.elevation ?? double.nan;
    _reboot[slot] = reboot ? 1 : 0;
  }

  StatusSeries? series(int? sinceMs) {
    var times = <int>[];
    var quality = <double?>[];
    var sats = <int?>[];
    var azimuth = <double?>[];
    var elevation = <double?>[];
    var reboots = <int>[];
    for (var i = 0; i < _length; ++i) {
      var k = _index(i);
      if (sinceMs != null && _times[k] < sinceMs) continue;
      if (_reboot[k] != 0) reboots.add(times.length);
      times.add(_times[k]);
      quality.add(_quality[k].isNaN ? null : _quality[k]);
      sats.add(_sats[k] < 0 ? null : _sats[k]);
      azimuth.add(_azimuth[k].isNaN ? null : _azimuth[k]);
      elevation.add(_elevation[k].isNaN ? null : _elevation[k]);
    }
    if (times.isEmpty) return null;
    return StatusSeries(
      times: times,
      signalQuality: quality,
      gpsSats: sats,
      azimuth: azimuth,
      elevation: elevation,
      reboots: reboots,
    );
  }
}
