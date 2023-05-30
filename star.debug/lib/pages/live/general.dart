import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart' hide Notification, Card, ConnectionState;
import 'package:grpc/grpc.dart';
import 'package:star_debug/grpc/starlink/network.pbenum.dart';
import 'package:star_debug/grpc/starlink/starlink.pbgrpc.dart';
import 'package:star_debug/messages/I18n.dart';
import 'package:star_debug/pages/dialogs/wifi_setup.dart';
import 'package:star_debug/pages/live/dish.dart' show buildGraph;
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/kv_widget.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:time_machine/time_machine.dart';

const String _TAG="GeneralTab";

class GeneralTab extends StatefulWidget {
  const GeneralTab({super.key});

  @override
  State createState() => _GeneralTabState();
}

class _GeneralTabState extends State<GeneralTab> with TickerProviderStateMixin {

  StreamSubscription? subDish;
  StreamSubscription? subRouter;
  StreamSubscription? subOnline;

  Set<String> loading = {};
  bool isWifiSettingUp = false;

  int lastGraphTime = 0;

  List<Widget> charts = [];

  @override
  void initState() {
    super.initState();
    subDish = R.dishHolder.stream.listen((event) { setState(() {}); buildCharts(); });
    subRouter = R.routerHolder.stream.listen((event) { setState(() {}); });
    subOnline = R.onlineHolder.stream.listen((event) { setState(() {}); });
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
    return Center(
      child: Column(children:
      _buildBody(),),
    );
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
    charts.add(buildGraph("Ping latency", history.popPingLatencyMs));
    // charts.add(buildGraph("Ping drop rate", history.popPingDropRate));
    // charts.add(buildGraph("Uplink, MB/s", [for (var v in history.uplinkThroughputBps) v/1024/1024]));
    // charts.add(buildGraph("Downlink, MB/s", [for (var v in history.downlinkThroughputBps) v/1024/1024]));
  }

