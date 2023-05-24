import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:grpc/grpc.dart';
import 'package:star_debug/controller/conn/connection.dart';
import 'package:star_debug/space/entity.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:star_debug/utils/wait_notify.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:http/http.dart' as http;

String _TAG = "OnlineConnection";

class OnlineConnection extends BaseConnection {
  String TAG = "OnlineConnection";

  WaitNotify waitNotify = WaitNotify();

  StreamSubscription<ConnectivityResult>? subsConnectivity;
  StreamController notifyStream;

  bool isClosed = false;

  PooledRequest<dynamic> pooledOptions = PooledRequest(2000);

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

  String lastIp = "";
  bool needIfConfig = false;
  int cntNotOk = 0;
  int cntOk = 0;
  bool starlinkInternetDetected = false;

  void notify(){
    String? myIp;
    if (getOpendns.data!=null)
      myIp = getOpendns.data["ip"];

    if (myIp!=null && (lastIp=="" || lastIp!=myIp)) {
      lastIp = myIp;
      needIfConfig = true;
      getIfConfig.data = null;
    }

    if (getIfConfig.data!=null) {
      needIfConfig = false;
    }

    cntNotOk = 0;

    if (now - optCloudflare.timeOk < 3500) cntOk++; else cntNotOk++;
    if (now - optCloudflare6.timeOk < 4500) cntOk++; else cntNotOk++;
    if (now - optGoogle.timeOk < 3500) cntOk++; else cntNotOk++;
    if (now - optGoogle6.timeOk < 3500) cntOk++; else cntNotOk++;
    if (now - optStarlink.timeOk < 3500) cntOk++; else cntNotOk++;
    if (getOpendns.data is Map)  cntOk++; else cntNotOk++;
    if (getIfConfig.data is Map && !needIfConfig) cntOk++; else cntNotOk++;

    {
      starlinkInternetDetected = false;
      if (getIfConfig.data is Map && !needIfConfig) {
        var data = getIfConfig.data as Map;
        if (data["asn"]=="AS14593" || "${data["asn-org"]}".toUpperCase().contains("STARLINK"))
          starlinkInternetDetected = true;
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
  late HttpTest optGoogle = HttpTest("https://google.com/", ()=>notify(), method: "GET");
  late HttpTest optGoogle6 = HttpTest("https://ipv6.google.com/", ()=>notify(), method: "GET");

  late HttpTest optStarlink = HttpTest("https://starlink.com/", ()=>notify());

  late HttpTest getOpendns = HttpTest("https://myipv4.p1.opendns.com/get_my_ip", ()=>notify(), method: "GET");
  late HttpTest getIfConfig = HttpTest("https://ifconfig.co/json", ()=>notify(), method: "GET");

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

      if (needIfConfig)
        getIfConfig.trigger();
    }
  }

  int now = DateTime.now().millisecondsSinceEpoch;

  void consume(KVConsumer b) {
    b.header("HTTP");

    b.kv("1.1.1.1", optCloudflare.latency, ok: now - optCloudflare.timeOk<3500);
    b.kv("2606:4700:4700::1111", "${optCloudflare6.latency}", ok: now-optCloudflare6.timeOk < 4500);
    b.kv("google.com", optGoogle.latency, ok: now-optGoogle.timeOk < 3500);
    b.kv("ipv6.google.com", optGoogle6.latency, ok: now-optGoogle6.timeOk < 3500);
    b.kv("starlink.com", optStarlink.latency, ok: now-optStarlink.timeOk < 3500);

    b.header("MyIp");

    if (getOpendns.data is Map)
      b.kv("OpenDNS", getOpendns.data?["ip"] ?? "", ok: true);
    else
      b.kvs("OpenDNS", "", ok: false);

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

    b.header("Net");
    b.kv("Starlink network", starlinkInternetDetected, ok: starlinkInternetDetected);
  }
}

class HttpTest {
  Function() notify;
  String url;
  String method;
  dynamic data;
  final dio = Dio();
  CancelToken? token;
  int timeOk = 0;
  int latency = 0;

  HttpTest(this.url, this.notify, {this.method = "OPTIONS"}) {}

  void trigger(){
    unawaited(()async{
      int tsStart = DateTime.now().millisecondsSinceEpoch;
      var res = await httpOptions(url);
      latency = DateTime.now().millisecondsSinceEpoch - tsStart;
      notify();
    }());
  }

  Future<bool> httpOptions(String url) async {
    try {
      token?.cancel();
      token = CancelToken();
      var resp = await dio.request(url,
          cancelToken: token,
          options: Options(
              sendTimeout: Duration(seconds: 1),
              receiveTimeout: Duration(seconds: 1),
              method: method,
              followRedirects: false,
              validateStatus: (s) => s!=null
          )
      );
      if (resp.statusCode!=null && (resp.statusCode!~/100 == 2 || resp.statusCode!~/100 == 3)) {
        timeOk = DateTime.now().millisecondsSinceEpoch;
        // print("$url: $resp");
        data = resp.data;
        return true;
      }
      LogUtils.e(_TAG, "$method $url: ${resp.statusCode} ${resp.data}");
    } catch (e,s){
      LogUtils.ers(_TAG, "$method $url", e, s);
    }
    return false;
  }

}
