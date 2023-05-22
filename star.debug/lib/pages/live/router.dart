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

    if (conn.wifiGetConfig.data!=null && now-conn.statusReceivedTime<5000) {
      WifiGetConfigResponse status = conn.wifiGetConfig.data!;

      if (status.hasWifiConfig()) {
        var config = status.wifiConfig;

        {
          var b = KVWidgetBuilder(theme);
          b.header("General");

          if (config.hasSetupComplete()) {
            b.kv("SetupComplete", config.setupComplete);
          }

          if (config.hasCountryCode()) {
            b.kv("CountryCode", config.countryCode);
          }

          if (config.hasBootCount()) {
            b.kv("BootCount", config.bootCount);
          }
          rows.addAll(b.widgets);
        }

        if (config.networks.isNotEmpty) {
          var b = KVWidgetBuilder(theme);
          b.header("Networks");
          for (WifiConfig_Network n in config.networks){
            if (n.hasIpv4())
              b.kv("ipv4", n.ipv4);
            for (var srv in n.basicServiceSets){
              b.kv("${srv.band}", "${srv.ssid}\n${srv.bssid}");
            }
          }
          rows.addAll(b.widgets);
        }

        if (config.hasBoot()) {
          var boot = config.boot;
          var b = KVWidgetBuilder(theme);
          b.header("Boot");
          if (boot.hasLastReason())
            b.kv("LastReason", boot.lastReason);
          var counts = boot.countByReason.entries.toList();
          counts.sort((a,b)=>a.key-b.key);
          for (var e in counts) {
            var reason = BootReason.valueOf(e.key);
            b.kv("$reason cnt", e.value);
          }
          rows.addAll(b.widgets);
        }
      }
    }


    if (conn.wifiGetClients.data!=null && now-conn.wifiGetClients.receivedTime<5000) {
      WifiGetClientsResponse clients = conn.wifiGetClients.data!;

      if (clients.clients.isNotEmpty) {
        var b = KVWidgetBuilder(theme);
        for (var client in clients.clients){
          b.header("Client: ${client.name}");
          if (client.hasRole())
            b.kv("Role", "${client.role}");
          if (client.hasIface())
            b.kv("iface", "${client.iface}");
          if (client.hasIpAddress())
            b.kv("IpAddress", "${client.ipAddress}");
          if (client.hasMacAddress())
            b.kv("MacAddress", "${client.macAddress}");
          if (client.hasAssociatedTimeS())
            b.kv("AssociatedTimeS", "${client.associatedTimeS}");
          if (client.hasSignalStrength())
            b.kv("SignalStrength", "${client.signalStrength}");
          if (client.hasSnr())
            b.kv("SNR", "${client.snr}");
          if (client.hasTxStats())
            b.kv("TX", "${client.txStats.bytes}");
          if (client.hasRxStats())
            b.kv("RX", "${client.rxStats.bytes}");
        }

        rows.addAll(b.widgets);

      }
    }

    return rows;
  }

}
