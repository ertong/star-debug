
import 'dart:io';

import 'package:protobuf/protobuf.dart' as pb;
import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:recase/recase.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/log_utils.dart';


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
      if (!msg.containsKey(key))
        continue;
      var val = msg[key];

      try {
        if (e.value.isEnum) {
          for (var eVal in e.value.enumValues!)
            if (eVal.value == val)
              obj.setField(e.value.tagNumber, eVal);
          continue;
        }

        var msg2 = obj.getField(e.value.tagNumber);
        if (msg2 is pb.GeneratedMessage) {
          // var msg2 = obj.getDefaultForField(e.value.tagNumber);
          msg2 = msg2.deepCopy();
          obj.setField(e.value.tagNumber, msg2);
          jsonToProto(msg[key], msg2);
          continue;
        }

        if (e.value.isRepeated) {
          if (val is! List<dynamic>)
            LogUtils.e(_TAG, "List expected for $key received ${val.runtimeType} ${val as List<dynamic>} AAA");
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
        var val = msg.getField(e.value.tagNumber);
        val = protoToJson(val);

        if (["countByReason", "countByReasonDelta"].contains(key) && val is Map) {
          key = "${key}Map";
          val = [for (var e1 in val.entries) [e1.key, e1.value]];
        }

        if (["networks", "basicServiceSets", "nameservers"].contains(key) && val is List) {
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

    return msg;
  }

  static Map<String, dynamic> debugData(DishGetStatusResponse? dish, int? dishApiVersion, WifiGetStatusResponse? router, int? routerApiVersion) {
    Map<String, dynamic> res = {};
    int nowS = DateTime.now().millisecondsSinceEpoch ~/ 1000;

    res["device"] = {
      "app": {
        "version": "star-debug-${R.versionName}",
        "timestamp": nowS,
      },
      "platform":{
        "os": Platform.operatingSystem
      }
    };

    {
      if (dish == null) {
        res["dish"] = {"reachable": false, "service": "dish", "cloud":false, "features": {}, "timestamp": nowS};
      } else {
        Map<String, dynamic> features = {};
        if (dishApiVersion!=null) {
          features["stowRequested"] = dishApiVersion >= 1;
          features["unstow"] = dishApiVersion >= 3;
        }
        res["dish"] = {"reachable": true, "service": "dish", "features": features, "timestamp": nowS};
        for (var e in (protoToJson(dish) as Map<String, dynamic>).entries)
          res["dish"][e.key] = e.value;
      }
    }

    {
      if (router == null) {
        res["router"] = {"reachable": false, "service": "router", "cloud":false, "features": {}, "timestamp": nowS};
      } else {
        Map<String, dynamic> features = {};

        var swVer = router.deviceInfo.softwareVersion;

        if (routerApiVersion!=null) {
          features["speedTest"] = routerApiVersion >= 1;
          features["speedTestLive"] = routerApiVersion >= 2;
          features["wifiSpeedTest"] = routerApiVersion >= 4 || swVer.contains("2021.52") || swVer.contains("2022");
          features["clientHistory"] = routerApiVersion >= 4;
        }

        res["router"] = {"reachable": true, "service": "router", "features": features, "timestamp": nowS};
        for (var e in (protoToJson(router) as Map<String, dynamic>).entries) {
          if (e.value==null)
            continue;
          if (e.key == "config") {
            res["wifiConfig"] = e.value;
          } else
            res["router"][e.key] = e.value;
        }
      }
    }

    return res;
  }

}