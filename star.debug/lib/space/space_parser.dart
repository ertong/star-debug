
import 'dart:convert';
import 'dart:developer';

import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/space/device_app.dart';
import 'package:star_debug/utils/debug_data.dart';

class SpaceParser{

  DeviceApp? deviceApp;

  Map<String, dynamic>? json;

  Map<String, dynamic>? jsonDish;
  Map<String, dynamic>? jsonRouter;
  Map<String, dynamic>? jsonApp;

  int? dishTs;
  DishGetStatusResponse? dishGetStatus;
  Map<String, bool> dishFeatures = {};

  int? routerTs;
  WifiGetStatusResponse? routerGetStatus;
  Map<String, bool> routerFeatures = {};

  static SpaceParser ofGrpc(int ts, DishGetStatusResponse? dish, WifiGetStatusResponse? router) {
    SpaceParser p = SpaceParser();

    if (dish!=null) {
      p.dishGetStatus = dish;
      p.dishTs = ts~/1000;
    }

    if (router!=null) {
      p.routerGetStatus = router;
      p.routerTs = ts~/1000;
    }

    return p;
  }

  static SpaceParser ofJsonStr(String json) {
    return ofJson(jsonDecode(json));
  }

  static SpaceParser ofJson(Map<String, dynamic> json) {
    SpaceParser p = SpaceParser();

    p.json = json;

    p.jsonDish = json["dish"] as Map<String, dynamic>?;
    p.jsonRouter = json['router'] as Map<String, dynamic>?;
    p.jsonApp = json['device'] as Map<String, dynamic>?;

    p.deviceApp = DeviceApp.of(p.jsonApp);

    if (p.jsonDish!=null && p.jsonDish!.containsKey("deviceInfo")) {
      p.dishGetStatus = DishGetStatusResponse();
      DebugDataHelper.jsonToProto(p.jsonDish!, p.dishGetStatus!);

      {
        var features = p.jsonDish?["features"];
        if (features is Map)
          for (var e in features.entries)
            p.dishFeatures[e.key] = e.value as bool;
      }

      if (p.jsonDish?["timestamp"]!=null)
        p.dishTs = (p.jsonDish?["timestamp"] ?? 0).toInt();
    }
    if (p.jsonRouter!=null && p.jsonRouter!.containsKey("deviceInfo")) {
      p.routerGetStatus = WifiGetStatusResponse();
      DebugDataHelper.jsonToProto(p.jsonRouter!, p.routerGetStatus!);

      // log("SERIALIZED ${jsonEncode(p.jsonRouter)}");
      // log("PROTO3 ${jsonEncode(p.routerGetStatus!.toProto3Json())}");

      {
        var features = p.jsonRouter?["features"];
        if (features is Map)
          for (var e in features.entries)
            p.routerFeatures[e.key] = e.value as bool;
      }

      if (p.jsonRouter?["timestamp"]!=null)
        p.routerTs = (p.jsonRouter?["timestamp"] ?? 0).toInt();
    }

    return p;
  }

  bool hasData() => dishGetStatus!=null || routerGetStatus!=null || deviceApp!=null;

  String toDebugDataJson(){
    if (this.json!=null)
      return JsonEncoder.withIndent("  ").convert(this.json);
    else {
      var data = DebugDataHelper.debugData(
          dishGetStatus,
          null,
          routerGetStatus,
          null
      );
      return JsonEncoder.withIndent("  ").convert(data);
    }
  }
}