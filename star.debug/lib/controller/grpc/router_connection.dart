import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:star_debug/grpc/starlink/starlink.pbgrpc.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:star_debug/utils/wait_notify.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import 'grpc_connection.dart';

class RouterConnection extends GrpcConnection {

  PooledRequest<WifiGetConfigResponse> wifiGetConfig = PooledRequest(2000);

  RouterConnection({required super.notifyStream}):super(host: '192.168.1.1', port: 9000,) {
    TAG = "RouterConnection";
  }

  @override
  Future tickConnected(ClientChannel channel, DeviceClient stub) async {
    int now = DateTime.now().millisecondsSinceEpoch;
    if (wifiGetConfig.needSend(now)) {
      reqStream.add(ToDevice(request: Request(
          wifiGetConfig: WifiGetConfigRequest()
      )));
      wifiGetConfig.sentTime = now;
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

      if (resp.hasWifiGetConfig()) {
        wifiGetConfig.setData(now, resp.wifiGetConfig);
        statusReceivedTime = now;
      }
    }

    notify();
  }
}
