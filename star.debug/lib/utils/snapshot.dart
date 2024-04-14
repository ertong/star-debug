

import 'package:star_debug/grpc/starlink/starlink.pb.dart';

class Snapshot {
  /// Unix seconds
  final int timestamp;

  final DishGetStatusResponse? dishGetStatus;
  final int? dishApiVersion;

  final WifiGetStatusResponse? routerGetStatus;
  final int? routerApiVersion;

  final int? timestampHistory;
  final DishGetHistoryResponse? dishGetHistory;
  final GetLocationResponse? dishGetLocationGPS;
  final GetLocationResponse? dishGetLocationStarlink;

  Snapshot(
      {required this.timestamp,
      this.dishGetStatus,
      this.dishApiVersion,
      this.routerGetStatus,
      this.routerApiVersion,
      this.timestampHistory,
      this.dishGetHistory,
      this.dishGetLocationGPS,
      this.dishGetLocationStarlink});
}