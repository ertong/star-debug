import 'dart:io';

import 'package:clipboard/clipboard.dart';
import 'package:flutter/services.dart';

class ImageClipboard {
  static const channel = MethodChannel('com.stardebug/image_clipboard');

  static Future<void> copyPng(Uint8List bytes) async {
    if (bytes.isEmpty) throw ArgumentError('Image bytes are empty');
    if (Platform.isAndroid || Platform.isLinux) {
      final copied = await channel.invokeMethod<bool>('copyImage', {
        'bytes': bytes,
      });
      if (copied != true) throw StateError('Image clipboard copy failed');
    } else {
      await FlutterClipboard.copyImage(bytes);
    }
  }
}
