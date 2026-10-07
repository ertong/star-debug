
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
  // Optional StarDebug timing uses milliseconds here; dishTs remains source seconds.
  bool _hasCaptureTiming = false;
  int? _captureTimestampMs;
  int? _dishStatusTimestampMs;
  bool _dishStatusTimestampEstimated = false;

  int? dishApi;
  DishGetStatusResponse? dishGetStatus;
  Map<String, bool> dishFeatures = {};

  DishGetObstructionMapResponse? dishGetObstructionMap;
  int? obstructionMapTs;
  int? obstructionMapApiVersion;

  int? routerTs;
  int? routerApi;
  WifiGetStatusResponse? routerGetStatus;
  Map<String, bool> routerFeatures = {};

  static int? _timestampMillis(dynamic value) {
    if (value is! num || !value.isFinite || value <= 0) return null;
    final millis = value.toDouble() * 1000;
    if (!millis.isFinite || millis > 8640000000000000) return null;
    final rounded = millis.round();
    return rounded > 0 ? rounded : null;
  }

  static SpaceParser ofJsonStr(String json) {
    return ofJson(jsonDecode(json));
  }

  static SpaceParser ofJson(Map<String, dynamic> json) {
    SpaceParser p = SpaceParser();

    p.json = json;

    p._hasCaptureTiming = json.containsKey("capture");
    final capture = json["capture"];
    if (capture is Map<String, dynamic>) {
      p._captureTimestampMs = _timestampMillis(capture["timestamp"]);
      p._dishStatusTimestampMs = _timestampMillis(capture["dishStatusTimestamp"]);
      p._dishStatusTimestampEstimated = capture["dishStatusTimestampEstimated"] == true;
    }

    if (json["dish"]!=null)
      p.jsonDish = Map<String, dynamic>.from(json["dish"]);
    if (json["router"]!=null)
      p.jsonRouter = Map<String, dynamic>.from(json['router']);
    if (json["device"]!=null)
      p.jsonApp = Map<String, dynamic>.from(json['device']);

    { // new debug data
      if (p.jsonRouter?.containsKey("status") ?? false) p.jsonRouter = Map<String, dynamic>.from(p.jsonRouter?["status"]);
      if (p.jsonApp?.containsKey("status") ?? false) p.jsonApp = Map<String, dynamic>.from(p.jsonApp?["status"]);
      if (p.jsonDish?.containsKey("status") ?? false) p.jsonDish = Map<String, dynamic>.from(p.jsonDish?["status"]);
    }

    { // new debug data from 2024.33.0
      if (json.containsKey("app")) {
        p.jsonApp = json['app'] as Map<String, dynamic>?;
        if (p.jsonApp?.containsKey("device") ?? false) p.jsonApp = Map<String, dynamic>.from(p.jsonApp?["device"]);
      }
      if (p.jsonDish?.containsKey("rawStatus") ?? false) p.jsonDish = Map<String, dynamic>.from(p.jsonDish?["rawStatus"]);
      if (p.jsonRouter?.containsKey("rawStatus") ?? false) p.jsonRouter = Map<String, dynamic>.from(p.jsonRouter?["rawStatus"]);
    }

    if (json.containsKey("wifiConfig"))
      p.jsonRouter?["config"] = json["wifiConfig"];

    p.deviceApp = DeviceApp.of(p.jsonApp);

    final obstructionMap = json["dishObstructionMap"];
    if (obstructionMap is Map<String, dynamic>) {
      try {
        if (obstructionMap["_proto"] is String) {
          p.dishGetObstructionMap = DishGetObstructionMapResponse.fromBuffer(base64Decode(obstructionMap["_proto"]));
        } else if (obstructionMap["rawMap"] is Map<String, dynamic>) {
          p.dishGetObstructionMap = DishGetObstructionMapResponse();
          DebugDataHelper.jsonToProto(obstructionMap["rawMap"], p.dishGetObstructionMap!);
        }
        final ts = obstructionMap["timestamp"];
        if (ts is num && ts.isFinite) p.obstructionMapTs = (ts * 1000).round();
        final api = obstructionMap["apiVersion"];
        if (api is num && api.isFinite) p.obstructionMapApiVersion = api.toInt();
      } catch (_) {
        // An optional map must not prevent importing the device status.
        p.dishGetObstructionMap = null;
      }
    }

    if (p.jsonDish?["deviceInfo"]!=null) {
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

      //2024.33.0
      if (json["dish"]?["apiVersion"] != null )
        p.dishApi = (json["dish"]?["apiVersion"] ?? 0).toInt();
      if (json["dish"]?["timestamp"] != null )
        p.dishTs = (json["dish"]?["timestamp"] ?? 0).toInt();
    }

    if (p.jsonRouter?["deviceInfo"]!=null) {

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

      // v2
      if (p.jsonRouter?["apiVersion"]!=null)
        p.routerApi = (p.jsonRouter?["apiVersion"] ?? 0).toInt();

      //2024.33.0
      if (json["router"]?["apiVersion"] != null )
        p.routerApi = (json["router"]?["apiVersion"] ?? 0).toInt();
      if (json["router"]?["timestamp"] != null )
        p.routerTs = (json["router"]?["timestamp"] ?? 0).toInt();
    }

    return p;
  }

  bool hasData() => dishGetStatus!=null || routerGetStatus!=null || deviceApp!=null;

  Snapshot toSnapshot() {
    return Snapshot(
        timestamp: _hasCaptureTiming ? (_captureTimestampMs ?? 0) : (dishTs ?? 0) * 1000,
        dishTs: _hasCaptureTiming ? _dishStatusTimestampMs : (dishTs == null ? null : dishTs! * 1000),
        dishTsIsEstimated: _hasCaptureTiming && _dishStatusTimestampEstimated,
        dishGetStatus: dishGetStatus,
        dishFeatures: dishFeatures,
        dishApiVersion: dishApi,
        dishGetObstructionMap: dishGetObstructionMap,
        obstructionMapTs: obstructionMapTs,
        obstructionMapApiVersion: obstructionMapApiVersion,
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