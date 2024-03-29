import 'dart:async';
import 'dart:io';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';
import 'package:star_debug/channel/star_channel.dart';
import 'package:star_debug/controller/conn/connection.dart';
import 'package:star_debug/controller/conn/online_connection.dart';
import 'package:star_debug/controller/conn_controller.dart';
import 'package:star_debug/controller/conn/dish_connection.dart';
import 'package:star_debug/controller/conn/router_connection.dart';
import 'package:star_debug/controller/dish_log_controller.dart';
import 'package:star_debug/db/database.dart';
import 'package:star_debug/db/database_holder.dart';
import 'package:star_debug/firebase_options.dart';
import 'package:star_debug/stardebug_app.dart';
import 'package:star_debug/utils/features.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:time_machine/time_machine.dart';

import 'controller/valkyrie_controller.dart';
import 'messages/i18n.dart';
import 'utils/shared_prefs.dart';

late Preloaded R;
const String _TAG = "Preload";

class Preloaded{

  late String versionName;

  bool isDebug = false;
  bool? wasLaunchedFromNotification = false;
  late Database db;
  late SharedPrefs prefs;
  Features features = Features();

  LifecycleObserver lifecycleObserver = LifecycleObserver();

  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey();
  final GlobalKey<StarDebugAppState> appKey = GlobalKey();
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  late StarChannel starChannel;

  FirebaseAnalytics? analytics;

  late DishLogController dishLog = DishLogController();
  ValkyrieController valkyrie = ValkyrieController();

  late ConnController conn;
  late ConnectionHolder<DishConnection> dishHolder;
  late ConnectionHolder<RouterConnection> routerHolder;
  late ConnectionHolder<OnlineConnection> onlineHolder;

  DishConnection? get dish => dishHolder.conn;
  RouterConnection? get router => routerHolder.conn;
  OnlineConnection? get online => onlineHolder.conn;

  I18n get i18n => I18n.instance;

  var initialized = Completer();

  Preloaded();

  Future<void> init() async {
    assert(() {
      isDebug = true;
      return true;
    }());

    WidgetsFlutterBinding.ensureInitialized();

    starChannel = StarChannel();

    List<Future> futs = [];

    futs.add(() async {
      try {
        if (Platform.isAndroid || Platform.isIOS) {
          await TimeMachine.initialize({
            "rootBundle": rootBundle,
            'timeZone': await FlutterTimezone.getLocalTimezone(),
          });
        } else {
          var offset = DateTime.now().timeZoneOffset;
          var min = offset.inMinutes.abs();
          var tzName = "UTC${offset.isNegative?"-":"+"}${(min/60).toStringAsFixed(0).padLeft(2,"0")}:${(min%60).toString().padLeft(2,"0")}";
          await TimeMachine.initialize({
            "rootBundle": rootBundle,
            'timeZone': tzName,
          });
        }

      } catch (e, s) {
        LogUtils.ers(_TAG, "", e, s);
      }
    } ());

    if (Platform.isAndroid || Platform.isIOS)
      futs.add(() async {
        await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        );
        FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
        PlatformDispatcher.instance.onError = (error, stack) {
          FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
          return true;
        };
        FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(!isDebug);
        FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(!isDebug);
        analytics = FirebaseAnalytics.instance;

      } ());

    futs.add(() async {

      prefs = SharedPrefs();
      PackageInfo packageInfo = await PackageInfo.fromPlatform();
      versionName = packageInfo.version;
      await prefs.initialized.future;
    } ());

    futs.add(() async {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
      await DatabaseHolder.init();
      db = await DatabaseHolder.getDb();
    } ());

    await Future.wait(futs);

    conn = ConnController();

    dishHolder = conn.newHolder((notifyStream) => DishConnection(notifyStream: notifyStream));
    routerHolder = conn.newHolder((notifyStream) => RouterConnection(notifyStream: notifyStream));
    onlineHolder = conn.newHolder((notifyStream) => OnlineConnection(notifyStream: notifyStream));

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
    R.conn.processAppState(state);
    LogUtils.d(_TAG, "ChangeAppLifecycleState: $state");
  }

  @override
  void didChangeLocales(List<Locale>? locales) {
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
