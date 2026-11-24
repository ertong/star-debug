import 'dart:async';

import 'package:fixnum/fixnum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/dialogs/signal_quality_details.dart';
import 'package:star_debug/pages/view/dish.dart';
import 'package:star_debug/pages/view/status_series_graph.dart';
import 'package:star_debug/utils/snapshot.dart';
import 'package:star_debug/utils/status_series.dart';
import 'package:star_debug/utils/status_series_detail.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

const int _now = 1700000000000;

/// One sample every 2 s from [fromAgo] down to [toAgo] seconds before [_now].
StatusSeries _series(
  int fromAgo,
  int toAgo, {
  double Function(int ago)? quality,
  double? Function(int ago)? azimuth,
  bool pointing = false,
  bool sats = false,
}) {
  var agos = [for (var ago = fromAgo; ago >= toAgo; ago -= 2) ago];
  return StatusSeries(
    times: [for (var ago in agos) _now - ago * 1000],
    signalQuality: [for (var ago in agos) quality?.call(ago) ?? 0.9],
    gpsSats: [for (var _ in agos) sats ? 14 : null],
    azimuth: [
      for (var ago in agos)
        azimuth != null ? azimuth(ago) : (pointing ? 12.5 : null),
    ],
    elevation: [for (var _ in agos) pointing || azimuth != null ? 60.25 : null],
  );
}

Future<void> _pump(
  WidgetTester tester,
  SignalQualityDetailsData Function() load, {
  Stream<dynamic>? updates,
}) {
  return tester.pumpWidget(
    MaterialApp(
      home: Scaffold(
        body: SignalQualityDetails(load: load, updates: updates),
      ),
    ),
  );
}

List<SfCartesianChart> _charts(WidgetTester tester) =>
    tester.widgetList<SfCartesianChart>(find.byType(SfCartesianChart)).toList();

int _ms(dynamic time) => (time as DateTime).millisecondsSinceEpoch;

List<SeriesPoint> _points(CartesianSeries series) =>
    ((series as dynamic).dataSource as List).cast<SeriesPoint>();

