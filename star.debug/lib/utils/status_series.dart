import 'dart:math' as math;

import 'package:star_debug/grpc/starlink/starlink.pb.dart';

// App-chosen signal_quality bands, in percent of the dish's 0..1 value; the dish does not document thresholds.
const int kSignalQualityGood = 80;
const int kSignalQualityFair = 25;

/// Two consecutive samples further apart than this are not connected: two missed polls at the
/// slow end of the 2–3 s status cadence.
const int kStatusSeriesGapMs = 7000;

/// The window persisted with a snapshot and shown by default; matches the dish history span.
const int kStatusSeriesWindowMs = 15 * 60 * 1000;

/// Signal quality in whole percent, as shown in the UI and used for banding.
int signalQualityPercent(double quality) => (quality * 100).round();

/// App-sampled values from successive dish status responses.
///
/// Times are epoch milliseconds and strictly increasing. Every value list has one entry per time;
/// null means the status did not carry the value. [reboots] holds sorted sample indices: the dish
/// rebooted before that sample. Gaps are not stored; see [isGapAfter].
class StatusSeries {
  final List<int> times;
  final List<double?> signalQuality;
  final List<int?> gpsSats;
  final List<double?> azimuth;
  final List<double?> elevation;
  final List<int> reboots;

  StatusSeries({
    required List<int> times,
    required List<double?> signalQuality,
    required List<int?> gpsSats,
    required List<double?> azimuth,
    required List<double?> elevation,
    List<int> reboots = const [],
  }) : times = List.unmodifiable(times),
       signalQuality = List.unmodifiable(signalQuality),
       gpsSats = List.unmodifiable(gpsSats),
       azimuth = List.unmodifiable(azimuth),
       elevation = List.unmodifiable(elevation),
       reboots = List.unmodifiable(reboots) {
    var n = times.length;
    if (signalQuality.length != n ||
        gpsSats.length != n ||
        azimuth.length != n ||
        elevation.length != n)
      throw ArgumentError("StatusSeries columns must have $n entries");
    for (var i = 1; i < n; ++i) {
      if (times[i] <= times[i - 1])
        throw ArgumentError("StatusSeries times must increase");
    }
    for (var i = 0; i < reboots.length; ++i) {
      if (reboots[i] < 0 ||
          reboots[i] >= n ||
          (i > 0 && reboots[i] <= reboots[i - 1]))
        throw ArgumentError(
          "StatusSeries reboots must be sorted sample indices",
        );
    }
  }

  int get length => times.length;
  bool get isEmpty => times.isEmpty;
  bool get isNotEmpty => times.isNotEmpty;

  int? get firstTime => times.isEmpty ? null : times.first;
  int? get lastTime => times.isEmpty ? null : times.last;

  bool get hasSignalQuality => signalQuality.any((e) => e != null);

  /// Whether the samples at [i] and [i] + 1 are too far apart to be connected.
  bool isGapAfter(int i) => times[i + 1] - times[i] > kStatusSeriesGapMs;

  int get gapCount {
    var res = 0;
    for (var i = 0; i + 1 < length; ++i) {
      if (isGapAfter(i)) res++;
    }
    return res;
  }

  /// Time covered by connected samples, in milliseconds.
  int get observedMs {
    var res = 0;
    for (var i = 0; i + 1 < length; ++i) {
      if (!isGapAfter(i)) res += times[i + 1] - times[i];
    }
    return res;
  }

  /// Samples with [fromMs] <= time <= [toMs], with reboot indices remapped.
  StatusSeries window(int fromMs, int toMs) {
    var start = 0;
    while (start < length && times[start] < fromMs) start++;
    var end = start;
    while (end < length && times[end] <= toMs) end++;
    if (start == 0 && end == length) return this;
    return StatusSeries(
      times: times.sublist(start, end),
      signalQuality: signalQuality.sublist(start, end),
      gpsSats: gpsSats.sublist(start, end),
      azimuth: azimuth.sublist(start, end),
      elevation: elevation.sublist(start, end),
      reboots: [
        for (var r in reboots)
          if (r >= start && r < end) r - start,
      ],
    );
  }

  /// The last [durationMs] ending at [endMs], or at the last sample when [endMs] is null.
  StatusSeries last(int durationMs, {int? endMs}) {
    var end = endMs ?? lastTime;
    if (end == null) return this;
    return window(end - durationMs, end);
  }

