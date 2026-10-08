import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/dialogs/share_snapshot.dart';
import 'package:star_debug/pages/snapshot.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/theme.dart';
import 'package:star_debug/utils/obstruction_map_context.dart';
import 'package:star_debug/utils/snapshot.dart';
import 'package:star_debug/utils/share_export.dart';

const _id = 'ut01234567-89abcdef-01234567';

class _SavePicker extends FilePickerPlatform {
  final Completer<Uri?> result = Completer();
  Uint8List? bytes;
  String? filename;
  String? mime;
  int calls = 0;

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
  }) {
    this.bytes = bytes;
    filename = fileName;
    mime = mimeType;
    calls++;
    return result.future;
  }
}

Snapshot _snapshot() => Snapshot(
  timestamp: 100000,
  dishGetStatus: DishGetStatusResponse(
    deviceInfo: DeviceInfo(id: _id, hardwareVersion: 'rev4'),
    connectedRouters: ['router0123456789abcdef'],
  ),
);

Future<void> _open(
  WidgetTester tester, {
  bool allowScreenshot = true,
  Snapshot? snap,
  MapSourceMode? exportOrigin,
}) async {
  await tester.pumpWidget(
    MaterialApp(
      scaffoldMessengerKey: R.scaffoldMessengerKey,
      home: Scaffold(
        body: ShareSnapshotDialog(
          initialFormat: ShareFormat.json,
          snap: snap ?? _snapshot(),
          sourceMode: MapSourceMode.stored,
          exportOrigin: exportOrigin,
          allowScreenshot: allowScreenshot,
          showInApp: false,
        ),
      ),
    ),
  );
  await tester.pumpAndSettle();
}

Future<void> _format(WidgetTester tester, String label) async {
  await tester.ensureVisible(find.text(label));
  await tester.tap(find.text(label));
  await tester.pumpAndSettle();
}

Finder _copyButton() => Platform.isAndroid || Platform.isIOS || Platform.isMacOS
    ? find.byTooltip(M.sharing.copy)
    : find.widgetWithText(FilledButton, M.sharing.copy);

String _preview(WidgetTester tester) =>
    tester.widget<SelectableText>(find.byType(SelectableText)).data!;

