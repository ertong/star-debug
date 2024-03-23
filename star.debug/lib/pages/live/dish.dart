import 'dart:async';

import 'package:flutter/material.dart' hide Notification, Card, ConnectionState;
import 'package:star_debug/grpc/starlink/starlink.pbgrpc.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/view/dish.dart';
import 'package:star_debug/preloaded.dart';
import 'package:grpc/grpc.dart';
import 'package:star_debug/utils/kv_widget.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:time_machine/time_machine.dart';

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
    charts.add(buildGraph(M.grpc.DishGetStatus.pop_ping_latency_ms, history.current.toInt(), history.popPingLatencyMs));
    charts.add(buildGraph(M.grpc.DishGetStatus.pop_ping_drop_rate, history.current.toInt(), history.popPingDropRate));
    charts.add(buildGraph("Uplink, MB/s", history.current.toInt(), [for (var v in history.uplinkThroughputBps) v/1024/1024]));
    charts.add(buildGraph("Downlink, MB/s", history.current.toInt(), [for (var v in history.downlinkThroughputBps) v/1024/1024]));
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
      _buildBody(),),
    );
  }

  List<Widget> _buildBody(){
    final conn = R.dish;

    if (conn==null || conn.isClosed)
      return [ Text("Connection not initialized") ];

    List<Widget> rows = [];

    int now = DateTime.now().millisecondsSinceEpoch;

    if (conn.connState!=ConnectionState.ready || now-conn.dishGetStatus.receivedTime>4000) {
      rows.add(Text("Channel: ${conn.connState}"));
    }

    if (conn.dishGetStatus.data!=null && now-conn.dishGetStatus.receivedTime<5000) {
      DishGetStatusResponse status = conn.dishGetStatus.data!;

      rows.add(DishWidget(
        status: status,
        features: const {},
        dishGetLocationGPS: conn.dishGetLocationGPS.validData(),
        dishGetLocationStarlink: conn.dishGetLocationStarlink.validData(),
        apiVersion: conn.dishGetStatus.apiVersion,
      ));

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

class _GraphPoint {
  int t = 0;
  double value = 0;
  _GraphPoint(this.t, this.value);
}

Widget buildGraph(String name, int current, List<double> data){
  data = data.sublist(current%900)+data.sublist(0, current%900);
  var A = [];
  A.addAll(data);
  A.sort();
  double max = A[A.length*95~/100]*1.2;

  var now = Instant.now();

  return SizedBox(
    height: 120,
    child: SfCartesianChart(
        title: ChartTitle(text: name, textStyle: TextStyle(fontSize: 10)),
        primaryXAxis: CategoryAxis(),
        primaryYAxis: NumericAxis(minimum: 0, maximum: max),
        enableAxisAnimation: false,
        series: <CartesianSeries>[
          LineSeries<_GraphPoint, String>(
              dataSource:  <_GraphPoint>[
                for (var i=0; i<data.length; ++i)
                  _GraphPoint(i, data[i]),
              ],
              animationDuration: 0,
              // xValueMapper: (_GraphPoint pt, _) => "${data.length-pt.t}",
              xValueMapper: (_GraphPoint pt, _) => "${now.subtract(Time(seconds: data.length-pt.t)).toString("HH:mm:ss")}",
              yValueMapper: (_GraphPoint pt, _) => pt.value
          )
        ]
    ),
  );
}