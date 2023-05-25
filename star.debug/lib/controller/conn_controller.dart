import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:star_debug/controller/conn/connection.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:star_debug/utils/wait_notify.dart';

const String _TAG = "ConnController";

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
