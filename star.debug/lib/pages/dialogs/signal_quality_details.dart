import 'dart:async';

import 'package:material_ui/material_ui.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/view/status_series_graph.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/format.dart';
import 'package:star_debug/utils/snapshot.dart';
import 'package:star_debug/utils/status_series.dart';
import 'package:star_debug/utils/status_series_detail.dart';

/// The windows offered by the detail view, in minutes. The last one is the recorder's capacity.
const List<int> kSignalQualityWindowsMin = [5, 15, 60];

/// What the detail view shows at one moment.
class SignalQualityDetailsData {
  final StatusSeries? series;
  final DishGetHistoryResponse? history;

  /// Receive time of [history], epoch milliseconds.
  final int? historyTs;

  /// Right edge of the graphs, epoch milliseconds.
  final int endMs;

  /// Whether [endMs] is the current time and [series] keeps growing.
  final bool live;

  const SignalQualityDetailsData({
    required this.series,
    required this.endMs,
    this.history,
    this.historyTs,
    this.live = false,
  });
}

SignalQualityDetailsData _liveData() {
  var dish = R.dish;
  return SignalQualityDetailsData(
    series: R.statusSeries.series(
      dishId: dish?.dishGetStatus.data?.deviceInfo.id,
    ),
    history: dish?.dishGetHistory.data,
    historyTs: dish?.dishGetHistory.receivedTime,
    endMs: DateTime.now().millisecondsSinceEpoch,
    live: true,
  );
}

/// Opens the detail view on the recorder and the live dish history; it follows new samples.
Future<void> showLiveSignalQualityDetails(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (context) =>
        SignalQualityDetails(load: _liveData, updates: R.dishHolder.stream),
  );
}

/// Opens the detail view on the series and history stored in [snap].
Future<void> showSnapshotSignalQualityDetails(
  BuildContext context,
  Snapshot snap,
) {
  var data = SignalQualityDetailsData(
    series: snap.statusSeries,
    history: snap.dishGetHistory,
    historyTs: snap.historyTs ?? snap.timestamp,
    endMs: snapshotSeriesEndMs(snap) ?? snap.timestamp,
  );
  return showDialog<void>(
    context: context,
    builder: (context) => SignalQualityDetails(load: () => data),
  );
}

String _windowLabel(int minutes) =>
    minutes % 60 == 0 ? "${minutes ~/ 60} h" : Format.minutes(minutes);

class SignalQualityDetails extends StatefulWidget {
  /// Called on every build; live sources return the current state.
  final SignalQualityDetailsData Function() load;

  /// Events after which [load] may return something new. Listening keeps a live connection in
  /// demand while the dialog is open.
  final Stream<dynamic>? updates;

  const SignalQualityDetails({super.key, required this.load, this.updates});

  @override
  State createState() => _SignalQualityDetailsState();
}

class _SignalQualityDetailsState extends State<SignalQualityDetails> {
  StreamSubscription? sub;
  int? windowMin;

  int lastSampleTime = 0;
  int lastHistoryTime = 0;
  int builtAt = 0;

  @override
  void initState() {
    super.initState();
    sub = widget.updates?.listen((event) {
      // Holder events arrive several times per poll; redraw for new data, or to move a stalled
      // graph on.
      var data = widget.load();
      if ((data.series?.lastTime ?? 0) != lastSampleTime ||
          (data.historyTs ?? 0) != lastHistoryTime ||
          data.endMs - builtAt >= kStatusSeriesStaleMs)
        setState(() {});
    });
  }

  @override
  void dispose() {
    sub?.cancel();
    super.dispose();
  }

