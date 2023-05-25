import 'package:flutter/material.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/messages/I18n.dart';
import 'package:star_debug/utils/kv_widget.dart';
import 'package:time_machine/time_machine.dart';

List<Widget> buildDeviceInfoWidget(ThemeData theme, DeviceInfo deviceInfo) {
    var b = KVWidgetBuilder(theme);

    b.header(M.header.device_info);
    if (deviceInfo.hasId())
      b.kv(M.grpc.DeviceInfo.id, deviceInfo.id);
    if (deviceInfo.hasHardwareVersion())
      b.kv(M.grpc.DeviceInfo.hardware_version, deviceInfo.hardwareVersion);
    if (deviceInfo.hasSoftwareVersion())
      b.kv(M.grpc.DeviceInfo.software_version, deviceInfo.softwareVersion);
    if (deviceInfo.hasManufacturedVersion())
      b.kv(M.grpc.DeviceInfo.manufactured_version, deviceInfo.manufacturedVersion);
    if (deviceInfo.hasCountryCode())
      b.kv(M.grpc.DeviceInfo.country_code, deviceInfo.countryCode);
    if (deviceInfo.hasUtcOffsetS())
      b.kv(M.grpc.DeviceInfo.utc_offset_s, deviceInfo.utcOffsetS);
    // bool software_partitions_equal = 6;
    // bool is_dev = 7;
    if (deviceInfo.hasBootcount())
      b.kv(M.grpc.DeviceInfo.bootcount, deviceInfo.bootcount);
    // int32 anti_rollback_version = 9;
    // bool is_hitl = 10;

    if (deviceInfo.hasGenerationNumber())
      b.kv(M.grpc.DeviceInfo.x_build_date,
          Instant.fromEpochSeconds(deviceInfo.generationNumber.toInt()).inUtc().toString("yyyy-MM-dd")
      );

    if (deviceInfo.hasDishCohoused())
      b.kv(M.grpc.DeviceInfo.dish_cohoused, deviceInfo.dishCohoused);

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