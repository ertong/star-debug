import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:star_debug/controller/conn/connection.dart';
import 'package:star_debug/grpc/starlink/starlink.pbgrpc.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:star_debug/utils/wait_notify.dart';
import 'package:connectivity_plus/connectivity_plus.dart';


abstract class GrpcConnection extends BaseConnection {
  String TAG = "GrpcConnection";

  String host;
  int port;

  WaitNotify waitNotify = WaitNotify();

  ClientChannel? channel;
  DeviceClient? stub;
  StreamSubscription? subsChannel;
  StreamSubscription? subsStream;
  StreamSubscription? subsConnectivity;
  StreamController notifyStream;

  bool isClosed = false;

  ConnectionState connState = ConnectionState.idle;
  String? lastChannelError;
  String? lastStreamError;

  StreamController<ToDevice> reqStream = StreamController();

  int statusReceivedTime = 0;

  GrpcConnection({required this.notifyStream, required this.host, required this.port}){
    LogUtils.d(TAG, "New connection: $this");
    subsConnectivity = Connectivity().onConnectivityChanged.listen((event) {
      LogUtils.d(TAG, "Connectivity change: ${event}");
      channel?.shutdown();
      channel = null;
      waitNotify.notifyAll();
    });
    unawaited(run());
  }

  Future run() async {
    while (true) {
      try {
        if (isClosed) {
          subsConnectivity?.cancel();
          _shutdown();
          return;
        }

        await tick();

        await waitNotify.waitOrTimeout(1000);
      }
      catch (e, s) {
        LogUtils.ers(TAG, "", e, s);
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

    statusReceivedTime = 0;

    LogUtils.d(TAG, "Connection is shutdown: $this");
  }

  @override
  void close(){
    isClosed = true;
  }

  bool isReady(){
    int now = DateTime.now().millisecondsSinceEpoch;
    return subsChannel!=null && subsStream!=null && now-statusReceivedTime<3500;
  }

  int timeLastChannel = 0;
  int timeConnectingStart = 0;

  Future tick() async {
    int now = DateTime.now().millisecondsSinceEpoch;

    if (channel!=null && connState==ConnectionState.connecting && now-timeConnectingStart>5000){
      LogUtils.d(TAG, "Connecting for too long");
      channel?.shutdown();
      channel = null;
    }

    if (channel!=null
        && (connState==ConnectionState.idle || now-statusReceivedTime>5000)
        && (now-timeLastChannel>9000)
    ) {
        LogUtils.d(TAG, "No messages for too long");
        channel?.shutdown();
        channel = null;
    }

    if (channel==null) {
      _shutdown();
      connState=ConnectionState.idle;
      timeConnectingStart=0;

      channel = ClientChannel(
        host, port: port,
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
          LogUtils.d(TAG, "CONN: $event");
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
          LogUtils.ers(TAG, "Channel error", e, s);
          subsChannel?.cancel();
          subsChannel = null;
          channel = null;
          lastChannelError = "$e";
          connState = ConnectionState.idle;
          notify();
        },
        onDone: (){
          LogUtils.d(TAG, "Channel done");
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
      LogUtils.d(TAG, "Open new stream");
      subsStream?.cancel();
      reqStream = StreamController();
      ResponseStream<FromDevice> stream = stub!.stream(reqStream.stream);
      subsStream = stream.listen(
            (FromDevice msg) {
          unawaited(onReceived(msg));
          lastStreamError = null;
        },
        onError: (e, s){
          LogUtils.ers(TAG, "Stream error", e, s);
          subsStream?.cancel();
          lastStreamError = "$e";
          subsStream = null;
          notify();
        },
        onDone: (){
          LogUtils.d(TAG, "Stream done");
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

  }

  Future onReceived(FromDevice msg) async {

  }
}


