import 'dart:async';

import 'package:flutter/material.dart' hide Notification, Card;
import 'package:star_debug/drawer.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/dialogs/save_debug_data.dart';
import 'package:star_debug/pages/dialogs/share_screenshot.dart';
import 'package:star_debug/pages/view/dish.dart';
import 'package:star_debug/pages/view/router.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/routes.dart';
import 'package:star_debug/space/entity.dart';
import 'package:star_debug/utils/api_helper.dart';
import 'package:star_debug/utils/snapshot.dart';
import 'package:star_debug/utils/view_options.dart';

import '../utils/kv_widget.dart';

const String _TAG="MainPage";

class SnapshotPage extends StatefulWidget {
  final Snapshot snap;
  final void Function()? onClose;

  const SnapshotPage({super.key, required this.snap, this.onClose});

  @override
  State createState() => _SnapshotPageState();
}

class _Page {
  String id;
  IconData icon;
  String label;
  int alertsCount;
  Entity? entity;

  Widget Function() builder;
  bool Function()? visible;

  _Page(this.id, this.icon, this.label, this.builder, {this.entity, this.alertsCount=0});
}

class _SnapshotPageState extends State<SnapshotPage> with TickerProviderStateMixin {

  int _selectedIndex=0;
  List<_Page> pages = [];

  Image? obstructions;

