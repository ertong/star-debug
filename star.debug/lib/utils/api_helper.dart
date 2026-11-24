
import 'package:star_debug/grpc/starlink/network.pbenum.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/starlink_model.dart';

extension DishGetStatusExt on DishGetStatusResponse {
  int countAlerts(){
    var map = this.alerts.toProto3Json() as Map<String, dynamic>;
    int alerts = map.entries.where((e) => e.value==true).length;
    if (this.hasDisablementCode() && this.disablementCode!=UtDisablementCode.OKAY)
      alerts++;
    if (this.hasOutage() && this.outage.hasCause())
      alerts++;

    final String hw = deviceInfo.hardwareVersion;

    if (hasReadyStates()) {
      for (var e in (readyStates.info_.byName).entries) {
        var key = e.key;
        var val = readyStates.getField(e.value.tagNumber) ?? false;

        if (key=="cady" && !StarlinkModel.hasCady(hw))
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

  // Newer firmware reports battery and USB-C stats inside power_source_stats.
  // grpc-deprecated(dish firmware 2026.11.16, API 45): top-level battery_stats (1054) is reserved.
  // Remove this fallback with older firmware support.
  DishBatteryStats get effectiveBatteryStats =>
      powerSourceStats.hasBatteryStats() ? powerSourceStats.batteryStats : batteryStats;

  // grpc-deprecated(dish firmware 2026.11.16, API 45): top-level usbc_stats (1058) is reserved and
  // seen in no captured dump; its DishUsbcStats type is assumed. Remove this fallback with it.
  DishUsbcStats get effectiveUsbcStats =>
      powerSourceStats.hasUsbcStats() ? powerSourceStats.usbcStats : usbcStats;
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