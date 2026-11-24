import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/utils/status_series.dart';

/// The GPS epoch, 1980-01-06, in Unix milliseconds.
const int kGpsEpochUnixMs = 315964800000;

/// GPS time runs ahead of UTC by the leap seconds inserted since 1980.
const int kGpsUtcOffsetMs = 18000;

/// One graph point; a null [value] breaks the line.
class SeriesPoint {
  /// Epoch milliseconds.
  final int time;
  final double? value;
  const SeriesPoint(this.time, this.value);
}

/// [values] of [series] as graph points, with a break wherever two samples are not connected.
List<SeriesPoint> seriesPoints(StatusSeries series, List<num?> values) {
  var res = <SeriesPoint>[];
  for (var i = 0; i < series.length; ++i) {
    if (i > 0 && series.isGapAfter(i - 1))
      res.add(SeriesPoint((series.times[i - 1] + series.times[i]) ~/ 2, null));
    res.add(SeriesPoint(series.times[i], values[i]?.toDouble()));
  }
  return res;
}

/// Reduces [points] to the minimum and maximum of each of [buckets] equal time columns between
/// [startMs] and [endMs], in time order. Breaks are kept, so a run of connected points never
/// merges with the next one. Input short enough for the columns is returned unchanged.
List<SeriesPoint> decimateMinMax(
  List<SeriesPoint> points, {
  required int startMs,
  required int endMs,
  required int buckets,
}) {
  if (buckets <= 0 || endMs <= startMs || points.length <= buckets * 2)
    return points;
  var res = <SeriesPoint>[];
  var bucket = -1;
  var open = false;
  var min = points.first;
  var max = points.first;
  void flush() {
    if (!open) return;
    open = false;
    if (identical(min, max))
      res.add(min);
    else if (min.time < max.time)
      res
        ..add(min)
        ..add(max);
    else
      res
        ..add(max)
        ..add(min);
  }

  for (var p in points) {
    var v = p.value;
    if (v == null) {
      flush();
      res.add(p);
      continue;
    }
    var b = (p.time - startMs) * buckets ~/ (endMs - startMs);
    if (b != bucket) flush();
    if (!open) {
      open = true;
      bucket = b;
      min = p;
      max = p;
      continue;
    }
    if (v < min.value!) min = p;
    if (v > max.value!) max = p;
  }
  flush();
  return res;
}

/// Makes azimuth continuous: the dish reports −180..180, so a boresight near due south jumps
/// between the two ends. Missing values stay missing and do not reset the offset.
List<double?> unwrapAzimuth(List<double?> degrees) {
  var res = <double?>[];
  double? prev;
  var offset = 0.0;
  for (var v in degrees) {
    if (v == null) {
      res.add(null);
      continue;
    }
    if (prev != null) {
      if (v - prev > 180)
        offset -= 360;
      else if (v - prev < -180)
        offset += 360;
    }
    prev = v;
    res.add(v + offset);
  }
  return res;
}

/// The time of sample [i] of [n] in a rotated dish history buffer received at [historyTs]: the
/// dish adds one sample per second and the last one is the newest.
int historySampleTimeMs(int historyTs, int n, int i) =>
    historyTs - (n - 1 - i) * 1000;

/// A dish history ring buffer as graph points, oldest first. [current] is the number of samples
/// the dish has written since boot; slots it has not written yet are left out.
List<SeriesPoint> historyPoints(List<double> data, int current, int historyTs) {
  var n = data.length;
  // Same rotation as buildGraph.
  var head = current % 900;
  if (n <= head) return [];
  var rotated = data.sublist(head) + data.sublist(0, head);
  var filled = current < n ? current : n;
  return [
    for (var i = n - filled; i < n; ++i)
      SeriesPoint(
        historySampleTimeMs(historyTs, n, i),
        rotated[i].isFinite ? rotated[i] : null,
      ),
  ];
}

/// `DishOutage.start_timestamp_ns` in Unix milliseconds.
///
/// The dish counts these from the GPS epoch without leap seconds, unlike the Unix timestamps of
/// its event log. Neither is documented, so take whichever reading lands nearer [referenceMs],
/// the receive time of the history; the two are ten years apart.
int outageStartMs(int startTimestampNs, int referenceMs) {
  var unix = startTimestampNs ~/ 1000000;
  var gps = unix + kGpsEpochUnixMs - kGpsUtcOffsetMs;
  return (gps - referenceMs).abs() <= (unix - referenceMs).abs() ? gps : unix;
}

/// The (start, end) of each outage in Unix milliseconds; see [outageStartMs].
List<(int, int)> outageIntervalsMs(
  Iterable<DishOutage> outages,
  int referenceMs,
) {
  return [
    for (var o in outages)
      if (o.startTimestampNs > 0)
        () {
          var start = outageStartMs(o.startTimestampNs.toInt(), referenceMs);
          return (start, start + (o.durationNs ~/ 1000000).toInt());
        }(),
  ];
}
