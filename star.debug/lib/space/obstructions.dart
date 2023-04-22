import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart' show Colors;
import 'package:flutter/widgets.dart' show TextPainter, TextSpan, TextStyle;

class ObstructionImage {
  static const int imgH = 600;
  static const int imgW = 600;

  static const int angSpan = 30;

  static const int obstructionLineWidth = 5;

  static double radians(x) => x / 180 * pi;

  static final pBg = Paint()
    ..color = Color(0xff0067bc)
    ..style = PaintingStyle.fill;

  static final pWhite = Paint()
    ..color = Colors.white;

  static final pRedLine = Paint()
    ..color = Color(0xff820000)
    ..strokeWidth = 5
    ..style = PaintingStyle.stroke;

  /// Draw line from center to the point on circle using angle and distance
  static void lineToDeg(Canvas c, int angDeg, double dist) {
    final angRad = radians(angDeg + 270);
    final new_x = (dist * cos(angRad)) + imgW / 2;
    final new_y = (dist * sin(angRad)) + imgH / 2;
    c.drawLine(Offset(imgW / 2, imgH / 2), Offset(new_x, new_y), pRedLine);
  }

  static TextPainter _text(String s) {
    var p = TextPainter(
      text: TextSpan(
        text: s,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 30,
        ),
      ),
      textDirection: TextDirection.ltr,
    );

    p.layout();

    return p;
  }

  /// Generate simple obstructions visualization
  static Future<Uint8List> generateImgFromList(List<double> wedgeList) async {
    PictureRecorder recorder = PictureRecorder();
    Canvas c = Canvas(recorder);

    double maxRadius = imgW/2;

    {
      var p = _text('W');
      var sz = p.size;
      p.paint(c, Offset(0, (imgH-sz.height)/2));

      maxRadius = min(imgW/2-sz.width-2, imgH/2-sz.height-2);

      p = _text('E');
      sz = p.size;
      p.paint(c, Offset(imgW-sz.width, (imgH-sz.height)/2));
      _text('N').paint(c, Offset((imgW-sz.width)/2, 0));
      _text('S').paint(c, Offset((imgW-sz.width)/2, imgH-sz.height));
    }
    c.drawCircle(Offset(imgW / 2, imgH / 2), maxRadius, pBg);

    var startSect = 0;
    for (var val in wedgeList) {
      if (val > 0) {
        for (var offset = 0; offset < angSpan; offset++) {
          final sectAngle = startSect + offset;
          lineToDeg(c, sectAngle, maxRadius * val);
        }
      }
      startSect += angSpan;
    }

    c.drawLine(Offset(imgW / 2, 0), Offset(imgW / 2, imgH * 1.0), pWhite);
    c.drawLine(Offset(0, imgH / 2), Offset(imgW * 1.0, imgH / 2), pWhite);

    return (await (await recorder.endRecording().toImage(imgW, imgH)).toByteData(format: ImageByteFormat.png))!.buffer.asUint8List();
  }
}
