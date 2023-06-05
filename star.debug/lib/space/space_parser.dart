
import 'package:star_debug/space/app_data.dart';
import 'package:star_debug/space/device_app.dart';
import 'package:star_debug/space/dishy.dart';
import 'package:star_debug/space/dishy_data.dart';
import 'package:star_debug/space/router.dart';
import 'package:star_debug/space/router_data.dart';

class SpaceParser{

  Dishy? dishy;
  Router? router;
  DeviceApp? deviceApp;

  Map<String, dynamic> json;

  SpaceParser(this.json) {
    dishy = Dishy.of(json[DISH_KEY]);
    router = Router.of(json[ROUTER_KEY]);
    deviceApp = DeviceApp.of(json[DEVICE_KEY]);
  }

  bool hasData() => dishy!=null || router!=null || deviceApp!=null;

}