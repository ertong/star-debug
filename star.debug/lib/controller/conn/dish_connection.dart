import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:star_debug/controller/conn/connection.dart';
import 'package:star_debug/grpc/starlink/starlink.pbgrpc.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:star_debug/utils/starlink_addresses.dart';

import 'grpc_connection.dart';

export 'package:star_debug/utils/starlink_addresses.dart' show kDefaultDishIp;

class DishConnection extends GrpcConnection {

  PooledRequest<DishGetStatusResponse> dishGetStatus = PooledRequest(2000);
  PooledRequest<DishGetHistoryResponse> dishGetHistory = PooledRequest(2000);
  PooledRequest<DishGetObstructionMapResponse> dishGetObstructionMap = PooledRequest(30000);
  StreamController<ToDevice>? _obstructionMapStream;
  String? _dishId;

  PooledRequest<GetLocationResponse> dishGetLocationGPS = PooledRequest(2000);
  PooledRequest<GetLocationResponse> dishGetLocationStarlink = PooledRequest(2000);

  DishConnection({required super.notifyStream}):super(
    host: normalizeIpv4Override(R.prefs.data.dishIp, kDefaultDishIp) ?? kDefaultDishIp,
    port: 9200,
  ) {
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
    if (identical(_obstructionMapStream, reqStream) && dishGetObstructionMap.needSend(now)) {
      _requestObstructionMap(now);
    }
    if (dishGetHistory.needSend(now)) {
      reqStream.add(ToDevice(request: Request(
          getHistory: GetHistoryRequest()
      )));
      dishGetHistory.sentTime = now;
    }
  }

  void _requestObstructionMap(int now) {
    reqStream.add(ToDevice(request: Request(
        dishGetObstructionMap: DishGetObstructionMapRequest()
    )));
    dishGetObstructionMap.sentTime = now;
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
        // LogUtils.d(TAG, "Received response: ${respJson.keys}");
      }

      if (resp.hasDishGetStatus()) {
        final dishId = resp.dishGetStatus.deviceInfo.id;
        final dishChanged = dishId.isNotEmpty && _dishId != null && dishId != _dishId;
        if (dishChanged) {
          dishGetObstructionMap.data = null;
          dishGetObstructionMap.receivedTime = 0;
          dishGetObstructionMap.apiVersion = 0;
        }
        // Missing IDs must not erase the last known device identity.
        if (dishId.isNotEmpty) _dishId = dishId;
        dishGetStatus.setData(now, resp.dishGetStatus, resp.apiVersion.toInt());
        // A successful status establishes readiness for this stream. Refresh
        // immediately after a stream or dish change, regardless of poll age.
        if (dishChanged || !identical(_obstructionMapStream, reqStream)) {
          _obstructionMapStream = reqStream;
          _requestObstructionMap(now);
        }
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
      if (resp.hasDishGetObstructionMap()) {
        dishGetObstructionMap.setData(now, resp.dishGetObstructionMap, resp.apiVersion.toInt());
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
  'rev4_proto3': 'assets/images/devices/dishy_v4.png',
  'rev4_proto4': 'assets/images/devices/dishy_v4.png',
  'rev4_prod1': 'assets/images/devices/dishy_v4.png',
  'mini1_proto0': 'assets/images/devices/dishy_unknown.png',
  'unknown': 'assets/images/devices/dishy_unknown.png',
};