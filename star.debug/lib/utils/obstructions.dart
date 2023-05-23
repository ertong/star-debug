import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';

/// Generate simple obstructions visualization
Future<Uint8List> generateObstructionImgFromMap(DishGetObstructionMapResponse resp) async {
  PictureRecorder recorder = PictureRecorder();
  Canvas c = Canvas(recorder);

  double pxSize = 2.0;

  final pPx = Paint()
    ..color = Color(0xff0067bc)
    ..style = PaintingStyle.fill;

  for (int i=0; i<resp.numRows; ++i)
    for (int j=0; j<resp.numCols; ++j) {
      var snr = resp.snr[i*resp.numCols+j];

      pPx.color = Color.lerp(Colors.red, Colors.blue, (snr+1)/2)!;
      c.drawRect(Rect.fromLTWH(j*pxSize, i*pxSize, pxSize, pxSize), pPx);
    }

  return (
      await (await recorder.endRecording().toImage((resp.numRows*pxSize).toInt(), (resp.numCols*pxSize).toInt()))
        .toByteData(format: ImageByteFormat.png)
    )!
      .buffer
      .asUint8List();
}
