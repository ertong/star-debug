import 'dart:async';

import 'package:flutter/material.dart' hide Notification, Card, ConnectionState;
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/live.dart';
import 'package:star_debug/pages/view/dish.dart';
import 'package:star_debug/preloaded.dart';
import 'package:grpc/grpc.dart';
import 'package:star_debug/utils/kv_widget.dart';
import 'package:star_debug/utils/view_options.dart';
import '../view/common.dart';

const String _TAG="DishTab";

class DishTab extends StatefulWidget {
  const DishTab({super.key});

  @override
  State createState() => _DishTabState();
}

class _DishTabState extends State<DishTab> with TickerProviderStateMixin {

  StreamSubscription? grpcSubs;
  int lastGraphTime = 0;

  List<Widget> charts = [];

  bool eventLogExpand = false;

  @override
  void initState() {
    super.initState();
    grpcSubs = R.dishHolder.stream.listen((event) {
      buildCharts();
      setState(() {});
    });
  }

  void buildCharts(){
    var history = R.dish?.dishGetHistory.data;
    var time = R.dish?.dishGetHistory.receivedTime ?? 0;
    var now = DateTime.now().millisecondsSinceEpoch;

    if (now-time>20000){
      charts.clear();
      return;
    }

    if (history==null || time <= lastGraphTime)
      return;

    lastGraphTime = time;

    charts.clear();
    charts.add(buildGraph(M.grpc.DishGetStatus.pop_ping_latency_ms, "ms", history.current.toInt(), time, history.popPingLatencyMs));
    charts.add(buildGraph(M.grpc.DishGetStatus.pop_ping_drop_rate, "", history.current.toInt(), time, history.popPingDropRate));
    charts.add(buildGraph("Uplink", "Mb/s", history.current.toInt(), time, [for (var v in history.uplinkThroughputBps) v/1024/1024]));
    charts.add(buildGraph("Downlink", "Mb/s", history.current.toInt(), time, [for (var v in history.downlinkThroughputBps) v/1024/1024]));
    charts.add(buildGraph("PowerIn", "W", history.current.toInt(), time, [for (var v in history.powerIn) v]));

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
    return Center(
      child: Column(children:
      _buildBody(context),),
    );
  }

  List<Widget> _buildBody(BuildContext context){
    final conn = R.dish;

    if (conn==null || conn.isClosed)
      return [ Text("Connection not initialized") ];

    List<Widget> rows = [];

    int now = DateTime.now().millisecondsSinceEpoch;

    if (conn.connState!=ConnectionState.ready || now-conn.dishGetStatus.receivedTime>4000) {
      rows.add(Text("Channel: ${conn.connState}\n(${conn.host})", textAlign: TextAlign.center));
    }

    if (conn.dishGetStatus.data!=null && now-conn.dishGetStatus.receivedTime<5000) {

      rows.add(DishWidget(
        snap: buildLiveSnapshot(),
        viewOptions: ViewOptions(),
        showActions: true,
      ));

      buildEventLogs(context, theme, conn.dishGetHistory.data, rows, 10, expanded: eventLogExpand, setExpanded: (log) {
        setState(() { eventLogExpand = log; });
      },);

      if (charts.isNotEmpty) {
        var b = KVWidgetBuilder(context, theme);
        b.header(M.general.charts);

        b.widgets.addAll(charts);

        rows.addAll(b.widgets);
      }
    }
    return rows;
  }

}