void main() {
  setUp(() => R = Preloaded()..versionName = 'test');

  for (final allowImage in [true, false]) {
    testWidgets(
      allowImage
          ? 'share opens with Image selected'
          : 'share falls back to JSON when Image is disabled',
      (tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: ShareSnapshotDialog(
                snap: _snapshot(),
                sourceMode: MapSourceMode.stored,
                allowScreenshot: allowImage,
                showInApp: false,
              ),
            ),
          ),
        );
        await tester.pumpAndSettle();
        if (allowImage) {
          expect(find.text(M.sharing.prepare), findsOneWidget);
          expect(find.byType(SelectableText), findsNothing);
          expect(_copyButton(), findsOneWidget);
          expect(
            tester
                .widget<FilledButton>(find.byType(FilledButton).last)
                .onPressed,
            isNotNull,
          );
        } else {
          expect(find.text(M.sharing.prepare), findsNothing);
          expect(
            jsonDecode(
              _preview(tester),
            )['dish']['rawStatus']['deviceInfo']['id'],
            _id,
          );
          expect(_copyButton(), findsOneWidget);
        }
        expect(tester.takeException(), isNull);
      },
    );
  }

  testWidgets('one dialog switches representations and keeps privacy choices', (
    tester,
  ) async {
    await _open(tester);
    expect(
      jsonDecode(_preview(tester))['dish']['rawStatus']['deviceInfo']['id'],
      _id,
    );
    await tester.tap(find.text(M.sharing.privacy));
    await tester.pumpAndSettle();
    await tester.ensureVisible(
      find.widgetWithText(FilterChip, M.sharing.identifiers),
    );
    await tester.tap(find.widgetWithText(FilterChip, M.sharing.identifiers));
    await tester.pumpAndSettle();
    expect(_preview(tester), isNot(contains('01234567')));
    final idChip = find.widgetWithText(FilterChip, M.sharing.identifiers);
    final hiddenChip = tester.widget<FilterChip>(idChip);
    expect(hiddenChip.selected, isTrue);
    expect(hiddenChip.showCheckmark, isFalse);
    expect((hiddenChip.avatar as Icon).icon, Icons.visibility_off_outlined);
    expect(find.text(M.sharing.hidden_count(3)), findsOneWidget);
    await tester.tap(idChip);
    await tester.pumpAndSettle();
    final includedChip = tester.widget<FilterChip>(
      find.widgetWithText(FilterChip, M.sharing.identifiers),
    );
    expect(includedChip.selected, isFalse);
    expect(includedChip.showCheckmark, isFalse);
    expect((includedChip.avatar as Icon).icon, Icons.visibility_outlined);
    expect(_preview(tester), contains('01234567'));
    await tester.tap(find.widgetWithText(FilterChip, M.sharing.identifiers));
    await tester.pumpAndSettle();

    await _format(tester, M.sharing.diagnostics);
    expect(_preview(tester), contains('Starlink diagnostic report'));
    expect(_preview(tester), isNot(contains('01234567')));
    await _format(tester, M.sharing.inventory);
    expect(_preview(tester), contains(r'- UTID: \[hidden\]'));
    expect(find.byType(TextField), findsNothing);

    await _format(tester, M.sharing.image);
    expect(find.byType(SelectableText), findsNothing);
    expect(find.text(M.sharing.prepare), findsOneWidget);
    expect(_copyButton(), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets(
    'compact copy uses captured identifiers without requesting missing fields',
    (tester) async {
      String? copied;
      tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
        SystemChannels.platform,
        (call) async {
          if (call.method == 'Clipboard.setData') {
            copied = (call.arguments as Map)['text'] as String;
          }
          return null;
        },
      );
      addTearDown(
        () => tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
          SystemChannels.platform,
          null,
        ),
      );
      await _open(tester);
      await _format(tester, M.sharing.inventory);
      await tester.tap(_copyButton());
      await tester.pumpAndSettle();
      expect(copied, isNot(contains('- KIT number:')));
      expect(copied, contains('- UTID: 01234567-89abcdef-01234567'));
      expect(copied, isNot(contains('- Dish ID / physical serial:')));
      expect(copied, isNot(contains('- Starlink account number:')));
      expect(copied, isNot(contains('enter manually')));
      expect(find.byType(TextField), findsNothing);
      expect(find.text(M.general.copied_to_clipboard), findsOneWidget);
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets('live export provenance is independent of frozen map timing', (
    tester,
  ) async {
    await _open(tester, exportOrigin: MapSourceMode.live);
    await _format(tester, M.sharing.diagnostics);
    expect(_preview(tester), contains('- Source: live'));
    final dialog = tester.widget<ShareSnapshotDialog>(
      find.byType(ShareSnapshotDialog),
    );
    expect(dialog.sourceMode, MapSourceMode.stored);
  });

  testWidgets('viewing redacted JSON opens a snapshot without import storage', (
    tester,
  ) async {
    // No database is initialized: the viewer must not enter the import/save path.
    await tester.pumpWidget(
      MaterialApp(
        scaffoldMessengerKey: R.scaffoldMessengerKey,
        home: Scaffold(
          body: Builder(
            builder: (context) => TextButton(
              onPressed: () => showDialog<void>(
                context: context,
                builder: (_) => ShareSnapshotDialog(
                  initialFormat: ShareFormat.json,
                  sourceMode: MapSourceMode.stored,
                  snap: Snapshot(
                    timestamp: 100000,
                    dishTs: 100000,
                    dishGetStatus: _snapshot().dishGetStatus,
                    routerGetStatus: WifiGetStatusResponse(),
                  ),
                ),
              ),
              child: const Text('Open sharing'),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Open sharing'));
    await tester.pumpAndSettle();
    await tester.tap(find.text(M.sharing.privacy));
    await tester.pumpAndSettle();
    await tester.ensureVisible(
      find.widgetWithText(FilterChip, M.sharing.identifiers),
    );
    await tester.tap(find.widgetWithText(FilterChip, M.sharing.identifiers));
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.byTooltip(M.general.view_in_app));
    await tester.tap(find.byTooltip(M.general.view_in_app));
    await tester.pumpAndSettle();
    expect(find.byType(ShareSnapshotDialog), findsNothing);
    final page = tester.widget<SnapshotPage>(find.byType(SnapshotPage));
    expect(page.snap.dishGetStatus!.deviceInfo.id, isEmpty);
    expect(page.sourceMode, MapSourceMode.imported);
    expect(tester.takeException(), isNull);
    await tester.tap(find.byIcon(Icons.clear));
    await tester.pumpAndSettle();
    expect(find.text('Open sharing'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets(
    'save passes bytes and MIME to picker and prevents duplicate saves',
    (tester) async {
      final originalPicker = FilePickerPlatform.instance;
      final picker = _SavePicker();
      FilePickerPlatform.instance = picker;
      addTearDown(() => FilePickerPlatform.instance = originalPicker);
      await _open(tester);
      await _format(tester, M.sharing.diagnostics);
      final expected = _preview(tester);
      await tester.tap(find.byTooltip(M.general.save_as));
      await tester.pump();
      expect(picker.calls, 1);
      expect(utf8.decode(picker.bytes!), expected);
      expect(picker.mime, 'text/markdown');
      expect(picker.filename, endsWith('.md'));
      expect(picker.filename, isNot(contains('01234567')));
      final saveButton = find.byWidgetPredicate(
        (widget) => widget is IconButton && widget.tooltip == M.general.save_as,
      );
      expect(tester.widget<IconButton>(saveButton).onPressed, isNull);
      picker.result.complete(Uri.parse('content://test/report.md'));
      await tester.pumpAndSettle();
      expect(
        find.text(M.sharing.saved('content://test/report.md')),
        findsOneWidget,
      );
      expect(tester.widget<IconButton>(saveButton).onPressed, isNotNull);
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets(
    'canceled save stays open and screenshot feature flag is respected',
    (tester) async {
      final originalPicker = FilePickerPlatform.instance;
      final picker = _SavePicker();
      FilePickerPlatform.instance = picker;
      addTearDown(() => FilePickerPlatform.instance = originalPicker);
      await _open(tester, allowScreenshot: false);
      expect(find.text(M.sharing.image), findsNothing);
      await _format(tester, M.sharing.diagnostics);
      await tester.pumpAndSettle();
      await tester.tap(find.byTooltip(M.general.save_as));
      await tester.pump();
      picker.result.complete(null);
      await tester.pumpAndSettle();
      expect(find.byType(ShareSnapshotDialog), findsOneWidget);
      expect(find.byType(SnackBar), findsNothing);
      expect(find.byType(CircularProgressIndicator), findsNothing);
      expect(tester.takeException(), isNull);
    },
  );
  testWidgets(
    'native text share awaits completion and prevents duplicate delivery',
    (tester) async {
      const channel = MethodChannel('dev.fluttercommunity.plus/share');
      final result = Completer<String>();
      Map? shared;
      int calls = 0;
      tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(channel, (
        call,
      ) async {
        calls++;
        shared = call.arguments as Map;
        return result.future;
      });
      addTearDown(
        () => tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
          channel,
          null,
        ),
      );
      await _open(tester);
      await _format(tester, M.sharing.diagnostics);
      final expected = _preview(tester);
      final dynamic state = tester.state(find.byType(ShareSnapshotDialog));
      final Future<void> delivery = state.share();
      await tester.pump();
      expect(shared?['text'], expected);
      expect(shared?.containsKey('paths'), isFalse);
      expect(shared?['originWidth'], greaterThan(0));
      expect(shared?['originHeight'], greaterThan(0));
      await state.share();
      expect(calls, 1);
      expect(
        tester
            .widget<IconButton>(
              find.byWidgetPredicate(
                (widget) =>
                    widget is IconButton && widget.tooltip == M.general.save_as,
              ),
            )
            .onPressed,
        isNull,
      );
      result.complete('dev.fluttercommunity.plus/share/dismissed');
      await delivery;
      await tester.pumpAndSettle();
      expect(
        tester
            .widget<IconButton>(
              find.byWidgetPredicate(
                (widget) =>
                    widget is IconButton && widget.tooltip == M.general.save_as,
              ),
            )
            .onPressed,
        isNotNull,
      );
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets('closing the dialog during a pending save is safe', (
    tester,
  ) async {
    final originalPicker = FilePickerPlatform.instance;
    final picker = _SavePicker();
    FilePickerPlatform.instance = picker;
    addTearDown(() => FilePickerPlatform.instance = originalPicker);
    await _open(tester);
    await tester.tap(find.byTooltip(M.general.save_as));
    await tester.pump();
    expect(picker.calls, 1);
    await tester.pumpWidget(const SizedBox());
    picker.result.complete(Uri.parse('content://test/report.json'));
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
  });
  testWidgets('inventory retains available registration data without editing', (
    tester,
  ) async {
    await _open(
      tester,
      snap: Snapshot(
        timestamp: 100000,
        dishGetStatus: _snapshot().dishGetStatus,
        debug_data: {
          'registration': {
            'kitNumber': 'KIT-SYNTHETIC',
            'dishSerialNumber': 'SERIAL-SYNTHETIC',
            'accountNumber': 'ACCOUNT-SYNTHETIC',
          },
        },
      ),
    );
    await _format(tester, M.sharing.inventory);
    expect(_preview(tester), contains('KIT-SYNTHETIC'));
    expect(_preview(tester), contains('SERIAL-SYNTHETIC'));
    expect(_preview(tester), contains('ACCOUNT-SYNTHETIC'));
    expect(find.byType(TextField), findsNothing);
  });

  testWidgets('popup fits narrow and landscape screens with larger text', (
    tester,
  ) async {
    addTearDown(() async {
      await I18n.instance.setLang('en');
      await tester.binding.setSurfaceSize(null);
    });
    for (final language in ['en', 'uk']) {
      await I18n.instance.setLang(language);
      for (final size in [const Size(320, 568), const Size(640, 360)]) {
        for (final brightness in [Brightness.light, Brightness.dark]) {
          await tester.binding.setSurfaceSize(size);
          await tester.pumpWidget(
            MaterialApp(
              theme: StarDebugTheme.build(brightness),
              builder: (context, child) => MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(textScaler: const TextScaler.linear(1.5)),
                child: child!,
              ),
              home: Scaffold(
                body: ShareSnapshotDialog(
                  snap: _snapshot(),
                  sourceMode: MapSourceMode.stored,
                ),
              ),
            ),
          );
          await tester.pumpAndSettle();
          for (final label in [
            M.sharing.json,
            M.sharing.image,
            M.sharing.diagnostics,
            M.sharing.inventory,
          ]) {
            await _format(tester, label);
            expect(tester.takeException(), isNull);
          }
          expect(find.byType(TextField), findsNothing);
          final copy = find.byType(FilledButton).last;
          final rect = tester.getRect(copy);
          expect(rect.left, greaterThanOrEqualTo(0));
          expect(rect.right, lessThanOrEqualTo(size.width));
          expect(rect.bottom, lessThanOrEqualTo(size.height));
          await tester.ensureVisible(find.text(M.sharing.privacy));
          await tester.tap(find.text(M.sharing.privacy));
          await tester.pumpAndSettle();
          await tester.ensureVisible(
            find.widgetWithText(FilterChip, M.sharing.identifiers),
          );
          await tester.tap(
            find.widgetWithText(FilterChip, M.sharing.identifiers),
          );
          await tester.pumpAndSettle();
          expect(_preview(tester), contains(r'- UTID: \[hidden\]'));
          expect(tester.takeException(), isNull);
          await tester.pumpWidget(const SizedBox());
        }
      }
    }
  });
}