  List<Widget> _buildBody() {
    var b = KVWidgetBuilder(context, theme);

    {
      var dish = R.dish;
      var status = R.dish?.dishGetStatus.data;
      b.header(M.general.dish);
      if (dish==null || status==null || dish.isClosed)
        b.kv("Status", "connecting");
      else {
        var b1 = KVWidgetBuilder(context, theme);
        b1.kv(M.grpc.DeviceInfo.id, status.deviceInfo.id);
        b1.kv(M.general.version, Instant.fromEpochSeconds(status.deviceInfo.generationNumber.toInt()).inUtc().toString("yyyy-MM-dd"));

        {
          String code = "${status.disablementCode}";
          bool ok = status.disablementCode == UtDisablementCode.OKAY;
          if (status.hasOutage() && status.outage.hasCause()) {
            code = "${code}, ${status.outage.cause}";
            ok = false;
          }
          b1.kv(M.grpc.DishGetStatus.disablement_code, code, ok: ok);
        }

        b.widgets.add(Row(crossAxisAlignment: CrossAxisAlignment.start,children: [
          Image.asset(dish.getImage(), height: 50,),
          SizedBox(width: 5),
          Expanded(child: Column(crossAxisAlignment:CrossAxisAlignment.start, children: b1.widgets,))
        ],));

        bool stowed = status.stowRequested || status.outage.cause == DishOutage_Cause.STOWED;
        bool gpsInhibited = status.gpsStats.inhibitGps;
        b.widgets.add(Flex(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          direction: Axis.horizontal,
          children: [
            reqButton(M.general.reboot, () => Request(reboot: RebootRequest())),
            reqButton(M.general.stow, () => Request(dishStow: DishStowRequest(unstow: false))),
            reqButton(M.general.unstow, () => Request(dishStow: DishStowRequest(unstow: true))),
            if (gpsInhibited)
              reqButton(M.general.uninhibit_gps, () => Request(dishInhibitGps: DishInhibitGpsRequest(inhibitGps: false)), router: false)
            else
              reqButton(M.general.inhibit_gps, () => Request(dishInhibitGps: DishInhibitGpsRequest(inhibitGps: true)), router: false),
          ],
        ));
      }
    }

    {
      var router = R.router;
      var status = R.router?.wifiGetStatus.data;
      b.header(M.general.router);
      if (router==null || status==null || router.isClosed)
        b.kv("Status", "connecting");
      else {
        var b1 = KVWidgetBuilder(context, theme);
        b1.kv(M.grpc.DeviceInfo.id, status.deviceInfo.id);
        b1.kv(M.general.version, status.deviceInfo.softwareVersion);
        if (status.hasPingLatencyMs())
          b1.kv(M.grpc.WifiGetStatus.ping_latency_ms, status.pingLatencyMs, ok: status.pingLatencyMs<200);
        // b1.widgets.add(Text(status.deviceInfo.id));

        b.widgets.add(Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.asset(router.getImage(), height: 50,),
          SizedBox(width: 5),
          Expanded(child: Column(crossAxisAlignment:CrossAxisAlignment.start, children: b1.widgets,))
        ],));

        b.widgets.add(Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            reqButton(M.general.reboot, () => Request(reboot: RebootRequest()), router: true),
            if (!status.config.setupComplete)
              OutlinedButton(
                  onPressed: isWifiSettingUp ? null : onWifiSetup,
                  child: Text(M.wifi.setup)
              )
            // reqButton(M.wifi.setup, () => Request(reboot: RebootRequest()), router: true),
          ],
        ));
      }
    }

    {
      var online = R.online;
      b.header(M.general.online);
      if (online==null)
        b.kv("Status", "connecting");
      else {
        b.kv(M.online.internet, online.cntOk > 0, ok: online.cntOk > 0);
        b.kv("IPv6", online.hasIpv6, ok: online.hasIpv6);
        b.kv(M.online.starlink_internet, online.starlinkInternetDetected, ok: online.starlinkInternetDetected);
      }
    }

    if (charts.isNotEmpty)
    {
      b.header(M.general.charts);
      b.widgets.addAll(charts);
    }

    return b.widgets;
  }

  Widget _buildButton(String txt, IconData icon, Function()? onPressed,
      {Color? btnColor, double width=75})
  {
    return OutlinedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.fromLTRB(2, 5, 2, 5),
          primary: btnColor,
          minimumSize: Size(width, 50)
      ),
      child:Column(
        children: <Widget>[
          Icon(icon),
          const SizedBox(height: 2.0),
          Text(txt),
        ],
      ),
    );
  }

  Widget reqButton(String name, Request Function() reqBuilder, {bool router = false}){

    // return _buildButton(name, Icons.add, () => null);


    return OutlinedButton(
      onPressed: loading.contains(name) ? null : () async {
        setState(() {
          loading.add(name);
        });
        try {
          var text = await withConnectedHandleJson(reqBuilder(), router: router);
          R.showSnackBarText(text);
        }finally{
          setState(() {
            loading.remove(name);
          });
        }
      },
      style: OutlinedButton.styleFrom(padding: EdgeInsets.fromLTRB(5,3,5,3)),
      child: Text(name)
    );
  }

  Future<String> withConnectedHandleJson( Request req, {bool router = false}) async {
    return await withConnected((stub, channel) async {
      var resp = await stub.handle(req, options: CallOptions(timeout: Duration(seconds: 3)));

      log("Received response: ${jsonEncode(resp.toProto3Json())}");

      return JsonEncoder.withIndent("  ").convert(resp.toProto3Json());
    }, router: router) ?? "";
  }

  Future<T?> withConnected<T>(Future<T> Function(DeviceClient stub, ClientChannel channel) callback, {bool router = false} ) async {
    final channel = ClientChannel(
      router ? '192.168.1.1' : '192.168.100.1',
      port: router ? 9000 : 9200,
      options: ChannelOptions(
        credentials: ChannelCredentials.insecure(),
        codecRegistry: CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
        connectionTimeout: Duration(seconds: 3),
        idleTimeout: Duration(seconds: 10),
      ),
    );
    final stub = DeviceClient(channel);

    try {
      T res = await callback(stub, channel);
      return res;
    } catch (e, s) {
      LogUtils.ers(_TAG, "", e, s);
      R.showSnackBarText("$e");
    }
    finally {
      await channel.shutdown();
    }

    return null;
  }

  Future<void> onWifiSetup() async {
    setState(() { isWifiSettingUp = true; });
    try {
      WifiSetupResult? res = await showDialog<WifiSetupResult?>(context: context, builder: (c) => WifiSetupDialog());
      if (res == null)
        return;

      WifiSetupRequest req;
      if (res.skip!=null && res.skip==true)
        req = WifiSetupRequest(skip: true);
      else if (res.name!=null && res.pass!=null)
        req = WifiSetupRequest(networkName: res.name, networkPassword: res.pass);
      else
        return;

      var text = await withConnectedHandleJson(Request(wifiSetup: req), router: true);
      R.showSnackBarText(text);
    }
    finally{
      setState(() { isWifiSettingUp = false; });
    }
  }

}
