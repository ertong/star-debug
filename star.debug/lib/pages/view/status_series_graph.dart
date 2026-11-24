import 'package:intl/intl.dart';
import 'package:material_ui/material_ui.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/dialogs/signal_quality_details.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/snapshot.dart';
import 'package:star_debug/utils/status_series.dart';
import 'package:star_debug/utils/status_series_detail.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

/// On live views the title value loses its band color once the last sample is older than this;
/// matches the freshness limit of `PooledRequest.validData()`.
const int kStatusSeriesStaleMs = 5000;

/// Connected sampling time below which the graph is noise rather than a trend.
const int kStatusSeriesMinGraphMs = 60000;

/// The Y axis the drop rate overlay is drawn against.
const String kDropRateAxis = "dropRate";

const Color kOutageColor = Colors.deepOrange;
const Color kRebootColor = Colors.blueGrey;
const Color kDropRateColor = Colors.deepPurple;

DateTime _time(int ms) => DateTime.fromMillisecondsSinceEpoch(ms);

Color _bandColor(int percent) {
  if (percent >= kSignalQualityGood) return Colors.green;
  if (percent < kSignalQualityFair) return Colors.red;
  return Colors.amber;
}

/// A line per reboot in [s]. Unsampled time is left blank: the line breaks across gaps.
List<PlotBand> _rebootLines(StatusSeries s) {
  var res = <PlotBand>[];
  for (var r in s.reboots) {
    var t = _time(s.times[r]);
    res.add(
      PlotBand(
        start: t,
        end: t,
        borderColor: kRebootColor,
        borderWidth: 1,
        shouldRenderAboveSeries: true,
      ),
    );
  }
  return res;
}

LineSeries<SeriesPoint, DateTime> _line(
  List<SeriesPoint> points, {
  Color? color,
  double width = 2,
  String? yAxisName,
}) {
  return LineSeries<SeriesPoint, DateTime>(
    dataSource: points,
    animationDuration: 0,
    color: color,
    width: width,
    yAxisName: yAxisName,
    // A line draws nothing for a sample with no connected neighbor; markers no wider than the
    // line make such samples visible.
    markerSettings: MarkerSettings(
      isVisible: true,
      width: 1,
      height: 1,
      borderWidth: 1,
    ),
    xValueMapper: (SeriesPoint pt, _) => _time(pt.time),
    yValueMapper: (SeriesPoint pt, _) => pt.value,
  );
}

Widget _chart({
  required double height,
  required Widget title,
  required int startMs,
  required int endMs,
  required List<PlotBand> xBands,
  required NumericAxis yAxis,
  required List<CartesianSeries> series,
  List<ChartAxis> axes = const [],
}) {
  return SizedBox(
    height: height,
    child: Column(
      children: [
        title,
        Expanded(
          child: SfCartesianChart(
            primaryXAxis: DateTimeAxis(
              minimum: _time(startMs),
              maximum: _time(endMs),
              dateFormat: DateFormat("HH:mm:ss"),
              plotBands: xBands,
            ),
            primaryYAxis: yAxis,
            axes: axes,
            enableAxisAnimation: false,
            trackballBehavior: TrackballBehavior(
              enable: true,
              shouldAlwaysShow: true,
              activationMode: ActivationMode.singleTap,
            ),
            series: series,
          ),
        ),
      ],
    ),
  );
}

Widget _title(String text, {Color? dot, void Function(BuildContext)? onTap}) {
  Widget row(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      if (dot != null) ...[
        Icon(Icons.circle, color: dot, size: 8),
        SizedBox(width: 4),
      ],
      Flexible(
        child: Text(
          text,
          style: TextStyle(fontSize: 10),
          overflow: TextOverflow.ellipsis,
        ),
      ),
      if (onTap != null) ...[
        SizedBox(width: 4),
        Icon(
          Icons.open_in_full,
          size: 10,
          color: Theme.of(context).colorScheme.primary,
        ),
      ],
    ],
  );
  if (onTap == null) return Builder(builder: row);
  return Builder(
    builder: (context) => Semantics(
      button: true,
      label: M.live.signal_quality_details,
      child: InkWell(
        onTap: () => onTap(context),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2),
          child: row(context),
        ),
      ),
    ),
  );
}