  var scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    newData(widget.snap);
  }


  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  ThemeData theme = ThemeData.fallback();

  @override
  Widget build(BuildContext context) {
    theme = Theme.of(context);
    Widget? bar;

    var items = <BottomNavigationBarItem>[
      for (var p in pages)
        if (p.visible?.call() ?? true)
          BottomNavigationBarItem(
            label: p.label,
            icon: p.alertsCount==0
                ? Icon(p.icon)
                : Badge(
                  label: Text("${p.alertsCount}"),
                  child: Icon(p.icon),
                ),
          ),
    ];
    if (_selectedIndex>=items.length)
      _selectedIndex = 0;

    if (items.isNotEmpty)
      bar = BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          for (var p in pages)
            if (p.visible?.call() ?? true)
              BottomNavigationBarItem(
                label: p.label,
                icon: p.alertsCount==0
                    ? Icon(p.icon)
                    : Badge(
                      label: Text("${p.alertsCount}"),
                      child: Icon(p.icon),
                    ),
              ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        onTap: (idx) {
          _selectedIndex = idx;
          if (scrollController.hasClients)
            scrollController.jumpTo(0);
          setState(() {});
        },
      );

    return WillPopScope(
      onWillPop: () async => AppDrawer.willPopFunc(scaffoldKey),
      child: Scaffold(
          key: scaffoldKey,
          appBar: _buildBar(context) as PreferredSizeWidget?,
          drawer: AppDrawer(selectedRoute: Routes.MAIN),
          bottomNavigationBar: bar,
          body: _buildSpace()
      ),
    );
  }

  Widget scrolledPage(Widget child) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10.0),
      child: SingleChildScrollView(controller: scrollController, child: child),
    );
  }

  void newData(Snapshot snap) {
    pages.clear();
    obstructions = null;
    _selectedIndex = 0;

    if (snap.dishGetStatus!=null){

      List<Widget> charts = [];

      var history = snap.dishGetHistory;
      var historyTs = snap.historyTs;
      if (history!=null && historyTs!=null) {
        charts.add(buildGraph(M.grpc.DishGetStatus.pop_ping_latency_ms, history.current.toInt(), historyTs, history.popPingLatencyMs));
        charts.add(buildGraph(M.grpc.DishGetStatus.pop_ping_drop_rate, history.current.toInt(), historyTs, history.popPingDropRate));
        charts.add(buildGraph("Uplink, Mb/s", history.current.toInt(), historyTs, [for (var v in history.uplinkThroughputBps) v / 1024 / 1024]));
        charts.add(buildGraph("Downlink, Mb/s", history.current.toInt(), historyTs, [for (var v in history.downlinkThroughputBps) v / 1024 / 1024]));
      }

      pages.add(_Page("dishy", Icons.settings_input_antenna, M.general.dish,
          () {
            List<Widget> rows = [];
            if (snap.dishTs!=null) {
              var b = KVWidgetBuilder(context, theme);
              b.kv(M.general.dump_created_time, DateTime.fromMillisecondsSinceEpoch(snap.dishTs!));
              rows.addAll(b.widgets);
            }
            rows.add(DishWidget(
              snap: snap,
              viewOptions: ViewOptions(),
            ));

            rows.addAll(charts);

            if (this.obstructions!=null) {
              rows.add(SizedBox(
                  width: 200,
                  child: obstructions!
              ));
            }
            return scrolledPage(Column(children: rows,));
          },
          alertsCount: snap.dishGetStatus!.countAlerts())
      );

      // Map<String, dynamic>? obstr_data = parser.jsonDish?['obstructionStats'];
      // if (obstr_data!=null) {
      //   List<double> frac_obstr_list = [for (var f in obstr_data['wedgeFractionObstructedList'] ?? []) f.toDouble()];
      //   if (frac_obstr_list.isNotEmpty) {`
      //     () async {
      //       obstructions = Image.memory(await ObstructionImage.generateImgFromList(frac_obstr_list));
      //       setState(() {});
      //     }();
      //   }
      // }

      // if (parser.json!=null) {
      //   var deviceId = parser.dishGetStatus?.deviceInfo.id;
      //   var timestamp = parser.dishTs;
      //   if (deviceId != null && timestamp != null) {
      //     R.dishLog.storeDebugData(deviceId, timestamp * 1000, parser.json!);
      //   }
      // }
    }

    if (snap.routerGetStatus!=null)
      pages.add(_Page(
        "router", Icons.router, M.general.router,
        () {
          List<Widget> rows = [];
          if (snap.routerTs != null) {
            var b = KVWidgetBuilder(context, theme);
            b.kv(M.general.dump_created_time, DateTime.fromMillisecondsSinceEpoch(snap.routerTs!));
            rows.addAll(b.widgets);
          }
          rows.add(RouterWidget(
            snap: snap,
            viewOptions: ViewOptions(),
          ));
          return scrolledPage(Column(children: rows,));
        },
        alertsCount: snap.routerGetStatus!.countAlerts())
      );

    if (snap.deviceApp!=null)
      pages.add(_Page("app", Icons.ad_units, M.general.device_app,
        () => scrolledPage(Column(children: _buildPage(snap.deviceApp!),)),
        entity: snap.deviceApp!)
      );
  }

  List<Widget> _buildPage(Entity entity){
    List<Widget> rows = [];

    String? img = entity.get_device_image_file();
    if (img!=null) {
      rows.add(
        ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(img, height: 60,)
        ),
      );
    }

    {
      var b = KVWidgetBuilder(context, theme);
      entity.get_readable_params(b);
      rows.addAll(b.widgets);
    }
    for (var p in entity.plugins) {
      if(p==null)
        continue;

      var b = KVWidgetBuilder(context, theme);
      b.header(p.get_name());
      p.get_data(b);

      if (b.widgets.length<=1)
        continue;

      // var data = p.get_data();
      rows.addAll(b.widgets);
    }

    return rows;
  }

  Widget _buildSpace() {
    if (_selectedIndex<pages.length){
      var page = pages[_selectedIndex];
      return page.builder();
    }

    return Container();
  }

  Widget _buildBar(BuildContext context) {
    String? uid = widget.snap.dishGetStatus?.deviceInfo.id ?? widget.snap.routerGetStatus?.deviceInfo.id;

    return AppBar(
      title: Text(M.general.debug_data_viewer),
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: uid==null ? null : () async {
                await showDialog<String>(context: context, builder: (c) {
                  return SaveDebugDataDialog(
                      data: widget.snap.toDebugDataJson(),
                      uid: uid,
                      showInApp: false,
                  );
                });
            },
            icon: Icon(Icons.share, color: Colors.white,)
        ),
        if (R.features.shareScreenshot)
          IconButton(
              onPressed: onScreenshot,
              icon: Icon(Icons.photo_camera_outlined, color: Colors.white,)
          ),
        if(widget.onClose!=null)
          IconButton(
              onPressed: (){
                widget.onClose?.call();
                setState(() {});
              },
              icon: Icon(Icons.clear, color: Colors.white,)
          ),
      ],
    );
  }

  Future onScreenshot() async {
    await showDialog<String>(context: context, builder: (c) {
      return ShareScreenshot(
        snap: widget.snap,
      );
    });
  }
}
