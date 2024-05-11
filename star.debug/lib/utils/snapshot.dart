

import 'dart:convert';

import 'package:star_debug/db/database.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/space/device_app.dart';
import 'package:star_debug/space/space_parser.dart';
import 'package:star_debug/utils/debug_data.dart';
import 'package:star_debug/utils/log_utils.dart';

const String _TAG = "Snapshot";

class Snapshot {
  final int timestamp;

  final int? dishTs;
  final DishGetStatusResponse? dishGetStatus;
  final Map<String, bool>? dishFeatures;
  final int? dishApiVersion;

  final int? routerTs;
  final WifiGetStatusResponse? routerGetStatus;
  final Map<String, bool>? routerFeatures;
  final int? routerApiVersion;

  final int? historyTs;
  final DishGetHistoryResponse? dishGetHistory;
  final GetLocationResponse? dishGetLocationGPS;
  final GetLocationResponse? dishGetLocationStarlink;

  final Map<String, dynamic>? onlineJson;
  final DeviceApp? deviceApp;

  final Map<String, dynamic>? debug_data;

  Snapshot(
      {required this.timestamp,
      this.dishTs,
      this.dishGetStatus,
      this.dishFeatures,
      this.dishApiVersion,
      this.routerTs,
      this.routerGetStatus,
      this.routerFeatures,
      this.routerApiVersion,
      this.historyTs,
      this.dishGetHistory,
      this.dishGetLocationGPS,
      this.dishGetLocationStarlink,
      this.deviceApp,
      this.debug_data,
      this.onlineJson
      });

  String toDebugDataJson(){
    if (this.debug_data!=null)
      return JsonEncoder.withIndent("  ").convert(this.debug_data);
    else {
      var data = DebugDataHelper.debugData(this);
      return JsonEncoder.withIndent("  ").convert(data);
    }
  }

  bool hasData() => dishGetStatus!=null || routerGetStatus!=null;

  static Snapshot ofRow(DishLog row) {
    if (row.debugDataJson!=null && row.debugDataJson!="null") {
      var p = SpaceParser.ofJsonStr(row.debugDataJson!);
      return p.toSnapshot();
    }

    DishGetStatusResponse? dish;
    if (row.dishStatusJson?.isNotEmpty ?? false) {
      try {
        dish = DishGetStatusResponse.fromBuffer(row.dishStatusJson!);
      }catch(e,s) {
        LogUtils.ers(_TAG, "Loading ${row.dishStatusJson}", e, s);
      }
    }

    WifiGetStatusResponse? router;
    if (row.wifiStatusJson?.isNotEmpty ?? false) {
      try {
        router = WifiGetStatusResponse.fromBuffer(row.wifiStatusJson!);
      }catch(e,s) {
        LogUtils.ers(_TAG, "Loading ${row.wifiStatusJson}", e, s);
      }
    }

    DishGetHistoryResponse? history;
    if (row.dishHistoryJson?.isNotEmpty ?? false) {
      try {
        history = DishGetHistoryResponse.fromBuffer(row.dishHistoryJson!);
      }catch(e,s) {
        LogUtils.ers(_TAG, "Loading ${row.dishHistoryJson}", e, s);
      }
    }

    Map<String, dynamic>? onlineJson;
    if (row.onlineJson!=null && row.onlineJson!="null") {
      try {
        onlineJson = jsonDecode(row.onlineJson!);
      }catch(e,s) {
        LogUtils.ers(_TAG, "Loading ${row.wifiStatusJson}", e, s);
      }
    }

    return Snapshot(
      timestamp: row.timestamp,
      dishTs: row.timestamp, // todo
      dishGetStatus: dish,
      routerTs: row.timestamp, // todo
      routerGetStatus: router,
      onlineJson: onlineJson,
      historyTs: row.timestamp, // todo
      dishGetHistory: history,
    );

  }
}