  /// Signal quality statistics for a window from [startMs] to [endMs], which default to the first
  /// and last sample. Returns null when no sample carries a signal quality.
  SignalQualityStats? signalQualityStats({int? startMs, int? endMs}) {
    var values = <double>[];
    double? lastValue;
    for (var v in signalQuality) {
      if (v != null) {
        values.add(v);
        lastValue = v;
      }
    }
    if (values.isEmpty || lastValue == null) return null;
    var start = startMs ?? times.first;
    var end = endMs ?? times.last;
    var windowMs = math.max(0, end - start);
    values.sort();
    var good = 0;
    var bad = 0;
    for (var v in values) {
      var p = signalQualityPercent(v);
      if (p >= kSignalQualityGood)
        good++;
      else if (p < kSignalQualityFair)
        bad++;
    }
    return SignalQualityStats(
      startMs: start,
      endMs: end,
      samples: length,
      valueSamples: values.length,
      coverage: windowMs == 0
          ? (length > 0 ? 1.0 : 0.0)
          : math.min(1.0, observedMs / windowMs),
      last: lastValue,
      median: _median(values),
      p10: percentile(values, 10),
      min: values.first,
      max: values.last,
      goodShare: good / values.length,
      badShare: bad / values.length,
      gaps: gapCount,
      reboots: reboots.length,
    );
  }

  static double _median(List<double> sorted) {
    var n = sorted.length;
    if (n.isOdd) return sorted[n ~/ 2];
    return (sorted[n ~/ 2 - 1] + sorted[n ~/ 2]) / 2;
  }

  /// Nearest-rank percentile of an ascending, nonempty list.
  static double percentile(List<double> sorted, int p) {
    var rank = (p / 100 * sorted.length).ceil();
    return sorted[(rank - 1).clamp(0, sorted.length - 1)];
  }
}

/// Sample-weighted summary of [StatusSeries.signalQuality]; quality values are 0..1.
class SignalQualityStats {
  final int startMs;
  final int endMs;
  final int samples;
  final int valueSamples;

  /// Observed time divided by the window, 0..1.
  final double coverage;
  final double last;
  final double median;
  final double p10;
  final double min;
  final double max;

  /// Share of samples with a value at or above [kSignalQualityGood] percent.
  final double goodShare;

  /// Share of samples with a value below [kSignalQualityFair] percent.
  final double badShare;
  final int gaps;
  final int reboots;

  const SignalQualityStats({
    required this.startMs,
    required this.endMs,
    required this.samples,
    required this.valueSamples,
    required this.coverage,
    required this.last,
    required this.median,
    required this.p10,
    required this.min,
    required this.max,
    required this.goodShare,
    required this.badShare,
    required this.gaps,
    required this.reboots,
  });
}

/// The values one status response contributes to a [StatusSeries].
class StatusSample {
  final double? signalQuality;
  final int? gpsSats;
  final double? azimuth;
  final double? elevation;

  const StatusSample({
    this.signalQuality,
    this.gpsSats,
    this.azimuth,
    this.elevation,
  });

  factory StatusSample.of(DishGetStatusResponse status) {
    double? quality;
    if (status.hasSignalQuality() && status.signalQuality.isFinite)
      quality = status.signalQuality;

    int? sats;
    if (status.hasGpsStats()) sats = status.gpsStats.gpsSats;

    // The dish view row reads the top-level angles; some firmware fills only alignment_stats.
    double? az;
    double? el;
    if (status.hasBoresightAzimuthDeg() || status.hasBoresightElevationDeg()) {
      az = status.boresightAzimuthDeg;
      el = status.boresightElevationDeg;
    } else if (status.hasAlignmentStats()) {
      var a = status.alignmentStats;
      if (a.hasBoresightAzimuthDeg() || a.hasBoresightElevationDeg()) {
        az = a.boresightAzimuthDeg;
        el = a.boresightElevationDeg;
      }
    }
    // Older firmware reports exactly 0/0 when the attitude is unknown.
    if (az == 0 && el == 0) {
      az = null;
      el = null;
    }
    if (az != null && !az.isFinite) az = null;
    if (el != null && !el.isFinite) el = null;

    return StatusSample(
      signalQuality: quality,
      gpsSats: sats,
      azimuth: az,
      elevation: el,
    );
  }
}
