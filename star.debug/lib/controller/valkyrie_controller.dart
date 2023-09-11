import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/kv_widget.dart';
import 'package:star_debug/utils/log_utils.dart';

const String _TAG = "ValkyrieController";

class ValkyrieController {
  Map<String, ValkyrieRecord> cache = {};

  final dio = Dio();

  CancelToken? valkyrieCheckCancelToken;

  ValkyrieRecord? checkNow(String bssid) {
    bssid = bssid.toLowerCase();
    var record = cache[bssid];
    return record;
  }

  Stream<ValkyrieRecord> check(String bssid) {
    bssid = bssid.toLowerCase();
    var record = cache.putIfAbsent(bssid, () => ValkyrieRecord(this, bssid));
    return record.notifyStream.stream;
  }

  Widget widget(String bssid, ThemeData theme) {
    return StreamBuilder(stream: R.valkyrie.check(bssid), builder: (context, snapshot) {
      var bb = KVWidgetBuilder(context, theme);
      var is_found = snapshot.data?.device_is_found;
      if (is_found==null)
        bb.kvs(M.valkyrie.valkyrie_check, "", isLoading: true, hint: M.valkyrie.hint);
      else
        bb.kvs(M.valkyrie.valkyrie_check, is_found ? M.valkyrie.found : M.valkyrie.not_found, ok: !is_found, hint: M.valkyrie.hint);

      return Column(children: bb.widgets,);
    });
  }

}

class ValkyrieRecord {
  int receivedTime = 0;
  ValkyrieController controller;
  int listeners = 0;
  late StreamController<ValkyrieRecord> notifyStream;
  bool isRunning = false;
  String bssid;
  dynamic data;
  bool? device_is_found;
  int timeReceived=0;

  ValkyrieRecord(this.controller, this.bssid){
    notifyStream = StreamController.broadcast(onListen: (){
      listeners+=1;
      LogUtils.d(_TAG, "Listen $bssid: +1 -> $listeners");
      if (!isRunning && (device_is_found==null || DateTime.now().millisecondsSinceEpoch-timeReceived>1000*60*5)) {
        isRunning = true;
        unawaited(run());
      }
      notifyStream.add(this);
    }, onCancel: () {
      listeners-=1;
      LogUtils.d(_TAG, "Listen $bssid: -1 -> $listeners");
    });
  }

  Future<void> run() async {
    while (true) {
      if (listeners<=0)
        break;
      try {
        // this.wifiGetStatus?.data?.deviceInfo?.
        // https://bssid-check-api.valkyrie.org.ua/?bssid=B0%3AA7%3AB9%3ACB%3A7B%3A5C

        if (bssid=="")
          return;

        var resp = await controller.dio.request("https://bssid-check-api.valkyrie.org.ua/",
            queryParameters: {"bssid": bssid},
            options: Options(
                sendTimeout: Duration(seconds: 2),
                receiveTimeout: Duration(seconds: 10),
                method: "GET",
                followRedirects: false,
                validateStatus: (s) => s != null)
        );

        data = resp.data;

        device_is_found = data["device_is_found"];
        timeReceived = DateTime.now().millisecondsSinceEpoch;
        notifyStream.add(this);
        LogUtils.d(_TAG, "GET valkyrie $bssid: ${resp.statusCode}: device_is_found=${device_is_found} data=${data}");
        break;
      } catch (e, s) {
        LogUtils.ers(_TAG, "Checking $bssid", e, s);
        await Future.delayed(Duration(seconds: 5));
      }
    }
    isRunning = false;
  }
}
