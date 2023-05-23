import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:star_debug/utils/wait_notify.dart';

const String _TAG = "GrpcController";

class ConnController {

  int timePaused = 0;
  bool isRunning = false;
  WaitNotify waitNotify = WaitNotify();

  List<ConnectionHolder> holders = [];

  ConnectionHolder<T> newHolder<T extends BaseConnection>(T Function(StreamController notifyStream) builder) {
    var holder = ConnectionHolder(builder,() {
      waitNotify.notifyAll();
      if (!isRunning)
      unawaited(run());
    });
    holders.add(holder);
    return holder;
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
          bool empty = true;
          for (var h in holders) {
            h.tick(timePaused);
            if (!h.isEmpty())
              empty = false;
          }

          if (empty)
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

class BaseConnection {
  void close(){}
}

class ConnectionHolder<T extends BaseConnection> {

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