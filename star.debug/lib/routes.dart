
import 'package:flutter/material.dart';
import 'package:star_debug/pages/debug_data.dart';
import 'package:star_debug/pages/live.dart';
import 'pages/debug.dart';

class Routes {
  static const String MAIN = "/main";
  static const String DEBUG = "/debug";
  static const String LIVE = "/live";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case DEBUG:
        return MaterialPageRoute(settings: settings, builder: (context) => DebugPage(route: settings.name!));
      case LIVE:
        return MaterialPageRoute(settings: settings, builder: (context) => LivePage(route: settings.name!));
      case MAIN:
      default:
        return MaterialPageRoute(settings: settings, builder: (context) => DebugDataPage(route: settings.name!));
    }
  }
}
