import 'dart:async';

import 'package:flutter/material.dart' hide Notification, Card, ConnectionState;
import 'package:star_debug/drawer.dart';
import 'package:star_debug/grpc/starlink/starlink.pbgrpc.dart';
import 'package:star_debug/messages/I18n.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/routes.dart';
import 'package:grpc/grpc.dart';
import 'package:star_debug/utils/kv_widget.dart';

const String _TAG="DishTab";

class DishTab extends StatefulWidget {
  const DishTab({super.key});

  @override
  _DishTabState createState() => _DishTabState();
}

class _DishTabState extends State<DishTab> with TickerProviderStateMixin {

  StreamSubscription? grpcSubs;

  @override
  void initState() {
    super.initState();
    grpcSubs = R.grpc.dishHolder.stream.listen((event) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    grpcSubs?.cancel();
    super.dispose();
  }

  ThemeData theme = ThemeData.fallback();

  Widget build(BuildContext context) {
    theme = Theme.of(context);
    return Center(
      child: Column(children:
      _buildBody(),),
    );
  }

  List<Widget> _buildBody(){
    final conn = R.grpc.dish;

    if (conn==null || conn.isClosed)
      return [ Text("Connection not initialized") ];

    List<Widget> rows = [];

    int now = DateTime.now().millisecondsSinceEpoch;

    if (conn.connState!=ConnectionState.ready || now-conn.dishGetStatus.receivedTime>4000) {
      rows.add(Text("Channel: ${conn.connState}"));
    }

    if (conn.dishGetStatus.data!=null && now-conn.dishGetStatus.receivedTime<5000) {
      DishGetStatusResponse status = conn.dishGetStatus.data!;

      {
        var b = KVWidgetBuilder(theme);
        b.header("General");

        if (status.hasDeviceState()) {
          if (status.deviceState.hasUptimeS())
            b.kv("UptimeS", status.deviceState.uptimeS);
        }

        if (status.hasStowRequested()) {
          b.kv("StowRequested", status.stowRequested);
        }

        if (status.hasSecondsToFirstNonemptySlot())
          b.kv("SecondsToFirstNonemptySlot", status.secondsToFirstNonemptySlot);

        if (status.hasMobilityClass()) {
          b.kv("MobilityClass", status.mobilityClass);
        }

        if (status.hasClassOfService()) {
          b.kv("ClassOfService", status.classOfService);
        }

        if (status.hasHasActuators()) {
          b.kv("HasActuators", status.hasActuators);
        }

        if (status.hasOutage()) {
          if (status.outage.hasCause())
            b.kv("Outage.Cause", status.outage.cause);
        }

        if (status.hasDisablementCode()) {
          b.kv("DisablementCode", status.disablementCode);
        }

        if (status.hasSoftwareUpdateState()) {
          b.kv("SoftwareUpdateState", status.softwareUpdateState);
        }

        rows.addAll(b.widgets);
      }

      if (status.hasAlerts()) {
        var alerts = status.alerts.toProto3Json() as Map<String, dynamic>;

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

        rows.addAll(b.widgets);
      }

      {
        var b = KVWidgetBuilder(theme);

        b.header("Signal");

        if (status.hasDownlinkThroughputBps())
          b.kv("DownlinkThroughputBps", status.downlinkThroughputBps);

        if (status.hasUplinkThroughputBps())
          b.kv("UplinkThroughputBps", status.uplinkThroughputBps);

        if (status.hasPopPingDropRate())
          b.kv("PopPingDropRate", status.popPingDropRate);

        if (status.hasPopPingLatencyMs())
          b.kv("PopPingLatencyMs", status.popPingLatencyMs);

        if (status.hasEthSpeedMbps())
          b.kv("EthSpeedMbps", status.ethSpeedMbps);

        if (status.hasIsSnrAboveNoiseFloor())
          b.kv("IsSnrAboveNoiseFloor", status.isSnrAboveNoiseFloor);
        if (status.hasIsSnrPersistentlyLow())
          b.kv("IsSnrPersistentlyLow", status.isSnrPersistentlyLow);

        rows.addAll(b.widgets);
      }

      if (status.hasDeviceInfo()){
        var b = KVWidgetBuilder(theme);
        var deviceInfo = status.deviceInfo;
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

        rows.addAll(b.widgets);
      }

      if (status.hasConfig()){
        var b = KVWidgetBuilder(theme);
        var config = status.config;
        b.header("Config");
        if (config.hasSnowMeltMode())
          b.kv("SnowMeltMode", config.snowMeltMode);
        if (config.hasLocationRequestMode())
          b.kv("LocationRequestMode", config.locationRequestMode);
        if (config.hasLevelDishMode())
          b.kv("LevelDishMode", config.levelDishMode);
        if (config.hasPowerSaveStartMinutes())
          b.kv("PowerSaveStartMinutes", config.powerSaveStartMinutes);
        if (config.hasPowerSaveDurationMinutes())
          b.kv("PowerSaveDurationMinutes", config.powerSaveDurationMinutes);
        rows.addAll(b.widgets);
      }

      if (status.hasGpsStats()){
        var b = KVWidgetBuilder(theme);
        b.header("GPS Stats");
        var stats = status.gpsStats;
        if (stats.hasGpsValid())
          b.kv("GpsValid", stats.gpsValid);
        if (stats.hasGpsSats())
          b.kv("GpsSats", stats.gpsSats);
        if (stats.hasNoSatsAfterTtff())
          b.kv("NoSatsAfterTtff", stats.noSatsAfterTtff);
        if (stats.hasInhibitGps())
          b.kv("InhibitGps", stats.inhibitGps);

        if (b.widgets.length>1) {
          rows.addAll(b.widgets);
        }
      }

      {
        var b = KVWidgetBuilder(theme);
        b.header("Antenna");

        if (status.hasBoresightAzimuthDeg())
          b.kv("BoresightAzimuthDeg", status.boresightAzimuthDeg);
        if (status.hasBoresightElevationDeg())
          b.kv("BoresightElevationDeg", status.boresightElevationDeg);

        if (status.hasObstructionStats()){
          var stats = status.obstructionStats;
          if (stats.hasFractionObstructed())
            b.kv("FractionObstructed", stats.fractionObstructed);

          if (stats.hasValidS())
            b.kv("ValidS", stats.validS);

          // bool currently_obstructed = 5;
          // float avg_prolonged_obstruction_duration_s = 6;
          // float avg_prolonged_obstruction_interval_s = 7;
          // bool avg_prolonged_obstruction_valid = 8;
          // float time_obstructed = 9;
          // uint32 patches_valid = 10;
        }

        if (b.widgets.length>1) {
          rows.addAll(b.widgets);
        }
      }

      if (status.hasReadyStates()){
        var b = KVWidgetBuilder(theme);
        b.header("Ready States");
        var states = status.readyStates;
        for (var e in (states.toProto3Json() as Map<String, dynamic>).entries)
          b.kv("${e.key}", "${e.value}");

        if (b.widgets.length>1) {
          rows.addAll(b.widgets);
        }
      }
    }

    return rows;
  }

}
