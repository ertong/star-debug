import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/format.dart';
import 'package:star_debug/utils/obstruction_map_context.dart';
import 'package:star_debug/utils/obstruction_map_rendering.dart';
import 'package:star_debug/widgets/obstruction_map.dart';

const _reference = 1710000100000;

DishGetObstructionMapResponse _map({bool earth = false}) =>
    DishGetObstructionMapResponse(
      numRows: 3,
      numCols: 3,
      snr: [1, 1, 1, 1, 1, 1, 1, 0, 1],
      mapReferenceFrame: earth
          ? ObstructionMapReferenceFrame.FRAME_EARTH
          : ObstructionMapReferenceFrame.FRAME_UT,
    );

DishGetStatusResponse _status({DishObstructionStats? stats}) =>
    DishGetStatusResponse(
      boresightAzimuthDeg: 90,
      boresightElevationDeg: 60,
      ned2dishQuaternion: Quaternion(
        qScalar: 0,
        qX: 0,
        qY: math.cos(math.pi / 12),
        qZ: math.sin(math.pi / 12),
      ),
      obstructionStats: stats,
    );

Widget _page(ObstructionMapWidget child) => MaterialApp(
  home: Scaffold(body: SingleChildScrollView(child: child)),
);

class _MapMarks extends TestRecordingCanvas {
  int references = 0;
  int arrowLines = 0;
  int blockedCells = 0;

  @override
  void drawParagraph(ui.Paragraph paragraph, Offset offset) {
    references++;
  }

  @override
  void drawLine(Offset p1, Offset p2, Paint paint) {
    if (paint.color == Colors.white) arrowLines++;
  }

  @override
  void drawRect(Rect rect, Paint paint) {
    if (paint.color.toARGB32() ==
        ObstructionMapPalette.obstructedColor.toARGB32()) {
      blockedCells++;
    }
  }
}

_MapMarks _marks(WidgetTester tester) {
  final painter = tester
      .widget<CustomPaint>(find.byKey(const Key('dish-obstruction-minimap')))
      .painter!;
  final canvas = _MapMarks();
  painter.paint(canvas, const Size(108, 108));
  return canvas;
}

