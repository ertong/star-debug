import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart' hide Notification, Card, ConnectionState;
import 'package:recase/recase.dart';
import 'package:star_debug/controller/conn/connection.dart';
import 'package:star_debug/controller/conn/grpc_connection.dart';
import 'package:star_debug/drawer.dart';
import 'package:star_debug/grpc/starlink/network.pbenum.dart';
import 'package:star_debug/grpc/starlink/starlink.pbenum.dart';
import 'package:star_debug/messages/I18n.dart';
import 'package:star_debug/pages/dialogs/save_debug_data.dart';
import 'package:star_debug/pages/live/dish.dart';
import 'package:star_debug/pages/live/general.dart';
import 'package:star_debug/pages/live/online.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/routes.dart';
import 'package:star_debug/space/entity.dart';
import 'package:protobuf/protobuf.dart' as pb;
import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:star_debug/utils/log_utils.dart';

import 'live/router.dart';

const String _TAG="LivePage";

class LivePage extends StatefulWidget {

  const LivePage({super.key});

  @override
  State createState() => _LivePageState();
}

class _Page {
  IconData icon;
  String Function() label;
  Widget Function() builder;
  Color Function() color;
  int Function()? alert;

  _Page(this.icon, this.label, this.color, this.builder, {this.alert});
}

class _LivePageState extends State<LivePage> with TickerProviderStateMixin {

  StreamSubscription? subDish;
  StreamSubscription? subRouter;
  StreamSubscription? subOnline;
  var scrollController = ScrollController();
  int _selectedIndex=0;
  List<_Page> pages = [];

  @override
  void initState() {
    super.initState();
    subDish = R.dishHolder.stream.listen((event) { notify(); });
    subRouter = R.routerHolder.stream.listen((event) { notify(); });
    subOnline = R.onlineHolder.stream.listen((event) { notify(); });

    pages.add(_Page(
        Icons.settings_input_antenna,
        () => M.header.general,
        () => Colors.black,
        () => GeneralTab(),
        // alert: () { return 0; }
    ));

    pages.add(_Page(
        Icons.settings_input_antenna,
        () => M.general.dish,
        () => colorOf(R.dishHolder),
        () => DishTab(),
        alert: () {
          var data = R.dish?.dishGetStatus.data;
          if (data==null) return 0;

          var map = data.alerts.toProto3Json() as Map<String, dynamic>;
          int alerts = map.entries.where((e) => e.value==true).length;
          if (data.hasDisablementCode() && data.disablementCode!=UtDisablementCode.OKAY)
            alerts++;
          if (data.hasOutage() && data.outage.hasCause())
            alerts++;

          return alerts;
        }
    ));
    pages.add(_Page(
        Icons.router,
        () => M.general.router,
        () => colorOf(R.routerHolder),
        () => RouterTab(),
        alert: () {
          var data = R.router?.wifiGetStatus.data;
          if (data==null) return 0;

          var map = data.alerts.toProto3Json() as Map<String, dynamic>;
          return map.entries.where((e) => e.value==true).length;
        }
    ));
    pages.add(_Page(
        Icons.public,
        () => M.general.online,
        () {
          var online = R.online;
          if (online==null)
            return Colors.amber;

          return online.cntOk>0 ? Colors.green : Colors.red;
        },
        () => OnlineTab(),
        alert: () {
          return R.online?.cntNotOk ?? 0;
        }
    ));
  }

  Future notify() async {
    setState(() {});
    var dish = R.dish?.dishGetStatus.data;
    if (dish!=null && dish.hasDeviceInfo() && dish.deviceInfo.hasId()){
      R.dishLog.notify(dish.deviceInfo.id,
        dishStatus: dish,
        wifiStatusJson: R.router?.wifiGetStatus.data,
        dishHistoryJson: R.dish?.dishGetHistory.data,
        onlineJson: null
      );
    }
  }

  @override
  void dispose() {
    subDish?.cancel();
    subRouter?.cancel();
    subOnline?.cancel();
    super.dispose();
  }

  ThemeData theme = ThemeData.fallback();