/// Signal quality over the [windowMs] ending at [endMs], in epoch milliseconds.
///
/// [live] marks [endMs] as the current time: the title value then loses its band color when the
/// last sample is older than [kStatusSeriesStaleMs]. Returns an empty container when the window
/// has no signal quality value or less than [minObservedMs] of connected samples.
///
/// [onOpenDetails] makes the title a button. The detail view also passes [buckets] to reduce the
/// samples to a minimum and maximum per column, and the dish history as [dropRate] (0..1, on a
/// second Y axis) and [outages] (start and end times, shaded).
Widget buildSeriesGraph(
  StatusSeries? series, {
  required int endMs,
  bool live = false,
  int windowMs = kStatusSeriesWindowMs,
  int minObservedMs = 0,
  double height = 120,
  int? buckets,
  List<SeriesPoint> dropRate = const [],
  List<(int, int)> outages = const [],
  void Function(BuildContext)? onOpenDetails,
}) {
  return _buildSeriesGraph(
        series,
        endMs: endMs,
        live: live,
        windowMs: windowMs,
        minObservedMs: minObservedMs,
        height: height,
        buckets: buckets,
        dropRate: dropRate,
        outages: outages,
        onOpenDetails: onOpenDetails,
      ) ??
      Container();
}

/// The end of the graph window of a stored, imported, or frozen snapshot: the capture time, or
/// the last sample when the capture time does not plausibly follow it.
int? snapshotSeriesEndMs(Snapshot snap) {
  var last = snap.statusSeries?.lastTime;
  if (last == null) return null;
  var capture = snap.dishTs ?? snap.timestamp;
  return capture >= last && capture - last < kStatusSeriesWindowMs
      ? capture
      : last;
}

/// The graph for a stored, imported, or frozen snapshot; see [snapshotSeriesEndMs]. With
/// [expandable] its title opens the detail view.
Widget buildSnapshotSeriesGraph(
  Snapshot snap, {
  int minObservedMs = 0,
  bool expandable = false,
}) {
  var end = snapshotSeriesEndMs(snap);
  if (end == null) return Container();
  return buildSeriesGraph(
    snap.statusSeries,
    endMs: end,
    minObservedMs: minObservedMs,
    onOpenDetails: expandable
        ? (context) => showSnapshotSignalQualityDetails(context, snap)
        : null,
  );
}

Widget? _buildSeriesGraph(
  StatusSeries? series, {
  required int endMs,
  required bool live,
  required int windowMs,
  required int minObservedMs,
  double height = 120,
  int? buckets,
  List<SeriesPoint> dropRate = const [],
  List<(int, int)> outages = const [],
  void Function(BuildContext)? onOpenDetails,
}) {
  var startMs = endMs - windowMs;
  var s = series?.window(startMs, endMs);
  if (s == null || !s.hasSignalQuality || s.observedMs < minObservedMs)
    return null;

  // A null value breaks the line: between samples too far apart, and where the dish answered
  // without a signal quality.
  var points = seriesPoints(s, [
    for (var q in s.signalQuality) q == null ? null : q * 100,
  ]);
  if (buckets != null)
    points = decimateMinMax(
      points,
      startMs: startMs,
      endMs: endMs,
      buckets: buckets,
    );

  var xBands = <PlotBand>[
    for (var (from, to) in outages)
      if (to >= startMs && from <= endMs)
        PlotBand(
          start: _time(from < startMs ? startMs : from),
          end: _time(to > endMs ? endMs : to),
          color: kOutageColor,
          opacity: 0.3,
        ),
    ..._rebootLines(s),
  ];

  PlotBand threshold(int at, Color color) => PlotBand(
    start: at,
    end: at,
    borderColor: color.withValues(alpha: 0.6),
    borderWidth: 1,
  );

  var title = M.grpc.DishGetStatus.signal_quality;
  Color? dot;
  var lastQuality = s.signalQuality.last;
  if (lastQuality != null) {
    var percent = signalQualityPercent(lastQuality);
    title = "$title, $percent %";
    if (!live || endMs - s.times.last <= kStatusSeriesStaleMs)
      dot = _bandColor(percent);
  }

  var drop = [
    for (var p in dropRate)
      if (p.time >= startMs && p.time <= endMs) p,
  ];
  if (buckets != null)
    drop = decimateMinMax(
      drop,
      startMs: startMs,
      endMs: endMs,
      buckets: buckets,
    );

  return _chart(
    height: height,
    title: _title(title, dot: dot, onTap: onOpenDetails),
    startMs: startMs,
    endMs: endMs,
    xBands: xBands,
    yAxis: NumericAxis(
      minimum: 0,
      maximum: 100,
      interval: 50,
      plotBands: [
        threshold(kSignalQualityFair, Colors.red),
        threshold(kSignalQualityGood, Colors.green),
      ],
    ),
    axes: [
      if (drop.isNotEmpty)
        NumericAxis(
          name: kDropRateAxis,
          opposedPosition: true,
          minimum: 0,
          maximum: 1,
          interval: 0.5,
          majorGridLines: MajorGridLines(width: 0),
        ),
    ],
    series: <CartesianSeries>[
      // First, so that it keeps the palette color it has on the tabs.
      _line(points),
      if (drop.isNotEmpty)
        _line(drop, color: kDropRateColor, width: 1, yAxisName: kDropRateAxis),
    ],
  );
}

