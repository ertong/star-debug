

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/utils/kv_widget.dart';

List<Widget> buildDeviceInfoWidget(ThemeData theme, DeviceInfo deviceInfo) {
    var b = KVWidgetBuilder(theme);

    b.header("DeviceInfo");
    if (deviceInfo.hasId())
      b.kv("Id", deviceInfo.id);
    if (deviceInfo.hasHardwareVersion())
      b.kv("HardwareVersion", deviceInfo.hardwareVersion);
    if (deviceInfo.hasSoftwareVersion())
      b.kv("SoftwareVersion", deviceInfo.softwareVersion);
    if (deviceInfo.hasCountryCode())
      b.kv("CountryCode", deviceInfo.countryCode);
    if (deviceInfo.hasUtcOffsetS())
      b.kv("UtcOffsetS", deviceInfo.utcOffsetS);
    // bool software_partitions_equal = 6;
    // bool is_dev = 7;
    if (deviceInfo.hasBootcount())
      b.kv("BootCount", deviceInfo.bootcount);
    // int32 anti_rollback_version = 9;
    // bool is_hitl = 10;
    if (deviceInfo.hasManufacturedVersion())
      b.kv("ManufacturedVersion", deviceInfo.manufacturedVersion);
    if (deviceInfo.hasGenerationNumber())
      b.kv("GenerationNumber", deviceInfo.generationNumber);
    if (deviceInfo.hasDishCohoused())
      b.kv("DishCohoused", deviceInfo.dishCohoused);

    if (deviceInfo.hasBoot()){
      var boot = deviceInfo.boot;
      // map<int32, int32> count_by_reason = 1;
      // int32 last_count = 3;
      // map<int32, int32> count_by_reason_delta = 4;
      if (boot.hasLastReason())
        b.kv("Boot.LastReason", boot.lastReason);
    }

    return b.widgets;
}

List<Widget> buildAlertsWidget(ThemeData theme, Map<String, dynamic> alerts) {
  var b = KVWidgetBuilder(theme);
  if (alerts.isEmpty) {
    b.header("Alerts");
    b.kv("", "No alerts");
  } else {
    b.header("Alerts", isAlert: true);
    for (var e in alerts.entries)
      if (e.value)
        b.kv("", "${e.key}".toUpperCase());
  }

  return b.widgets;
}