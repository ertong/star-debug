
import 'dart:io';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:star_debug/utils/log_utils.dart';


Future<String?> getDownloadPath() async {
  Directory? directory;
  try {
    if (Platform.isIOS) {
      directory = await path_provider.getApplicationDocumentsDirectory();
    } else {
      directory = Directory('/storage/emulated/0/Download');
// Put file in global download folder, if for an unknown reason it didn't exist, we fallback
// ignore: avoid_slow_async_io
      if (!await directory.exists()) if (Platform.isAndroid)
        directory = await path_provider.getExternalStorageDirectory();
      else
        directory = await path_provider.getDownloadsDirectory();
    }
  } catch (e, s) {
    LogUtils.ers("getDownloadPath", "Cannot get download folder path", e, s);
  }
  return directory?.path;
}
