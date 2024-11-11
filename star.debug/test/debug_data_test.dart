// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/space/space_parser.dart';
import 'package:star_debug/utils/debug_data.dart';
import 'package:fixnum/fixnum.dart' as fixnum;


Function() test_debug_data(String fn, Function(SpaceParser) validate){
  return () async {
    final file = File(fn);
    final json = jsonDecode(await file.readAsString());
    SpaceParser parser = SpaceParser.ofJson(json);
    validate(parser);

    Map<String, dynamic> debugData = DebugDataHelper.debugData(parser.toSnapshot());

    {
      var parser2 = SpaceParser.ofJson(debugData);
      validate(parser2);
    }
    debugData["dish"].remove("_proto");
    debugData["router"].remove("_proto");
    {
      var parser2 = SpaceParser.ofJson(debugData);
      validate(parser2);
    }
  };
}

void main() {
  R = Preloaded();
  R.versionName="test-ver";

  test('debug_data_with_router.json',test_debug_data('test_resources/debug_data_with_router.json', (SpaceParser parser){
    expect(parser.dishGetStatus!.deviceInfo.generationNumber, fixnum.Int64(1674693297));
    expect(parser.dishGetStatus!.deviceInfo.isHitl, false);
    expect(parser.dishGetStatus!.deviceInfo.hardwareVersion, "rev3_proto2");
    expect(parser.dishGetStatus!.uplinkThroughputBps, closeTo(32061.259765625, 1e-3));
    expect(parser.routerGetStatus!.deviceInfo.boot.countByReason[1], 1);
    expect(parser.routerGetStatus!.deviceInfo.boot.countByReason[2], 11);
    expect(parser.routerGetStatus!.config.version, 7);
    expect(parser.routerGetStatus!.isAviationConformed, false);
    expect(parser.routerGetStatus!.config.networks[0].ipv4, "192.168.1.1");
    expect(parser.routerGetStatus!.config.networks[0].basicServiceSets[0].bssid, "74:24:00:00:A0:84");
  }));


  test('debug_data_v2.json',test_debug_data('test_resources/debug_data_v2.json', (SpaceParser parser){
    // expect(parser.dishApi, 8);
    // expect(parser.routerApi, 34);
    expect(parser.dishGetStatus!.deviceInfo.generationNumber, fixnum.Int64(1684883829));
    expect(parser.dishGetStatus!.deviceInfo.isHitl, false);
    expect(parser.dishGetStatus!.deviceInfo.hardwareVersion, "rev3_proto2");
    expect(parser.dishGetStatus!.uplinkThroughputBps, closeTo(14730.3955078125, 1e-3));
    expect(parser.routerGetStatus!.deviceInfo.boot.countByReason[1], 89);
    expect(parser.routerGetStatus!.deviceInfo.boot.countByReason[2], 4);
    expect(parser.routerGetStatus!.config.version, 0);
    expect(parser.routerGetStatus!.isAviationConformed, false);
    expect(parser.routerGetStatus!.config.networks[0].ipv4, "192.168.1.1/24");
    expect(parser.routerGetStatus!.config.networks[0].basicServiceSets[0].bssid, "74:24:00:00:00:00");
  }));


  test('debug_data_2024.36.0.json',test_debug_data('test_resources/debug_data_2024.36.0.json', (SpaceParser parser){
    expect(parser.dishApi, 28);
    // expect(parser.routerApi, 34);
    expect(parser.dishGetStatus!.deviceInfo.generationNumber, fixnum.Int64(1730873744));
    expect(parser.dishGetStatus!.deviceInfo.isHitl, false);
    expect(parser.dishGetStatus!.deviceInfo.hardwareVersion, "rev3_proto2");
    expect(parser.dishGetStatus!.uplinkThroughputBps, closeTo(17968.3984375, 1e-3));
  }));

  test('debug_data_star-debug-1.2.69a.json',test_debug_data('test_resources/debug_data_star-debug-1.2.69a.json', (SpaceParser parser){
    expect(parser.dishApi, null);
    expect(parser.routerApi, null);
    expect(parser.dishGetStatus!.deviceInfo.generationNumber, fixnum.Int64(1730873744));
    expect(parser.dishGetStatus!.deviceInfo.isHitl, false);
    expect(parser.dishGetStatus!.deviceInfo.hardwareVersion, "rev3_proto2");
    expect(parser.dishGetStatus!.uplinkThroughputBps, closeTo(18563.990234375, 1e-3));
    expect(parser.routerGetStatus!.deviceInfo.boot.countByReason[1], 126);
    expect(parser.routerGetStatus!.deviceInfo.boot.countByReason[2], 122);
    expect(parser.routerGetStatus!.config.countryCode, "UA");
    expect(parser.routerGetStatus!.isAviationConformed, false);
    expect(parser.routerGetStatus!.config.meshConfigs["Router-0100000000000000009C701A"]!.displayName, "Mesh 1");
    expect(parser.routerGetStatus!.config.networks[0].ipv4, "192.168.1.1/24");
  }));
}
