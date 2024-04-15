import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:drift/drift.dart' hide Column;
import 'package:flutter/material.dart' hide Notification, Card, ConnectionState;
import 'package:grpc/grpc.dart';
import 'package:star_debug/db/models/recent_inputs.dart';
import 'package:star_debug/grpc/starlink/network.pbenum.dart';
import 'package:star_debug/grpc/starlink/starlink.pbgrpc.dart';
import 'package:star_debug/messages/i18n.dart';
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
    charts.add(buildGraph(M.grpc.DishGetStatus.pop_ping_latency_ms, history.current.toInt(), time, history.popPingLatencyMs));
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
            code = "$code, ${status.outage.cause}";
            ok = false;
          }
          b1.kv(M.grpc.DishGetStatus.disablement_code, code, ok: ok);
        }

        b.widgets.add(Row(crossAxisAlignment: CrossAxisAlignment.start,children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(dish.getImage(), height: 50,)
          ),
          SizedBox(width: 5),
          Expanded(child: Column(crossAxisAlignment:CrossAxisAlignment.start, children: b1.widgets,))
        ],));

        // bool stowed = status.stowRequested || status.outage.cause == DishOutage_Cause.STOWED;
        bool gpsInhibited = status.gpsStats.inhibitGps;
        b.widgets.add(Wrap(
          spacing: 5,
          alignment: WrapAlignment.spaceAround,
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
      var bt = KVWidgetBuilder(context, theme);
      var router = R.router;
      var status = R.router?.wifiGetStatus.data;
      bt.header(M.general.router);
      if (router==null || status==null || router.isClosed) {
        if (!R.features.routerOptional)
          bt.kv("Status", "connecting");
      } else {
        var b1 = KVWidgetBuilder(context, theme);
        b1.kv(M.grpc.DeviceInfo.id, status.deviceInfo.id);
        b1.kv(M.general.version, status.deviceInfo.softwareVersion);
        if (status.hasPingLatencyMs())
          b1.kv(M.grpc.WifiGetStatus.ping_latency_ms, status.pingLatencyMs, ok: status.pingLatencyMs<200);
        // b1.widgets.add(Text(status.deviceInfo.id));

        bt.widgets.add(Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(router.getImage(), height: 50,)
          ),
          SizedBox(width: 5),
          Expanded(child: Column(crossAxisAlignment:CrossAxisAlignment.start, children: b1.widgets,))
        ],));

        bt.widgets.add(Wrap(
          spacing: 5,
          alignment: WrapAlignment.spaceAround,
          children: [
            reqButton(M.general.reboot, () => Request(reboot: RebootRequest()), router: true),
            reqButton(M.live.check_update, () => Request(update: UpdateRequest()), router: true),
            if ((R.router?.wifiGetStatus.hasRecentData() ?? false)
                && !status.config.setupComplete
                && (R.router?.httpPool.data?.location ?? "")=="/setup"
            )
              OutlinedButton(
                  onPressed: isWifiSettingUp ? null : onWifiSetup,
                  child: Text(M.wifi.setup)
              )
            // reqButton(M.wifi.setup, () => Request(reboot: RebootRequest()), router: true),
          ],
        ));
      }
      if (bt.widgets.length>1)
        b.widgets.addAll(bt.widgets);
    }

    {
      var online = R.online;
      b.header(M.general.online);
      if (online==null)
        b.kv("Status", "connecting");
      else {
        b.kv(M.online.internet, online.isOk, ok: online.isOk);
        if (R.features.checkIpV6)
          b.kv("IPv6", online.hasIpv6, ok: online.hasIpv6);
        b.kv(M.online.starlink_internet, online.starlinkInternetDetected, ok: online.starlinkInternetDetected);
      }
    }

    if (R.prefs.data.valkyrieCheck && R.features.valkyrieCheck) {
      var bt = KVWidgetBuilder(context, theme);
      bt.header(M.general.security);

      var status = R.router?.wifiGetStatus.data;
      var service = status?.config.networks.firstOrNull?.basicServiceSets.firstOrNull;
      if (service!=null) {
        bt.widgets.add(R.valkyrie.widget(service.bssid, theme));
      }
      if (bt.widgets.length>1)
        b.widgets.addAll(bt.widgets);
    }

    if (charts.isNotEmpty)
    {
      b.header(M.general.charts);
      b.widgets.addAll(charts);
    }

    return b.widgets;
  }

  Widget reqButton(String name, Request Function() reqBuilder, {bool router = false}){
    return OutlinedButton(
      onPressed: loading.contains(name) ? null : () async {
        setState(() {
          loading.add(name);
        });
        try {
          var text = await withConnectedHandleJson(reqBuilder(), router: router);
          R.showSnackBarText(text);
        }finally{
          if (mounted)
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

      if (res.result==WifiSetupResult.RES_BYPASS) {
        final dio = Dio();
        var token = CancelToken();
        var resp = await dio.request("http://192.168.1.1/bypass",
            cancelToken: token,
            options: Options(
                sendTimeout: Duration(seconds: 2),
                receiveTimeout: Duration(seconds: 4),
                method: "POST",
                followRedirects: false,
                validateStatus: (s) => s!=null
            )
        );
        LogUtils.d(_TAG, "Status: ${resp.statusCode}\n${resp.data}");
        if (resp.statusCode==200)
          R.showSnackBarText("Bypass request successful");
        else if (resp.statusCode==303)
          R.showSnackBarText("Bypass request failed");
        else
          R.showSnackBarText("Bypass request failed: status ${resp.statusCode}");
      } else {
        WifiSetupRequest req;
        if (res.result == WifiSetupResult.RES_SKIP)
          req = WifiSetupRequest(skip: true);
        else if (res.result == WifiSetupResult.RES_WIFI && res.name != null && res.pass != null) {
          unawaited(R.db.recentInputsDao.addInputChecked(RecentInputs.TYPE_WIFI_SSID, res.name));
          unawaited(R.db.recentInputsDao.addInputChecked(RecentInputs.TYPE_WIFI_PASS, res.pass));
          req = WifiSetupRequest(networkName: res.name, networkPassword: res.pass);
        }
        else
          return;

        var text = await withConnectedHandleJson(Request(wifiSetup: req), router: true);
        R.showSnackBarText(text);
      }
    }
    catch (e, s) {
      LogUtils.ers(_TAG, "", e, s);
      R.showSnackBarText("Error: $e");
    }
    finally{
      setState(() { isWifiSettingUp = false; });
    }
  }

}
