
import 'package:star_debug/grpc/starlink/network.pbenum.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/preloaded.dart';

extension DishGetStatusExt on DishGetStatusResponse {
  int countAlerts(){
    var map = this.alerts.toProto3Json() as Map<String, dynamic>;
    int alerts = map.entries.where((e) => e.value==true).length;
    if (this.hasDisablementCode() && this.disablementCode!=UtDisablementCode.OKAY)
      alerts++;
    if (this.hasOutage() && this.outage.hasCause())
      alerts++;

    final String hw = deviceInfo.hardwareVersion ?? "";

    if (hasReadyStates()) {
      for (var e in (readyStates.info_.byName).entries) {
        var key = e.key;
        var val = readyStates.getField(e.value.tagNumber) ?? false;

        if (key=="cady" && (hw.startsWith("rev4") || hw=="rev_mini_prod1" || hw.startsWith("mini1_prod")))
          continue;

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

    if (R.prefs.data.valkyrieCheck) {
      var service = config.networks.firstOrNull?.basicServiceSets.firstOrNull;
      if (service!=null) {
        var record = R.valkyrie.checkNow(service.bssid);
        if (record?.device_is_found ?? false) ++alerts;
      }
    }

    return alerts;
  }
}