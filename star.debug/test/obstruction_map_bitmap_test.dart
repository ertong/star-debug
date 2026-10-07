import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/utils/obstruction_map_rendering.dart';
import 'package:star_debug/utils/obstructions.dart';

Future<Uint8List> _pixels(WidgetTester tester, ui.Image image) async {
  return (await tester.runAsync(() async {
    final bytes = (await image.toByteData(format: ui.ImageByteFormat.rawRgba))!;
    return bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
  }))!;
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('bitmap keeps source rows and signal colors', (tester) async {
    final map = ObstructionMapData.fromResponse(
      DishGetObstructionMapResponse(
        numRows: 2,
        numCols: 5,
        snr: [
          -1,
          double.nan,
          double.infinity,
          double.negativeInfinity,
          0,
          0.25,
          0.5,
          0.75,
          1,
          2,
        ],
      ),
    )!;
    final image = generateObstructionBitmap(map);
    addTearDown(image.dispose);
    expect(image.width, 5);
    expect(image.height, 2);
    final pixels = await _pixels(tester, image);
    expect(pixels, hasLength(5 * 2 * 4));
    final colors = [
      0xff657080,
      0xff657080,
      0xff657080,
      0xff657080,
      0xffe34b54,
      0xffe57b4d,
      0xffe7aa46,
      0xff87a392,
      0xff279cde,
      0xff279cde,
    ];
    for (var i = 0; i < colors.length; i++) {
      final color = colors[i];
      for (var channel = 0; channel < 3; channel++) {
        final expected = (color >> (16 - channel * 8)) & 0xff;
        // Interpolated channels can round by one in the raster backend.
        final tolerance = i == 5 || i == 7 ? 1 : 0;
        expect(pixels[i * 4 + channel], closeTo(expected, tolerance));
      }
      expect(pixels[i * 4 + 3], 255);
    }
  });

  testWidgets('bitmap ignores reference frames', (tester) async {
    Uint8List? firstPixels;
    for (final frame in [
      ObstructionMapReferenceFrame.FRAME_EARTH,
      ObstructionMapReferenceFrame.FRAME_UT,
      ObstructionMapReferenceFrame.FRAME_UNKNOWN,
    ]) {
      final map = ObstructionMapData.fromResponse(
        DishGetObstructionMapResponse(
          numRows: 2,
          numCols: 3,
          snr: [-1, 0, 0.5, 1, 0.25, 0.75],
          mapReferenceFrame: frame,
        ),
      )!;
      final image = generateObstructionBitmap(map);
      try {
        final pixels = await _pixels(tester, image);
        if (firstPixels == null) {
          firstPixels = pixels;
        } else {
          expect(pixels, firstPixels);
        }
      } finally {
        image.dispose();
      }
    }
  });

  test('bitmap returns a synchronous image and disposes its picture', () {
    final map = ObstructionMapData.fromResponse(
      DishGetObstructionMapResponse(numRows: 1, numCols: 1, snr: [0]),
    )!;
    final previousOnCreate = ui.Picture.onCreate;
    final pictures = <ui.Picture>[];
    ui.Picture.onCreate = pictures.add;
    try {
      final image = generateObstructionBitmap(map);
      try {
        expect(image.width, 1);
        expect(image.height, 1);
        expect(pictures, hasLength(1));
        expect(pictures.single.debugDisposed, true);
      } finally {
        image.dispose();
      }
    } finally {
      ui.Picture.onCreate = previousOnCreate;
    }
  });
}
