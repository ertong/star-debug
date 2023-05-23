import 'dart:async';

import 'package:flutter/material.dart' hide Notification, Card, ConnectionState;
import 'package:star_debug/controller/conn_controller.dart';
import 'package:star_debug/controller/conn/grpc_connection.dart';
import 'package:star_debug/drawer.dart';
import 'package:star_debug/messages/I18n.dart';
import 'package:star_debug/pages/live/dish.dart';
import 'package:star_debug/pages/live/online.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/routes.dart';

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

  _Page(this.icon, this.label, this.color, this.builder);
}

class _LivePageState extends State<LivePage> with TickerProviderStateMixin {

  StreamSubscription? subDish;
  StreamSubscription? subRouter;
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

    pages.add(_Page(
        Icons.settings_input_antenna,
        M.general.dish,
        () => colorOf(R.dishHolder),
        () => DishTab()
    ));
    pages.add(_Page(
        Icons.router,
        M.general.router,
        () => colorOf(R.routerHolder),
        () => RouterTab()
    ));
    // pages.add(_Page(
    //     Icons.public,
    //     M.general.online,
    //     ()=>Colors.black,
    //     () => OnlineTab()
    // ));
  }

  @override
  void dispose() {
    subDish?.cancel();
    subRouter?.cancel();
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
        items.add(BottomNavigationBarItem(
          label: p.label,
          icon: Icon(p.icon, color: p.color().withAlpha(_selectedIndex==i?255:100),),
          // icon: Badge(
          //   backgroundColor: colorOf(p),
          //   label: Icon(Icons.circle),
          //   child: Icon(p.icon),
          // ),
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
