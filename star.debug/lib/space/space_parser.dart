
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/space/device_app.dart';
import 'package:star_debug/utils/debug_data.dart';

class SpaceParser{

  DeviceApp? deviceApp;

  Map<String, dynamic> json;

  Map<String, dynamic>? jsonDish;
  Map<String, dynamic>? jsonRouter;
  Map<String, dynamic>? jsonApp;

  int? dishTs;
  DishGetStatusResponse? dishGetStatus;
  int? routerTs;
  WifiGetStatusResponse? routerGetStatus;

  SpaceParser(this.json) {
    jsonDish = json["dish"] as Map<String, dynamic>?;
    jsonRouter = json['router'] as Map<String, dynamic>?;
    jsonApp = json['device'] as Map<String, dynamic>?;

    deviceApp = DeviceApp.of(jsonApp);

    if (jsonDish!=null && jsonDish!.containsKey("deviceInfo")) {
      dishGetStatus = DishGetStatusResponse();
      DebugDataHelper.jsonToProto(jsonDish!, dishGetStatus!);

      if (jsonDish?["timestamp"]!=null)
        dishTs = (jsonDish?["timestamp"] ?? 0).toInt();
    }
    if (jsonRouter!=null && jsonRouter!.containsKey("deviceInfo")) {
      routerGetStatus = WifiGetStatusResponse();
      DebugDataHelper.jsonToProto(jsonRouter!, routerGetStatus!);

      if (jsonRouter?["timestamp"]!=null)
        routerTs = (jsonRouter?["timestamp"] ?? 0).toInt();
    }
  }

  bool hasData() => dishGetStatus!=null || routerGetStatus!=null || deviceApp!=null;

}