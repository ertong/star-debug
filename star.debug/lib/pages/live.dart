import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart' hide Notification, Card, ConnectionState;
import 'package:star_debug/controller/conn/connection.dart';
import 'package:star_debug/controller/conn/grpc_connection.dart';
import 'package:star_debug/drawer.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/dialogs/save_debug_data.dart';
import 'package:star_debug/pages/live/dish.dart';
import 'package:star_debug/pages/live/general.dart';
import 'package:star_debug/pages/live/online.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/routes.dart';
import 'package:star_debug/utils/api_helper.dart';
import 'package:star_debug/utils/debug_data.dart';
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
          DishGetStatusResponse? data = R.dish?.dishGetStatus.data;
          if (data==null) return 0;
          return data.countAlerts();
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
          return data.countAlerts();
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

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
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

    return WillPopScope(
      onWillPop: () async => AppDrawer.willPopFunc(scaffoldKey),
      child: Scaffold(
        key: scaffoldKey,
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
                  var data = DebugDataHelper.debugData(
                      R.dish?.dishGetStatus.data,
                      R.dish?.dishGetStatus.apiVersion,
                      R.router?.wifiGetStatus.data,
                      R.router?.wifiGetStatus.apiVersion
                  );
                  await showDialog<String>(context: context, builder: (c) {
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
