import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/grpc/starlink/network.pbenum.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/grpc/starlink/telemetron.pb.dart';
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

  test('dish power-source fields decode with the dump wire tags', () {
    // power_source_stats: tag 1059 {battery_stats: tag 2 {state_of_charge 80,
    // battery_attached true}, power_source: tag 4 usbc_and_battery};
    // battery_ut_power_off_rf_idle_active: tag 1060;
    // legacy battery_stats: tag 1054 {state_of_charge 55}, still sent by
    // firmware that predates power_source_stats.
    var status = DishGetStatusResponse.fromBuffer([
      0x9a, 0x42, 0x08, 0x12, 0x04, 0x08, 0x50, 0x20, 0x01, 0x20, 0x03, //
      0xa0, 0x42, 0x01, //
      0xf2, 0x41, 0x02, 0x08, 0x37,
    ]);
    expect(status.powerSourceStats.batteryStats.stateOfCharge, 80);
    expect(status.powerSourceStats.batteryStats.batteryAttached, isTrue);
    expect(
      status.powerSourceStats.powerSource,
      UserPowerSource_AutoEnum.usbc_and_battery,
    );
    expect(status.batteryUtPowerOffRfIdleActive, isTrue);
    expect(status.batteryStats.stateOfCharge, 55);
    expect(status.unknownFields.isEmpty, isTrue);
  });

  test('wifi channel lists decode with the dump wire tags', () {
    // channels_5ghz: tag 2 {current_channel 100, channels: tag 6
    // {dfs_nop_info: map tag 4 {52: {1500, 1800}}, acs_selected: tag 6 {36}}}.
    var channels = WifiGetChannelsResponse.fromBuffer([
      0x12, 0x14, 0x20, 0x64, 0x32, 0x10, 0x22, 0x0a, 0x08, 0x34, 0x12, //
      0x06, 0x08, 0xdc, 0x0b, 0x10, 0x88, 0x0e, 0x32, 0x02, 0x08, 0x24,
    ]);
    var radio = channels.channels5ghz;
    expect(radio.currentChannel, 100);
    expect(radio.channels.dfsNopInfo[52]!.remainingSeconds, 1500);
    expect(radio.channels.dfsNopInfo[52]!.totalSeconds, 1800);
    expect(radio.channels.hasAcsSelected(), isTrue);
    expect(radio.channels.acsSelected.value, 36);

    // wifi_get_channels request: tag 3038.
    var request = Request.fromBuffer([0xf2, 0xbd, 0x01, 0x00]);
    expect(request.whichRequest(), Request_Request.wifiGetChannels);

    // toggle_mode_status response: tag 7002 {current 2, allowed 3}.
    var response = Response.fromBuffer([
      0xd2, 0xb5, 0x03, 0x04, 0x08, 0x02, 0x10, 0x03, //
    ]);
    expect(response.whichResponse(), Response_Response.toggleModeStatus);
    expect(response.toggleModeStatus.currentNetwork, 2);
    expect(response.toggleModeStatus.allowedNetwork, 3);
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