  @override
  Widget build(BuildContext context) {
    theme = Theme.of(context);

    Widget? bar;

    if (pages.isNotEmpty) {
      List<BottomNavigationBarItem> items = [];
      for(int i=0; i<pages.length; ++i) {
        var p = pages[i];

        int alerts = 0;

        if (p.alert!=null)
          alerts = p.alert!();

        var icon = Icon(p.icon, color: p.color().withAlpha(_selectedIndex==i?255:100),);
        items.add(BottomNavigationBarItem(
          label: p.label(),
          icon: alerts==0
              ? icon
              : Badge(
                  backgroundColor: Colors.red,
                  label: Text("$alerts"),
                  child: icon,
                ),
        ));
      }
      bar = BottomNavigationBar(
        items: items,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (idx) {
          _selectedIndex = idx;
          scrollController.jumpTo(0);
          setState(() {});
        },
      );
    }

    return Scaffold(
      appBar: _buildBar(context) as PreferredSizeWidget?,
      drawer: AppDrawer(selectedRoute: Routes.LIVE),
      bottomNavigationBar: bar,
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(10.0),
            child: SingleChildScrollView(controller: scrollController, child: pages[_selectedIndex].builder(),),
          ),
        ],
      ),
    );
  }

  Color colorOf(ConnectionHolder<GrpcConnection> holder) {
    var color = Colors.red;

    final conn = holder.conn;
    if (conn!=null && conn.subsChannel!=null)
      color = Colors.amber;

    if (conn!=null && conn.isReady())
      color = Colors.green;

    return color;
  }

  dynamic protoToJson(dynamic msg){
    if (msg is fixnum.Int64)
      msg = msg.toInt();
    if (msg is fixnum.Int32)
      msg = msg.toInt();
    if (msg is pb.ProtobufEnum)
      msg = msg.value;
    if (msg is List)
      msg = [ for(var obj in msg) protoToJson(obj) ];

    if (msg is pb.GeneratedMessage) {
      Map<String, dynamic> res = {};
      for (var e in msg.info_.byName.entries) {
        var key = e.key.camelCase;
        var val = msg.getField(e.value.tagNumber);
        val = protoToJson(val);

        if (["countByReason", "countByReasonDelta"].contains(key) && val is Map) {
          key = "${key}Map";
          val = [for (var e1 in val.entries) [e1.key, e1.value]];
        }

        if (["networks", "basicServiceSets", "nameservers"].contains(key) && val is List) {
          key = "${key}List";
        }

        if (val is double && val.isNaN) {
          // val = null;
          continue;
        }

        res[key] = val;
      }
      return res;
    }

    return msg;
  }

  Map<String, dynamic> debugData() {
    Map<String, dynamic> res = {};
    int nowS = DateTime.now().millisecondsSinceEpoch ~/ 1000;

    res["device"] = {
      "app": {
        "version": "star-debug-${R.versionName}",
        "timestamp": nowS,
      },
      "platform":{
        "os": Platform.operatingSystem
      }
    };

    {
      var dish = R.dish?.dishGetStatus.data;
      int apiVersion = R.dish?.dishGetStatus.apiVersion ?? 0;
      if (dish == null) {
        res["dish"] = {"reachable": false, "service": "dish", "cloud":false, "features": {}, "timestamp": nowS};
      } else {
        Map<String, dynamic> features = {};
        features["stowRequested"] = apiVersion>=1;
        features["unstow"] = apiVersion>=3;
        res["dish"] = {"reachable": true, "service": "dish", "features": features, "timestamp": nowS};
        for (var e in (protoToJson(dish) as Map<String, dynamic>).entries)
          res["dish"][e.key] = e.value;
      }
    }

    {
      var router = R.router?.wifiGetStatus.data;
      int apiVersion = R.router?.wifiGetStatus.apiVersion ?? 0;
      if (router == null) {
        res["router"] = {"reachable": false, "service": "router", "cloud":false, "features": {}, "timestamp": nowS};
      } else {
        Map<String, dynamic> features = {};

        var swVer = router.deviceInfo.softwareVersion;

        features["speedTest"] =  apiVersion >= 1;
        features["speedTestLive"] =  apiVersion >= 2;
        features["wifiSpeedTest"] =  apiVersion >= 4 || swVer.contains("2021.52") || swVer.contains("2022");
        features["clientHistory"] =  apiVersion >= 4;

        res["router"] = {"reachable": true, "service": "router", "features": features, "timestamp": nowS};
        for (var e in (protoToJson(router) as Map<String, dynamic>).entries) {
          if (e.value==null)
            continue;
          if (e.key == "config") {
            res["wifiConfig"] = e.value;
          } else
            res["router"][e.key] = e.value;
        }
      }
    }

    return res;
  }

  Widget _buildBar(BuildContext context) {
    return AppBar(
      actions: [
          if (R.isDebug)
            TextButton(
                onPressed: () async {
                  var msg = "";
                  try {
                    var dish = R.dish?.dishGetStatus.data;
                    if (dish != null && dish.hasDeviceInfo() && dish.deviceInfo.hasId()) {
                      await R.dishLog.forceStore(dish.deviceInfo.id,
                          dishStatus: dish,
                          wifiStatusJson: R.router?.wifiGetStatus.data,
                          dishHistoryJson: R.dish?.dishGetHistory.data,
                          onlineJson: null
                      );
                      msg = "Snapshot saved to DB";
                    }
                    else {
                      msg = "Not enough data to save";
                    }
                  } catch(e,s){
                    msg = "$e";
                    LogUtils.ers(_TAG, "", e, s);
                  }
                  R.showSnackBarText(msg);
                },
                child: Icon(Icons.save, color: Colors.white,)
            ),
          TextButton(
              onPressed: () async {
                try {
                  var data = debugData();
                  await showDialog<String>(context: context, builder: (c) {
                    print(data);
                    return SaveDebugDataDialog(
                        data: JsonEncoder.withIndent("  ").convert(data),
                        uid: data["dish"]?["deviceInfo"]?["id"] ?? data["router"]?["deviceInfo"]?["id"]
                    );
                  });
                }catch(e,s){
                  LogUtils.ers(_TAG, "", e, s);
                  R.showSnackBarText("$e");
                }
              },
              child: Icon(Icons.share, color: Colors.white,)
          ),

      ],
      title: Row(
        children: [
          Text(M.live.starlink_live),
          // Container(width:5),
          // Icon(Icons.circle, color: color,)
        ],
      ),
      centerTitle: true,
    );
  }

}
