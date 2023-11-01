import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:star_debug/channel/star_channel.dart';
import 'package:star_debug/controller/conn/connection.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/geoip.dart';
import 'package:star_debug/utils/kv_consumer.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:star_debug/utils/wait_notify.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

String _TAG = "OnlineConnection";

class OnlineConnection extends BaseConnection {
  String TAG = "OnlineConnection";

  WaitNotify waitNotify = WaitNotify();

  StreamSubscription<ConnectivityResult>? subsConnectivity;
  StreamController notifyStream;

  bool isClosed = false;

  PooledRequest<dynamic> pooledOptions = PooledRequest(3000);

  // OptionsTest optGoogle = OptionsTest("https://8.8.8.8");

  OnlineConnection({required this.notifyStream}){
    LogUtils.d(TAG, "New connection: $this");
    subsConnectivity = Connectivity().onConnectivityChanged.listen((event) {
      LogUtils.d(TAG, "Connectivity change: $event");
      waitNotify.notifyAll();
    });

    unawaited(run());
  }

  Future run() async {
    while (true) {
      try {
        if (isClosed) {
          subsConnectivity?.cancel();
          return;
        }

        await tick();

        await waitNotify.waitOrTimeout(3000);
      }
      catch (e, s) {
        LogUtils.ers(TAG, "", e, s);
        await Future.delayed(Duration(seconds: 1));
      }
    }
  }

  final int T_OK = 5500;

  String lastIp = "";
  bool needIfConfig = false;
  bool needStarlinkGeoIp = false;
  int cntNotOk = 0;
  int cntOk = 0;
  bool starlinkInternetDetected = false;
  String? starlinkInternetCity;
  bool hasIpv6 = false;

  String? myIp;
  GeoIp? geoIp;

  void notify(){
    int now = DateTime.now().millisecondsSinceEpoch;

    myIp = null;
    if (myIp==null && getOpendns.data!=null && now-getOpendns.timeOk < T_OK*2)
      myIp = getOpendns.data["ip"];

    if (myIp==null && getIpify.data!=null && now-getIpify.timeOk < T_OK*2)
      myIp = getIpify.data["ip"];

    if (myIp==null && getIfConfig.data!=null && now-getIfConfig.timeOk < T_OK*2)
      myIp = getIfConfig.data["ip"];

    if (lastIp=="" || lastIp!=myIp) {
      lastIp = myIp ?? "";
      needIfConfig = true;
      needStarlinkGeoIp = true;
      getIfConfig.data = null;
    }

    hasIpv6 = false;

    cntNotOk = 0;
    cntOk = 0;

    if (now - optCloudflare6.timeOk < T_OK) {
      cntOk++;
      hasIpv6 = true;
    } else cntNotOk++;

    if (now - optGoogle6.timeOk < T_OK) {
      cntOk++;
      hasIpv6 = true;
    } else cntNotOk++;

    if (now - optCloudflare.timeOk < T_OK) cntOk++; else cntNotOk++;
    if (now - optGoogle.timeOk < T_OK) cntOk++; else cntNotOk++;
    if (now - optStarlink.timeOk < T_OK) cntOk++; else cntNotOk++;
    if (getOpendns.data is Map && now-getOpendns.timeOk < T_OK)  cntOk++; else cntNotOk++;
    if (getIpify.data is Map && now-getIpify.timeOk < T_OK)  cntOk++; else cntNotOk++;
    if (getIfConfig.data is Map && !needIfConfig) cntOk++; else cntNotOk++;

    {
      starlinkInternetDetected = false;
      starlinkInternetCity = null;
      if (false) {
        if (getIfConfig.data is Map && !needIfConfig) {
          var data = getIfConfig.data as Map;
          if (data["asn"] == "AS14593" || "${data["asn-org"]}".toUpperCase().contains("STARLINK"))
            starlinkInternetDetected = true;
        }
      }
      var geo = geoIp;
      if (geo!=null && myIp!=null) {
        starlinkInternetCity = geo.check(myIp!);
        starlinkInternetDetected = starlinkInternetCity!=null;
      }

      if (starlinkInternetDetected)
        cntOk++;
      else
        cntNotOk++;
    }

    notifyStream.add(null);
  }

  @override
  void close(){
    isClosed = true;
  }

  late HttpTest optCloudflare = HttpTest("http://1.1.1.1/", ()=>notify());
  late HttpTest optCloudflare6 = HttpTest("http://[2606:4700:4700::1111]:80/", ()=>notify(), method: "GET");
  late HttpTest optGoogle = HttpTest("https://dns.google/", ()=>notify(), method: "GET");
  late HttpTest optGoogle6 = HttpTest("https://ipv6.google.com/", ()=>notify(), method: "GET");

  late HttpTest optStarlink = HttpTest("https://starlink.com/", ()=>notify());

  late HttpTest getOpendns = HttpTest("https://myipv4.p1.opendns.com/get_my_ip", ()=>notify(), method: "GET");
  late HttpTest getIpify = HttpTest("https://api.ipify.org?format=json", ()=>notify(), method: "GET");

  late HttpTest getIfConfig = HttpTest("https://ifconfig.co/json", () {
    if (getIfConfig.data!=null)
      needIfConfig = false;
    notify();
  }, method: "GET");

