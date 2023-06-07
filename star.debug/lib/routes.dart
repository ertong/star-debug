
import 'package:flutter/material.dart';
import 'package:star_debug/pages/about.dart';
import 'package:star_debug/pages/debug_data.dart';
import 'package:star_debug/pages/live.dart';
import 'package:star_debug/pages/my_starlinks.dart';
import 'pages/debug.dart';

class Routes {
  static const String MAIN = "/main";
  static const String MY_STARLINKS = "/my_starlinks";
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
      case MY_STARLINKS:
        return MaterialPageRoute(settings: settings, builder: (context) => MyStarlinksPage());
      case MAIN:
      default:
        return MaterialPageRoute(settings: settings, builder: (context) => DebugDataPage());
    }
  }
}
