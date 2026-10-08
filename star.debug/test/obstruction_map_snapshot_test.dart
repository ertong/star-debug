import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:screenshot/screenshot.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/view/dish.dart';
import 'package:star_debug/theme.dart';
import 'package:star_debug/utils/obstruction_map_context.dart';
import 'package:star_debug/utils/snapshot.dart';
import 'package:star_debug/utils/view_options.dart';
import 'package:star_debug/widgets/obstruction_map.dart';

const _time = 100000;

DishGetObstructionMapResponse _map() => DishGetObstructionMapResponse(
  numRows: 5,
  numCols: 5,
  snr: [0, 0.5, -1, ...List.filled(22, 1.0)],
  mapReferenceFrame: ObstructionMapReferenceFrame.FRAME_EARTH,
);

DishGetStatusResponse _status() => DishGetStatusResponse(
  boresightAzimuthDeg: 350,
  boresightElevationDeg: 60,
  alignmentStats: AlignmentStats(
    desiredBoresightAzimuthDeg: 5,
    desiredBoresightElevationDeg: 65,
  ),
  obstructionStats: DishObstructionStats(
    fractionObstructed: 0.025,
    currentlyObstructed: false,
    validS: 18000,
    avgProlongedObstructionValid: true,
    avgProlongedObstructionDurationS: 12,
    avgProlongedObstructionIntervalS: 600,
  ),
);

Widget _dish({bool forSnapshotImage = true}) => SizedBox(
  width: 380,
  child: DishWidget(
    snap: Snapshot(
      timestamp: _time,
      dishTs: _time - 1000,
      obstructionMapTs: _time - 7000,
      dishGetStatus: _status(),
      dishGetObstructionMap: _map(),
    ),
    sourceMode: MapSourceMode.live,
    viewOptions: ViewOptions(),
    forSnapshotImage: forSnapshotImage,
    statusVisible: false,
  ),
);

Widget _page(Widget child) => MaterialApp(
  theme: StarDebugTheme.build(Brightness.light),
  home: Scaffold(body: SingleChildScrollView(child: child)),
);

