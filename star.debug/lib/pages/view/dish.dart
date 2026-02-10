
import 'package:flutter/material.dart' hide Notification, Card, ConnectionState;
import 'package:recase/recase.dart';
import 'package:star_debug/grpc/starlink/network.pb.dart';
import 'package:star_debug/grpc/starlink/starlink.pbgrpc.dart';
import 'package:star_debug/grpc/starlink/telemetron.pb.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/view/common.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/format.dart';
import 'package:star_debug/utils/kv_widget.dart';
import 'package:star_debug/utils/snapshot.dart';
import 'package:star_debug/utils/view_options.dart';
import 'package:time_machine2/time_machine2.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

const String _TAG="DishWidget";

class DishWidget extends StatefulWidget {
  final ViewOptions viewOptions;
  final Snapshot snap;
  const DishWidget({super.key, required this.viewOptions, required this.snap});

  @override
  State createState() => _DishWidgetState();
}

class _DishWidgetState extends State<DishWidget> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }


  ThemeData theme = ThemeData.fallback();
  late ViewOptions opts;


  @override
  Widget build(BuildContext context) {
    theme = Theme.of(context);
    opts = widget.viewOptions;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: _buildBody(),
    );
  }

  List<Widget> _buildBody(){
    List<Widget> rows = [];

    DishGetStatusResponse? status = widget.snap.dishGetStatus;
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
          b.kv(M.grpc.DishGetStatus.stow_requested, status.stowRequested,
              hint: M.grpc.DishGetStatus.stow_requested__hint);
        }

        if (status.hasSecondsToFirstNonemptySlot())
          b.kv(M.grpc.DishGetStatus.seconds_to_first_nonempty_slot, status.secondsToFirstNonemptySlot,
              hint: M.grpc.DishGetStatus.seconds_to_first_nonempty_slot__hint);

        if (status.hasMobilityClass()) {
          b.kv(M.grpc.DishGetStatus.mobility_class, status.mobilityClass,
              hint: Format.formatEnumHint(M.grpc.DishGetStatus.mobility_class__hint, UserMobilityClass.values));
        }

        if (status.hasClassOfService()) {
          b.kv(M.grpc.DishGetStatus.class_of_service, status.classOfService,
              hint: Format.formatEnumHint(M.grpc.DishGetStatus.class_of_service__hint, UserClassOfService.values)
          );
        }

        if (status.hasHasActuators()) {
          b.kv(M.grpc.DishGetStatus.has_actuators, status.hasActuators,
              hint: M.grpc.DishGetStatus.has_actuators__hint);
        }
        if (status.hasAlignmentStats()) {
          if (status.alignmentStats.hasActuatorState()){
            b.kv(M.grpc.DishGetStatus.actuator_state, status.alignmentStats.actuatorState,
                hint: Format.formatEnumHint(M.grpc.DishGetStatus.actuator_state__hint, ActuatorState.values)
            );
          }
        }

        if (status.hasOutage()) {
          if (status.outage.hasCause())
            b.kv(M.grpc.DishOutage.cause,
                status.outage.cause,
                hint: Format.formatEnumHint(M.grpc.DishOutage.cause__hint, DishOutage_Cause.values),
                ok: false
            );
        }

        if (status.hasDisablementCode()) {
          b.kv(M.grpc.DishGetStatus.disablement_code, status.disablementCode,
              ok: status.disablementCode == UtDisablementCode.OKAY,
              hint: Format.formatEnumHint(M.grpc.DishGetStatus.disablement_code__hint, UtDisablementCode.values)
          );
        }

        if (status.hasRebootReason()) {
          b.kv(M.grpc.DishGetStatus.reboot_reason, status.rebootReason,
              hint: Format.formatEnumHint(M.grpc.DishGetStatus.reboot_reason__hint, RebootReason.values)
          );
        }

        if (status.hasSoftwareUpdateState()) {
          var s = "${status.softwareUpdateState}";
          if (![
            SoftwareUpdateState.IDLE,
            SoftwareUpdateState.REBOOT_REQUIRED,
            SoftwareUpdateState.DISABLED,
            SoftwareUpdateState.FAULTED,
          ].contains(status.softwareUpdateState))
            if (status.hasSoftwareUpdateStats() && status.softwareUpdateStats.hasSoftwareUpdateProgress()) {
              s = "$s (${(status.softwareUpdateStats.softwareUpdateProgress*100).toStringAsFixed(0)}%)";
            }
          b.kv(M.grpc.DishGetStatus.software_update_state, s,
              hint: Format.formatEnumHint(M.grpc.DishGetStatus.software_update_state__hint, SoftwareUpdateState.values)
          );
        }

        rows.addAll(b.widgets);
      }

      if (status.hasAlerts())
        rows.addAll(buildAlertsWidget(context, theme, status.alerts.toProto3Json() as Map<String, dynamic>));

      {
        var b = KVWidgetBuilder(context, theme);

        b.header(M.header.network);

        if (status.hasDownlinkThroughputBps())
          b.kv(M.grpc.DishGetStatus.downlink_throughput_bps, Format.bitsPerSec(status.downlinkThroughputBps));

        if (status.hasUplinkThroughputBps())
          b.kv(M.grpc.DishGetStatus.uplink_throughput_bps, Format.bitsPerSec(status.uplinkThroughputBps));

        if (status.hasPopPingDropRate())
          b.kv(M.grpc.DishGetStatus.pop_ping_drop_rate, status.popPingDropRate, hint: M.grpc.DishGetStatus.pop_ping__hint);

        if (status.hasPopPingLatencyMs())
          b.kv(M.grpc.DishGetStatus.pop_ping_latency_ms, "${status.popPingLatencyMs.toStringAsFixed(2)}", hint: M.grpc.DishGetStatus.pop_ping__hint);

        if (status.hasEthSpeedMbps())
          b.kv(M.grpc.DishGetStatus.eth_speed_mbps, status.ethSpeedMbps, ok: status.ethSpeedMbps==1000);

        if (status.hasDlBandwidthRestrictedReason())
          b.kv(M.grpc.DishGetStatus.dlBandwidthRestrictedReason, status.dlBandwidthRestrictedReason, ok: status.dlBandwidthRestrictedReason==RateLimitReason.NO_LIMIT);
        if (status.hasUlBandwidthRestrictedReason())
          b.kv(M.grpc.DishGetStatus.ulBandwidthRestrictedReason, status.ulBandwidthRestrictedReason, ok: status.ulBandwidthRestrictedReason==RateLimitReason.NO_LIMIT);

        rows.addAll(b.widgets);
      }

      final String hw = status.deviceInfo.hardwareVersion ?? "";

      if (status.hasDeviceInfo())
        rows.addAll(buildDeviceInfoWidget(context, theme, status.deviceInfo, apiVersion: widget.snap.dishApiVersion, opts: opts));

      Map<String, bool> features = widget.snap.dishFeatures ?? {};
      if (features.isNotEmpty){
        var b = KVWidgetBuilder(context, theme);
        b.header(M.header.features);

        for (var v in features.entries)
          b.kv(v.key.pascalCase, v.value);

        rows.addAll(b.widgets);
      }

      if (status.hasConfig()) {
        var b = KVWidgetBuilder(context, theme);
        var config = status.config;
        b.header(M.header.config);
        b.kv(M.grpc.DishConfig.snow_melt_mode, config.snowMeltMode,
          hint: Format.formatEnumHint(M.grpc.DishConfig.snow_melt_mode__hint, DishConfig_SnowMeltMode.values)
        );
        b.kv(M.grpc.DishConfig.location_request_mode,
            config.locationRequestMode,
            hint: M.grpc.DishConfig.location_request_mode__hint
        );
        b.kv(M.grpc.DishConfig.level_dish_mode, config.levelDishMode,
            hint: Format.formatEnumHint(M.grpc.DishConfig.level_dish_mode__hint, DishConfig_LevelDishMode.values)
        );

        if (!config.powerSaveMode)
          b.kv(M.grpc.DishConfig.power_save_mode, config.powerSaveMode, hint: M.grpc.DishConfig.power_save_mode__hint);
        else {
          var offset = LocalTime.midnight.addSeconds(DateTimeZone.local.getUtcOffset(Instant.now()).inSeconds);
          b.kv(
              M.grpc.DishConfig.power_save_mode,
              "${offset.addMinutes(config.powerSaveStartMinutes).toString("HH:mm")}"
              "-${offset.addMinutes(config.powerSaveStartMinutes+ config.powerSaveDurationMinutes).toString("HH:mm")}"
              " UTC${DateTimeZone.local.getUtcOffset(Instant.now()).toString("+HH:mm")}",
              hint: M.grpc.DishConfig.power_save_mode__hint);
        }

        rows.addAll(b.widgets);
      }

      if (status.hasGpsStats()) {
        var b = KVWidgetBuilder(context, theme);
        b.header(M.header.gps_stats);
        var stats = status.gpsStats;
        // if (stats.hasGpsValid())
        b.kv(M.grpc.DishGpsStats.gps_valid, stats.gpsValid, ok: stats.gpsValid,
            hint: M.grpc.DishGpsStats.gps_valid__hint);

        if (stats.hasGpsSats())
          b.kv(M.grpc.DishGpsStats.gps_sats, stats.gpsSats,
              hint: M.grpc.DishGpsStats.gps_sats__hint);
        if (stats.hasNoSatsAfterTtff())
          b.kv(M.grpc.DishGpsStats.no_sats_after_ttff, stats.noSatsAfterTtff,
              hint: M.grpc.DishGpsStats.no_sats_after_ttff__hint);
        if (stats.hasInhibitGps())
          b.kv(M.grpc.DishGpsStats.inhibit_gps, stats.inhibitGps,
              hint: M.grpc.DishGpsStats.inhibit_gps__hint);

        if (widget.snap.dishGetLocationStarlink!=null)
          location(b, "Starlink", widget.snap.dishGetLocationStarlink!, hide: opts.hideLocation);
        if (widget.snap.dishGetLocationGPS!=null)
          location(b, "GPS", widget.snap.dishGetLocationGPS!, hide: opts.hideLocation);

        if (b.widgets.length > 1) {
          rows.addAll(b.widgets);
        }
      }

      {
        var b = KVWidgetBuilder(context, theme);
        b.header(M.header.antenna);

        if (status.hasBoresightAzimuthDeg())
          b.kv(M.grpc.DishGetStatus.boresight_azimuth_deg, status.boresightAzimuthDeg.toStringAsFixed(2),
              hint: M.grpc.DishGetStatus.boresight_azimuth_deg__hint);

        if (status.hasBoresightElevationDeg())
          b.kv(M.grpc.DishGetStatus.boresight_elevation_deg, status.boresightElevationDeg.toStringAsFixed(2),
              hint: M.grpc.DishGetStatus.boresight_elevation_deg__hint);

        if (status.hasAlignmentStats()) {
          if (status.alignmentStats.hasDesiredBoresightAzimuthDeg())
            b.kv(M.grpc.AlignmentStats.desired_boresight_azimuth_deg, status.alignmentStats.desiredBoresightAzimuthDeg.toStringAsFixed(2),
                hint: M.grpc.AlignmentStats.desired_boresight_azimuth_deg__hint);

          if (status.alignmentStats.hasDesiredBoresightElevationDeg())
            b.kv(M.grpc.AlignmentStats.desired_boresight_elevation_deg, status.alignmentStats.desiredBoresightElevationDeg.toStringAsFixed(2),
                hint: M.grpc.AlignmentStats.desired_boresight_elevation_deg__hint);
        }

        // if (status.hasIsSnrAboveNoiseFloor())
        b.kv(M.grpc.DishGetStatus.is_snr_above_noise_floor, status.isSnrAboveNoiseFloor, ok:status.isSnrAboveNoiseFloor,
            hint: M.grpc.DishGetStatus.is_snr_above_noise_floor__hint);

        // if (status.hasIsSnrPersistentlyLow())
        b.kv(M.grpc.DishGetStatus.is_snr_persistently_low, status.isSnrPersistentlyLow,
            hint: M.grpc.DishGetStatus.is_snr_persistently_low__hint);

        if (status.hasObstructionStats()) {
          var stats = status.obstructionStats;
          if (stats.hasFractionObstructed())
            b.kv(M.grpc.DishObstructionStats.fraction_obstructed,
                "${(stats.fractionObstructed * 100).toStringAsFixed(2)} %",
                hint: M.grpc.DishObstructionStats.fraction_obstructed__hint);

          if (stats.hasValidS())
            b.kv(M.grpc.DishObstructionStats.valid_s, Format.secD(stats.validS),
                hint: M.grpc.DishObstructionStats.valid_s__hint);

          b.kv(M.grpc.DishObstructionStats.currently_obstructed, stats.currentlyObstructed,
              hint: M.grpc.DishObstructionStats.currently_obstructed__hint);

          if (stats.hasAvgProlongedObstructionDurationS())
            b.kv(M.grpc.DishObstructionStats.avg_prolonged_obstruction_duration_s,
                Format.secD(stats.avgProlongedObstructionDurationS),
                hint: M.grpc.DishObstructionStats.avg_prolonged_obstruction_duration_s__hint);

          if (stats.hasAvgProlongedObstructionIntervalS())
            b.kv(M.grpc.DishObstructionStats.avg_prolonged_obstruction_interval_s,
                Format.secD(stats.avgProlongedObstructionIntervalS),
                hint: M.grpc.DishObstructionStats.avg_prolonged_obstruction_interval_s__hint);

          if (stats.hasAvgProlongedObstructionValid())
            b.kv(M.grpc.DishObstructionStats.avg_prolonged_obstruction_valid, stats.avgProlongedObstructionValid,
                hint: M.grpc.DishObstructionStats.avg_prolonged_obstruction_valid__hint);

          if (stats.hasTimeObstructed())
            b.kv(M.grpc.DishObstructionStats.time_obstructed, stats.timeObstructed,
                hint: M.grpc.DishObstructionStats.time_obstructed__hint);

          if (stats.hasPatchesValid())
            b.kv(M.grpc.DishObstructionStats.patches_valid, stats.patchesValid,
                hint: M.grpc.DishObstructionStats.patches_valid__hint);
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
          if (key=="cady" && (hw.startsWith("rev4") || hw=="rev_mini_prod1"  || hw.startsWith("mini1_")))
            continue;
          var desc = R.i18n.map["grpc.DishReadyStates.$key"];
          if (desc!=null)
            desc = " ($desc)";
          b.kv("$key$desc", val, ok: val);
        }

        if (b.widgets.length > 1) {
          rows.addAll(b.widgets);
        }
      }

      if (status.hasInitializationDurationSeconds()) {
        var b = KVWidgetBuilder(context, theme);
        b.header(M.header.init_duration);

        var states = status.initializationDurationSeconds;
        Map<String, int> A = {};
        for (var e in (states.info_.byName).entries) {
          var val = states.getField(e.value.tagNumber);
          A["${e.key}"] = val ?? 0;
        }

        var sortedKeys = A.keys.toList();
        sortedKeys.sort((a, b) => Comparable.compare(A[a] ?? 0, A[b] ?? 0));

        for (var k in sortedKeys) {
          var title = R.i18n.map["grpc.DishInitDuration.$k"];
          var hint = R.i18n.map["grpc.DishInitDuration.${k}_hint"];

          b.kv("${title ?? k}", A[k], hint: hint);
        }
        if (b.widgets.length > 1) {
          rows.addAll(b.widgets);
        }
      }

      if (status.connectedRouters.isNotEmpty) {
        var b = KVWidgetBuilder(context, theme);
        b.header(M.header.connected_routers);
        for (var r in status.connectedRouters) {
          b.kv("", "$r");
        }

        if (b.widgets.length > 1) {
          rows.addAll(b.widgets);
        }
      }
    }
    return rows;
  }

  void location(KVWidgetBuilder b, String key, GetLocationResponse loc, {bool hide = false}) {
    if (loc.lla.lat.isNaN) {
      b.kv(key, "N/A");
      return;
    }
    var str = "lat ${loc.lla.lat.toStringAsFixed(4)} lon ${loc.lla.lon.toStringAsFixed(4)} alt ${loc.lla.alt.toStringAsFixed(0)}m";
    if (loc.source==PositionSource.STARLINK)
      str = "$str\nsigma ${loc.sigmaM.toStringAsFixed(1)}";

    if (loc.hasHorizontalSpeedMps())
      str = "$str\nspeed horizontal ${loc.horizontalSpeedMps.toStringAsFixed(1)}m/s";
    if (loc.hasVerticalSpeedMps())
      str = "$str\nspeed vertical ${loc.verticalSpeedMps.toStringAsFixed(1)}m/s";

    b.kv(key, str, hide: hide);
  }
}

