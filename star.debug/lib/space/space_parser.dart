
import 'dart:convert';

import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/space/device_app.dart';
import 'package:star_debug/utils/debug_data.dart';
import 'package:star_debug/utils/snapshot.dart';

class SpaceParser{

  DeviceApp? deviceApp;

  Map<String, dynamic>? json;

  Map<String, dynamic>? jsonDish;
  Map<String, dynamic>? jsonRouter;
  Map<String, dynamic>? jsonApp;

  /// seconds
  int? dishTs;
  int? dishApi;
  DishGetStatusResponse? dishGetStatus;
  Map<String, bool> dishFeatures = {};

  int? routerTs;
  int? routerApi;
  WifiGetStatusResponse? routerGetStatus;
  Map<String, bool> routerFeatures = {};

  static SpaceParser ofJsonStr(String json) {
    return ofJson(jsonDecode(json));
  }

  static SpaceParser ofJson(Map<String, dynamic> json) {
    SpaceParser p = SpaceParser();

    p.json = json;

    p.jsonDish = json["dish"] as Map<String, dynamic>?;
    p.jsonRouter = json['router'] as Map<String, dynamic>?;
    p.jsonApp = json['device'] as Map<String, dynamic>?;

    { // new debug data
      if (p.jsonRouter?.containsKey("status") ?? false) p.jsonRouter = p.jsonRouter?["status"];
      if (p.jsonApp?.containsKey("status") ?? false) p.jsonApp = p.jsonApp?["status"];
      if (p.jsonDish?.containsKey("status") ?? false) p.jsonDish = p.jsonDish?["status"];
    }

    if (json.containsKey("wifiConfig"))
      p.jsonRouter?["config"] = json["wifiConfig"];

    p.deviceApp = DeviceApp.of(p.jsonApp);

    if (p.jsonDish!=null && p.jsonDish!.containsKey("deviceInfo")) {
      if (p.jsonDish!.containsKey("_proto")) {
        p.dishGetStatus = DishGetStatusResponse.fromBuffer(base64Decode(p.jsonDish!["_proto"]));
      } else {
        p.dishGetStatus = DishGetStatusResponse();
        DebugDataHelper.jsonToProto(p.jsonDish!, p.dishGetStatus!);
      }

      {
        var features = p.jsonDish?["features"];
        if (features is Map)
          for (var e in features.entries)
            p.dishFeatures[e.key] = e.value as bool;
      }

      if (p.jsonDish?["timestamp"]!=null)
        p.dishTs = (p.jsonDish?["timestamp"] ?? 0).toInt();

      // v2
      if (p.jsonDish?["apiVersion"]!=null)
        p.dishApi = (p.jsonDish?["apiVersion"] ?? 0).toInt();
    }
    if (p.jsonRouter!=null && p.jsonRouter!.containsKey("deviceInfo")) {

      if (p.jsonRouter!.containsKey("_proto")) {
        p.routerGetStatus = WifiGetStatusResponse.fromBuffer(base64Decode(p.jsonRouter!["_proto"]));
      } else {
        p.routerGetStatus = WifiGetStatusResponse();
        DebugDataHelper.jsonToProto(p.jsonRouter!, p.routerGetStatus!);
      }

      {
        var features = p.jsonRouter?["features"];
        if (features is Map)
          for (var e in features.entries)
            p.routerFeatures[e.key] = e.value as bool;
      }

      if (p.jsonRouter?["timestamp"]!=null)
        p.routerTs = (p.jsonRouter?["timestamp"] ?? 0).toInt();

      if (p.jsonRouter?["apiVersion"]!=null)
        p.routerApi = (p.jsonRouter?["apiVersion"] ?? 0).toInt();
    }

    return p;
  }

  bool hasData() => dishGetStatus!=null || routerGetStatus!=null || deviceApp!=null;

  Snapshot toSnapshot() {
    return Snapshot(
        timestamp: (dishTs ?? 0) * 1000,
        dishTs: dishTs == null ? null : dishTs! * 1000,
        dishGetStatus: dishGetStatus,
        dishFeatures: dishFeatures,
        dishApiVersion: dishApi,
        routerTs: routerTs == null ? null : routerTs! * 1000,
        routerGetStatus: routerGetStatus,
        routerFeatures: routerFeatures,
        routerApiVersion: routerApi,
        deviceApp: deviceApp,
        debug_data: json

      // timestampHistory: R.dish?.dishGetHistory.receivedTime,
      // dishGetHistory: R.dish?.dishGetHistory.data,
    );

  }
}