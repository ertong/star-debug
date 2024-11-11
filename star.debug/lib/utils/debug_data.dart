
import 'dart:convert';
import 'dart:io';

import 'package:protobuf/protobuf.dart' as pb;
import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:protobuf/protobuf.dart';
import 'package:recase/recase.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:star_debug/utils/snapshot.dart';


const String _TAG = "DebugDataHelper";

class DebugDataHelper {

  static void _objSetVal(pb.GeneratedMessage obj, pb.FieldInfo value, dynamic val){

    if (val==null)
      return;

    bool repeated = value.isRepeated;

    int type = value.type & 0xFFFFF8;
    if (type==pb.PbFieldType.OS) { // string
      repeated
          ? obj.getField(value.tagNumber).add("$val")
          : obj.setField(value.tagNumber, "$val");
    }

    if (type==pb.PbFieldType.OB) { // bool
      repeated
          ? obj.getField(value.tagNumber).add(val)
          : obj.setField(value.tagNumber, val);
    }

    if (type==pb.PbFieldType.OF || type==pb.PbFieldType.OD) { // float/double
      double i = (val is num) ? val.toDouble() : double.parse("$val");
      repeated
          ? obj.getField(value.tagNumber).add(i)
          : obj.setField(value.tagNumber, i);
    }

    if (const [
      pb.PbFieldType.O3, pb.PbFieldType.OS3, pb.PbFieldType.OU3, pb.PbFieldType.OF3, pb.PbFieldType.OSF3,
    ].contains(type)) { // int
      int i = (val is num) ? val.toInt() : int.parse("$val");
      repeated
          ? obj.getField(value.tagNumber).add(i)
          : obj.setField(value.tagNumber, i);
    }

    if (const [ pb.PbFieldType.O6, pb.PbFieldType.OS6, pb.PbFieldType.OU6, pb.PbFieldType.OF6, pb.PbFieldType.OSF6 ].contains(type)) { // int
      int i = (val is num) ? val.toInt() : int.parse("$val");
      repeated
          ? obj.getField(value.tagNumber).add(fixnum.Int64(i))
          : obj.setField(value.tagNumber, fixnum.Int64(i));
    }
  }

  static void jsonToProto(Map<String, dynamic> msg, pb.GeneratedMessage obj) {
    for (var e in obj.info_.byName.entries) {
      var key = e.key.camelCase;
      dynamic val;

      if (e.value.isMapField && msg.containsKey("${key}Map")) {
        val = msg["${key}Map"];
      } else if (e.value.isRepeated && msg.containsKey("${key}List")) {
        val = msg["${key}List"];
      } else {
        if (!msg.containsKey(key))
          continue;
        val = msg[key];
      }

      try {
        if (e.value.isEnum) {
          for (var eVal in e.value.enumValues!)
            if (eVal.value == val)
              obj.setField(e.value.tagNumber, eVal);
          continue;
        }

        var msg2 = obj.getField(e.value.tagNumber);
        if (msg2 is pb.GeneratedMessage) {
          msg2 = msg2.deepCopy();
          obj.setField(e.value.tagNumber, msg2);
          jsonToProto(msg[key], msg2);
          continue;
        }

        if (e.value.isMapField && msg2 is PbMap){
          if (val is! List<dynamic>)
            LogUtils.e(_TAG, "List expected for $key received ${val.runtimeType} ${val as List<dynamic>}");
          else {
            var map_info = e.value as MapFieldInfo;

            for (var item in val) {
              var tuple = item as List;
              var k = tuple[0];
              var v = tuple[1];

              if (map_info.valueCreator!=null) {
                var pv = map_info.valueCreator!();
                jsonToProto(v, pv);

                if (!msg2.containsKey(k))
                  msg2[k] = pv;
              }
              else {
                int type = map_info.valueFieldType & 0xFFFFF8;

                if (type==pb.PbFieldType.OS) { // string
                  msg2.putIfAbsent(k, () => "$v");
                }

                if (type==pb.PbFieldType.OB) { // bool
                  msg2.putIfAbsent(k, () => v as bool);
                }

                if (type==pb.PbFieldType.OF || type==pb.PbFieldType.OD) { // float/double
                  double i = (v is num) ? v.toDouble() : double.parse("$v");
                  msg2.putIfAbsent(k, () => i);
                }

                if (const [
                  pb.PbFieldType.O3, pb.PbFieldType.OS3, pb.PbFieldType.OU3, pb.PbFieldType.OF3, pb.PbFieldType.OSF3,
                ].contains(type)) { // int
                  int i = (v is num) ? v.toInt() : int.parse("$v");
                  msg2.putIfAbsent(k, () => i);
                }

                if (const [ pb.PbFieldType.O6, pb.PbFieldType.OS6, pb.PbFieldType.OU6, pb.PbFieldType.OF6, pb.PbFieldType.OSF6 ].contains(type)) { // int
                  int i = (v is num) ? v.toInt() : int.parse("$v");
                  msg2.putIfAbsent(k, () => i);
                }
              }
            }
          }
        }

        if (e.value.isRepeated) {
          if (val is! List<dynamic>)
            LogUtils.e(_TAG, "List expected for $key received ${val.runtimeType} ${val as List<dynamic>}");
          else {
            var msg2 = obj.getField(e.value.tagNumber) as List;
            for (var item in val) {
              int type2 = e.value.type & 0xFFFFF8;
              if (type2 == pb.PbFieldType.OM) { // message
                var msg3 = e.value.subBuilder!();
                msg2.add(msg3);
                jsonToProto(item, msg3);
                continue;
              }
              _objSetVal(obj, e.value, item);
            }
          }
          continue;
        }

        _objSetVal(obj, e.value, val);
      }
      catch(ex,s){
        LogUtils.ers(_TAG, "jsonToProto key $key val $val field ${e.value}", ex, s);
      }
    }

  }

