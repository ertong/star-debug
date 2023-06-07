import 'package:logger/logger.dart';

class LogUtils {
  static final logger = Logger(
    printer: SimplePrinter(printTime: true),
  );

  static void d(String tag, String msg) {
    logger.d("[$tag]: $msg");
  }

  static void e(String tag, String msg) {
    logger.e("[$tag]: $msg");
  }

  static void er(String tag, String msg, dynamic ex) {
      logger.e("[$tag]: $msg", ex);
  }

  static void ers(String tag, String msg, dynamic ex, StackTrace stacktrace) {
    // ignore: avoid_print
    print(stacktrace);
    logger.e("[$tag]: $msg", ex, stacktrace);
  }

}