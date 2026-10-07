/// Whether the view follows live updates or displays a frozen capture.
enum MapSourceMode { live, imported, stored }

enum MapDataFreshness { fresh, delayed, unknown }

/// Reception timing relative to now for live data, or to the capture time for
/// frozen data. Reception age does not date individual accumulated samples.
class ObstructionMapContext {
  final MapSourceMode sourceMode;
  final int referenceTime;
  final int? mapReceivedTime;
  final int? statusReceivedTime;
  final bool statusTimestampIsEstimated;

  const ObstructionMapContext({
    required this.sourceMode,
    required this.referenceTime,
    this.mapReceivedTime,
    this.statusReceivedTime,
    this.statusTimestampIsEstimated = false,
  });

  int? _age(int? receivedTime) =>
      referenceTime <= 0 ||
          receivedTime == null ||
          receivedTime <= 0 ||
          receivedTime > referenceTime
      ? null
      : referenceTime - receivedTime;

  int? get _mapAgeMilliseconds => _age(mapReceivedTime);
  int? get _statusAgeMilliseconds =>
      statusTimestampIsEstimated ? null : _age(statusReceivedTime);

  int? get mapAge =>
      _mapAgeMilliseconds == null ? null : _mapAgeMilliseconds! ~/ 1000;
  int? get statusAge =>
      _statusAgeMilliseconds == null ? null : _statusAgeMilliseconds! ~/ 1000;

  MapDataFreshness get mapFreshness {
    final age = _mapAgeMilliseconds;
    if (age == null) return MapDataFreshness.unknown;
    return age > 65000 ? MapDataFreshness.delayed : MapDataFreshness.fresh;
  }

  MapDataFreshness get statusFreshness {
    final age = _statusAgeMilliseconds;
    if (age == null) return MapDataFreshness.unknown;
    return age >= 5000 ? MapDataFreshness.delayed : MapDataFreshness.fresh;
  }

  /// Unknown capture timing is qualified in the UI; live status must be fresh
  /// before it can describe current orientation, readiness, or signal state.
  bool get useStatus => sourceMode == MapSourceMode.live
      ? statusFreshness == MapDataFreshness.fresh
      : statusFreshness != MapDataFreshness.delayed;
}
