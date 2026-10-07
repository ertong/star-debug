import 'dart:typed_data';
import 'dart:ui';

import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/utils/obstructions.dart';

/// Shared presentation colors for the widget and unrotated raster export.
class ObstructionMapPalette {
  static const unknownColor = Color(0xff657080);
  static const obstructedColor = Color(0xffe34b54);
  static const reducedSignalColor = Color(0xffe7aa46);
  static const clearColor = Color(0xff279cde);

  static Color color(double value) {
    switch (ObstructionMapData.classify(value)) {
      case ObstructionCell.unknown:
        return unknownColor;
      case ObstructionCell.obstructed:
        return obstructedColor;
      case ObstructionCell.clear:
        return clearColor;
      case ObstructionCell.reducedSignal:
        return value < 0.5
            ? Color.lerp(obstructedColor, reducedSignalColor, value * 2)!
            : Color.lerp(reducedSignalColor, clearColor, (value - 0.5) * 2)!;
    }
  }
}

/// Raster export uses the same signal colors as the in-app 2D map.
Future<Uint8List> generateObstructionImgFromMap(
  DishGetObstructionMapResponse resp,
) async {
  final map = ObstructionMapData.fromResponse(resp);
  if (map == null) throw ArgumentError('Invalid obstruction map dimensions');
  final recorder = PictureRecorder();
  final canvas = Canvas(recorder);
  final paint = Paint();
  for (var row = 0; row < map.rows; row++) {
    for (var col = 0; col < map.cols; col++) {
      paint.color = ObstructionMapPalette.color(
        map.signal[row * map.cols + col],
      );
      canvas.drawRect(Rect.fromLTWH(col * 2, row * 2, 2, 2), paint);
    }
  }
  final picture = recorder.endRecording();
  try {
    final image = await picture.toImage(map.cols * 2, map.rows * 2);
    try {
      final bytes = await image.toByteData(format: ImageByteFormat.png);
      return bytes!.buffer.asUint8List(
        bytes.offsetInBytes,
        bytes.lengthInBytes,
      );
    } finally {
      image.dispose();
    }
  } finally {
    picture.dispose();
  }
}
