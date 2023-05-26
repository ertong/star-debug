
import 'package:flutter/material.dart';
import 'package:star_debug/pages/about.dart';
import 'package:star_debug/pages/debug_data.dart';
import 'package:star_debug/pages/live.dart';
import 'pages/debug.dart';

class Routes {
  static const String MAIN = "/main";
  static const String DEBUG = "/debug";
  static const String LIVE = "/live";
  static const String ABOUT = "/about";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case DEBUG:
        return MaterialPageRoute(settings: settings, builder: (context) => DebugPage());
      case LIVE:
        return MaterialPageRoute(settings: settings, builder: (context) => LivePage());
      case ABOUT:
        return MaterialPageRoute(settings: settings, builder: (context) => AboutPage());
      case MAIN:
      default:
        return MaterialPageRoute(settings: settings, builder: (context) => DebugDataPage());
    }
  }
}
