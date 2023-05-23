import 'dart:async';

import 'package:flutter/material.dart' hide Notification, Card, ConnectionState;
import 'package:star_debug/drawer.dart';
import 'package:star_debug/grpc/starlink/starlink.pbgrpc.dart';
import 'package:star_debug/messages/I18n.dart';
import 'package:star_debug/pages/live/common.dart';
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
        b.header(M.header.general);

        if (status.hasDeviceState()) {
          if (status.deviceState.hasUptimeS())
            b.kv(M.grpc.DishGetStatus.uptime_s, status.deviceState.uptimeS);
        }

        if (status.hasStowRequested()) {
          b.kv(M.grpc.DishGetStatus.stow_requested, status.stowRequested);
        }

        if (status.hasSecondsToFirstNonemptySlot())
          b.kv(M.grpc.DishGetStatus.seconds_to_first_nonempty_slot, status.secondsToFirstNonemptySlot);

        if (status.hasMobilityClass()) {
          b.kv(M.grpc.DishGetStatus.mobility_class, status.mobilityClass);
        }

        if (status.hasClassOfService()) {
          b.kv(M.grpc.DishGetStatus.class_of_service, status.classOfService);
        }

        if (status.hasHasActuators()) {
          b.kv(M.grpc.DishGetStatus.has_actuators, status.hasActuators);
        }

        if (status.hasOutage()) {
          if (status.outage.hasCause())
            b.kv(M.grpc.DishOutage.cause, status.outage.cause);
        }

        if (status.hasDisablementCode()) {
          b.kv(M.grpc.DishGetStatus.disablement_code, status.disablementCode);
        }

        if (status.hasSoftwareUpdateState()) {
          b.kv(M.grpc.DishGetStatus.software_update_state, status.softwareUpdateState);
        }

        rows.addAll(b.widgets);
      }

      if (status.hasAlerts())
        rows.addAll(buildAlertsWidget(theme, status.alerts.toProto3Json() as Map<String, dynamic>));

      {
        var b = KVWidgetBuilder(theme);

        b.header(M.header.signal);

        if (status.hasDownlinkThroughputBps())
          b.kv(M.grpc.DishGetStatus.downlink_throughput_bps, status.downlinkThroughputBps);

        if (status.hasUplinkThroughputBps())
          b.kv(M.grpc.DishGetStatus.uplink_throughput_bps, status.uplinkThroughputBps);

        if (status.hasPopPingDropRate())
          b.kv(M.grpc.DishGetStatus.pop_ping_drop_rate, status.popPingDropRate);

        if (status.hasPopPingLatencyMs())
          b.kv(M.grpc.DishGetStatus.pop_ping_latency_ms, status.popPingLatencyMs);

        if (status.hasEthSpeedMbps())
          b.kv(M.grpc.DishGetStatus.eth_speed_mbps, status.ethSpeedMbps);

        if (status.hasIsSnrAboveNoiseFloor())
          b.kv(M.grpc.DishGetStatus.is_snr_above_noise_floor, status.isSnrAboveNoiseFloor);
        if (status.hasIsSnrPersistentlyLow())
          b.kv(M.grpc.DishGetStatus.is_snr_persistently_low, status.isSnrPersistentlyLow);

        rows.addAll(b.widgets);
      }

      if (status.hasDeviceInfo())
        rows.addAll(buildDeviceInfoWidget(theme, status.deviceInfo));

      if (status.hasConfig()){
        var b = KVWidgetBuilder(theme);
        var config = status.config;
        b.header(M.header.config);
        if (config.hasSnowMeltMode())
          b.kv(M.grpc.DishConfig.snow_melt_mode, config.snowMeltMode);
        if (config.hasLocationRequestMode())
          b.kv(M.grpc.DishConfig.location_request_mode, config.locationRequestMode);
        if (config.hasLevelDishMode())
          b.kv(M.grpc.DishConfig.level_dish_mode, config.levelDishMode);
        if (config.hasPowerSaveStartMinutes())
          b.kv(M.grpc.DishConfig.power_save_start_minutes, config.powerSaveStartMinutes);
        if (config.hasPowerSaveDurationMinutes())
          b.kv(M.grpc.DishConfig.power_save_duration_minutes, config.powerSaveDurationMinutes);
        rows.addAll(b.widgets);
      }

      if (status.hasGpsStats()){
        var b = KVWidgetBuilder(theme);
        b.header(M.header.gps_stats);
        var stats = status.gpsStats;
        if (stats.hasGpsValid())
          b.kv(M.grpc.DishGpsStats.gps_valid, stats.gpsValid);
        if (stats.hasGpsSats())
          b.kv(M.grpc.DishGpsStats.gps_sats, stats.gpsSats);
        if (stats.hasNoSatsAfterTtff())
          b.kv(M.grpc.DishGpsStats.no_sats_after_ttff, stats.noSatsAfterTtff);
        if (stats.hasInhibitGps())
          b.kv(M.grpc.DishGpsStats.inhibit_gps, stats.inhibitGps);

        if (b.widgets.length>1) {
          rows.addAll(b.widgets);
        }
      }

      {
        var b = KVWidgetBuilder(theme);
        b.header(M.header.antenna);

        if (status.hasBoresightAzimuthDeg())
          b.kv(M.grpc.DishGetStatus.boresight_azimuth_deg, status.boresightAzimuthDeg);
        if (status.hasBoresightElevationDeg())
          b.kv(M.grpc.DishGetStatus.boresight_elevation_deg, status.boresightElevationDeg);

        if (status.hasObstructionStats()){
          var stats = status.obstructionStats;
          if (stats.hasFractionObstructed())
            b.kv(M.grpc.DishObstructionStats.fraction_obstructed, stats.fractionObstructed);

          if (stats.hasValidS())
            b.kv(M.grpc.DishObstructionStats.valid_s, stats.validS);

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
        b.header(M.header.ready_states);
        var states = status.readyStates;
        for (var e in (states.toProto3Json() as Map<String, dynamic>).entries)
          b.kv("${R.i18n.map["grpc.DishReadyStates.${e.key}"] ?? e.key}", "${e.value}");

        if (b.widgets.length>1) {
          rows.addAll(b.widgets);
        }
      }
    }

    return rows;
  }

}
