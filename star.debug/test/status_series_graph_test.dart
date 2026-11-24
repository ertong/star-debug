import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/view/share_image.dart';
import 'package:star_debug/pages/view/status_series_graph.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/obstruction_map_context.dart';
import 'package:star_debug/utils/snapshot.dart';
import 'package:star_debug/utils/status_series.dart';
import 'package:star_debug/utils/view_options.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:time_machine2/time_machine2.dart';

const int _now = 1700000000000;

/// One sample per entry: seconds before [_now] and the signal quality.
StatusSeries _series(
  List<(int, double?)> samples, {
  List<int> reboots = const [],
}) {
  return StatusSeries(
    times: [for (var (ago, _) in samples) _now - ago * 1000],
    signalQuality: [for (var (_, q) in samples) q],
    gpsSats: List.filled(samples.length, null),
    azimuth: List.filled(samples.length, null),
    elevation: List.filled(samples.length, null),
    reboots: reboots,
  );
}

/// Samples every 2 s from [fromAgo] down to [toAgo] seconds before [_now].
List<(int, double?)> _run(int fromAgo, int toAgo, double quality) => [
  for (var ago = fromAgo; ago >= toAgo; ago -= 2) (ago, quality),
];

Future<void> _pump(WidgetTester tester, Widget graph) {
  return tester.pumpWidget(
    MaterialApp(
      home: Scaffold(body: Column(children: [graph])),
    ),
  );
}

SfCartesianChart _chart(WidgetTester tester) =>
    tester.widget<SfCartesianChart>(find.byType(SfCartesianChart));

int _ms(dynamic time) => (time as DateTime).millisecondsSinceEpoch;

/// Filled bands on either axis; the graph draws none, only lines.
List<PlotBand> _fills(SfCartesianChart chart) => [
  for (var band in [
    ...chart.primaryXAxis.plotBands,
    ...chart.primaryYAxis.plotBands,
  ])
    if (band.start != band.end) band,
];

/// The reboot lines as seconds before [_now].
List<int> _rebootLines(SfCartesianChart chart) => [
  for (var band in chart.primaryXAxis.plotBands)
    if (band.start == band.end) (_now - _ms(band.start)) ~/ 1000,
];

