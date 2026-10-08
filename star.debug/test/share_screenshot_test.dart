import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image/image.dart' as img;
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/dialogs/share_snapshot.dart';
import 'package:star_debug/utils/share_export.dart';
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
          home: ShareSnapshotDialog(
            initialFormat: ShareFormat.screenshot,
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
                      popPingLatencyMs: List.filled(2, 10),
                      popPingDropRate: List.filled(2, 0),
                      uplinkThroughputBps: List.filled(2, 1000),
                      downlinkThroughputBps: List.filled(2, 2000),
                      powerIn: List.filled(2, 40),
                    )
                  : null,
            ),
          ),
        ),
      );

      // Exercise the production off-screen layout and JPEG conversion.
      final dynamic state = tester.state(find.byType(ShareSnapshotDialog));
      await tester.runAsync(() async => await state.prepare());
      await tester.pumpAndSettle();

      expect(tester.takeException(), isNull);
      expect(find.text('Error'), findsNothing);
      expect(find.text('Share'), findsOneWidget);
      final preview = tester.widget<Image>(find.byType(Image));
      final jpeg = img.decodeJpg((preview.image as MemoryImage).bytes);
      expect(jpeg, isNotNull);
      expect(jpeg!.width, width);
      expect(jpeg.height, greaterThan(620));

      // A privacy change must discard the already prepared image.
      await tester.tap(find.text(M.sharing.privacy));
      await tester.pumpAndSettle();
      await tester.ensureVisible(find.text(M.sharing.hide_ids));
      await tester.tap(find.text(M.sharing.hide_ids));
      await tester.pumpAndSettle();
      expect(find.byType(Image), findsNothing);
      expect(find.text(M.sharing.prepare), findsOneWidget);
      expect(tester.takeException(), isNull);
    });
  }
}
