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
//    if (ex is Error)
//    {
//      print(ex.stackTrace);
//      logger.e("[$tag]: $msg", ex, ex.stackTrace);
//    }
//    else
      logger.e("[$tag]: $msg", ex);
//      Crashlytics.log(1, TAG, ex.toString());
//    Crashlytics.logException(ex);
  }

  static void ers(String tag, String msg, dynamic ex, StackTrace stacktrace) {
//    if (ex is Error)
//    {
//      print(ex.stackTrace);
//      logger.e("[$tag]: $msg", ex, ex.stackTrace);
//    }
//    else
    print(stacktrace);
    logger.e("[$tag]: $msg", ex, stacktrace);
//      Crashlytics.log(1, TAG, ex.toString());
//    Crashlytics.logException(ex);
  }

}