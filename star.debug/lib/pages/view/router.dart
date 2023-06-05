import 'dart:async';

import 'package:flutter/material.dart' hide Notification, Card, ConnectionState;
import 'package:recase/recase.dart';
import 'package:star_debug/controller/conn/router_connection.dart';
import 'package:star_debug/grpc/starlink/starlink.pbgrpc.dart';
import 'package:star_debug/messages/I18n.dart';
import 'package:star_debug/pages/view/common.dart';
import 'package:star_debug/preloaded.dart';
import 'package:grpc/grpc.dart';
import 'package:star_debug/utils/format.dart';
import 'package:star_debug/utils/kv_widget.dart';

const String _TAG="RouterWidget";

class RouterWidget extends StatefulWidget {
  final WifiGetStatusResponse? status;
  final Map<String, bool> features;
  const RouterWidget({super.key, required this.status, required this.features});

  @override
  State createState() => _RouterWidgetState();
}

class _RouterWidgetState extends State<RouterWidget> with TickerProviderStateMixin {

  ThemeData theme = ThemeData.fallback();

  @override
  Widget build(BuildContext context) {
    theme = Theme.of(context);
    return Column(children:
    _buildBody(),);
  }

  List<Widget> _buildBody(){
    List<Widget> rows = [];

    WifiGetStatusResponse? status = widget.status;
    if (status!=null) {

      {
        var b = KVWidgetBuilder(context, theme);
        b.header(M.header.general);

        if (status.hasDeviceState()) {
          if (status.deviceState.hasUptimeS())
            b.kv(M.grpc.WifiGetStatus.uptime_s, Format.sec(status.deviceState.uptimeS.toInt()));
        }

        if (status.hasIpv4WanAddress())
          b.kv(M.grpc.WifiGetStatus.ipv4_wan_address, status.ipv4WanAddress);

        if (status.ipv6WanAddresses.isNotEmpty)
          b.kv(M.grpc.WifiGetStatus.ipv6_wan_addresses, status.ipv6WanAddresses.join("\n"));

        if (status.hasPingLatencyMs())
          b.kv(M.grpc.WifiGetStatus.ping_latency_ms, status.pingLatencyMs.toStringAsFixed(2));

        if (status.hasDishPingLatencyMs())
          b.kv(M.grpc.WifiGetStatus.dish_ping_latency_ms, status.dishPingLatencyMs.toStringAsFixed(4));

        if (status.hasDishPingDropRate5m())
          b.kv(M.grpc.WifiGetStatus.dish_ping_drop_rate_5m, status.dishPingDropRate5m.toStringAsFixed(2));

        if (status.hasPopPingLatencyMs())
          b.kv(M.grpc.WifiGetStatus.pop_ping_latency_ms, status.popPingLatencyMs);

        if (status.hasCaptivePortalEnabled())
          b.kv(M.grpc.WifiGetStatus.captive_portal_enabled, status.captivePortalEnabled);

        if (status.hasIsAviation())
          b.kv(M.grpc.WifiGetStatus.is_aviation, status.isAviation);

        if (status.hasIsAviationConformed())
          b.kv(M.grpc.WifiGetStatus.is_aviation_conformed, status.isAviationConformed);

        if (status.hasConfig()) {
          var config = status.config;

          b.kv(M.grpc.WifiConfig.setup_complete, config.setupComplete);

          if (config.hasCountryCode()) {
            b.kv(M.grpc.WifiConfig.country_code, config.countryCode);
          }

          if (config.hasBootCount())
            b.kv(M.grpc.WifiConfig.boot_count, config.bootCount);
        }

        rows.addAll(b.widgets);
      }

      if (status.hasAlerts())
        rows.addAll(buildAlertsWidget(context, theme, status.alerts.toProto3Json() as Map<String, dynamic>));

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
        var config = status.config;

        if (config.networks.isNotEmpty) {
          var b = KVWidgetBuilder(context, theme);
          b.header(M.header.networks);
          for (WifiConfig_Network n in config.networks) {
            if (n.hasIpv4())
              b.kv("ipv4", n.ipv4);
            for (var srv in n.basicServiceSets) {
              b.kv("${srv.band}", "${srv.ssid}\n${srv.bssid}");
            }
          }
          rows.addAll(b.widgets);
        }

        if (config.hasBoot()) {
          var boot = config.boot;
          var b = KVWidgetBuilder(context, theme);
          b.header(M.header.boot);
          if (boot.hasLastReason())
            b.kv(M.grpc.BootInfo.last_reason, boot.lastReason);
          var counts = boot.countByReason.entries.toList();
          counts.sort((a, b) => a.key - b.key);
          for (var e in counts) {
            var reason = BootReason.valueOf(e.key);
            b.kv("$reason cnt", e.value);
          }
          rows.addAll(b.widgets);
        }
      }

      if (status.clients.isNotEmpty) {
        var b = KVWidgetBuilder(context, theme);
        for (var client in status.clients) {
          b.header("${M.header.client}: ${client.name}");
          if (client.hasRole())
            b.kv(M.grpc.WifiClient.role, "${client.role}");
          if (client.hasIface())
            b.kv(M.grpc.WifiClient.iface, "${client.iface}");
          if (client.hasIpAddress())
            b.kv(M.grpc.WifiClient.ip_address, "${client.ipAddress}");
          if (client.ipv6Addresses.isNotEmpty)
            b.kv(M.grpc.WifiClient.ipv6_addresses, client.ipv6Addresses.join("\n"));
          if (client.hasMacAddress())
            b.kv(M.grpc.WifiClient.mac_address, "${client.macAddress}");
          if (client.hasAssociatedTimeS())
            b.kv(M.grpc.WifiClient.associated_time_s, Format.sec(client.associatedTimeS));
          if (client.hasSignalStrength())
            b.kv(M.grpc.WifiClient.signal_strength, "${client.signalStrength}");
          if (client.hasSnr())
            b.kv(M.grpc.WifiClient.snr, "${client.snr}");
          if (client.hasTxStats())
            b.kv(M.grpc.WifiClient.x_rx_bytes, Format.bytes(client.txStats.bytes.toDouble()));
          if (client.hasRxStats())
            b.kv(M.grpc.WifiClient.x_tx_bytes, Format.bytes(client.rxStats.bytes.toDouble()));
        }

        rows.addAll(b.widgets);
      }
    }

    return rows;
  }

}
