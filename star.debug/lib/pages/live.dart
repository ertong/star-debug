import 'dart:async';
import 'dart:io';
import 'dart:convert';

import 'package:clipboard/clipboard.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide Notification, Card;
import 'package:grpc/grpc.dart';
import 'package:star_debug/drawer.dart';
import 'package:star_debug/grpc/starlink/starlink.pbgrpc.dart';
import 'package:star_debug/messages/I18n.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/routes.dart';
import 'package:star_debug/space/dishy.dart';
import 'package:star_debug/space/entity.dart';
import 'package:star_debug/space/obstructions.dart';
import 'package:star_debug/space/space_parser.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:star_debug/utils/shared_prefs.dart';

import '../utils/kv_widget.dart';

const String _TAG="StarlinkPage";

class LivePage extends StatefulWidget {
  final String route;

  const LivePage({super.key, this.route = Routes.MAIN});

  @override
  _LivePageState createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> with TickerProviderStateMixin {

  StreamSubscription? grpcSubs;

  @override
  void initState() {
    super.initState();
    grpcSubs = R.grpc.stream.listen((event) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    grpcSubs?.cancel();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildBar(context) as PreferredSizeWidget?,
        drawer: AppDrawer(selectedRoute: Routes.MAIN),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: Column(children:
              _buildBody(),),
          ),
        )
    );
  }

  List<Widget> _buildBody(){
    final conn = R.grpc.conn;

    if (conn==null || conn.isClosed)
      return [ Text("Connection not initialized") ];

    List<Widget> rows = [];

    rows.add(Text("State: ${conn.connState}"));

    if (conn.dishGetStatus.data!=null) {
      DishGetStatusResponse status = conn.dishGetStatus.data!;

      {
        rows.add(_buildHeader("General"));

        var b = KVWidgetBuilder();

        if (status.hasDeviceState()) {
          if (status.deviceState.hasUptimeS())
            b.kv("UptimeS", status.deviceState.uptimeS);
        }

        if (status.hasSecondsToFirstNonemptySlot())
          b.kv("SecondsToFirstNonemptySlot", status.secondsToFirstNonemptySlot);

        if (status.hasAlerts()) {
          var alerts = status.alerts.toProto3Json() as Map<String, dynamic>;

          b.kv("Alerts", [
            for (var e in alerts.entries)
              if (e.value)
                e.key
          ].join(", "));
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

      if (status.hasDeviceInfo()){
        var b = KVWidgetBuilder();
        var deviceInfo = status.deviceInfo;
        rows.add(_buildHeader("DeviceInfo"));
        if (deviceInfo.hasId())
          b.kv("Id", deviceInfo.id);
        if (deviceInfo.hasHardwareVersion())
          b.kv("HardwareVersion", deviceInfo.hardwareVersion);
        if (deviceInfo.hasSoftwareVersion())
          b.kv("SoftwareVersion", deviceInfo.softwareVersion);
        if (deviceInfo.hasBootcount())
          b.kv("BootCount", deviceInfo.bootcount);
        if (deviceInfo.hasManufacturedVersion())
          b.kv("ManufacturedVersion", deviceInfo.manufacturedVersion);
        if (deviceInfo.hasGenerationNumber())
          b.kv("GenerationNumber", deviceInfo.generationNumber);
        if (deviceInfo.hasDishCohoused())
          b.kv("DishCohoused", deviceInfo.dishCohoused);
        rows.addAll(b.widgets);
      }

      if (status.hasConfig()){
        var b = KVWidgetBuilder();
        var config = status.config;
        rows.add(_buildHeader("Config"));
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

    }

    return rows;
  }

  Widget _buildHeader(String name, {bool isAlert = false}){
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 4, 0, 2),
      child: Container(
          padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
          color: isAlert ? Colors.red.shade100 : Colors.lightBlue.shade100,
          child: Row(
            children: [
              Text(name),
            ],
          )
      ),
    );
  }

  Widget _buildBar(BuildContext context) {
    return AppBar(
      title: Text(M.live.starlink_live),
      centerTitle: true,
    );
  }


  // Future test() async {
  //   print('try test');
  //   final channel = ClientChannel(
  //     // 'dev.z.min.org.ua', port: 20192,
  //     '192.168.100.1', port: 9200,
  //     options: ChannelOptions(
  //       credentials: ChannelCredentials.insecure(),
  //       codecRegistry: CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
  //     ),
  //   );
  //   final stub = DeviceClient(channel);
  //
  //   try {
  //     final response = await stub.handle(
  //       // Request()..getDeviceInfo = GetDeviceInfoRequest()
  //       Request()..getStatus = GetStatusRequest()
  //     );
  //     print('client received: ${response}');
  //
  //     setState(() {
  //       text = '${response}';
  //     });
  //   } catch (e) {
  //     print('Caught error: $e');
  //   }
  //   await channel.shutdown();
  // }
}
