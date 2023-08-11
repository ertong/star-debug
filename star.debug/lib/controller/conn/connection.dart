
import 'dart:async';

import 'package:star_debug/utils/log_utils.dart';

const String _TAG = "ConnectionHolder";

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

class PooledRequest <T> {
  int poolInterval;

  int apiVersion = 0;
  T? data;
  int receivedTime = 0;
  int sentTime = 0;

  PooledRequest(this.poolInterval);

  bool needSend(int now) {
    return now-sentTime > poolInterval;
  }

  T? validData(){
    if (DateTime.now().millisecondsSinceEpoch-receivedTime>5000)
      return null;
    return data;
  }

  void setData(int now, T data, int apiVersion) {
    this.receivedTime = now;
    this.apiVersion = apiVersion;
    this.data = data;
  }
}