class _GraphPoint {
  int t = 0;
  double value = 0;
  _GraphPoint(this.t, this.value);
}

Widget buildGraph(String name, String unit, int current, int ts, List<double> data){
  if (data.length<=current%900)
    return Container();
  
  data = data.sublist(current%900)+data.sublist(0, current%900);
  var A = [];
  A.addAll(data);
  A.sort();
  double max = A[A.length*95~/100]*1.2;

  var now = Instant.fromEpochMilliseconds(ts).inLocalZone();

  return SizedBox(
    height: 120,
    child: SfCartesianChart(
        title: ChartTitle(text: "$name, ${data[900-1].toStringAsFixed(2)} $unit", textStyle: TextStyle(fontSize: 10)),
        primaryXAxis: CategoryAxis(),
        primaryYAxis: NumericAxis(minimum: 0, maximum: max),
        enableAxisAnimation: false,
        // crosshairBehavior: CrosshairBehavior(
        //   enable: true,
        //   activationMode: ActivationMode.singleTap,
        //   shouldAlwaysShow: true,
        //
        // ),
        trackballBehavior: TrackballBehavior(
          enable: true,
          shouldAlwaysShow: true,
          activationMode: ActivationMode.singleTap
        ),
        series: <CartesianSeries>[
          LineSeries<_GraphPoint, String>(
              dataSource:  <_GraphPoint>[
                for (var i=0; i<data.length; ++i)
                  _GraphPoint(i, data[i]),
              ],
              animationDuration: 0,
              // xValueMapper: (_GraphPoint pt, _) => "${data.length-pt.t}",
              xValueMapper: (_GraphPoint pt, _) => "${now.subtract(Time(seconds: data.length-pt.t)).toString("HH:mm:ss")}",
              yValueMapper: (_GraphPoint pt, _) => pt.value
          )
        ]
    ),
  );
}