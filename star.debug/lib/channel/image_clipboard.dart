import 'dart:io';

import 'package:clipboard/clipboard.dart';
import 'package:flutter/services.dart';

class ImageClipboard {
  static const channel = MethodChannel('com.stardebug/image_clipboard');

  static Future<void> copyPng(Uint8List bytes) => copyImage(bytes);

  static Future<void> copyImage(
    Uint8List bytes, {
    String mimeType = 'image/png',
  }) async {
    if (bytes.isEmpty) throw ArgumentError('Image bytes are empty');
    if (mimeType != 'image/png' && mimeType != 'image/jpeg') {
      throw ArgumentError('Unsupported image MIME type: $mimeType');
    }
    if (Platform.isAndroid || Platform.isLinux) {
      final copied = await channel.invokeMethod<bool>('copyImage', {
        'bytes': bytes,
        'mimeType': mimeType,
      });
      if (copied != true) throw StateError('Image clipboard copy failed');
    } else {
      await FlutterClipboard.copyImage(bytes);
    }
  }
}
