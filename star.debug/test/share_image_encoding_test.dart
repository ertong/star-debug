import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter_test/flutter_test.dart';
import 'package:image/image.dart' as img;
import 'package:star_debug/pages/view/share_image.dart';

Future<ui.Image> _image() async {
  final recorder = ui.PictureRecorder();
  ui.Canvas(recorder).drawPaint(ui.Paint()..color = const ui.Color(0xff4389db));
  final picture = recorder.endRecording();
  try {
    return await picture.toImage(3, 2);
  } finally {
    picture.dispose();
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test(
    'report image encodes RGBA directly as JPEG with matching metadata',
    () async {
      final image = await _image();
      addTearDown(image.dispose);
      final result = await encodeShareImage(image);
      expect(result.mimeType, 'image/jpeg');
      expect(result.extension, 'jpg');
      expect(result.bytes.take(3), [0xff, 0xd8, 0xff]);
      final decoded = img.decodeJpg(result.bytes)!;
      expect(decoded.width, 3);
      expect(decoded.height, 2);
      expect(decoded.getPixel(0, 0).r, closeTo(0x43, 3));
      expect(decoded.getPixel(0, 0).g, closeTo(0x89, 3));
      expect(decoded.getPixel(0, 0).b, closeTo(0xdb, 3));
    },
  );

  for (final unsupported in [false, true]) {
    test(
      'report falls back to PNG when JPEG encoder ${unsupported ? 'is unsupported' : 'returns no data'}',
      () async {
        final image = await _image();
        addTearDown(image.dispose);
        final result = await encodeShareImage(
          image,
          jpegEncoder: (pixels, width, height) async {
            expect(pixels, isA<Uint8List>());
            expect(pixels.length, 3 * 2 * 4);
            expect(width, 3);
            expect(height, 2);
            if (unsupported) throw UnsupportedError('JPEG unavailable');
            return null;
          },
        );
        expect(result.mimeType, 'image/png');
        expect(result.extension, 'png');
        expect(result.bytes.take(8), [137, 80, 78, 71, 13, 10, 26, 10]);
        final decoded = img.decodePng(result.bytes)!;
        expect(decoded.width, 3);
        expect(decoded.height, 2);
      },
    );
  }

  test('report preserves unexpected encoding failures', () async {
    final image = await _image();
    addTearDown(image.dispose);
    await expectLater(
      encodeShareImage(
        image,
        jpegEncoder: (_, _, _) async => throw StateError('Unexpected failure'),
      ),
      throwsStateError,
    );
  });
}