void main() {
  var title = M.grpc.DishGetStatus.signal_quality;

  group('decimateMinMax', () {
    test('keeps the minimum and maximum of every column', () {
      var points = [
        for (var i = 0; i < 1000; ++i)
          SeriesPoint(i * 1000, i == 437 ? -5.0 : (i == 438 ? 99.0 : i % 7)),
      ];
      var res = decimateMinMax(
        points,
        startMs: 0,
        endMs: 1000000,
        buckets: 100,
      );
      expect(res.length, lessThanOrEqualTo(200));
      expect(res.map((p) => p.value), containsAll([-5.0, 99.0, 0.0, 6.0]));
      for (var i = 1; i < res.length; ++i)
        expect(res[i].time, greaterThan(res[i - 1].time));
      // Every column still spans its original extremes.
      for (var b = 0; b < 100; ++b) {
        var column = points.sublist(b * 10, b * 10 + 10).map((p) => p.value!);
        var kept = res
            .where((p) => p.time ~/ 10000 == b)
            .map((p) => p.value!)
            .toList();
        expect(kept, contains(column.reduce((a, c) => a < c ? a : c)));
        expect(kept, contains(column.reduce((a, c) => a > c ? a : c)));
      }
    });

    test('keeps breaks and leaves short input alone', () {
      var short = [SeriesPoint(0, 1), SeriesPoint(1000, 2)];
      expect(
        decimateMinMax(short, startMs: 0, endMs: 2000, buckets: 10),
        same(short),
      );

      var points = [
        for (var i = 0; i < 50; ++i) SeriesPoint(i, 1),
        SeriesPoint(50, null),
        for (var i = 51; i < 100; ++i) SeriesPoint(i, 2),
      ];
      var res = decimateMinMax(points, startMs: 0, endMs: 100, buckets: 1);
      expect(res.map((p) => p.value), [1, null, 2]);
    });
  });

  test('unwrapAzimuth removes the ±180 jump', () {
    expect(unwrapAzimuth([178, 179.5, -179, null, -178, 179, 10]), [
      178,
      179.5,
      181,
      null,
      182,
      179,
      10,
    ]);
    expect(unwrapAzimuth([-179, 179, 178]), [-179, -181, -182]);
    expect(unwrapAzimuth([null, null]), [null, null]);
  });

  group('history time mapping', () {
    test('the last sample of the rotated buffer is at the receive time', () {
      expect(historySampleTimeMs(_now, 900, 899), _now);
      expect(historySampleTimeMs(_now, 900, 0), _now - 899000);

      // A full ring: the slot before current % n holds the newest sample.
      var data = [for (var i = 0; i < 900; ++i) i.toDouble()];
      var points = historyPoints(data, 900 * 3 + 100, _now);
      expect(points.length, 900);
      expect(points.last.value, 99);
      expect(points.last.time, _now);
      expect(points.first.value, 100);
      expect(points.first.time, _now - 899000);
    });

    test('slots the dish has not written yet are left out', () {
      var data = List.filled(900, 0.0);
      for (var i = 0; i < 30; ++i) data[i] = 0.5;
      var points = historyPoints(data, 30, _now);
      expect(points.length, 30);
      expect(points.every((p) => p.value == 0.5), isTrue);
      expect(points.first.time, _now - 29000);
      expect(historyPoints([], 0, _now), isEmpty);
    });

    test('outage start is read as GPS or Unix time, whichever fits', () {
      var startMs = _now - 60000;
      var gpsNs = (startMs - kGpsEpochUnixMs + kGpsUtcOffsetMs) * 1000000;
      expect(outageStartMs(gpsNs, _now), startMs);
      expect(outageStartMs(startMs * 1000000, _now), startMs);

      expect(
        outageIntervalsMs([
          DishOutage(
            startTimestampNs: Int64(gpsNs),
            durationNs: Int64(2500000000),
          ),
          DishOutage(),
        ], _now),
        [(startMs, startMs + 2500)],
      );
    });
  });

  testWidgets('history graphs use the time axis', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: buildGraph("Latency", "ms", 3, _now, [1, 2, 3, 4, 5]),
        ),
      ),
    );
    expect(tester.takeException(), isNull);
    expect(find.text('Latency, 3.00 ms'), findsOneWidget);
    var chart = _charts(tester).single;
    var x = chart.primaryXAxis as DateTimeAxis;
    expect(_ms(x.maximum), _now);
    expect(_ms(x.minimum), _now - 5000);
    dynamic line = chart.series.single;
    expect(_ms(line.xValueMapper(line.dataSource[4], 4)), _now);
    expect(_ms(line.xValueMapper(line.dataSource[0], 0)), _now - 4000);
    // Rotated by current: 4, 5, 1, 2, 3.
    expect(line.yValueMapper(line.dataSource[0], 0), 4);
  });

  testWidgets('stored series offers only the windows it can fill', (
    tester,
  ) async {
    Future<void> pump(int spanS, {bool live = false}) => _pump(
      tester,
      () => SignalQualityDetailsData(
        series: _series(spanS, 0),
        endMs: _now,
        live: live,
      ),
    );

    await pump(180);
    expect(find.byType(ChoiceChip), findsOneWidget);
    expect(find.text('5 m'), findsOneWidget);

    await pump(600);
    expect(find.text('15 m'), findsOneWidget);
    expect(find.text('1 h'), findsNothing);
    expect(
      tester
          .widget<ChoiceChip>(find.widgetWithText(ChoiceChip, '15 m'))
          .selected,
      isTrue,
    );
    var x = _charts(tester).first.primaryXAxis as DateTimeAxis;
    expect(_ms(x.minimum), _now - 15 * 60000);

    await tester.tap(find.text('5 m'));
    await tester.pump();
    x = _charts(tester).first.primaryXAxis as DateTimeAxis;
    expect(_ms(x.minimum), _now - 5 * 60000);
    expect(_ms(x.maximum), _now);

    await pump(180, live: true);
    expect(find.byType(ChoiceChip), findsNWidgets(3));
    expect(find.text('1 h'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('pointing and GPS graphs are omitted without values', (
    tester,
  ) async {
    await _pump(
      tester,
      () => SignalQualityDetailsData(series: _series(600, 0), endMs: _now),
    );
    expect(_charts(tester).length, 1);
    expect(find.text('$title, 90 %'), findsOneWidget);
    expect(find.text(M.live.outages), findsNothing);
    expect(find.text(M.grpc.DishGetStatus.pop_ping_drop_rate), findsNothing);

    await _pump(
      tester,
      () => SignalQualityDetailsData(
        series: _series(600, 0, pointing: true, sats: true),
        endMs: _now,
      ),
    );
    expect(tester.takeException(), isNull);
    expect(_charts(tester).length, 4);
    expect(
      find.text('${M.grpc.DishGetStatus.boresight_azimuth_deg}, 12.50'),
      findsOneWidget,
    );
    expect(
      find.text('${M.grpc.DishGetStatus.boresight_elevation_deg}, 60.25'),
      findsOneWidget,
    );
    expect(find.text('${M.grpc.DishGpsStats.gps_sats}, 14'), findsOneWidget);

    await _pump(
      tester,
      () => SignalQualityDetailsData(series: null, endMs: _now),
    );
    expect(_charts(tester), isEmpty);
    expect(find.text(M.general.no_data_found), findsOneWidget);
  });

  testWidgets('azimuth is unwrapped before plotting', (tester) async {
    await _pump(
      tester,
      () => SignalQualityDetailsData(
        series: _series(20, 0, azimuth: (ago) => ago > 10 ? 179 : -179),
        endMs: _now,
      ),
    );
    var values = _points(_charts(tester)[1].series.single).map((p) => p.value);
    expect(values.toSet(), {179, 181});
  });

  testWidgets('one hour of samples is reduced to the columns of the graph', (
    tester,
  ) async {
    await _pump(
      tester,
      () => SignalQualityDetailsData(
        series: _series(
          3598,
          0,
          quality: (ago) => ago == 1800 ? 0.02 : (ago == 1802 ? 0.99 : 0.5),
        ),
        endMs: _now,
        live: true,
      ),
    );
    await tester.tap(find.text('1 h'));
    await tester.pump();
    expect(tester.takeException(), isNull);
    var chart = _charts(tester).single;
    var width = tester.getSize(find.byType(SfCartesianChart)).width;
    var points = _points(chart.series.single);
    expect(points.length, lessThan(1800));
    expect(points.length, lessThanOrEqualTo(width.floor() * 2));
    var values = points.map((p) => p.value!.round()).toSet();
    expect(values, containsAll([2, 99, 50]));
  });

  testWidgets('drop rate and outages of the dish history are overlaid', (
    tester,
  ) async {
    var outageStart = _now - 120000;
    await _pump(
      tester,
      () => SignalQualityDetailsData(
        series: _series(600, 0),
        endMs: _now,
        historyTs: _now - 1000,
        history: DishGetHistoryResponse(
          current: Int64(5000),
          popPingDropRate: [for (var i = 0; i < 900; ++i) i == 0 ? 1.0 : 0.0],
          outages: [
            DishOutage(
              startTimestampNs: Int64(
                (outageStart - kGpsEpochUnixMs + kGpsUtcOffsetMs) * 1000000,
              ),
              durationNs: Int64(10000000000),
            ),
          ],
        ),
      ),
    );
    expect(tester.takeException(), isNull);
    expect(find.text(M.live.outages), findsOneWidget);
    expect(find.text(M.grpc.DishGetStatus.pop_ping_drop_rate), findsOneWidget);

    var chart = _charts(tester).single;
    var axis = chart.axes.single as NumericAxis;
    expect(axis.name, kDropRateAxis);
    expect(axis.opposedPosition, isTrue);
    expect(axis.maximum, 1);
    var drop = chart.series.firstWhere((s) => s.yAxisName == kDropRateAxis);
    var points = _points(drop);
    // The history ends one second before the graph does.
    expect(points.last.time, _now - 1000);
    expect(points.every((p) => p.time >= _now - 15 * 60000), isTrue);

    var outage = chart.primaryXAxis.plotBands.firstWhere(
      (b) => b.color == kOutageColor,
    );
    expect(_ms(outage.start), outageStart);
    expect(_ms(outage.end), outageStart + 10000);
  });

  testWidgets('live view follows its source', (tester) async {
    var updates = StreamController<dynamic>.broadcast();
    addTearDown(updates.close);
    var end = _now;
    var quality = 0.9;
    await _pump(
      tester,
      () => SignalQualityDetailsData(
        series: StatusSeries(
          times: [end - 4000, end - 2000, end],
          signalQuality: [0.9, 0.9, quality],
          gpsSats: [null, null, null],
          azimuth: [null, null, null],
          elevation: [null, null, null],
        ),
        endMs: end,
        live: true,
      ),
      updates: updates.stream,
    );
    expect(find.text('$title, 90 %'), findsOneWidget);
    expect(updates.hasListener, isTrue);

    end += 2000;
    quality = 0.4;
    updates.add(null);
    await tester.pump();
    await tester.pump();
    expect(find.text('$title, 40 %'), findsOneWidget);

    await tester.pumpWidget(const SizedBox());
    expect(updates.hasListener, isFalse);
  });

  testWidgets('the graph title opens the detail view', (tester) async {
    var snap = Snapshot(
      timestamp: _now,
      statusSeries: _series(600, 0, sats: true),
    );
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              buildSnapshotSeriesGraph(snap, expandable: true),
              buildSnapshotSeriesGraph(snap),
            ],
          ),
        ),
      ),
    );
    expect(find.byIcon(Icons.open_in_full), findsOneWidget);
    expect(
      find.bySemanticsLabel(RegExp(M.live.signal_quality_details)),
      findsOneWidget,
    );
    await tester.tap(find.text('$title, 90 %').first);
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
    expect(find.byType(SignalQualityDetails), findsOneWidget);
    // Signal quality and GPS satellites.
    expect(
      find.descendant(
        of: find.byType(SignalQualityDetails),
        matching: find.byType(SfCartesianChart),
      ),
      findsNWidgets(2),
    );

    await tester.tap(find.byTooltip(M.general.close));
    await tester.pumpAndSettle();
    expect(find.byType(SignalQualityDetails), findsNothing);
  });
}
