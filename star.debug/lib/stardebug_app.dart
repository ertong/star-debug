
import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:star_debug/pages/main.dart';
import 'package:star_debug/preloaded.dart';

import 'messages/I18n.dart';
import 'routes.dart';
import 'utils/log_utils.dart';

const String _TAG = "UbibApp";

class StarDebugApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _StarDebugAppState createState() => _StarDebugAppState();
}

class _StarDebugAppState extends State<StarDebugApp>
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
    var theme = ThemeData.light();
    // var darkTheme = ThemeData.dark();
    var darkTheme = theme;
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

      // theme: theme.copyWith(
      //   colorScheme: theme.colorScheme.copyWith(secondary: Color(0xff434d2a), primary: Color(0xff202e19)),
      //   primaryTextTheme: GoogleFonts.philosopherTextTheme(theme.primaryTextTheme),
      //   textTheme: GoogleFonts.openSansTextTheme(theme.textTheme),
      //   appBarTheme: theme.appBarTheme.copyWith(
      //     titleTextStyle:  GoogleFonts.philosopherTextTheme(theme.primaryTextTheme)
      //         .bodyText1?.copyWith(fontSize: 22),
      //   ),
      //   bottomNavigationBarTheme: theme.bottomNavigationBarTheme.copyWith(
      //     selectedItemColor: Color(0xffd8a837),
      //     selectedLabelStyle: GoogleFonts.openSans(fontSize: 12),
      //     unselectedItemColor: Colors.white,
      //     unselectedLabelStyle: GoogleFonts.openSans(fontSize: 11),
      //     showSelectedLabels: true,
      //     showUnselectedLabels: true,
      //     type: BottomNavigationBarType.fixed,
      //     backgroundColor: Theme.of(context).colorScheme.primary,
      //   ),
      // ),
      // darkTheme: darkTheme.copyWith(
      //   colorScheme: theme.colorScheme.copyWith(secondary: Color(0xff434d2a), primary: Color(0xff202e19)),
      //   primaryTextTheme: GoogleFonts.philosopherTextTheme(theme.primaryTextTheme),
      //   textTheme: GoogleFonts.openSansTextTheme(theme.textTheme),
      //   appBarTheme: theme.appBarTheme.copyWith(
      //     titleTextStyle:  GoogleFonts.philosopherTextTheme(theme.primaryTextTheme)
      //         .bodyText1?.copyWith(fontSize: 22),
      //   ),
      //   bottomNavigationBarTheme: theme.bottomNavigationBarTheme.copyWith(
      //     selectedItemColor: Color(0xffd8a837),
      //     selectedLabelStyle: GoogleFonts.openSans(fontSize: 12),
      //     unselectedItemColor: Colors.white,
      //     unselectedLabelStyle: GoogleFonts.openSans(fontSize: 11),
      //     showSelectedLabels: true,
      //     showUnselectedLabels: true,
      //     type: BottomNavigationBarType.fixed,
      //     backgroundColor: Theme.of(context).colorScheme.primary,
      //   ),
      // ),
      navigatorObservers: [
        // FirebaseAnalyticsObserver(analytics: R.analytics),
        _MyNavigatorObserver(),
      ],
      onGenerateRoute: Routes.generateRoute,
      home: MainPage(),
    );
  }
}

class _MyNavigatorObserver extends NavigatorObserver {

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    LogUtils.d(_TAG, "Pushed route: ${route.settings.name} from ${previousRoute?.settings.name}");
  }
}
