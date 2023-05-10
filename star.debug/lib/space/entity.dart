import 'dart:convert';
import 'package:star_debug/preloaded.dart';
import 'package:time_machine/time_machine.dart';

import 'common_data.dart';

var _ = R.text.t;

/* Basic class for all entities like Dishy, Router, Local device */
abstract class Entity {
  String name = "";
  bool reachable = false;
  bool cloud_access = false;
  int alertsCount = 0;
  List<EntityModule?> plugins = [];

  Entity();

  String get_module_readable_name() {
    return _(name);
  }

  bool is_reachable() {
    return reachable;
  }

  bool is_local_access() {
    return !cloud_access;
  }

  String get_access_type() {
    return cloud_access ? _('Remote access') : _('Local access');
  }

  /* This method is widely used in all modules */
  String yes_or_no(bool bool_val) {
    return bool_val ? _('Yes') : _('No');
  }

  String? get_device_image_file() {
    return null;
  }

  bool is_sx_device() {
    return false;
  }

  void get_readable_params(KVConsumer kv);

}

/* Basic class for additional data plugins */
abstract class EntityModule {
  String get_name();

  void get_data(KVConsumer kv);
}

String yes_or_no(bool bool_val) {
  return bool_val ? _('Yes') : _('No');
}

List<String> list_from_json(dynamic val) {
  List<String> res = [];
  if (val is String)
    res.add(val);
  else if (val is List)
    for (var v in val)
      res.add("$v");
  return res;
}

String capitalize(String s) {
  return "${s[0].toUpperCase()}${s.substring(1).toLowerCase()}";
}

List<String> camel_case_split(String str) {
  List<List<String>> words = [[str[0]]];

  for (int i = 1; i < str.length; i++) {
    String c = str[i];

    if (words.last.last.toLowerCase() == words.last.last && c.toUpperCase() == c) {
      words.add([c]);
    } else {
      words.last.add(c);
    }
  }

  return words.map((word) => word.join()).toList();
}

/* This module used both for Dishy and router so I moved it here */
class ModuleAlerts extends EntityModule {
  List<String> data=[];

  ModuleAlerts(Map<String, dynamic> json_object) {
    if (!json_object.containsKey(DEVICE_ALERTS_KEY)) {
      return;
    }

    Map<String, dynamic> alerts_data = json_object[DEVICE_ALERTS_KEY];

    alerts_data.forEach((key, value) {
      if (value) {
        List<String> words = camel_case_split(key);
        String good_str = [for (var w in words) capitalize(w)].join(" ");
        data.add(good_str);
      }
    });
  }

  String get_name() {
    return _('Alerts');
  }

  void get_data(KVConsumer kv) {
    if (data.isEmpty) {
      kv.kv("", _('No alerts'));
      return;
    }

    for (var s in data)
      kv.kv("", s);
  }
}

class Features extends EntityModule {
  List<String> data = [];

  static Features? of(Map<String, dynamic> json_object) {
    if (!json_object.containsKey(DEVICE_FEATURES_KEY)) {
      return null;
    }

    Map<String, dynamic> features_data = json_object[DEVICE_FEATURES_KEY];

    var res = Features();

    features_data.forEach((key, value) {
      if (value) {
        List<String> words = camel_case_split(key);
        res.data.add([for (var w in words) capitalize(w)].join(" "));
      }
    });

    return res;
  }

  String get_name() {
    return _('Features');
  }

  void get_data(KVConsumer kv) {
    if (data.isEmpty) {
      kv.kv("", _('No features'));
      return;
    }

    for (var s in data)
      kv.kv("", s);
  }

}


abstract class KVConsumer {
  void kv(String k, dynamic v) {
    if (v is DateTime)
      v = Instant.dateTime(v).inLocalZone().toString("yyyy-MM-dd HH:mm:ss 'GMT'o<g>");
    if (v is List<String>)
      v = v.join("\n");
    kvs(k, "$v");
  }

  void kvs(String k, String v);

  void spacer();
}