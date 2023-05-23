import 'dart:async';

import 'package:flutter/material.dart' hide Notification, Card, ConnectionState;
import 'package:star_debug/controller/grpc/router_connection.dart';
import 'package:star_debug/drawer.dart';
import 'package:star_debug/grpc/starlink/starlink.pbgrpc.dart';
import 'package:star_debug/messages/I18n.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/routes.dart';
import 'package:grpc/grpc.dart';
import 'package:star_debug/utils/kv_widget.dart';

import 'common.dart';

const String _TAG="RouterTab";

class RouterTab extends StatefulWidget {
  const RouterTab({super.key});

  @override
  _RouterTabState createState() => _RouterTabState();
}

class _RouterTabState extends State<RouterTab> with TickerProviderStateMixin {

  StreamSubscription? grpcSubs;

  @override
  void initState() {
    super.initState();
    grpcSubs = R.grpc.routerHolder.stream.listen((event) {
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
    final RouterConnection? conn = R.grpc.router;

    if (conn==null || conn.isClosed)
      return [ Text("Connection not initialized") ];

    List<Widget> rows = [];

    int now = DateTime.now().millisecondsSinceEpoch;

    if (conn.connState!=ConnectionState.ready || now-conn.statusReceivedTime>4000) {
      rows.add(Text("Channel: ${conn.connState}"));
    }

    if (conn.wifiGetStatus.data!=null && now-conn.statusReceivedTime<5000) {
      WifiGetStatusResponse status = conn.wifiGetStatus.data!;

      {
        var b = KVWidgetBuilder(theme);
        b.header(M.header.general);

        if (status.hasDeviceState()) {
          if (status.deviceState.hasUptimeS())
            b.kv(M.grpc.WifiGetStatus.uptime_s, status.deviceState.uptimeS);
        }

        if (status.hasIpv4WanAddress())
          b.kv(M.grpc.WifiGetStatus.ipv4_wan_address, status.ipv4WanAddress);

        if (status.ipv6WanAddresses.isNotEmpty)
          b.kv(M.grpc.WifiGetStatus.ipv6_wan_addresses, status.ipv6WanAddresses.join("\n"));

        if (status.hasPingLatencyMs())
          b.kv(M.grpc.WifiGetStatus.ping_latency_ms, status.pingLatencyMs);

        if (status.hasDishPingLatencyMs())
          b.kv(M.grpc.WifiGetStatus.dish_ping_latency_ms, status.dishPingLatencyMs);

        if (status.hasDishPingDropRate5m())
          b.kv(M.grpc.WifiGetStatus.dish_ping_drop_rate_5m, status.dishPingDropRate5m);

        if (status.hasPopPingLatencyMs())
          b.kv(M.grpc.WifiGetStatus.pop_ping_latency_ms, status.popPingLatencyMs);

        if (status.hasConfig()) {
          var config = status.config;

          if (config.hasSetupComplete()) {
            b.kv(M.grpc.WifiConfig.setup_complete, config.setupComplete);
          }

          if (config.hasCountryCode()) {
            b.kv(M.grpc.WifiConfig.country_code, config.countryCode);
          }

          if (config.hasBootCount())
            b.kv(M.grpc.WifiConfig.boot_count, config.bootCount);
        }

        rows.addAll(b.widgets);
      }

      if (status.hasAlerts())
        rows.addAll(buildAlertsWidget(theme, status.alerts.toProto3Json() as Map<String, dynamic>));

      if (status.hasDeviceInfo())
        rows.addAll(buildDeviceInfoWidget(theme, status.deviceInfo));

      if (status.hasConfig()) {
        var config = status.config;

        if (config.networks.isNotEmpty) {
          var b = KVWidgetBuilder(theme);
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
          var b = KVWidgetBuilder(theme);
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
        var b = KVWidgetBuilder(theme);
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
            b.kv(M.grpc.WifiClient.associated_time_s, "${client.associatedTimeS}");
          if (client.hasSignalStrength())
            b.kv(M.grpc.WifiClient.signal_strength, "${client.signalStrength}");
          if (client.hasSnr())
            b.kv(M.grpc.WifiClient.snr, "${client.snr}");
          if (client.hasTxStats())
            b.kv(M.grpc.WifiClient.x_rx_bytes, "${client.txStats.bytes}");
          if (client.hasRxStats())
            b.kv(M.grpc.WifiClient.x_tx_bytes, "${client.rxStats.bytes}");
        }

        rows.addAll(b.widgets);
      }
    }

    return rows;
  }

}