  late HttpTest getStarlinkGeoIp = HttpTest("https://geoip.starlinkisp.net/feed.csv", () {
    if (getStarlinkGeoIp.data!=null) {
      var geo = GeoIp();
      geo.readStarlinkFeed(getStarlinkGeoIp.data);
      if (geo.map.isNotEmpty) {
        needStarlinkGeoIp = false;
        geoIp = geo;
      }
    }
    notify();
  }, method: "GET");

  Future tick() async {

    int now = DateTime.now().millisecondsSinceEpoch;
    if (pooledOptions.needSend(now)) {
      pooledOptions.sentTime = now;
      optCloudflare.trigger();
      optCloudflare6.trigger();
      optGoogle.trigger();
      optGoogle6.trigger();
      optStarlink.trigger();
      getOpendns.trigger();
      getIpify.trigger();

      if (needStarlinkGeoIp)
        getStarlinkGeoIp.trigger();

      if (needIfConfig)
        getIfConfig.trigger();
    }
  }


  void consume(KVConsumer b) {
    b.header("HTTP");
    int now = DateTime.now().millisecondsSinceEpoch;

    b.kv("1.1.1.1", optCloudflare.latency, ok: now - optCloudflare.timeOk<T_OK);
    b.kv("2606:4700:4700::1111", "${optCloudflare6.latency}", ok: now-optCloudflare6.timeOk < T_OK);
    b.kv("dns.google", optGoogle.latency, ok: now-optGoogle.timeOk < T_OK);
    b.kv("ipv6.google.com", optGoogle6.latency, ok: now-optGoogle6.timeOk < T_OK);
    b.kv("starlink.com", optStarlink.latency, ok: now-optStarlink.timeOk < T_OK);

    b.header("My Ip");

    if (getOpendns.data is Map && now-getOpendns.timeOk < T_OK)
      b.kv("OpenDNS", getOpendns.data?["ip"] ?? "", ok: true);
    else
      b.kvs("OpenDNS", "", ok: false);

    if (getIpify.data is Map && now-getIpify.timeOk < T_OK)
      b.kv("ipify.org", getIpify.data?["ip"] ?? "", ok: true);
    else
      b.kvs("ipify.org", "", ok: false);

    if (getIfConfig.data is Map && !needIfConfig) {
      var data = getIfConfig.data as Map;
      b.kv("ifconfig.co",
          "IP: ${data["ip"]}\n"
          "Country:  ${data["country"]}\n"
          "ASN:  ${data["asn"]}\n"
          "ASN-org:  ${data["asn_org"]}\n"
          "hostname:  ${data["hostname"]}",
          ok: true
      );
    } else
      b.kv("ifconfig.co", "", ok: false);

    b.header(M.header.network);
    {
      var str = "false";
      if (myIp==null)
        str = "no ip";
      else if (geoIp==null)
        str = "fetching";
      else
        str = "${ starlinkInternetCity ?? false}";
      b.kv(M.online.starlink_internet, str, ok: starlinkInternetDetected);
    }
  }
}

class HttpTest {
  Function() notify;
  String url;
  String method;
  dynamic data;
  dynamic newData;
  final dio = Dio();
  CancelToken? token;
  int timeOk = 0;
  int latency = 0;

  HttpTest(this.url, this.notify, {this.method = "OPTIONS"});

  void trigger(){
    unawaited(()async{
      int tsStart = DateTime.now().millisecondsSinceEpoch;
      await httpOptions(url);
      latency = DateTime.now().millisecondsSinceEpoch - tsStart;
      notify();
    }());
  }

  Future<bool> httpOptions(String url) async {
    try {
      if (Platform.isAndroid)
        await doAndroid();
      else
        await doDio();
    } catch (e){
      // LogUtils.ers(_TAG, "$method $url", e, s);
      // LogUtils.e(_TAG, "$method $url: $e");
      LogUtils.e(_TAG, "$method $url: ${"$e".split("\n")[0]}");
    }
    return false;
  }

  Future doDio() async{
    token?.cancel();
    token = CancelToken();
    newData = null;
    var resp = await dio.request(url,
        cancelToken: token,
        options: Options(
            sendTimeout: Duration(seconds: 2),
            receiveTimeout: Duration(seconds: 4),
            method: method,
            followRedirects: false,
            validateStatus: (s) => s!=null
        )
    );
    if (resp.statusCode!=null && (resp.statusCode!~/100 == 2 || resp.statusCode!~/100 == 3)) {
      timeOk = DateTime.now().millisecondsSinceEpoch;
      // print("$url: $resp");
      newData = resp.data;
      data = resp.data;
      return true;
    }
    LogUtils.e(_TAG, "$method $url: ${resp.statusCode} ${resp.data}");
  }

  Future doAndroid() async{
    newData = null;

    HttpTestResult res = await R.starChannel.httpTest(url, method, null).timeout(Duration(seconds: 4));

    if (res.code~/100 == 2 || res.code~/100 == 3) {
      timeOk = DateTime.now().millisecondsSinceEpoch;
      // print("$url: $resp");
      try{
        data = jsonDecode(res.body);
      }catch(e){
        data = res.body;
      }
      return true;
    }
    LogUtils.e(_TAG, "$method $url: ${res.code}");
    // LogUtils.e(_TAG, "$method $url: ${res.code} ${res.body}");
  }

}