void main() {
  testWidgets(
    'snapshot report shows detailed data without popup explanations',
    (tester) async {
      await tester.pumpWidget(_page(_dish()));
      expect(
        find.byKey(const Key('dish-obstruction-snapshot')),
        findsOneWidget,
      );
      expect(find.byKey(const Key('dish-obstruction-minimap')), findsNothing);
      expect(
        tester.getSize(find.byKey(const Key('dish-obstruction-map'))),
        const Size(310, 310),
      );
      expect(find.text(M.obstructions.captured_signal), findsOneWidget);
      expect(find.text(M.obstructions.current_signal), findsNothing);
      expect(find.text(M.obstructions.sector_legend), findsOneWidget);
      expect(find.text(M.obstructions.arrow_legend), findsOneWidget);
      expect(find.text('4.17%'), findsOneWidget);
      expect(find.text('1 / 24'), findsOneWidget);
      expect(find.text('2.50%'), findsOneWidget);
      expect(find.text(M.obstructions.largest_patch), findsOneWidget);
      expect(find.text(M.obstructions.collection_time), findsOneWidget);
      expect(find.text(M.obstructions.average_duration), findsOneWidget);
      expect(find.text(M.obstructions.average_interval), findsOneWidget);
      expect(find.text('15.0°'), findsOneWidget);
      expect(
        find.text('${M.obstructions.capture_map_age}: 7 s'),
        findsOneWidget,
      );
      expect(find.text(M.obstructions.capture_status_age), findsOneWidget);
      for (final text in [
        M.obstructions.reading_map,
        M.obstructions.arrow_guide,
        M.obstructions.sectors_hint,
        M.obstructions.cells_hint,
        M.obstructions.dish_fraction_hint,
        M.obstructions.orientation_hint,
      ]) {
        expect(find.text(text), findsNothing);
      }
      expect(find.byIcon(Icons.open_in_full), findsNothing);
      expect(find.byType(ExpansionTile), findsNothing);
      await tester.tap(find.text(M.obstructions.title));
      await tester.pumpAndSettle();
      expect(find.byType(Dialog), findsNothing);
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets('ordinary dish page still opens the full explanatory popup', (
    tester,
  ) async {
    await tester.pumpWidget(_page(_dish(forSnapshotImage: false)));
    expect(find.byKey(const Key('dish-obstruction-minimap')), findsOneWidget);
    expect(find.byKey(const Key('dish-obstruction-snapshot')), findsNothing);
    await tester.tap(find.byIcon(Icons.open_in_full));
    await tester.pumpAndSettle();
    expect(find.byType(Dialog), findsOneWidget);
    expect(find.text(M.obstructions.cells_hint), findsOneWidget);
    expect(find.text(M.obstructions.dish_fraction_hint), findsOneWidget);
    expect(find.text(M.obstructions.orientation_hint), findsOneWidget);
    expect(find.text(M.obstructions.reading_map), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('snapshot preserves stale-status filtering and brief warnings', (
    tester,
  ) async {
    await tester.pumpWidget(
      _page(
        SizedBox(
          width: 380,
          child: ObstructionMapWidget(
            forSnapshotImage: true,
            sourceMode: MapSourceMode.live,
            map: _map(),
            status: _status()..obstructionStats.patchesValid = 0,
            timestamp: _time,
            receivedTime: _time - 66000,
            statusReceivedTime: _time - 6000,
          ),
        ),
      ),
    );
    expect(find.byKey(const Key('dish-obstruction-map')), findsOneWidget);
    expect(find.text(M.obstructions.delayed_short), findsOneWidget);
    expect(find.text(M.obstructions.status_delayed_short), findsOneWidget);
    expect(find.text(M.obstructions.dish_fraction), findsNothing);
    expect(find.text(M.obstructions.captured_signal), findsNothing);
    expect(find.text(M.obstructions.orientation), findsNothing);
    expect(find.text('4.17%'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('UT report qualifies compass and near-vertical dish azimuth', (
    tester,
  ) async {
    final status = _status()
      ..boresightElevationDeg = 85
      ..ned2dishQuaternion = Quaternion(qScalar: 0, qX: 0, qY: 1, qZ: 0);
    await tester.pumpWidget(
      _page(
        SizedBox(
          width: 380,
          child: ObstructionMapWidget(
            forSnapshotImage: true,
            map: _map()
              ..mapReferenceFrame = ObstructionMapReferenceFrame.FRAME_UT,
            status: status,
            timestamp: _time,
            statusReceivedTime: _time,
          ),
        ),
      ),
    );
    expect(find.text(M.obstructions.dish_frame_image), findsOneWidget);
    expect(find.text(M.obstructions.heading_uncertain_short), findsOneWidget);
    expect(find.text(M.obstructions.azimuth_difference), findsNothing);
    expect(find.text(M.obstructions.dish_frame_oriented), findsNothing);
    expect(find.text(M.obstructions.heading_uncertain), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets(
    'snapshot keeps unavailable states instead of clear conclusions',
    (tester) async {
      for (final (map, status, message) in [
        (null, null, M.obstructions.unavailable),
        (
          DishGetObstructionMapResponse(),
          null,
          M.obstructions.invalid_map_capture,
        ),
        (
          DishGetObstructionMapResponse(numRows: 1, numCols: 1, snr: [-1]),
          null,
          M.obstructions.gathering_capture,
        ),
        (
          _map(),
          _status()..obstructionStats.patchesValid = 0,
          M.obstructions.gathering_capture,
        ),
      ]) {
        await tester.pumpWidget(
          _page(
            SizedBox(
              width: 380,
              child: ObstructionMapWidget(
                forSnapshotImage: true,
                sourceMode: MapSourceMode.live,
                map: map,
                status: status,
                timestamp: _time,
                statusReceivedTime: status == null ? null : _time,
              ),
            ),
          ),
        );
        expect(find.text(message), findsOneWidget);
        expect(find.byKey(const Key('dish-obstruction-map')), findsNothing);
        expect(find.text(M.obstructions.no_blocked_cells), findsNothing);
        expect(find.text(M.obstructions.blocked_cells), findsNothing);
        expect(find.text(M.obstructions.status_unknown_short), findsNothing);
        expect(
          find.textContaining(M.obstructions.timing_unknown),
          findsNothing,
        );
        expect(find.text(M.obstructions.capture_status_age), findsNothing);
        expect(tester.takeException(), isNull);
      }
    },
  );

  testWidgets('long image capture fits both languages and app themes', (
    tester,
  ) async {
    final original = M;
    addTearDown(() => M = original);
    for (final language in ['en', 'uk']) {
      M = I18n.instance.langs[language]!();
      for (final brightness in Brightness.values) {
        final png = await tester.runAsync(
          () => ScreenshotController().captureFromLongWidget(
            Theme(
              data: StarDebugTheme.build(brightness),
              child: Material(
                child: SizedBox(
                  width: 760,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _dish(),
                      const SizedBox(width: 380, child: Text('Router')),
                    ],
                  ),
                ),
              ),
            ),
            delay: const Duration(milliseconds: 10),
            pixelRatio: 2,
          ),
        );
        final codec = await tester.runAsync(
          () => ui.instantiateImageCodec(png!),
        );
        final frame = await tester.runAsync(() => codec!.getNextFrame());
        expect(frame!.image.width, 1520);
        expect(frame.image.height, greaterThan(620));
        frame.image.dispose();
        codec!.dispose();
        await tester.pump();
        expect(tester.takeException(), isNull, reason: '$language $brightness');
      }
    }
  });
}
