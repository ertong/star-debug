import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/grpc/starlink/network.pbenum.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/grpc/starlink/unlock.pb.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/space/space_parser.dart';
import 'package:star_debug/utils/debug_data.dart';

void _validateStatus(DishGetStatusResponse dish, WifiGetStatusResponse router) {
  expect(dish.signalQuality, closeTo(0.75, 1e-6));
  expect(dish.disablementCode, UtDisablementCode.OUTSIDE_HOME_REGION);
  expect(dish.rebootReason, RebootReason.REBOOT_REASON_BATTERY_AUTO_OFF);
  expect(dish.alerts.installPending, isTrue);
  expect(router.publicIpv4, '203.0.113.42');
  expect(router.dishDisablementCode, UtDisablementCode.OUTSIDE_HOME_REGION);
  expect(router.clients.single.usingMlo, isTrue);
  expect(router.clients.single.links, hasLength(2));
  expect(router.clients.single.links[0].snr, closeTo(31.5, 1e-6));
  expect(router.clients.single.links[1].snr, closeTo(28.25, 1e-6));
}

void main() {
  setUp(() {
    R = Preloaded();
    R.versionName = 'test-ver';
  });

  test('new status fields survive binary and JSON debug-data exports', () {
    var parser = SpaceParser.ofJsonStr(
      File('test_resources/debug_data_schema_update.json').readAsStringSync(),
    );
    _validateStatus(parser.dishGetStatus!, parser.routerGetStatus!);

    var exported = DebugDataHelper.debugData(parser.toSnapshot());
    // A supported flat envelope with only deviceInfo forces the binary path:
    // the new status fields are present only inside the exported protobuf.
    var binaryParser = SpaceParser.ofJson({
      'dish': {'deviceInfo': {}, '_proto': exported['dish']['_proto']},
      'router': {'deviceInfo': {}, '_proto': exported['router']['_proto']},
    });
    _validateStatus(binaryParser.dishGetStatus!, binaryParser.routerGetStatus!);

    exported['dish'].remove('_proto');
    exported['router'].remove('_proto');
    var jsonParser = SpaceParser.ofJsonStr(jsonEncode(exported));
    _validateStatus(jsonParser.dishGetStatus!, jsonParser.routerGetStatus!);
  });

  test('new dish fields decode with the dump wire tags', () {
    // signal_quality: float, tag 1057; disablement_code: enum, tag 1024;
    // reboot_reason: enum, tag 1032.
    var status = DishGetStatusResponse.fromBuffer([
      0x8d,
      0x42,
      0x00,
      0x00,
      0x40,
      0x3f,
      0x80,
      0x40,
      0x11,
      0xc0,
      0x40,
      0x13,
    ]);
    expect(status.signalQuality, closeTo(0.75, 1e-6));
    expect(status.disablementCode, UtDisablementCode.OUTSIDE_HOME_REGION);
    expect(status.rebootReason, RebootReason.REBOOT_REASON_BATTERY_AUTO_OFF);

    var diagnostics = DishGetDiagnosticsResponse.fromBuffer([0x30, 0x11]);
    expect(
      diagnostics.disablementCode,
      DishGetDiagnosticsResponse_DisablementCode.OUTSIDE_HOME_REGION,
    );
  });

  test('legacy roaming alert bytes remain unknown and survive re-encoding', () {
    // Removed roaming flag (tag 7) followed by install_pending (tag 8).
    var alerts = DishAlerts.fromBuffer([0x38, 0x01, 0x40, 0x01]);
    expect(alerts.info_.byName, isNot(contains('roaming')));
    expect(alerts.installPending, isTrue);
    expect(alerts.unknownFields.hasField(7), isTrue);
    var restored = DishAlerts.fromBuffer(alerts.writeToBuffer());
    expect(restored.unknownFields.getField(7)!.varints.single.toInt(), 1);
  });

  test('unlock envelopes decode into the correct message package', () {
    // start_unlock: empty message, tag 5000.
    var request = Request.fromBuffer([0xc2, 0xb8, 0x02, 0x00]);
    expect(request.whichRequest(), Request_Request.startUnlock);
    expect(request.startUnlock, isA<StartUnlockRequest>());
    expect(
      request.startUnlock.info_.qualifiedMessageName,
      'SpaceX.API.Device.Services.Unlock.StartUnlockRequest',
    );

    // finish_unlock: status 1, tag 5001.
    var response = Response.fromBuffer([0xca, 0xb8, 0x02, 0x02, 0x08, 0x01]);
    expect(response.whichResponse(), Response_Response.finishUnlock);
    expect(response.finishUnlock.status, 1);
    expect(
      response.finishUnlock.info_.qualifiedMessageName,
      'SpaceX.API.Device.Services.Unlock.FinishUnlockResponse',
    );
  });
}
