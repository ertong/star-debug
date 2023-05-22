import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:star_debug/grpc/starlink/starlink.pbgrpc.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:star_debug/utils/wait_notify.dart';

const String _TAG = "GrpcConnection";

class GrpcConnection {

  WaitNotify waitNotify = WaitNotify();

  ClientChannel? channel;
  DeviceClient? stub;
  StreamSubscription? subsChannel;
  StreamSubscription? subsStream;
  StreamController notifyStream;

  bool isClosed = false;

  ConnectionState connState = ConnectionState.idle;
  String? lastChannelError;
  String? lastStreamError;

  StreamController<ToDevice> reqStream = StreamController();

  PooledRequest<DishGetStatusResponse> dishGetStatus = PooledRequest(2000);

  GrpcConnection({required this.notifyStream}){
    LogUtils.d(_TAG, "New connection: $this");
    unawaited(run());
  }

  Future run() async {
    while (true) {
      try {
        if (isClosed) {
          _shutdown();
          return;
        }

        await tick();

        await waitNotify.waitOrTimeout(1000);
      }
      catch (e, s) {
        LogUtils.ers(_TAG, "", e, s);
        await Future.delayed(Duration(seconds: 1));
      }
    }
  }

  void notify(){
    notifyStream.add(null);
  }

  void _shutdown(){
    subsStream?.cancel();
    subsStream = null;

    subsChannel?.cancel();
    subsChannel = null;

    channel?.shutdown();
    channel = null;

    dishGetStatus.receivedTime = 0;
    dishGetStatus.sentTime = 0;

    LogUtils.d(_TAG, "Connection is shutdown: $this");
  }

  void close(){
    isClosed = true;
  }

  bool isReady(){
    int now = DateTime.now().millisecondsSinceEpoch;
    return subsChannel!=null && subsStream!=null && now-dishGetStatus.receivedTime<3500;
  }

  int timeLastChannel = 0;
  int timeConnectingStart = 0;

  Future tick() async {
    int now = DateTime.now().millisecondsSinceEpoch;

    if (channel!=null && connState==ConnectionState.connecting && now-timeConnectingStart>5000){
      LogUtils.d(_TAG, "Connecting for too long");
      channel?.shutdown();
      channel = null;
    }

    if (channel!=null
        && (connState==ConnectionState.idle || now-dishGetStatus.receivedTime>5000)
        && (now-timeLastChannel>9000)
    ) {
        LogUtils.d(_TAG, "No messages for too long");
        channel?.shutdown();
        channel = null;
    }


    if (channel==null) {
      _shutdown();
      channel = ClientChannel(
        // 'dev.z.min.org.ua', port: 20192,
        '192.168.100.1', port: 9200,
        options: ChannelOptions(
          credentials: ChannelCredentials.insecure(),
          codecRegistry: CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
          connectionTimeout: Duration(seconds: 5),
          idleTimeout: Duration(seconds: 2),
          backoffStrategy: (d)=>const Duration(seconds: 3)
        ),
      );
      timeLastChannel = now;
      subsChannel = channel!.onConnectionStateChanged.listen(
        (ConnectionState event) {
          LogUtils.d(_TAG, "CONN: $event");
          connState = event;
          if (connState==ConnectionState.ready)
            lastChannelError = null;

          if (connState==ConnectionState.connecting) {
            if (timeConnectingStart == 0)
              timeConnectingStart = DateTime.now().millisecondsSinceEpoch;
          } else
            timeConnectingStart = 0;

          notify();
        },
        onError: (e, s){
          LogUtils.ers(_TAG, "Channel error", e, s);
          subsChannel?.cancel();
          subsChannel = null;
          channel = null;
          lastChannelError = "$e";
          connState = ConnectionState.idle;
          notify();
        },
        onDone: (){
          LogUtils.d(_TAG, "Channel done");
          subsChannel?.cancel();
          subsChannel = null;
          channel = null;
          connState = ConnectionState.idle;
          lastChannelError = "Channel is closed";
          notify();
        },
        cancelOnError: true,
      );

      stub = DeviceClient(channel!);
    }

    if (subsStream==null){
      LogUtils.d(_TAG, "Open new stream");
      subsStream?.cancel();
      reqStream = StreamController();
      ResponseStream<FromDevice> stream = stub!.stream(reqStream.stream);
      subsStream = stream.listen(
            (FromDevice msg) {
          unawaited(onReceived(msg));
          lastStreamError = null;
        },
        onError: (e, s){
          LogUtils.ers(_TAG, "Stream error", e, s);
          subsStream?.cancel();
          lastStreamError = "$e";
          subsStream = null;
          notify();
        },
        onDone: (){
          LogUtils.d(_TAG, "Stream done");
          subsStream?.cancel();
          subsStream = null;
          lastStreamError = "Stream is done";
          notify();
        },
        cancelOnError: true,
      );
    }

    await tickConnected(channel!, stub!);
  }

  Future tickConnected(ClientChannel channel, DeviceClient stub) async {
    int now = DateTime.now().millisecondsSinceEpoch;
    if (dishGetStatus.needSend(now)) {
      reqStream.add(ToDevice(request: Request(
        getStatus: GetStatusRequest()
      )));
      dishGetStatus.sentTime = now;
    }
  }

  Future onReceived(FromDevice msg) async {
    int now = DateTime.now().millisecondsSinceEpoch;

    if (msg.hasEvent())
      LogUtils.d(_TAG, "Received event: ${msg.event}");

    if (msg.hasHealthCheck())
      LogUtils.d(_TAG, "Received health check: ${msg.healthCheck}");

    if (msg.hasResponse()) {
      var resp = msg.response;
      var respJson = resp.toProto3Json();
      if (respJson is Map<String, dynamic>) {
        LogUtils.d(_TAG, "Received response: ${respJson.keys}");
      }

      if (resp.hasDishGetStatus())
        dishGetStatus.setData(now, resp.dishGetStatus);
    }

    notify();
  }
}

class PooledRequest <T> {
  int poolInterval;

  T? data;
  int receivedTime = 0;
  int sentTime = 0;

  PooledRequest(this.poolInterval);

  bool needSend(int now) {
    return now-sentTime > poolInterval;
  }

  void setData(int now, T data) {
    this.receivedTime = now;
    this.data = data;
  }
}
