import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart' hide Notification, Card, ConnectionState;
import 'package:star_debug/controller/conn/connection.dart';
import 'package:star_debug/controller/conn/grpc_connection.dart';
import 'package:star_debug/drawer.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/dialogs/save_debug_data.dart';
import 'package:star_debug/pages/dialogs/share_screenshot.dart';
import 'package:star_debug/pages/live/dish.dart';
import 'package:star_debug/pages/live/general.dart';
import 'package:star_debug/pages/live/online.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/routes.dart';
import 'package:star_debug/utils/api_helper.dart';
import 'package:star_debug/utils/debug_data.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:star_debug/utils/snapshot.dart';

import 'live/router.dart';

const String _TAG="LivePage";

class LivePage extends StatefulWidget {

  const LivePage({super.key});

  @override
  State createState() => _LivePageState();
}

class _Page {
  IconData? icon;
  Widget? iconWidget;
  String Function() label;
  Widget Function() builder;
  Color Function() color;
  int Function()? alert;
  bool Function()? visible;
  late ValueKey<_Page> key;

  _Page(this.label, this.color, this.builder, {this.icon, this.iconWidget, this.alert, this.visible}) {
    key = ValueKey(this);
  }
}

class _LivePageState extends State<LivePage> with TickerProviderStateMixin {

  StreamSubscription? subDish;
  StreamSubscription? subRouter;
  StreamSubscription? subOnline;
  var scrollController = ScrollController();
  int _selectedIndex=0;
  List<_Page> pages = [];
  List<_Page> visiblePages = [];

  @override
  void initState() {
    super.initState();
    subDish = R.dishHolder.stream.listen((event) { notify(); });
    subRouter = R.routerHolder.stream.listen((event) { notify(); });
    subOnline = R.onlineHolder.stream.listen((event) { notify(); });

    pages.add(_Page(
        () => M.header.general,
        () => R.prefs.data.darkMode ? Colors.white : Colors.black,
        () => scrolledPage(GeneralTab()),
        icon: Icons.settings_input_antenna,
        // alert: () { return 0; }
    ));

    pages.add(_Page(
        () => M.general.dish,
        () => colorOf(R.dishHolder),
        () => scrolledPage(DishTab()),
        icon: Icons.settings_input_antenna,
        alert: () {
          DishGetStatusResponse? data = R.dish?.dishGetStatus.data;
          if (data==null) return 0;
          return data.countAlerts();
        }
    ));
    pages.add(_Page(
        () => M.general.router,
        () => colorOf(R.routerHolder),
        () => scrolledPage(RouterTab()),
        icon: Icons.router,
        alert: () {
          var data = R.router?.wifiGetStatus.data;
          if (data==null) return 0;
          return data.countAlerts();
        },
        visible: () {
          return !R.features.routerOptional || R.router?.wifiGetStatus.data!=null;
        }
    ));
    pages.add(_Page(
        () => M.general.online,
        () {
          var online = R.online;
          if (online==null)
            return Colors.amber;

          return online.isOk ? Colors.green : Colors.red;
        },
        () => scrolledPage(OnlineTab()),
        icon: Icons.public,
        alert: () {
          return R.online?.cntNotOk ?? 0;
        }
    ));
  }

  Future notify() async {
    setState(() {});
    var snap = buildLiveSnapshot();
    var dish = snap.dishGetStatus;
    if (dish!=null && dish.hasDeviceInfo() && dish.deviceInfo.hasId()){
      R.dishLog.notify(snap);
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

    visiblePages = [for (var p in pages) if (p.visible?.call() ?? true) p];

    if (visiblePages.isNotEmpty) {
      List<BottomNavigationBarItem> items = [];
      for(int i=0; i<visiblePages.length; ++i) {
        var p = visiblePages[i];

        int alerts = 0;

        if (p.alert!=null)
          alerts = p.alert!();

        var icon = p.iconWidget ?? Icon(p.icon, color: p.color().withAlpha(_selectedIndex==i?255:100),);
        items.add(BottomNavigationBarItem(
          label: p.label(),
          key: p.key,
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
          if (scrollController.hasClients)
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
        body: visiblePages[_selectedIndex].builder(),
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

  Widget scrolledPage(Widget child) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10.0),
      child: SingleChildScrollView(controller: scrollController, child: child),
    );
  }

  Widget _buildBar(BuildContext context) {
    return AppBar(
      actions: [
        if (R.dish?.dishGetStatus.data!=null)
            IconButton(
                onPressed: onSave,
                icon: Icon(Icons.save, color: Colors.white,)
            ),
        if (R.dish?.dishGetStatus.data!=null || R.router?.wifiGetStatus.data!=null)
          IconButton(
              onPressed: onShare,
            icon: Icon(Icons.share, color: Colors.white,),
          ),
        if (R.features.shareScreenshot && (R.dish?.dishGetStatus.data!=null || R.router?.wifiGetStatus.data!=null))
          IconButton(
              onPressed: onScreenshot,
              icon: Icon(Icons.photo_camera_outlined, color: Colors.white,)
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

  Future onSave() async {
    var msg = "";
    try {
      var snap = buildLiveSnapshot();
      var dish = snap.dishGetStatus;
      if (dish != null && dish.hasDeviceInfo() && dish.deviceInfo.hasId()) {
        await R.dishLog.forceStore(snap);
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
  }

  Future onShare() async {
    var snap = buildLiveSnapshot();
    if (snap.dishGetStatus == null && snap.routerGetStatus == null)
      return;
    try {
      var data = DebugDataHelper.debugData(snap);
      await showDialog<String>(context: context, builder: (c) {
        return SaveDebugDataDialog(
            data: JsonEncoder.withIndent("  ").convert(data),
            uid: data["dish"]?["deviceInfo"]?["id"] ?? data["router"]?["deviceInfo"]?["id"]
        );
      });
    } catch (e, s) {
      LogUtils.ers(_TAG, "", e, s);
      R.showSnackBarText("$e");
    }
  }

  Future onScreenshot() async {
    var snap = buildLiveSnapshot();
    if (snap.dishGetStatus?.deviceInfo.id==null) {
      R.showSnackBarText("No data available");
      return;
    }

    await showDialog<String>(context: context, builder: (c) {
      return ShareScreenshot(
          snap: snap,
      );
    });

  }
}

Snapshot buildLiveSnapshot() {
  return Snapshot(
    timestamp: DateTime.now().millisecondsSinceEpoch,
    dishTs: R.dish?.dishGetStatus.receivedTime,
    dishGetStatus: R.dish?.dishGetStatus.data,
    dishApiVersion: R.dish?.dishGetStatus.apiVersion,
    routerTs: R.router?.wifiGetStatus.receivedTime,
    routerGetStatus: R.router?.wifiGetStatus.data,
    routerApiVersion: R.router?.wifiGetStatus.apiVersion,
    historyTs: R.dish?.dishGetHistory.receivedTime,
    dishGetHistory: R.dish?.dishGetHistory.data,
    dishGetLocationGPS: R.dish?.dishGetLocationGPS.validData(),
    dishGetLocationStarlink: R.dish?.dishGetLocationStarlink.validData(),
  );
}