// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:convert';
import 'dart:developer';
import 'dart:ffi';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/grpc/starlink/starlink.pbgrpc.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/space/space_parser.dart';
import 'package:star_debug/utils/debug_data.dart';
import 'package:fixnum/fixnum.dart' as fixnum;

void check_debug_data_with_router(SpaceParser parser){
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
}

void check_debug_data_v2(SpaceParser parser){
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
}

void main() {
  R = Preloaded();
  R.versionName="test-ver";

  test('Counter increments smoke test', () async {
    final file = File('test_resources/debug_data_with_router.json');
    final json = jsonDecode(await file.readAsString());
    SpaceParser parser = SpaceParser.ofJson(json);
    check_debug_data_with_router(parser);

    Map<String, dynamic> debugData = DebugDataHelper.debugData(parser.dishGetStatus, 7, parser.routerGetStatus, 34);

    var parser2 = SpaceParser.ofJson(debugData);
    check_debug_data_with_router(parser2);
  });

  test('Counter increments smoke test', () async {
    final file = File('test_resources/debug_data_v2.json');
    final json = jsonDecode(await file.readAsString());
    SpaceParser parser = SpaceParser.ofJson(json);
    check_debug_data_v2(parser);

    Map<String, dynamic> debugData = DebugDataHelper.debugData(parser.dishGetStatus, 7, parser.routerGetStatus, 34);

    var parser2 = SpaceParser.ofJson(debugData);
    check_debug_data_v2(parser2);
  });
}
