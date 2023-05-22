import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:star_debug/controller/grpc/dish_connection.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:star_debug/utils/wait_notify.dart';

import 'grpc/grpc_connection.dart';
import 'grpc/router_connection.dart';

const String _TAG = "GrpcController";

class GrpcController {

  int timePaused = 0;
  bool isRunning = false;
  WaitNotify waitNotify = WaitNotify();

  DishConnection? get dish => dishHolder.conn;
  RouterConnection? get router => routerHolder.conn;

  late ConnectionHolder<DishConnection> dishHolder;
  late ConnectionHolder<RouterConnection> routerHolder;

  Future init() async {
    dishHolder = ConnectionHolder((notifyStream)=>DishConnection(notifyStream: notifyStream),() {
      waitNotify.notifyAll();
      if (!isRunning)
        unawaited(run());
    });

    routerHolder = ConnectionHolder((notifyStream)=>RouterConnection(notifyStream: notifyStream),() {
      waitNotify.notifyAll();
      if (!isRunning)
        unawaited(run());
    });

    unawaited(run());
  }

  AppLifecycleState _appState = AppLifecycleState.resumed;
  void processAppState(AppLifecycleState state){
    if (_appState==AppLifecycleState.resumed && state!=AppLifecycleState.resumed){
      timePaused = DateTime.now().millisecondsSinceEpoch;
    }
    _appState = state;
    if (_appState==AppLifecycleState.resumed) {
      timePaused = 0;
      waitNotify.notifyAll();
    }
  }

  Future run() async{
    isRunning = true;
    try {
      while (true) {
        try {
          dishHolder.tick(timePaused);
          routerHolder.tick(timePaused);

          if (dishHolder.isEmpty() && routerHolder.isEmpty())
            return;

          await waitNotify.waitOrTimeout(1000);
        }
        catch (e, s) {
          LogUtils.ers(_TAG, "", e, s);
          await Future.delayed(Duration(seconds: 1));
        }
      }
    } finally {
      isRunning = false;
    }
  }
}

class ConnectionHolder<T extends GrpcConnection> {

  final StreamController _streamController = StreamController.broadcast();
  Stream get stream => _streamController.stream;

  int listened = 0;
  int timeListenedZero = 0;
  bool isRunning = false;

  T Function(StreamController notifyStream) builder;

  T? conn;

  ConnectionHolder(this.builder, void Function() onNewListen){
    _streamController.onListen = (){
      ++listened;
      LogUtils.d(_TAG, "add listened: $listened");
      onNewListen();
    };

    _streamController.onCancel = (){
      --listened;
      LogUtils.d(_TAG, "remove listened: $listened");
      timeListenedZero = DateTime.now().millisecondsSinceEpoch;
    };
  }

  void tick(int timePaused){
    if (listened > 0 && conn == null && timePaused==0) {
      conn = builder(_streamController);
    }

    int now = DateTime.now().millisecondsSinceEpoch;
    if (listened == 0 && now - timeListenedZero > 5000) {
      conn?.close();
      conn = null;
    }

    if (timePaused>0 && now-timePaused>5000) {
      conn?.close();
      conn = null;
    }
  }

  bool isEmpty(){
    return conn == null && listened == 0;
  }

}