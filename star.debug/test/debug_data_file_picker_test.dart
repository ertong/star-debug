import 'dart:convert';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/debug_data.dart';
import 'package:star_debug/preloaded.dart';

final class _ContentFile extends PlatformFile {
  bool wasRead = false;

  @override
  String get name => 'debug.json';

  @override
  Uri get uri => Uri.parse('content://test/debug.json');

  @override
  Never get xFile => throw UnimplementedError();

  @override
  int lengthSync() => 2;

  @override
  Future<int> length() async => lengthSync();

  @override
  Future<Uint8List> readAsBytes() async {
    wasRead = true;
    return Uint8List.fromList(utf8.encode('{}'));
  }

  @override
  Stream<Uint8List> readAsByteStream() =>
      Stream.value(Uint8List.fromList(utf8.encode('{}')));
}

class _FilePicker extends FilePickerPlatform {
  final PlatformFile? file;

  _FilePicker(this.file);

  @override
  Future<PlatformFile?> pickFile({
    String? dialogTitle,
    String? initialDirectory,
    FileType type = FileType.any,
    List<String>? allowedExtensions,
    Function(FilePickerStatus)? onFileLoading,
    int compressionQuality = 0,
    AndroidOptions androidOptions = const AndroidOptions(),
    DarwinOptions darwinOptions = const DarwinOptions(),
    WindowsOptions windowsOptions = const WindowsOptions(),
    LinuxOptions linuxOptions = const LinuxOptions(),
    WebOptions webOptions = const WebOptions(),
  }) async => file;
}

void main() {
  Future<void> pumpPage(WidgetTester tester) async {
    // This import-only screen needs no live connections or persistence services.
    R = Preloaded()..versionName = 'test';
    await tester.pumpWidget(
      MaterialApp(
        scaffoldMessengerKey: R.scaffoldMessengerKey,
        home: DebugDataPage(),
      ),
    );
    await tester.pumpAndSettle();
  }

  testWidgets('reads a picked content URI without a filesystem path', (
    tester,
  ) async {
    final originalPicker = FilePickerPlatform.instance;
    addTearDown(() => FilePickerPlatform.instance = originalPicker);
    final file = _ContentFile();
    FilePickerPlatform.instance = _FilePicker(file);
    await pumpPage(tester);

    expect(file.path, isNull);
    await tester.tap(find.text(M.general.open_json_file));
    await tester.pumpAndSettle();

    expect(file.wasRead, isTrue);
    // The empty JSON reaches the parser and produces the normal no-data message.
    expect(find.text(M.general.no_data_found), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('canceling the picker leaves the import screen available', (
    tester,
  ) async {
    final originalPicker = FilePickerPlatform.instance;
    addTearDown(() => FilePickerPlatform.instance = originalPicker);
    FilePickerPlatform.instance = _FilePicker(null);
    await pumpPage(tester);

    await tester.tap(find.text(M.general.open_json_file));
    await tester.pumpAndSettle();

    expect(find.text(M.general.open_json_file), findsOneWidget);
    expect(find.byType(SnackBar), findsNothing);
    expect(tester.takeException(), isNull);
  });
}
