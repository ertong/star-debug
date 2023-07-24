
import 'package:star_debug/grpc/starlink/network.pbenum.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';

extension DishGetStatusExt on DishGetStatusResponse {
  int countAlerts(){
    var map = this.alerts.toProto3Json() as Map<String, dynamic>;
    int alerts = map.entries.where((e) => e.value==true).length;
    if (this.hasDisablementCode() && this.disablementCode!=UtDisablementCode.OKAY)
      alerts++;
    if (this.hasOutage() && this.outage.hasCause())
      alerts++;

    if (hasReadyStates()) {
      for (var e in (readyStates.info_.byName).entries) {
        var val = readyStates.getField(e.value.tagNumber) ?? false;
        if (!val)
          alerts++;
      }
    }

    if (hasGpsStats()) {
      if (!gpsStats.gpsValid)
        alerts++;
    }

    if (!isSnrAboveNoiseFloor)
      alerts++;

    if (hasEthSpeedMbps())
      if (ethSpeedMbps!=1000)
        alerts++;

    return alerts;
  }
}

extension WifiGetStatusExt on WifiGetStatusResponse {
  int countAlerts() {
    var map = this.alerts.toProto3Json() as Map<String, dynamic>;
    int alerts = map.entries
        .where((e) => e.value == true)
        .length;

    if (this.hasConfig()) {
      var config = this.config;

      if (config.networks.isNotEmpty) {
        for (WifiConfig_Network n in config.networks) {
          for (var srv in n.basicServiceSets) {
            if (srv.bssid.startsWith("74:24:9f")) {
              ++alerts;
              break;
            }
          }
        }
      }
    }

    return alerts;
  }
}