import 'dart:async';

import 'package:dio/dio.dart';
import 'package:grpc/grpc.dart';
import 'package:star_debug/controller/conn/connection.dart';
import 'package:star_debug/grpc/starlink/starlink.pbgrpc.dart';
import 'package:star_debug/utils/log_utils.dart';

import 'grpc_connection.dart';

String _TAG = "RouterConnection";

class RouterPoolResponse {
  int code = 0;
  String location = "";
}

class RouterConnection extends GrpcConnection {

  PooledRequest<WifiGetStatusResponse> wifiGetStatus = PooledRequest(2000);
  PooledRequest<RouterPoolResponse> httpPool = PooledRequest(2000);

  RouterConnection({required super.notifyStream}):super(host: '192.168.1.1', port: 9000,) {
    TAG = "RouterConnection";
  }

  @override
  Future tickConnected(ClientChannel channel, DeviceClient stub) async {
    int now = DateTime.now().millisecondsSinceEpoch;
    if (wifiGetStatus.needSend(now)) {
      reqStream.add(ToDevice(request: Request(
          getStatus: GetStatusRequest()
      )));
      wifiGetStatus.sentTime = now;
    }
    if (httpPool.needSend(now)) {
      httpPool.sentTime = now;
      unawaited(doHttpPool());
    }
  }

  @override
  Future onReceived(FromDevice msg) async {
    int now = DateTime.now().millisecondsSinceEpoch;

    if (msg.hasEvent())
      LogUtils.d(TAG, "Received event: ${msg.event}");

    if (msg.hasHealthCheck())
      LogUtils.d(TAG, "Received health check: ${msg.healthCheck}");

    if (msg.hasResponse()) {
      var resp = msg.response;
      var respJson = resp.toProto3Json();
      if (respJson is Map<String, dynamic>) {
        LogUtils.d(TAG, "Received response: ${respJson.keys}");
      }

      if (resp.hasWifiGetStatus()) {
        wifiGetStatus.setData(now, resp.wifiGetStatus, resp.apiVersion.toInt());
        statusReceivedTime = now;
      }
    }

    notify();
  }

  String getImage() {
    String res = _dev_images["v2"]!;

    var data = wifiGetStatus.data;
    if (data != null && data.hasDeviceInfo() && data.deviceInfo.hasHardwareVersion()) {
      var hw = data.deviceInfo.hardwareVersion;

      res = _dev_images[hw] ?? res;
    }

    return res;
  }

  CancelToken? token;
  final dio = Dio();
  Future doHttpPool() async {
    token?.cancel();
    token = CancelToken();
    var resp = await dio.request("http://192.168.1.1",
        cancelToken: token,
        options: Options(
            sendTimeout: Duration(seconds: 2),
            receiveTimeout: Duration(seconds: 4),
            method: "GET",
            followRedirects: false,
            validateStatus: (s) => s!=null
        )
    );

    int now = DateTime.now().millisecondsSinceEpoch;

    var res = RouterPoolResponse();
    res.code = resp.statusCode ?? 0;
    res.location = resp.headers["Location"]?.singleOrNull ?? "";
    httpPool.setData(now, res, 0);

    LogUtils.d(_TAG, "GET http://192.168.1.1: ${resp.statusCode}");
  }

}

var _dev_images = {
  'v1': 'assets/images/devices/router_v1.png',
  'v2': 'assets/images/devices/router_v2.png',
};