/// One recorded value of [series] over [startMs]..[endMs], autoscaled, titled with [name] and
/// the last value. Returns null when the window has no value.
///
/// [series] must already be cut to the window. [buckets] reduces the samples to a minimum and
/// maximum per column.
Widget? buildStatusValueGraph(
  String name,
  StatusSeries series,
  List<num?> values, {
  required int startMs,
  required int endMs,
  int fractionDigits = 0,
  double height = 120,
  int? buckets,
}) {
  num? last;
  for (var v in values) {
    if (v != null) last = v;
  }
  if (last == null) return null;
  var points = seriesPoints(series, values);
  if (buckets != null)
    points = decimateMinMax(
      points,
      startMs: startMs,
      endMs: endMs,
      buckets: buckets,
    );
  return _chart(
    height: height,
    title: _title("$name, ${last.toStringAsFixed(fractionDigits)}"),
    startMs: startMs,
    endMs: endMs,
    xBands: _rebootLines(series),
    yAxis: NumericAxis(),
    series: <CartesianSeries>[_line(points)],
  );
}

/// The live signal quality graph of a tab, rebuilt only when the recorder has a new sample or
/// the last one has gone stale.
class LiveSeriesGraph {
  /// Whether the graph waits for [kStatusSeriesMinGraphMs] of connected samples.
  final bool requireMinute;

  int _lastTime = 0;
  int _builtAt = 0;

  /// Null while there is nothing to show.
  Widget? chart;

  LiveSeriesGraph({this.requireMinute = false});

  /// Call on every dish holder event with the ID of the dish whose status is shown. [now] is
  /// epoch milliseconds and defaults to the wall clock.
  void update(String? dishId, {int? now}) {
    now ??= DateTime.now().millisecondsSinceEpoch;
    var time = R.statusSeries.lastTimeOf(dishId) ?? 0;
    // While the connection is stalled the empty area on the right keeps growing.
    var stale = now - time > kStatusSeriesStaleMs;
    if (time == _lastTime &&
        (chart == null || !stale || now - _builtAt < kStatusSeriesStaleMs))
      return;
    _lastTime = time;
    _builtAt = now;
    chart = _buildSeriesGraph(
      R.statusSeries.series(
        dishId: dishId,
        sinceMs: now - kStatusSeriesWindowMs,
      ),
      endMs: now,
      live: true,
      windowMs: kStatusSeriesWindowMs,
      minObservedMs: requireMinute ? kStatusSeriesMinGraphMs : 0,
      onOpenDetails: showLiveSignalQualityDetails,
    );
  }
}
