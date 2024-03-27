
import 'package:flutter/widgets.dart';
import 'package:time_machine/time_machine.dart';

abstract class KVConsumer {
  void header(String name, {bool isAlert = false, List<Widget> more=const []}) {}

  void kv(String k, dynamic v, {bool? ok, String? hint}) {
    if (v is DateTime)
      v = Instant.dateTime(v).inLocalZone().toString("yyyy-MM-dd HH:mm:ss 'GMT'o<g>");
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