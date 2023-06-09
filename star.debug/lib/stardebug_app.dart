import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:star_debug/pages/live.dart';
import 'package:star_debug/preloaded.dart';

import 'messages/i18n.dart';
import 'routes.dart';
import 'utils/log_utils.dart';

const String _TAG = "StarDebugApp";

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
    var theme = R.prefs.data.darkMode
        ? ThemeData.dark(useMaterial3: false)
        : ThemeData.light(useMaterial3: false);

    theme = theme.copyWith(
      //https://stackoverflow.com/questions/75698363/why-different-paddings-on-mobile-and-desktop-flutter-platforms
      materialTapTargetSize: MaterialTapTargetSize.padded,
    );

    return MaterialApp(
      scaffoldMessengerKey: R.scaffoldMessengerKey,
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      //debugShowCheckedModeBanner: false,
      navigatorKey: R.navigatorKey,
      supportedLocales: I18n.instance.locales.values,
      locale: I18n.instance.locale,
      builder: (context, child) =>
          MediaQuery(data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true), child: child!),

      onGenerateTitle: (BuildContext context) => M.general.app_name,

      theme: theme,

      navigatorObservers: [
        if (R.analytics!=null)
          FirebaseAnalyticsObserver(analytics: R.analytics!),
        _MyNavigatorObserver(),
      ],
      onGenerateRoute: Routes.generateRoute,
      home: LivePage(),
    );
  }
}

class _MyNavigatorObserver extends NavigatorObserver {

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    LogUtils.d(_TAG, "Pushed route: ${route.settings.name} from ${previousRoute?.settings.name}");
  }
}
