import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image/image.dart' as img;
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/channel/image_clipboard.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/dialogs/share_snapshot.dart';
import 'package:star_debug/utils/share_export.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/theme.dart';
import 'package:star_debug/utils/obstruction_map_context.dart';
import 'package:star_debug/utils/snapshot.dart';
import 'package:star_debug/pages/view/dish.dart';
import 'package:star_debug/pages/view/share_image.dart';
import 'package:star_debug/utils/view_options.dart';
import 'package:star_debug/widgets/obstruction_map.dart';
import 'package:time_machine2/time_machine2.dart';

class _ImagePicker extends FilePickerPlatform {
  final images = <Uint8List>[];

  @override
  Future<Uri?> saveFile({
    required String fileName,
    required Uint8List bytes,
    required String mimeType,
    String? dialogTitle,
    String? initialDirectory,
    Function(FilePickerStatus)? onFileSaving,
    WindowsOptions windowsOptions = const WindowsOptions(),
    LinuxOptions linuxOptions = const LinuxOptions(),
    WebOptions webOptions = const WebOptions(),
  }) async {
    expect(fileName, endsWith('.png'));
    expect(mimeType, 'image/png');
    images.add(bytes);
    return null;
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await TimeMachine.initialize({'rootBundle': rootBundle, 'timeZone': 'UTC'});
  });

  setUp(() {
    R = Preloaded()..versionName = 'test';
  });

  for (final history in [false, true]) {
    for (final hasMap in [false, true]) {
      testWidgets(
        'image puts obstruction ${hasMap ? 'map' : 'unavailable state'} in graphs column ${history ? 'with' : 'without'} history',
        (tester) async {
          tester.view.physicalSize = const Size(1500, 2000);
          tester.view.devicePixelRatio = 1;
          addTearDown(tester.view.resetPhysicalSize);
          addTearDown(tester.view.resetDevicePixelRatio);
          final theme = StarDebugTheme.build(Brightness.light);
          await tester.pumpWidget(
            MaterialApp(
              // Match the capture tests' font size for Ahem's square glyphs.
              theme: theme.copyWith(
                textTheme: theme.textTheme.copyWith(
                  bodyMedium: theme.textTheme.bodyMedium!.copyWith(
                    fontSize: 11,
                  ),
                ),
              ),
              home: Scaffold(
                body: SingleChildScrollView(
                  child: ShareImage(
                    sourceMode: MapSourceMode.stored,
                    viewOptions: ViewOptions(),
                    snap: Snapshot(
                      timestamp: 100000,
                      dishTs: 100000,
                      obstructionMapTs: 100000,
                      dishGetStatus: DishGetStatusResponse(),
                      routerGetStatus: WifiGetStatusResponse(),
                      dishGetHistory: history ? DishGetHistoryResponse() : null,
                      dishGetObstructionMap: hasMap
                          ? DishGetObstructionMapResponse(
                              numRows: 1,
                              numCols: 1,
                              snr: [1],
                            )
                          : null,
                    ),
                  ),
                ),
              ),
            ),
          );
          final dishes = tester
              .widgetList<DishWidget>(find.byType(DishWidget))
              .toList();
          expect(dishes, hasLength(2));
          expect(dishes.first.statusVisible, isTrue);
          expect(dishes.first.showObstructionMap, isFalse);
          expect(dishes.last.statusVisible, isFalse);
          expect(dishes.last.forSnapshotImage, isTrue);
          expect(find.byType(ObstructionMapWidget), findsOneWidget);
          expect(tester.getTopLeft(find.byType(ObstructionMapWidget)).dx, 770);
          expect(tester.getSize(find.byType(ShareImage)).width, 1140);
          if (!hasMap) {
            expect(find.text(M.obstructions.unavailable), findsOneWidget);
          }
          expect(tester.takeException(), isNull);
        },
      );
    }
  }

  for (final (name, router, history, width) in [
    ('dish', false, false, 1520),
    ('dish and router', true, false, 2280),
    ('dish, router and history', true, true, 2280),
  ]) {
    testWidgets('image actions capture $name with obstruction report', (
      tester,
    ) async {
      final copiedImages = <Uint8List>[];
      final sharedImages = <Uint8List>[];
      final picker = _ImagePicker();
      final originalPicker = FilePickerPlatform.instance;
      FilePickerPlatform.instance = picker;
      addTearDown(() => FilePickerPlatform.instance = originalPicker);
      const shareChannel = MethodChannel('dev.fluttercommunity.plus/share');
      const pathChannel = MethodChannel('plugins.flutter.io/path_provider');
      tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
        pathChannel,
        (_) async => Directory.systemTemp.path,
      );
      tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
        shareChannel,
        (call) async {
          expect(call.arguments['mimeTypes'], ['image/png']);
          final path = (call.arguments['paths'] as List).single as String;
          sharedImages.add(await File(path).readAsBytes());
          addTearDown(
            () => Directory(File(path).parent.path).delete(recursive: true),
          );
          return 'dev.fluttercommunity.plus/share/dismissed';
        },
      );
      addTearDown(() {
        tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
          shareChannel,
          null,
        );
        tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
          pathChannel,
          null,
        );
      });
      for (final channel in [
        ImageClipboard.channel,
        const MethodChannel('net.cubiclab.clipboard/methods'),
      ]) {
        tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
          channel,
          (call) async {
            final bytes =
                call.arguments['bytes'] ?? call.arguments['imageBytes'];
            copiedImages.add(Uint8List.fromList(List<int>.from(bytes)));
            return true;
          },
        );
        addTearDown(
          () => tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
            channel,
            null,
          ),
        );
      }
      final theme = StarDebugTheme.build(Brightness.light);
      await tester.pumpWidget(
        MaterialApp(
          scaffoldMessengerKey: R.scaffoldMessengerKey,
          // Ahem's square glyphs need smaller text for existing dish labels.
          theme: theme.copyWith(
            textTheme: theme.textTheme.copyWith(
              bodyMedium: theme.textTheme.bodyMedium!.copyWith(fontSize: 11),
            ),
          ),
          home: Scaffold(
            body: ShareSnapshotDialog(
              initialFormat: ShareFormat.screenshot,
              sourceMode: MapSourceMode.stored,
              snap: Snapshot(
                timestamp: 100000,
                dishTs: 100000,
                obstructionMapTs: 100000,
                dishGetStatus: DishGetStatusResponse(
                  deviceInfo: DeviceInfo(id: 'test-dish'),
                ),
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
        ),
      );

      // Copy, Save and Share build on demand without requiring preview first.
      final dynamic state = tester.state(find.byType(ShareSnapshotDialog));
      expect(find.byType(Image), findsNothing);
      expect(
        tester.widget<FilledButton>(find.byType(FilledButton).last).onPressed,
        isNotNull,
      );
      Future<void> action() => history
          ? state.share()
          : router
          ? state.save()
          : state.copy();
      await tester.runAsync(() async {
        final Future<void> delivery = action();
        await action(); // A second tap during capture must not deliver twice.
        await delivery;
      });
      await tester.pumpAndSettle();

      expect(tester.takeException(), isNull);
      expect(find.text('Error'), findsNothing);
      expect(find.text('Share'), findsWidgets);
      final delivered = history
          ? sharedImages
          : router
          ? picker.images
          : copiedImages;
      expect(delivered, hasLength(1));
      final initialImage = delivered.single;
      final preview = tester.widget<Image>(find.byType(Image));
      expect(initialImage, (preview.image as MemoryImage).bytes);
      final png = img.decodePng((preview.image as MemoryImage).bytes);
      expect(png, isNotNull);
      expect(png!.width, width);
      expect(png.height, greaterThan(620));

      // Selecting the active format keeps the prepared image ready to share.
      await tester.tap(find.text(M.sharing.image));
      await tester.pumpAndSettle();
      expect(find.byType(Image), findsOneWidget);

      // A privacy change must discard the already prepared image.
      await tester.tap(find.text(M.sharing.privacy));
      await tester.pumpAndSettle();
      await tester.ensureVisible(
        find.widgetWithText(FilterChip, M.sharing.identifiers),
      );
      await tester.tap(find.widgetWithText(FilterChip, M.sharing.identifiers));
      await tester.pumpAndSettle();
      expect(find.byType(Image), findsNothing);
      expect(find.text(M.sharing.prepare), findsOneWidget);
      expect(tester.takeException(), isNull);
      await tester.runAsync(() async => await state.copy());
      await tester.pumpAndSettle();
      expect(copiedImages, hasLength(router ? 1 : 2));
      expect(copiedImages.last, isNot(orderedEquals(initialImage)));
      if (!router) {
        await tester.ensureVisible(find.widgetWithText(FilterChip, 'MAC'));
        await tester.tap(find.widgetWithText(FilterChip, 'MAC'));
        await tester.pumpAndSettle();
        expect(find.byType(Image), findsNothing);
        await tester.runAsync(() async {
          final Future<void> delivery = state.copy();
          await tester.pumpWidget(const SizedBox());
          await delivery;
        });
        expect(copiedImages, hasLength(2));
      }
      expect(tester.takeException(), isNull);
    });
  }
}
