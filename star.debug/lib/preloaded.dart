import 'dart:async';
import 'dart:io';
import 'dart:isolate';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';
import 'package:star_debug/controller/grpc_controller.dart';
import 'package:star_debug/space/space_text.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:time_machine/time_machine.dart';

import 'package:http/http.dart' as http;

import 'messages/I18n.dart';
import 'utils/shared_prefs.dart';

late Preloaded R;
const String _TAG = "Preload";

class Preloaded{

  late String versionName;

  SpaceText text = SpaceText();

  bool isDebug = false;
  bool? wasLaunchedFromNotification = false;
  late SharedPrefs prefs;

  LifecycleObserver lifecycleObserver = LifecycleObserver();

  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  late FirebaseAnalytics analytics;

  late GrpcController grpc;

  var initialized = Completer();

  Preloaded();

  Future<void> init() async {
    assert(() {
      // isDebug = true;
      return true;
    }());

    WidgetsFlutterBinding.ensureInitialized();

    List<Future> futs = [];

    futs.add(() async {
      try {
        await TimeMachine.initialize({
          "rootBundle": rootBundle,
          'timeZone': await FlutterNativeTimezone.getLocalTimezone(),
        });
      } catch (e, s) {
        LogUtils.ers(_TAG, "", e, s);
      }
    } ());

    futs.add(() async {
      // await Firebase.initializeApp();
      // await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
      // FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
      //FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
    } ());

    futs.add(() async {

      prefs = SharedPrefs();
      PackageInfo packageInfo = await PackageInfo.fromPlatform();
      versionName = packageInfo.version;
      await prefs.initialized.future;
    } ());

    futs.add(() async {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
      // await DatabaseHolder.init();
      // db = await DatabaseHolder.getDb();
    } ());

    await Future.wait(futs);

    // analytics = FirebaseAnalytics.instance;
    grpc = GrpcController();
    await grpc.init();

    LogUtils.d("Preload", "Preload finish");
  }

  void showSnackBarText(String text, {int sec = 2}){
    showSnackBar(SnackBar(
        content: Text(text),
        duration: Duration(seconds: 2),
    ));
  }

  void showSnackBar(SnackBar snackBar) {
    var st = R.scaffoldMessengerKey.currentState;
    if (st==null) {
      LogUtils.e(_TAG, "SnackBar without state!");
      return;
    }
    st.removeCurrentSnackBar();
    st.showSnackBar(snackBar);
  }

}

class LifecycleObserver extends WidgetsBindingObserver{

  @override
  void didChangeMetrics() {
//    unawaited(R.firebaseController.log("ChangeMetrics"));
  }

  @override
  void didChangeAccessibilityFeatures() {
//    unawaited(R.firebaseController.log("ChangeAccessibilityFeatures"));
  }

  @override
  void didHaveMemoryPressure() {
//    unawaited(R.firebaseController.log("HaveMemoryPressure"));
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    R.grpc.processAppState(state);
    LogUtils.d(_TAG, "ChangeAppLifecycleState: $state");
  }

  @override
  void didChangeLocales(List<Locale>? locale) {
//    unawaited(R.firebaseController.log("ChangeLocales: $locale"));
  }

  @override
  void didChangePlatformBrightness() {
    LogUtils.d(_TAG, "ChangePlatformBrightness");
  }

  @override
  void didChangeTextScaleFactor() {
//    unawaited(R.firebaseController.log("ChangeTextScaleFactor"));
  }
}
