

import 'dart:convert';

import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/space/device_app.dart';
import 'package:star_debug/utils/debug_data.dart';

class Snapshot {
  /// Unix seconds
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
      this.debug_data
      });

  String toDebugDataJson(){
    if (this.debug_data!=null)
      return JsonEncoder.withIndent("  ").convert(this.debug_data);
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