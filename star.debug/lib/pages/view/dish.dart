
import 'package:flutter/material.dart' hide Notification, Card, ConnectionState;
import 'package:recase/recase.dart';
import 'package:star_debug/grpc/starlink/network.pb.dart';
import 'package:star_debug/grpc/starlink/starlink.pbgrpc.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/view/common.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/format.dart';
import 'package:star_debug/utils/kv_widget.dart';

const String _TAG="DishWidget";

class DishWidget extends StatefulWidget {
  final DishGetStatusResponse? status;
  final Map<String, bool> features;
  const DishWidget({super.key, required this.status, required this.features});

  @override
  State createState() => _DishWidgetState();
}

class _DishWidgetState extends State<DishWidget> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  ThemeData theme = ThemeData.fallback();

  @override
  Widget build(BuildContext context) {
    theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: _buildBody(),
    );
  }

  List<Widget> _buildBody(){
    List<Widget> rows = [];

    DishGetStatusResponse? status = widget.status;
    if (status!=null) {
      {
        var b = KVWidgetBuilder(context, theme);
        b.header(M.header.general);

        if (status.hasDeviceState()) {
          if (status.deviceState.hasUptimeS())
            b.kv(M.grpc.DishGetStatus.uptime_s,
                Format.sec(status.deviceState.uptimeS.toInt()),
                hint: M.grpc.DishGetStatus.uptime_s__hint
            );
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
            b.kv(M.grpc.DishOutage.cause,
                status.outage.cause,
                hint: M.grpc.DishOutage.cause__hint,
                ok: false
            );
        }

        if (status.hasDisablementCode()) {
          b.kv(M.grpc.DishGetStatus.disablement_code, status.disablementCode,
              ok: status.disablementCode == UtDisablementCode.OKAY);
        }

        if (status.hasSoftwareUpdateState()) {
          b.kv(M.grpc.DishGetStatus.software_update_state, status.softwareUpdateState);
        }

        rows.addAll(b.widgets);
      }

      if (status.hasAlerts())
        rows.addAll(buildAlertsWidget(context, theme, status.alerts.toProto3Json() as Map<String, dynamic>));

      {
        var b = KVWidgetBuilder(context, theme);

        b.header(M.header.network);

        if (status.hasDownlinkThroughputBps())
          b.kv(M.grpc.DishGetStatus.downlink_throughput_bps, Format.bytesPerSec(status.downlinkThroughputBps));

        if (status.hasUplinkThroughputBps())
          b.kv(M.grpc.DishGetStatus.uplink_throughput_bps, Format.bytesPerSec(status.uplinkThroughputBps));

        if (status.hasPopPingDropRate())
          b.kv(M.grpc.DishGetStatus.pop_ping_drop_rate, status.popPingDropRate);

        if (status.hasPopPingLatencyMs())
          b.kv(M.grpc.DishGetStatus.pop_ping_latency_ms, "${status.popPingLatencyMs.toStringAsFixed(2)}");

        if (status.hasEthSpeedMbps())
          b.kv(M.grpc.DishGetStatus.eth_speed_mbps, status.ethSpeedMbps, ok: status.ethSpeedMbps==1000);

        rows.addAll(b.widgets);
      }

      if (status.hasDeviceInfo())
        rows.addAll(buildDeviceInfoWidget(context, theme, status.deviceInfo));

      if (widget.features.isNotEmpty){
        var b = KVWidgetBuilder(context, theme);
        b.header(M.header.features);

        for (var v in widget.features.entries)
          b.kv(v.key.pascalCase, v.value);

        rows.addAll(b.widgets);
      }

      if (status.hasConfig()) {
        var b = KVWidgetBuilder(context, theme);
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

      if (status.hasGpsStats()) {
        var b = KVWidgetBuilder(context, theme);
        b.header(M.header.gps_stats);
        var stats = status.gpsStats;
        // if (stats.hasGpsValid())
        b.kv(M.grpc.DishGpsStats.gps_valid, stats.gpsValid, ok: stats.gpsValid);

        if (stats.hasGpsSats())
          b.kv(M.grpc.DishGpsStats.gps_sats, stats.gpsSats);
        if (stats.hasNoSatsAfterTtff())
          b.kv(M.grpc.DishGpsStats.no_sats_after_ttff, stats.noSatsAfterTtff);
        if (stats.hasInhibitGps())
          b.kv(M.grpc.DishGpsStats.inhibit_gps, stats.inhibitGps);

        if (b.widgets.length > 1) {
          rows.addAll(b.widgets);
        }
      }

      {
        var b = KVWidgetBuilder(context, theme);
        b.header(M.header.antenna);

        if (status.hasBoresightAzimuthDeg())
          b.kv(M.grpc.DishGetStatus.boresight_azimuth_deg, status.boresightAzimuthDeg.toStringAsFixed(2));

        if (status.hasBoresightElevationDeg())
          b.kv(M.grpc.DishGetStatus.boresight_elevation_deg, status.boresightElevationDeg.toStringAsFixed(2));

        // if (status.hasIsSnrAboveNoiseFloor())
        b.kv(M.grpc.DishGetStatus.is_snr_above_noise_floor, status.isSnrAboveNoiseFloor, ok:status.isSnrAboveNoiseFloor);

        // if (status.hasIsSnrPersistentlyLow())
        b.kv(M.grpc.DishGetStatus.is_snr_persistently_low, status.isSnrPersistentlyLow);

        if (status.hasObstructionStats()) {
          var stats = status.obstructionStats;
          if (stats.hasFractionObstructed())
            b.kv(M.grpc.DishObstructionStats.fraction_obstructed,
                "${(stats.fractionObstructed * 100).toStringAsFixed(2)} %");

          if (stats.hasValidS())
            b.kv(M.grpc.DishObstructionStats.valid_s, Format.secD(stats.validS));

          b.kv(M.grpc.DishObstructionStats.currently_obstructed, stats.currentlyObstructed);

          if (stats.hasAvgProlongedObstructionDurationS())
            b.kv(M.grpc.DishObstructionStats.avg_prolonged_obstruction_duration_s,
                Format.secD(stats.avgProlongedObstructionDurationS));

          if (stats.hasAvgProlongedObstructionIntervalS())
            b.kv(M.grpc.DishObstructionStats.avg_prolonged_obstruction_interval_s,
                Format.secD(stats.avgProlongedObstructionIntervalS));

          if (stats.hasAvgProlongedObstructionValid())
            b.kv(M.grpc.DishObstructionStats.avg_prolonged_obstruction_valid, stats.avgProlongedObstructionValid);

          if (stats.hasTimeObstructed())
            b.kv(M.grpc.DishObstructionStats.time_obstructed, stats.timeObstructed);

          if (stats.hasPatchesValid())
            b.kv(M.grpc.DishObstructionStats.patches_valid, stats.patchesValid);
        }

        if (b.widgets.length > 1) {
          rows.addAll(b.widgets);
        }
      }

      if (status.hasReadyStates()) {
        var b = KVWidgetBuilder(context, theme);
        b.header(M.header.ready_states);
        var states = status.readyStates;
        for (var e in (states.info_.byName).entries) {
          var key = e.key;
          var val = states.getField(e.value.tagNumber) ?? false;
          b.kv("$key (${R.i18n.map["grpc.DishReadyStates.$key"] ?? key})", "$val", ok: val);
        }

        if (b.widgets.length > 1) {
          rows.addAll(b.widgets);
        }
      }
    }
    return rows;
  }

}
