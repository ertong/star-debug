import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:star_debug/pages/debug_data.dart';
import 'package:star_debug/preloaded.dart';

import 'messages/I18n.dart';
import 'routes.dart';
import 'utils/log_utils.dart';

const String _TAG = "UbibApp";

class StarDebugApp extends StatefulWidget {
  const StarDebugApp({super.key});

  @override
  StarDebugAppState createState() => StarDebugAppState();
}

class StarDebugAppState extends State<StarDebugApp>
{
  StreamSubscription? subsNotification;

  @override
  void initState() {
    super.initState();

    ()async{
        // var intent = await R.plugin.getIntentAndClear();
        // LogUtils.d(_TAG, "INTENT $intent");
    }();
  }

  @override
  void dispose() {
    subsNotification?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // var theme = ThemeData.light();
    return MaterialApp(
      scaffoldMessengerKey: R.scaffoldMessengerKey,
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      navigatorKey: R.navigatorKey,
      supportedLocales: I18n.instance.locales.values,
      locale: I18n.instance.locale,
      builder: (context, child) =>
          MediaQuery(data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true), child: child!),

      onGenerateTitle: (BuildContext context) => M.general.app_name,

      theme: R.prefs.data.darkMode
          ? ThemeData.dark(useMaterial3: false)
          : ThemeData.light(useMaterial3: false),

      navigatorObservers: [
        // FirebaseAnalyticsObserver(analytics: R.analytics),
        _MyNavigatorObserver(),
      ],
      onGenerateRoute: Routes.generateRoute,
      home: DebugDataPage(),
    );
  }
}

class _MyNavigatorObserver extends NavigatorObserver {

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    LogUtils.d(_TAG, "Pushed route: ${route.settings.name} from ${previousRoute?.settings.name}");
  }
}
