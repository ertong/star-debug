

import 'package:star_debug/grpc/starlink/starlink.pb.dart';

class Snapshot {
  final DishGetStatusResponse? dishGetStatus;
  final int? dishApiVersion;

  final WifiGetStatusResponse? routerGetStatus;
  final int? routerApiVersion;

  final DishGetHistoryResponse? dishGetHistory;
  final GetLocationResponse? dishGetLocationGPS;
  final GetLocationResponse? dishGetLocationStarlink;

  Snapshot(
      {this.dishGetStatus,
      this.dishApiVersion,
      this.routerGetStatus,
      this.routerApiVersion,
      this.dishGetHistory,
      this.dishGetLocationGPS,
      this.dishGetLocationStarlink});
}