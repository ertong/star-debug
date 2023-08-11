import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:star_debug/controller/conn/connection.dart';
import 'package:star_debug/grpc/starlink/starlink.pbgrpc.dart';
import 'package:star_debug/utils/log_utils.dart';

import 'grpc_connection.dart';

class DishConnection extends GrpcConnection {

  PooledRequest<DishGetStatusResponse> dishGetStatus = PooledRequest(2000);
  PooledRequest<DishGetHistoryResponse> dishGetHistory = PooledRequest(10000);

  PooledRequest<GetLocationResponse> dishGetLocationGPS = PooledRequest(2000);
  PooledRequest<GetLocationResponse> dishGetLocationStarlink = PooledRequest(2000);

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
        if (resp.dishGetStatus.config.locationRequestMode == DishConfig_LocationRequestMode.LOCAL) {
          reqStream.add(ToDevice(request: Request(
              getLocation: GetLocationRequest(source: PositionSource.GPS)
          )));
          reqStream.add(ToDevice(request: Request(
              getLocation: GetLocationRequest(source: PositionSource.STARLINK)
          )));
        }
        statusReceivedTime = now;
      }
      if (resp.hasGetLocation()){
        if (resp.getLocation.source == PositionSource.STARLINK)
          dishGetLocationStarlink.setData(now, resp.getLocation, resp.apiVersion.toInt());
        if (resp.getLocation.source == PositionSource.GPS)
          dishGetLocationGPS.setData(now, resp.getLocation, resp.apiVersion.toInt());
      }
      if (resp.hasDishGetHistory()) {
        dishGetHistory.setData(now, resp.dishGetHistory, resp.apiVersion.toInt());
      }
    }

    notify();
  }

  String getImage() {
    String res = _dev_images["hp_flat"]!;

    var data = dishGetStatus.data;
    if (data != null && data.hasDeviceInfo() && data.deviceInfo.hasHardwareVersion()) {
      var hw = data.deviceInfo.hardwareVersion;

      if (data.hasHasActuators()) {
        var hasActuators = data.hasActuators;
        if ((hw == 'hp1_proto0' || hw == 'hp1_proto1') && hasActuators != HasActuators.HAS_ACTUATORS_YES)
          res = _dev_images['hp_flat'] ?? res;
      }
      res = _dev_images[hw] ?? res;
    }

    return res;
  }

}

var _dev_images = {
  'rev1_pre_production': 'assets/images/devices/dishy_v1.png',
  'rev1_production': 'assets/images/devices/dishy_v1.png',
  'rev1_proto3': 'assets/images/devices/dishy_v1.png',
  'rev2_proto1': 'assets/images/devices/dishy_v2.png',
  'rev2_proto2': 'assets/images/devices/dishy_v2.png',
  'rev2_proto3': 'assets/images/devices/dishy_v2.png',
  'rev2_proto4': 'assets/images/devices/dishy_v2.png',
  'rev3_proto0': 'assets/images/devices/dishy_v3.png',
  'rev3_proto1': 'assets/images/devices/dishy_v3.png',
  'rev3_proto2': 'assets/images/devices/dishy_v3.png',
  'hp1_proto0': 'assets/images/devices/dishy_hp.png',
  'hp1_proto1': 'assets/images/devices/dishy_hp.png',
  'hp_flat': 'assets/images/devices/dishy_hp_flat.png',
  'rev4_proto1': 'assets/images/devices/dishy_unknown.png',
  'rev_never_gonna_give_you_up': 'assets/images/devices/entity_astl.png',
  'unknown': 'assets/images/devices/dishy_unknown.png',
};