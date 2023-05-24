import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:star_debug/controller/conn/connection.dart';
import 'package:star_debug/grpc/starlink/starlink.pbgrpc.dart';
import 'package:star_debug/utils/log_utils.dart';

import 'package:star_debug/space/dishy_data.dart' show dev_images;
import 'grpc_connection.dart';

class DishConnection extends GrpcConnection {

  PooledRequest<DishGetStatusResponse> dishGetStatus = PooledRequest(2000);
  PooledRequest<DishGetHistoryResponse> dishGetHistory = PooledRequest(10000);

  DishConnection({required super.notifyStream}):super(host: '192.168.100.1', port: 9200,) {
    TAG = "DishConnection";
  }

  @override
  Future tickConnected(ClientChannel channel, DeviceClient stub) async {
    int now = DateTime.now().millisecondsSinceEpoch;
    if (dishGetStatus.needSend(now)) {
      reqStream.add(ToDevice(request: Request(
          getStatus: GetStatusRequest()
      )));
      dishGetStatus.sentTime = now;
    }
    if (dishGetHistory.needSend(now)) {
      reqStream.add(ToDevice(request: Request(
          getHistory: GetHistoryRequest()
      )));
      dishGetHistory.sentTime = now;
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

      if (resp.hasDishGetStatus()) {
        dishGetStatus.setData(now, resp.dishGetStatus, resp.apiVersion.toInt());
        statusReceivedTime = now;
      }
      if (resp.hasDishGetHistory()) {
        dishGetHistory.setData(now, resp.dishGetHistory, resp.apiVersion.toInt());
      }
    }

    notify();
  }

  String getImage() {
    String res = dev_images["hp_flat"]!;

    var data = dishGetStatus.data;
    if (data != null && data.hasDeviceInfo() && data.deviceInfo.hasHardwareVersion() && data.hasHasActuators()) {
      var hw = data.deviceInfo.hardwareVersion;
      var hasActuators = data.hasActuators;

      if ((hw == 'hp1_proto0' || hw == 'hp1_proto1') && hasActuators != HasActuators.HAS_ACTUATORS_YES)
          res = dev_images['hp_flat'] ?? res;

      res = dev_images[hw] ?? res;
    }

    res = res.replaceFirst("resources/", "assets/images/");
    return res;
  }

}
