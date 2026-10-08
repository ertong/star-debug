import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image/image.dart' as img;
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/pages/dialogs/share_screenshot.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/theme.dart';
import 'package:star_debug/utils/obstruction_map_context.dart';
import 'package:star_debug/utils/snapshot.dart';
import 'package:time_machine2/time_machine2.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await TimeMachine.initialize({'rootBundle': rootBundle, 'timeZone': 'UTC'});
  });

  setUp(() {
    R = Preloaded()..versionName = 'test';
  });

  for (final (name, router, history, width) in [
    ('dish', false, false, 760),
    ('dish and router', true, false, 1520),
    ('dish, router and history', true, true, 2280),
  ]) {
    testWidgets('screenshot captures $name with obstruction report', (
      tester,
    ) async {
      final theme = StarDebugTheme.build(Brightness.light);
      await tester.pumpWidget(
        MaterialApp(
          // Ahem's square glyphs need smaller text for existing dish labels.
          theme: theme.copyWith(
            textTheme: theme.textTheme.copyWith(
              bodyMedium: theme.textTheme.bodyMedium!.copyWith(fontSize: 11),
            ),
          ),
          home: ShareScreenshot(
            sourceMode: MapSourceMode.stored,
            snap: Snapshot(
              timestamp: 100000,
              dishTs: 100000,
              obstructionMapTs: 100000,
              dishGetStatus: DishGetStatusResponse(),
              dishGetObstructionMap: DishGetObstructionMapResponse(
                numRows: 2,
                numCols: 2,
                snr: [0, 1, 1, 1],
                mapReferenceFrame: ObstructionMapReferenceFrame.FRAME_EARTH,
              ),
              routerGetStatus: router ? WifiGetStatusResponse() : null,
              dishGetHistory: history
                  ? DishGetHistoryResponse(
                      popPingLatencyMs: List.filled(900, 10),
                      popPingDropRate: List.filled(900, 0),
                      uplinkThroughputBps: List.filled(900, 1000),
                      downlinkThroughputBps: List.filled(900, 2000),
                      powerIn: List.filled(900, 40),
                    )
                  : null,
            ),
          ),
        ),
      );

      // Exercise the production off-screen layout and JPEG conversion.
      final dynamic state = tester.state(find.byType(ShareScreenshot));
      await tester.runAsync(() async => await state.run());
      await tester.pumpAndSettle();

      expect(tester.takeException(), isNull);
      expect(find.text('Error'), findsNothing);
      expect(find.text('Share'), findsOneWidget);
      final preview = tester.widget<Image>(find.byType(Image));
      final jpeg = img.decodeJpg((preview.image as MemoryImage).bytes);
      expect(jpeg, isNotNull);
      expect(jpeg!.width, width);
      expect(jpeg.height, greaterThan(620));
    });
  }
}