void main() {
  var title = M.grpc.DishGetStatus.signal_quality;

  testWidgets('graph breaks the line at gaps and marks reboots', (
    tester,
  ) async {
    var samples = [
      ..._run(600, 500, 0.9),
      // 20 s without samples: a line break, too short for a band.
      ..._run(480, 400, 0.5),
      // 100 s without samples, then the dish is back after a reboot.
      ..._run(300, 0, 0.93),
    ];
    var reboot = samples.indexWhere((s) => s.$1 == 300);
    await _pump(
      tester,
      buildSeriesGraph(
        _series(samples, reboots: [reboot]),
        endMs: _now,
        live: true,
      ),
    );
    expect(tester.takeException(), isNull);
    expect(find.text('$title, 93 %'), findsOneWidget);
    expect(tester.widget<Icon>(find.byIcon(Icons.circle)).color, Colors.green);

    var chart = _chart(tester);
    var x = chart.primaryXAxis as DateTimeAxis;
    expect(_ms(x.minimum), _now - kStatusSeriesWindowMs);
    expect(_ms(x.maximum), _now);
    var y = chart.primaryYAxis as NumericAxis;
    expect(y.minimum, 0);
    expect(y.maximum, 100);
    expect(
      [for (var band in y.plotBands) band.start],
      [kSignalQualityFair, kSignalQualityGood],
    );

    // Unsampled time, including the 300 s before the first sample, is left blank.
    expect(_fills(chart), isEmpty);
    expect(_rebootLines(chart), [300]);

    expect(chart.series.first, isA<LineSeries>());
    dynamic line = chart.series.first;
    var values = [
      for (var i = 0; i < line.dataSource.length; ++i)
        line.yValueMapper(line.dataSource[i], i),
    ];
    expect(values.length, samples.length + 2);
    expect(values.where((v) => v == null).length, 2);
  });

  testWidgets('title value is neutral once a live series is stale', (
    tester,
  ) async {
    var series = _series(_run(120, 6, 0.1));
    await _pump(tester, buildSeriesGraph(series, endMs: _now, live: true));
    expect(find.text('$title, 10 %'), findsOneWidget);
    expect(find.byIcon(Icons.circle), findsNothing);

    // A stored snapshot has no "now" to be stale against.
    await _pump(tester, buildSeriesGraph(series, endMs: _now));
    expect(tester.widget<Icon>(find.byIcon(Icons.circle)).color, Colors.red);

    await _pump(
      tester,
      buildSeriesGraph(_series(_run(120, 4, 0.5)), endMs: _now, live: true),
    );
    expect(tester.widget<Icon>(find.byIcon(Icons.circle)).color, Colors.amber);
  });

  testWidgets('samples without a connected neighbor are drawn as markers', (
    tester,
  ) async {
    await _pump(
      tester,
      buildSeriesGraph(
        _series([(100, 0.4), (50, 0.6), (48, null), (46, 0.7), (44, 0.7)]),
        endMs: _now,
      ),
    );
    expect(tester.takeException(), isNull);
    var line = _chart(tester).series.single as LineSeries;
    expect(line.markerSettings.isVisible, isTrue);
  });

  testWidgets('graph is empty without a signal quality value', (tester) async {
    for (var graph in [
      buildSeriesGraph(null, endMs: _now),
      buildSeriesGraph(_series([]), endMs: _now),
      buildSeriesGraph(_series([(4, null), (2, null)]), endMs: _now),
      // Samples outside the window.
      buildSeriesGraph(_series(_run(2000, 1000, 0.9)), endMs: _now),
      buildSeriesGraph(
        _series(_run(58, 0, 0.9)),
        endMs: _now,
        minObservedMs: kStatusSeriesMinGraphMs,
      ),
      buildSnapshotSeriesGraph(Snapshot(timestamp: _now)),
    ]) {
      await _pump(tester, graph);
      expect(find.byType(SfCartesianChart), findsNothing);
      expect(find.textContaining(title), findsNothing);
    }
  });

  testWidgets('snapshot graph window ends at the capture time', (tester) async {
    var series = _series(_run(200, 100, 0.9));
    await _pump(
      tester,
      buildSnapshotSeriesGraph(Snapshot(timestamp: _now, statusSeries: series)),
    );
    expect(_ms((_chart(tester).primaryXAxis as DateTimeAxis).maximum), _now);
    expect(_fills(_chart(tester)), isEmpty);

    // A capture time unrelated to the samples falls back to the last sample.
    await _pump(
      tester,
      buildSnapshotSeriesGraph(
        Snapshot(timestamp: 100000, statusSeries: series),
      ),
    );
    expect(
      _ms((_chart(tester).primaryXAxis as DateTimeAxis).maximum),
      _now - 100000,
    );
  });

  group('live graph', () {
    setUp(() => R = Preloaded());

    DishGetStatusResponse status() => DishGetStatusResponse(
      deviceInfo: DeviceInfo(id: 'test-dish'),
      signalQuality: 0.93,
    );

    test('General tab graph waits for one minute of samples', () {
      var general = LiveSeriesGraph(requireMinute: true);
      var dish = LiveSeriesGraph();
      general.update('test-dish', now: _now);
      expect(general.chart, isNull);

      for (var s = 0; s < 60; s += 2) {
        R.statusSeries.add(_now + s * 1000, status());
        general.update('test-dish', now: _now + s * 1000);
        dish.update('test-dish', now: _now + s * 1000);
        expect(general.chart, isNull);
        expect(dish.chart, isNotNull);
      }
      R.statusSeries.add(_now + 60000, status());
      general.update('test-dish', now: _now + 60000);
      expect(general.chart, isNotNull);
    });

    test('graph is rebuilt only for a new sample or a stale one', () {
      var graph = LiveSeriesGraph();
      R.statusSeries.add(_now, status());
      graph.update('test-dish', now: _now);
      var built = graph.chart;
      expect(built, isNotNull);

      graph.update('test-dish', now: _now + 1000);
      graph.update('test-dish', now: _now + 5000);
      expect(graph.chart, same(built));

      // Stale: rebuilt so that the empty area grows, but not on every event.
      graph.update('test-dish', now: _now + 6000);
      var stale = graph.chart;
      expect(stale, isNot(same(built)));
      graph.update('test-dish', now: _now + 7000);
      expect(graph.chart, same(stale));
      graph.update('test-dish', now: _now + 11000);
      expect(graph.chart, isNot(same(stale)));

      R.statusSeries.add(_now + 12000, status());
      var before = graph.chart;
      graph.update('test-dish', now: _now + 12000);
      expect(graph.chart, isNot(same(before)));

      // Nothing is left once the samples leave the window.
      graph.update(
        'test-dish',
        now: _now + 12000 + kStatusSeriesWindowMs + 1000,
      );
      expect(graph.chart, isNull);
    });
  });

  group('report image', () {
    setUpAll(() async {
      await TimeMachine.initialize({
        'rootBundle': rootBundle,
        'timeZone': 'UTC',
      });
    });

    setUp(() => R = Preloaded()..versionName = 'test');

    Future<void> pumpImage(WidgetTester tester, StatusSeries series) async {
      tester.view.physicalSize = const Size(1600, 2400);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);
      final theme = ThemeData();
      await tester.pumpWidget(
        MaterialApp(
          // Ahem's square glyphs need smaller text for existing dish labels.
          theme: theme.copyWith(
            textTheme: theme.textTheme.copyWith(
              bodyMedium: theme.textTheme.bodyMedium!.copyWith(fontSize: 11),
            ),
          ),
          home: Material(
            child: SingleChildScrollView(
              child: Align(
                alignment: Alignment.topLeft,
                child: ShareImage(
                  snap: Snapshot(
                    timestamp: _now,
                    dishTs: _now,
                    dishGetStatus: DishGetStatusResponse(
                      deviceInfo: DeviceInfo(id: 'test-dish'),
                    ),
                    dishGetHistory: DishGetHistoryResponse(
                      popPingLatencyMs: List.filled(2, 10),
                    ),
                    statusSeries: series,
                  ),
                  sourceMode: MapSourceMode.stored,
                  viewOptions: ViewOptions(),
                ),
              ),
            ),
          ),
        ),
      );
    }

    testWidgets('starts with the signal quality graph', (tester) async {
      await pumpImage(tester, _series(_run(120, 0, 0.93)));
      expect(tester.takeException(), isNull);
      expect(find.text('$title, 93 %'), findsOneWidget);
      var charts = tester.widgetList<SfCartesianChart>(
        find.byType(SfCartesianChart),
      );
      expect(charts.length, 2);
      expect(charts.first.primaryXAxis, isA<DateTimeAxis>());
    });

    testWidgets('skips a series shorter than one minute', (tester) async {
      await pumpImage(tester, _series(_run(40, 0, 0.93)));
      expect(tester.takeException(), isNull);
      expect(find.textContaining('$title,'), findsNothing);
      expect(find.byType(SfCartesianChart), findsOneWidget);
    });
  });
}
