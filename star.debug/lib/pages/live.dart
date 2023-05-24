import 'dart:async';

import 'package:flutter/material.dart' hide Notification, Card, ConnectionState;
import 'package:star_debug/controller/conn/connection.dart';
import 'package:star_debug/controller/conn/grpc_connection.dart';
import 'package:star_debug/drawer.dart';
import 'package:star_debug/messages/I18n.dart';
import 'package:star_debug/pages/live/dish.dart';
import 'package:star_debug/pages/live/online.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/routes.dart';
import 'package:star_debug/space/entity.dart';

import 'live/router.dart';

const String _TAG="StarlinkPage";

class LivePage extends StatefulWidget {
  final String route;

  const LivePage({super.key, this.route = Routes.MAIN});

  @override
  State createState() => _LivePageState();
}

class _Page {
  IconData icon;
  String label;
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
    subDish = R.dishHolder.stream.listen((event) {
      setState(() {});
    });
    subRouter = R.routerHolder.stream.listen((event) {
      setState(() {});
    });
    subOnline = R.onlineHolder.stream.listen((event) {
      setState(() {});
    });

    pages.add(_Page(
        Icons.settings_input_antenna,
        M.general.dish,
        () => colorOf(R.dishHolder),
        () => DishTab(),
        alert: () {
          var data = R.dish?.dishGetStatus.data;
          if (data==null) return 0;

          var map = data.alerts.toProto3Json() as Map<String, dynamic>;
          return map.entries.where((e) => e.value==true).length;
        }
    ));
    pages.add(_Page(
        Icons.router,
        M.general.router,
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
        M.general.online,
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
          label: p.label,
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
        // selectedItemColor: Colors.amber[800],
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

  Widget _buildBar(BuildContext context) {
    return AppBar(
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
