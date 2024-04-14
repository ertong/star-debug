import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart' hide Notification, Card, ConnectionState;
import 'package:star_debug/grpc/starlink/starlink.pbgrpc.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/view/dish.dart';
import 'package:star_debug/preloaded.dart';
import 'package:grpc/grpc.dart';
import 'package:star_debug/utils/debug_data.dart';
import 'package:star_debug/utils/kv_widget.dart';
import 'package:star_debug/utils/view_options.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:time_machine/time_machine.dart';
import 'package:time_machine/time_machine.dart' as time_machine;

import '../../utils/format.dart';

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

  bool outageExpand = false;

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
    charts.add(buildGraph(M.grpc.DishGetStatus.pop_ping_latency_ms, history.current.toInt(), time~/1000, history.popPingLatencyMs));
    charts.add(buildGraph(M.grpc.DishGetStatus.pop_ping_drop_rate, history.current.toInt(), time~/1000, history.popPingDropRate));
    charts.add(buildGraph("Uplink, MB/s", history.current.toInt(), time~/1000, [for (var v in history.uplinkThroughputBps) v/1024/1024]));
    charts.add(buildGraph("Downlink, MB/s", history.current.toInt(), time~/1000, [for (var v in history.downlinkThroughputBps) v/1024/1024]));
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
        viewOptions: ViewOptions(),
      ));

      var outages = conn.dishGetHistory.data?.outages ?? [];
      if (outages.isNotEmpty && R.features.outagesHistory) {
        var b = KVWidgetBuilder(context, theme);
        b.header(M.live.outages, more: [
          Expanded(child: Container()),
          Icon(outageExpand?Icons.expand_less:Icons.expand_more, size: 20,),
        ],onTap: () {
          setState(() {
            outageExpand = !outageExpand;
          });
        },);

        if (outages.length>10 && !outageExpand)
          b.widgets.add(GestureDetector(
            onTap: () {
              setState(() {
                outageExpand = !outageExpand;
              });
            },
            child: Text(M.live.n_records_before(outages.length-10), textAlign: TextAlign.center,)
          ));

        // int now = DateTime.now().millisecondsSinceEpoch;
        // int last = (outages.last.startTimestampNs~/1000~/1000).toInt();
        // int delta = (now-last)~/(60*60*24*1000)*60*60*24*1000;
        for (var o in outages.length<=10 || outageExpand ? outages : outages.skip(outages.length-10) ) {
          if (o.startTimestampNs==-1) {
            b.kvs("${o.cause}", "");
            continue;
          }

          int ts_int = (o.startTimestampNs~/1000~/1000).toInt();

          // var ts = Instant.fromEpochMilliseconds(ts_int+delta).inLocalZone();
          var ts = Instant.fromEpochMilliseconds(ts_int).inLocalZone();

          b.kvs("${ts.toString("HH:mm:ss")} ${o.cause}", "${Format.secD(o.durationNs.toDouble()/1000/1000/1000)}");
          // print("OUTAGE ${o.cause} ${o.didSwitch} ${o.durationNs.toDouble()/1000/1000/1000} ${o.startTimestampNs.toDouble()/1000/1000/1000}");
        }
        rows.addAll(b.widgets);
      }


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

Widget buildGraph(String name, int current, int tsSec, List<double> data){
  data = data.sublist(current%900)+data.sublist(0, current%900);
  var A = [];
  A.addAll(data);
  A.sort();
  double max = A[A.length*95~/100]*1.2;

  var now = Instant.fromEpochSeconds(tsSec).inLocalZone();

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