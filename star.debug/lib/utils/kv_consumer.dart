
import 'package:flutter/widgets.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:time_machine/time_machine.dart';

abstract class KVConsumer {
  void header(String name, {bool isAlert = false, List<Widget> more=const []}) {}

  void kv(String k, dynamic v, {bool? ok, String? hint, bool hide = false}) {
    if (hide)
      v = "***";

    if (v is DateTime){
      try {
        v = Instant.dateTime(v).inLocalZone().toString("yyyy-MM-dd HH:mm:ss 'GMT'o<g>");
      } catch (e,s) {
        LogUtils.ers("KVConsumer", "Wrong ts: $v", e, s);
        v = "$v";
      }
    }
    if (v is List<String>)
      v = v.join("\n");
    kvs(k, "$v", ok: ok, hint: hint);
  }

  void kvs(String k, String v, {bool? ok, String? hint}) {}

  void spacer() {}
}

class KVConsumerCounter extends KVConsumer {
  int ok = 0;
  int notOk = 0;

  @override
  void kvs(String k, String v, {bool? ok, String? hint}){
    if (ok==true)
      this.ok+=1;
    if (ok==false)
      this.notOk+=1;
  }
}