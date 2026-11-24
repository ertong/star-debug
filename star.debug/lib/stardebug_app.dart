import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:material_ui/material_ui.dart';
import 'package:star_debug/pages/live.dart';
import 'package:star_debug/preloaded.dart';

import 'messages/i18n.dart';
import 'routes.dart';
import 'theme.dart';
import 'utils/log_utils.dart';

const String _TAG = "StarDebugApp";

class StarDebugApp extends StatefulWidget {
  const StarDebugApp({super.key});

  @override
  StarDebugAppState createState() => StarDebugAppState();
}

class StarDebugAppState extends State<StarDebugApp> {
  StreamSubscription? subsNotification;

  @override
  void initState() {
    super.initState();

    () async {
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
    final theme = StarDebugTheme.build(
      R.prefs.data.darkMode ? Brightness.dark : Brightness.light,
    );

    return MaterialApp(
      scaffoldMessengerKey: R.scaffoldMessengerKey,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      //debugShowCheckedModeBanner: false,
      navigatorKey: R.navigatorKey,
      supportedLocales: I18n.instance.locales.values,
      locale: I18n.instance.locale,
      builder: starDebugAppBuilder,

      onGenerateTitle: (BuildContext context) => M.general.app_name,

      theme: theme,
      themeAnimationDuration: Duration(milliseconds: 250),
      themeAnimationCurve: Curves.easeOutCubic,

      navigatorObservers: [
        if (R.analytics != null)
          FirebaseAnalyticsObserver(analytics: R.analytics!),
        _MyNavigatorObserver(),
      ],
      onGenerateRoute: Routes.generateRoute,
      home: LivePage(),
    );
  }
}

/// Wraps every route of the app's [MaterialApp].
Widget starDebugAppBuilder(BuildContext context, Widget? child) {
  // Passes the theme and localizations to dependencies that still use
  // package:flutter/material.dart, such as flutter_markdown_plus.
  // ignore: deprecated_member_use
  return MaterialUiCompatibilityBridge(
    child: MediaQuery(
      data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
      child: child!,
    ),
  );
}

class _MyNavigatorObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    LogUtils.d(
      _TAG,
      "Pushed route: ${route.settings.name} from ${previousRoute?.settings.name}",
    );
  }
}
