
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/space/app_data.dart';
import 'package:star_debug/space/device_app.dart';
import 'package:star_debug/space/dishy.dart';
import 'package:star_debug/space/dishy_data.dart';
import 'package:star_debug/space/router.dart';
import 'package:star_debug/space/router_data.dart';
import 'package:star_debug/utils/debug_data.dart';

class SpaceParser{

  Dishy? dishy;
  Router? router;
  DeviceApp? deviceApp;

  Map<String, dynamic> json;

  Map<String, dynamic>? jsonDish;
  Map<String, dynamic>? jsonRouter;
  Map<String, dynamic>? jsonApp;

  DishGetStatusResponse? dishGetStatus;
  WifiGetStatusResponse? routerGetStatus;

  SpaceParser(this.json) {
    jsonDish = json[DISH_KEY] as Map<String, dynamic>?;
    jsonRouter = json[ROUTER_KEY] as Map<String, dynamic>?;
    jsonApp = json[DEVICE_KEY] as Map<String, dynamic>?;

    dishy = Dishy.of(jsonDish);
    router = Router.of(json[ROUTER_KEY]);
    deviceApp = DeviceApp.of(json[DEVICE_KEY]);

    if (jsonDish!=null) {
      dishGetStatus = DishGetStatusResponse();
      DebugDataHelper.jsonToProto(jsonDish!, dishGetStatus!);
    }
    if (jsonRouter!=null) {
      routerGetStatus = WifiGetStatusResponse();
      DebugDataHelper.jsonToProto(jsonRouter!, routerGetStatus!);
    }
  }

  bool hasData() => dishy!=null || router!=null || deviceApp!=null;

}