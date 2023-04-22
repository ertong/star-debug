
import 'package:flutter/material.dart';
import 'pages/main.dart';

class Routes {
  static const String LOGIN = "/login";
  static const String LOGIN_NOTIFICATIONS = "/login/notifications";
  static const String MAIN = "/main";
  static const String MAIN_HOME = "/main/home";
  static const String MAIN_ACCOUNTS = "/main/accounts";
  static const String MAIN_NOTIFICATIONS = "/main/notifications";
  static const String MAIN_MORE = "/main/more";
  static const String DEBUG = "/debug";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MAIN:
      case MAIN_NOTIFICATIONS:
      case MAIN_HOME:
      case MAIN_ACCOUNTS:
      case MAIN_MORE:
      default:
        return MaterialPageRoute(settings: settings, builder: (context) => MainPage(route: settings.name!));
    }
  }
}
