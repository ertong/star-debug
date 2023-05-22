import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:star_debug/utils/wait_notify.dart';

import 'grpc_connection.dart';

const String _TAG = "GrpcController";

class GrpcController {

  final StreamController _streamController = StreamController.broadcast();
  Stream get stream => _streamController.stream;

  int listened = 0;
  int timeListenedZero = 0;
  int timePaused = 0;
  bool isRunning = false;
  WaitNotify waitNotify = WaitNotify();

  GrpcConnection? conn;

  Future init() async {
    _streamController.onListen = (){
      ++listened;
      LogUtils.d(_TAG, "add listened: $listened");
      waitNotify.notifyAll();
      if (!isRunning)
        unawaited(run());
    };

    _streamController.onCancel = (){
      --listened;
      LogUtils.d(_TAG, "remove listened: $listened");
      timeListenedZero = DateTime.now().millisecondsSinceEpoch;
    };

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
          if (listened > 0 && conn == null && timePaused==0) {
            conn = GrpcConnection(notifyStream: _streamController);
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

          if (conn == null && listened == 0)
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