void main() {
  setUp(() {
    R = Preloaded();
    R.versionName = 'test';
  });

  testWidgets('live status expires independently of a retained 30-second map', (
    tester,
  ) async {
    final map = _map();
    final status = _status();
    for (final statusAge in [4999, 5000]) {
      await tester.pumpWidget(
        _page(
          ObstructionMapWidget(
            map: map,
            status: status,
            sourceMode: MapSourceMode.live,
            timestamp: _reference,
            receivedTime: _reference - 30000,
            statusReceivedTime: _reference - statusAge,
          ),
        ),
      );
      final marks = _marks(tester);
      expect(marks.blockedCells, 1);
      expect(marks.references, statusAge < 5000 ? greaterThan(0) : 0);
      expect(marks.arrowLines, statusAge < 5000 ? greaterThan(0) : 0);
      expect(find.text(M.obstructions.delayed_short), findsNothing);
      expect(
        find.text(M.obstructions.status_delayed_short),
        statusAge < 5000 ? findsNothing : findsOneWidget,
      );
    }
    expect(map.snr, [1, 1, 1, 1, 1, 1, 1, 0, 1]);
    await tester.tap(find.text(M.obstructions.title));
    await tester.pumpAndSettle();
    expect(find.textContaining(M.obstructions.source_live), findsWidgets);
    expect(find.text(M.obstructions.arrow_guide), findsNothing);
    expect(find.text(M.obstructions.status_delayed), findsOneWidget);
    expect(find.text('90.0°'), findsNothing);
    expect(find.text('60.0°'), findsNothing);
    expect(find.byKey(const Key('dish-obstruction-map')), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('stale and unknown live status cannot suppress valid map cells', (
    tester,
  ) async {
    final stats = DishObstructionStats(
      patchesValid: 0,
      currentlyObstructed: true,
      fractionObstructed: 0.75,
      validS: 123,
      avgProlongedObstructionValid: true,
      avgProlongedObstructionDurationS: 17,
      avgProlongedObstructionIntervalS: 80,
    );
    for (final received in [_reference - 5000, null, _reference + 1]) {
      // Both explicit stats and stats nested in the status must be filtered.
      for (final explicitStats in [false, true]) {
        await tester.pumpWidget(
          _page(
            ObstructionMapWidget(
              map: _map(),
              status: _status(stats: explicitStats ? null : stats),
              stats: explicitStats ? stats : null,
              sourceMode: MapSourceMode.live,
              timestamp: _reference,
              receivedTime: _reference,
              statusReceivedTime: received,
            ),
          ),
        );
        final marks = _marks(tester);
        expect(marks.blockedCells, 1);
        expect(marks.references, 0);
        expect(marks.arrowLines, 0);
        expect(find.text(M.obstructions.signal_blocked), findsNothing);
        expect(find.text(M.obstructions.recorded_obstructions), findsOneWidget);
        expect(find.textContaining('75.00%'), findsNothing);
        await tester.tap(find.text(M.obstructions.title));
        await tester.pumpAndSettle();
        for (final label in [
          M.obstructions.current_signal,
          M.obstructions.collection_time,
          M.obstructions.average_duration,
          M.obstructions.average_interval,
        ]) {
          expect(find.text(label), findsNothing);
        }
        await tester.tap(find.byTooltip(M.general.close));
        await tester.pumpAndSettle();
      }
    }
    expect(tester.takeException(), isNull);
  });

  testWidgets('EARTH references survive stale status while the arrow expires', (
    tester,
  ) async {
    await tester.pumpWidget(
      _page(
        ObstructionMapWidget(
          map: _map(earth: true),
          status: _status(),
          sourceMode: MapSourceMode.live,
          timestamp: _reference,
          receivedTime: _reference,
          statusReceivedTime: _reference - 5000,
        ),
      ),
    );
    final marks = _marks(tester);
    expect(marks.references, greaterThan(0));
    expect(marks.arrowLines, 0);
    expect(marks.blockedCells, 1);
  });

  testWidgets('delayed map keeps independently fresh status orientation', (
    tester,
  ) async {
    await tester.pumpWidget(
      _page(
        ObstructionMapWidget(
          map: _map(),
          status: _status(),
          sourceMode: MapSourceMode.live,
          timestamp: _reference,
          receivedTime: _reference - 65001,
          statusReceivedTime: _reference - 1000,
        ),
      ),
    );
    final marks = _marks(tester);
    expect(marks.references, greaterThan(0));
    expect(marks.arrowLines, greaterThan(0));
    expect(find.text(M.obstructions.delayed_short), findsOneWidget);
    expect(find.text(M.obstructions.status_delayed_short), findsNothing);
  });

  testWidgets('historic captures retain fresh orientation and capture ages', (
    tester,
  ) async {
    for (final mode in [MapSourceMode.imported, MapSourceMode.stored]) {
      await tester.pumpWidget(
        _page(
          ObstructionMapWidget(
            map: _map(),
            status: _status(),
            sourceMode: mode,
            timestamp: _reference,
            receivedTime: _reference - 30000,
            statusReceivedTime: _reference - 1000,
          ),
        ),
      );
      final marks = _marks(tester);
      expect(marks.references, greaterThan(0));
      expect(marks.arrowLines, greaterThan(0));
      await tester.tap(find.text(M.obstructions.title));
      await tester.pumpAndSettle();
      expect(
        find.textContaining(
          mode == MapSourceMode.imported
              ? M.obstructions.source_imported
              : M.obstructions.source_stored,
        ),
        findsWidgets,
      );
      expect(
        find.textContaining(
          '${M.obstructions.capture_map_age}: ${Format.sec(30)}',
        ),
        findsWidgets,
      );
      expect(find.text(M.obstructions.capture_status_age), findsOneWidget);
      expect(find.text(Format.sec(1)), findsOneWidget);
      expect(find.text(M.obstructions.status_delayed_capture), findsNothing);
      expect(find.text(M.obstructions.status_unknown_capture), findsNothing);
      await tester.tap(find.byTooltip(M.general.close));
      await tester.pumpAndSettle();
    }
  });

  testWidgets(
    'unknown and estimated frozen status keep qualified orientation',
    (tester) async {
      for (final mode in [MapSourceMode.imported, MapSourceMode.stored]) {
        for (final estimated in [false, true]) {
          await tester.pumpWidget(
            _page(
              ObstructionMapWidget(
                map: _map(),
                status: _status(),
                sourceMode: mode,
                timestamp: _reference,
                receivedTime: _reference,
                statusReceivedTime: estimated ? _reference : null,
                statusTimestampIsEstimated: estimated,
              ),
            ),
          );
          final marks = _marks(tester);
          expect(marks.references, greaterThan(0));
          expect(marks.arrowLines, greaterThan(0));
          await tester.tap(find.text(M.obstructions.title));
          await tester.pumpAndSettle();
          expect(
            find.text(M.obstructions.status_unknown_capture),
            findsWidgets,
          );
          expect(
            find.textContaining(M.obstructions.timing_unknown),
            findsWidgets,
          );
          expect(find.text(M.obstructions.capture_status_age), findsOneWidget);
          expect(find.text(Format.sec(0)), findsNothing);
          await tester.tap(find.byTooltip(M.general.close));
          await tester.pumpAndSettle();
        }
      }
    },
  );

  testWidgets('known stale capture status loses orientation and statistics', (
    tester,
  ) async {
    for (final mode in [MapSourceMode.imported, MapSourceMode.stored]) {
      await tester.pumpWidget(
        _page(
          ObstructionMapWidget(
            map: _map(),
            status: _status(
              stats: DishObstructionStats(
                patchesValid: 0,
                currentlyObstructed: true,
              ),
            ),
            sourceMode: mode,
            timestamp: _reference,
            receivedTime: _reference,
            statusReceivedTime: _reference - 5000,
          ),
        ),
      );
      final marks = _marks(tester);
      expect(marks.blockedCells, 1);
      expect(marks.references, 0);
      expect(marks.arrowLines, 0);
      await tester.tap(find.text(M.obstructions.title));
      await tester.pumpAndSettle();
      expect(find.text(M.obstructions.status_delayed_capture), findsOneWidget);
      expect(find.text(M.obstructions.captured_signal), findsNothing);
      expect(find.text('90.0°'), findsNothing);
      await tester.tap(find.byTooltip(M.general.close));
      await tester.pumpAndSettle();
    }
  });

  testWidgets('invalid and unobserved captures do not promise live progress', (
    tester,
  ) async {
    for (final mode in [MapSourceMode.imported, MapSourceMode.stored]) {
      for (final malformed in [false, true]) {
        await tester.pumpWidget(
          _page(
            ObstructionMapWidget(
              map: malformed
                  ? DishGetObstructionMapResponse(numRows: 2, numCols: 3)
                  : DishGetObstructionMapResponse(
                      numRows: 1,
                      numCols: 1,
                      snr: [-1],
                    ),
              sourceMode: mode,
              timestamp: _reference,
            ),
          ),
        );
        expect(
          find.text(
            malformed
                ? M.obstructions.invalid_map_capture
                : M.obstructions.gathering_capture,
          ),
          findsOneWidget,
        );
        expect(find.text(M.obstructions.invalid_map), findsNothing);
        expect(find.text(M.obstructions.gathering), findsNothing);
        expect(find.byKey(const Key('dish-obstruction-minimap')), findsNothing);
      }
    }
    expect(tester.takeException(), isNull);
  });
}
