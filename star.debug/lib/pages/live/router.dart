import 'dart:async';

import 'package:flutter/material.dart' hide Notification, Card, ConnectionState;
import 'package:star_debug/controller/conn/router_connection.dart';
import 'package:star_debug/pages/live.dart';
import 'package:star_debug/pages/view/router.dart';
import 'package:star_debug/preloaded.dart';
import 'package:grpc/grpc.dart';
import 'package:star_debug/utils/view_options.dart';
import 'package:star_debug/widgets/connection_error_log.dart';


const String _TAG="RouterTab";

class RouterTab extends StatefulWidget {
  final ScrollController? scrollController;

  const RouterTab({super.key, this.scrollController});

  @override
  State createState() => _RouterTabState();
}

class _RouterTabState extends State<RouterTab> with TickerProviderStateMixin {

  StreamSubscription? grpcSubs;

  @override
  void initState() {
    super.initState();
    grpcSubs = R.routerHolder.stream.listen((event) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    grpcSubs?.cancel();
    super.dispose();
  }

  ThemeData theme = ThemeData.fallback();

  @override
  Widget build(BuildContext context) {
    theme = Theme.of(context);
    return ConnectionErrorLogLayout(
      controller: widget.scrollController,
      entries: R.router?.errorLog.entries ?? [],
      children: _buildBody(),
    );
  }

  List<Widget> _buildBody(){
    final RouterConnection? conn = R.router;

    if (conn==null || conn.isClosed)
      return [ Text("Connection not initialized") ];

    List<Widget> rows = [];

    int now = DateTime.now().millisecondsSinceEpoch;

    if (conn.connState!=ConnectionState.ready || now-conn.statusReceivedTime>4000) {
      rows.add(Text("Channel: ${conn.connState}\n(${conn.host})", textAlign: TextAlign.center,));
    }

    if (conn.wifiGetStatus.data!=null && now-conn.statusReceivedTime<5000) {
      rows.add(RouterWidget(
        snap: buildLiveSnapshot(),
        viewOptions: ViewOptions(),
      ));
    }

    return rows;
  }

}
