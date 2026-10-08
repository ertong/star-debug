import 'dart:async';
import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/dialogs/share_snapshot.dart';
import 'package:star_debug/preloaded.dart';
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

Future<void> _open(WidgetTester tester, {bool allowScreenshot = true}) async {
  await tester.pumpWidget(
    MaterialApp(
      scaffoldMessengerKey: R.scaffoldMessengerKey,
      home: Scaffold(
        body: ShareSnapshotDialog(
          snap: _snapshot(),
          sourceMode: MapSourceMode.stored,
          allowScreenshot: allowScreenshot,
          showInApp: false,
        ),
      ),
    ),
  );
  await tester.pumpAndSettle();
}

Future<void> _format(WidgetTester tester, String label) async {
  await tester.tap(find.byType(DropdownButtonFormField<ShareFormat>));
  await tester.pumpAndSettle();
  await tester.tap(find.text(label).last);
  await tester.pumpAndSettle();
}

String _preview(WidgetTester tester) =>
    tester.widget<SelectableText>(find.byType(SelectableText)).data!;

void main() {
  setUp(() => R = Preloaded()..versionName = 'test');

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
    await tester.ensureVisible(find.text(M.sharing.hide_ids));
    await tester.tap(find.text(M.sharing.hide_ids));
    await tester.pumpAndSettle();
    expect(_preview(tester), isNot(contains('01234567')));

    await tester.ensureVisible(
      find.byType(DropdownButtonFormField<ShareFormat>),
    );
    await _format(tester, M.sharing.full_text);
    expect(_preview(tester), contains('Starlink diagnostic report'));
    expect(_preview(tester), isNot(contains('01234567')));
    await tester.ensureVisible(
      find.byType(DropdownButtonFormField<ShareFormat>),
    );
    await _format(tester, M.sharing.compact_text);
    expect(_preview(tester), contains('UTID: [hidden]'));
    expect(find.text(M.sharing.inventory_hidden), findsOneWidget);

    await tester.ensureVisible(
      find.byType(DropdownButtonFormField<ShareFormat>),
    );
    await _format(tester, M.sharing.screenshot);
    expect(find.byType(SelectableText), findsNothing);
    expect(find.text(M.sharing.prepare), findsOneWidget);
    expect(find.text(M.general.to_clipboard), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('compact copy includes supplemented registration identifiers', (
    tester,
  ) async {
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
    await _format(tester, M.sharing.compact_text);
    for (final (label, value) in [
      (M.sharing.kit_number, 'KIT-SYNTHETIC'),
      (M.sharing.dish_serial, 'SERIAL-SYNTHETIC'),
      (M.sharing.account_number, 'ACCOUNT-SYNTHETIC'),
    ]) {
      final field = find.byWidgetPredicate(
        (widget) =>
            widget is TextField && widget.decoration?.labelText == label,
      );
      await tester.ensureVisible(field);
      await tester.enterText(field, value);
      await tester.pumpAndSettle();
    }
    await tester.tap(find.text(M.general.to_clipboard));
    await tester.pumpAndSettle();
    expect(copied, contains('KIT-SYNTHETIC'));
    expect(copied, contains('UTID: 01234567-89abcdef-01234567'));
    expect(copied, contains('SERIAL-SYNTHETIC'));
    expect(copied, contains('ACCOUNT-SYNTHETIC'));
    expect(find.text(M.general.copied_to_clipboard), findsOneWidget);
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
      await _format(tester, M.sharing.full_text);
      final expected = _preview(tester);
      await tester.tap(find.text(M.general.save_as));
      await tester.pump();
      expect(picker.calls, 1);
      expect(utf8.decode(picker.bytes!), expected);
      expect(picker.mime, 'text/plain');
      expect(picker.filename, endsWith('.txt'));
      expect(picker.filename, isNot(contains('01234567')));
      final saveButton = find.widgetWithText(TextButton, M.general.save_as);
      expect(tester.widget<TextButton>(saveButton).onPressed, isNull);
      picker.result.complete(Uri.parse('content://test/report.txt'));
      await tester.pumpAndSettle();
      expect(
        find.text(M.sharing.saved('content://test/report.txt')),
        findsOneWidget,
      );
      expect(tester.widget<TextButton>(saveButton).onPressed, isNotNull);
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
      await tester.tap(find.byType(DropdownButtonFormField<ShareFormat>));
      await tester.pumpAndSettle();
      expect(find.text(M.sharing.screenshot), findsNothing);
      await tester.tap(find.text(M.sharing.full_text).last);
      await tester.pumpAndSettle();
      await tester.tap(find.text(M.general.save_as));
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
      await _format(tester, M.sharing.full_text);
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
            .widget<TextButton>(
              find.widgetWithText(TextButton, M.general.save_as),
            )
            .onPressed,
        isNull,
      );
      result.complete('dev.fluttercommunity.plus/share/dismissed');
      await delivery;
      await tester.pumpAndSettle();
      expect(
        tester
            .widget<TextButton>(
              find.widgetWithText(TextButton, M.general.save_as),
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
    await tester.tap(find.text(M.general.save_as));
    await tester.pump();
    expect(picker.calls, 1);
    await tester.pumpWidget(const SizedBox());
    picker.result.complete(Uri.parse('content://test/report.json'));
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
  });
}