  static dynamic protoToJson(dynamic msg){
    if (msg is fixnum.Int64)
      msg = msg.toInt();
    if (msg is fixnum.Int32)
      msg = msg.toInt();
    if (msg is pb.ProtobufEnum)
      msg = msg.value;
    if (msg is List)
      msg = [ for(var obj in msg) protoToJson(obj) ];

    if (msg is pb.GeneratedMessage) {
      Map<String, dynamic> res = {};
      for (var e in msg.info_.byName.entries) {
        var key = e.key.camelCase;
        int type = e.value.type & 0xFFFFF8;
        if (!msg.hasField(e.value.tagNumber) && type!=pb.PbFieldType.OB)
          continue;
        var val = msg.getField(e.value.tagNumber);
        val = protoToJson(val);

        if (e.value.isMapField && val is Map)
        {
          key = "${key}Map";
          val = [for (var e1 in val.entries) [e1.key, protoToJson(e1.value)]];
        }

        if (e.value.isRepeated && val is List) {
          key = "${key}List";
        }

        if (val is double && val.isNaN) {
          // val = null;
          continue;
        }

        res[key] = val;
      }
      return res;
    }

    if (msg is pb.PbMap) {
      Map<dynamic, dynamic> res = {};
      for (var e in msg.entries)
        res[e.key] = protoToJson(e.value);

      return res;
    }

    return msg;
  }

  static Map<String, dynamic> debugData(Snapshot snap) {
    Map<String, dynamic> res = {};
    int nowS = DateTime.now().millisecondsSinceEpoch ~/ 1000;

    res["app"] = {
      "app": {
        "version": "star-debug-${R.versionName}",
        "timestamp": nowS,
      },
      "device":{
        "os": Platform.operatingSystem
      }
    };

    {
      var dish = snap.dishGetStatus;
      if (dish == null) {
        res["dish"] = {"reachable": false, "service": {"isCloud":false}, "timestamp": nowS};
      } else {
        Map<String, dynamic> features = {};

        var dishApiVersion = snap.dishApiVersion;
        // if (dishApiVersion!=null) {
        //   features["stowRequested"] = dishApiVersion >= 1;
        //   features["unstow"] = dishApiVersion >= 3;
        // }
        res["dish"] = {
          "_proto": base64Encode(dish.writeToBuffer()),
          "reachable": true,
          "service": Map<String, dynamic>.from({
            "isCloud": false,
          }),
          "rawStatus": Map<String, dynamic>.from({}),
          // "features": features,
          "timestamp": nowS
        };

        if (dishApiVersion!=null) {
          // res["dish"]["service"]["apiVersion"] = dishApiVersion;
          res["dish"]["apiVersion"] = dishApiVersion;
        }

        for (var e in (protoToJson(dish) as Map<String, dynamic>).entries) {
          if (e.value == null)
            continue;
          res["dish"]["rawStatus"][e.key] = e.value;
        }
      }
    }

    {
      var router = snap.routerGetStatus;
      if (router == null) {
        res["router"] = {"reachable": false, "service": "router", "cloud":false, "features": {}, "timestamp": nowS};
      } else {
        Map<String, dynamic> features = {};

        var swVer = router.deviceInfo.softwareVersion;

        var routerApiVersion = snap.routerApiVersion;
        // if (routerApiVersion!=null) {
        //   features["speedTest"] = routerApiVersion >= 1;
        //   features["speedTestLive"] = routerApiVersion >= 2;
        //   features["wifiSpeedTest"] = routerApiVersion >= 4 || swVer.contains("2021.52") || swVer.contains("2022");
        //   features["clientHistory"] = routerApiVersion >= 4;
        // }

        res["router"] = {
          "_proto": base64Encode(router.writeToBuffer()),
          "reachable": true,
          "service": {
            "isCloud":false,
          },
          "rawStatus": {},
          // "features": features,
          "timestamp": nowS
        };

        if (routerApiVersion!=null) {
          // res["dish"]["service"]["apiVersion"] = routerApiVersion;
          res["dish"]["apiVersion"] = routerApiVersion;
        }

        for (var e in (protoToJson(router) as Map<String, dynamic>).entries) {
          if (e.value==null)
            continue;
          res["router"]["rawStatus"][e.key] = e.value;
        }
      }
    }

    return res;
  }

}