  /// A stored series cannot fill a window longer than itself; a live one grows into it.
  List<int> _windows(SignalQualityDetailsData data) {
    var first = data.series?.firstTime;
    var span = first == null ? 0 : data.endMs - first;
    return [
      for (var i = 0; i < kSignalQualityWindowsMin.length; ++i)
        if (data.live ||
            i == 0 ||
            span > kSignalQualityWindowsMin[i - 1] * 60000)
          kSignalQualityWindowsMin[i],
    ];
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    var data = widget.load();
    lastSampleTime = data.series?.lastTime ?? 0;
    lastHistoryTime = data.historyTs ?? 0;
    builtAt = data.endMs;

    var windows = _windows(data);
    var selected = windowMin;
    if (selected == null || !windows.contains(selected))
      selected = windows.contains(15) ? 15 : windows.last;

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      insetPadding: const EdgeInsets.all(12),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: size.height - 48, maxWidth: 900),
        child: SizedBox(
          width: 900,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 10, 8, 4),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        M.grpc.DishGetStatus.signal_quality,
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IconButton(
                      tooltip: M.general.close,
                      icon: const Icon(Icons.close),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 4, 16, 12),
                    child: Column(
                      children: [
                        Wrap(
                          spacing: 8,
                          children: [
                            for (var w in windows)
                              ChoiceChip(
                                label: Text(_windowLabel(w)),
                                selected: w == selected,
                                onSelected: (_) =>
                                    setState(() => windowMin = w),
                              ),
                          ],
                        ),
                        LayoutBuilder(
                          builder: (context, constraints) => Column(
                            children: _graphs(
                              context,
                              data,
                              selected! * 60000,
                              constraints.maxWidth,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _graphs(
    BuildContext context,
    SignalQualityDetailsData data,
    int windowMs,
    double width,
  ) {
    var endMs = data.endMs;
    var startMs = endMs - windowMs;
    var s = data.series?.window(startMs, endMs);
    if (s == null || s.isEmpty) return [Text(M.general.no_data_found)];

    // One column per pixel is the most the line can show.
    var buckets = width.isFinite && width > 50 ? width.floor() : 50;

    var history = data.history;
    var historyTs = data.historyTs;
    var dropRate = <SeriesPoint>[];
    var outages = <(int, int)>[];
    if (history != null && historyTs != null && historyTs > 0) {
      dropRate = historyPoints(
        history.popPingDropRate,
        history.current.toInt(),
        historyTs,
      );
      outages = outageIntervalsMs(history.outages, historyTs);
    }
    var showDropRate = dropRate.any(
      (p) => p.time >= startMs && p.time <= endMs,
    );
    var showOutages = outages.any((o) => o.$2 >= startMs && o.$1 <= endMs);

    Widget? value(String name, List<num?> values, {int fractionDigits = 0}) =>
        buildStatusValueGraph(
          name,
          s,
          values,
          startMs: startMs,
          endMs: endMs,
          fractionDigits: fractionDigits,
          height: 140,
          buckets: buckets,
        );

    return [
      buildSeriesGraph(
        s,
        endMs: endMs,
        live: data.live,
        windowMs: windowMs,
        height: 200,
        buckets: buckets,
        dropRate: dropRate,
        outages: outages,
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Wrap(
          spacing: 12,
          runSpacing: 4,
          alignment: WrapAlignment.center,
          children: [
            if (showDropRate)
              _legend(
                M.grpc.DishGetStatus.pop_ping_drop_rate,
                Container(width: 12, height: 2, color: kDropRateColor),
              ),
            if (showOutages)
              _legend(
                M.live.outages,
                Container(
                  width: 12,
                  height: 10,
                  color: kOutageColor.withValues(alpha: 0.3),
                ),
              ),
            if (s.reboots.isNotEmpty)
              _legend(
                M.general.reboot,
                Container(width: 1, height: 10, color: kRebootColor),
              ),
          ],
        ),
      ),
      ?value(
        M.grpc.DishGetStatus.boresight_azimuth_deg,
        unwrapAzimuth(s.azimuth),
        fractionDigits: 2,
      ),
      ?value(
        M.grpc.DishGetStatus.boresight_elevation_deg,
        s.elevation,
        fractionDigits: 2,
      ),
      ?value(M.grpc.DishGpsStats.gps_sats, s.gpsSats),
    ];
  }

  Widget _legend(String text, Widget swatch) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        swatch,
        SizedBox(width: 4),
        Text(text, style: TextStyle(fontSize: 10)),
      ],
    );
  }
}
