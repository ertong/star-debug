import 'package:clipboard/clipboard.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/channel/image_clipboard.dart';

const _channels = [
  ImageClipboard.channel,
  MethodChannel('net.cubiclab.clipboard/methods'),
];

void _mock(Future<dynamic> Function(MethodCall)? handler) {
  for (final channel in _channels) {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, handler);
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  tearDown(() => _mock(null));

  test('image clipboard delivers binary PNG data', () async {
    final bytes = Uint8List.fromList([137, 80, 78, 71, 13, 10, 26, 10]);
    MethodCall? received;
    _mock((call) async {
      received = call;
      return true;
    });
    await ImageClipboard.copyPng(bytes);
    expect(received!.method, 'copyImage');
    expect(
      received!.arguments['bytes'] ?? received!.arguments['imageBytes'],
      bytes,
    );
    if (received!.arguments['bytes'] != null) {
      expect(received!.arguments['bytes'], isA<Uint8List>());
    }
  });

  test(
    'image clipboard surfaces failure rather than copying empty text',
    () async {
      _mock((_) async => false);
      await expectLater(
        ImageClipboard.copyPng(Uint8List.fromList([1])),
        throwsA(anyOf(isA<StateError>(), isA<ClipboardException>())),
      );
    },
  );

  test(
    'image clipboard rejects empty data before contacting the platform',
    () async {
      int calls = 0;
      _mock((_) async {
        calls++;
        return true;
      });
      await expectLater(
        ImageClipboard.copyPng(Uint8List(0)),
        throwsArgumentError,
      );
      expect(calls, 0);
    },
  );
}
