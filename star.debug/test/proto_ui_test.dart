import 'package:material_ui/material_ui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/grpc/starlink/telemetron.pb.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/view/common.dart';
import 'package:star_debug/pages/view/dish.dart';
import 'package:star_debug/pages/view/router.dart';
import 'package:star_debug/utils/obstruction_map_context.dart';
import 'package:star_debug/utils/snapshot.dart';
import 'package:star_debug/utils/view_options.dart';

Widget _testPage(Widget child) {
  return MaterialApp(
    home: Scaffold(body: SingleChildScrollView(child: child)),
  );
}

void main() {
  testWidgets('dish proto additions render only when meaningful', (
    tester,
  ) async {
    var emptyStatus = DishGetStatusResponse(
      batteryStats: DishBatteryStats(),
      gpsStats: DishGpsStats(),
      userDebugModeEnabled: false,
      treatAsMetered: false,
    );

    await tester.pumpWidget(
      _testPage(
        DishWidget(
          sourceMode: MapSourceMode.stored,
          snap: Snapshot(timestamp: 1, dishGetStatus: emptyStatus),
          viewOptions: ViewOptions(),
        ),
      ),
    );

    expect(find.text(M.header.power), findsNothing);
    expect(find.text(M.header.service), findsNothing);
    expect(
      find.text('${M.grpc.DishGpsStats.pnt_filter_convergence_state}:'),
      findsNothing,
    );

    var populatedStatus = DishGetStatusResponse(
      accountShard: AccountShard.ACCOUNT_SHARD_DEFAULT,
      natFlag: NatFlag.NAT_ENABLED,
      // grpc-deprecated(dish firmware 2026.11.16, API 45): top-level battery_stats and
      // DishBatteryStats.power_source.
      batteryStats: DishBatteryStats(
        stateOfCharge: 72,
        isCharging: false,
        powerSource: PowerSource.BATTERY,
      ),
      userDebugModeEnabled: true,
      treatAsMetered: true,
      gpsStats: DishGpsStats(
        pntFilterConvergenceState: AttitudeEstimationState.FILTER_CONVERGED,
      ),
    );

    await tester.pumpWidget(
      _testPage(
        DishWidget(
          sourceMode: MapSourceMode.stored,
          snap: Snapshot(timestamp: 1, dishGetStatus: populatedStatus),
          viewOptions: ViewOptions(),
        ),
      ),
    );

    expect(find.text(M.header.power), findsOneWidget);
    expect(
      find.text('${M.grpc.DishBatteryStats.state_of_charge}:'),
      findsOneWidget,
    );
    expect(
      find.text('${M.grpc.DishBatteryStats.is_charging}:'),
      findsOneWidget,
    );
    expect(find.text(M.header.service), findsOneWidget);
    expect(find.text('${M.grpc.DishGetStatus.nat_flag}:'), findsOneWidget);
    expect(
      find.text('${M.grpc.DishGpsStats.pnt_filter_convergence_state}:'),
      findsOneWidget,
    );
  });

  testWidgets('power section prefers power source stats over legacy battery', (
    tester,
  ) async {
    Future<void> pump(DishGetStatusResponse status) => tester.pumpWidget(
      _testPage(
        DishWidget(
          sourceMode: MapSourceMode.stored,
          snap: Snapshot(timestamp: 1, dishGetStatus: status),
          viewOptions: ViewOptions(),
        ),
      ),
    );

    await pump(
      DishGetStatusResponse(
        powerSourceStats: PowerSourceStats(
          batteryStats: DishBatteryStats(),
          usbcStats: DishUsbcStats(),
        ),
      ),
    );
    expect(find.text(M.header.power), findsNothing);

    await pump(
      DishGetStatusResponse(
        batteryStats: DishBatteryStats(stateOfCharge: 10),
        powerSourceStats: PowerSourceStats(
          batteryStats: DishBatteryStats(
            stateOfCharge: 80,
            batteryAttached: true,
            timeToEmptyMinutes: 90,
            temperatureC: 31.5,
          ),
          usbcStats: DishUsbcStats(
            powerW: 24.25,
            maxPowerW: 100,
            sourceDetected: true,
          ),
          powerSource: UserPowerSource_AutoEnum.usbc_and_battery,
        ),
        batteryUtInsufficientPowerRfIdleActive: true,
      ),
    );
    expect(find.text(M.header.power), findsOneWidget);
    expect(find.text('80 %'), findsOneWidget);
    expect(find.text('10 %'), findsNothing);
    expect(find.text('usbc_and_battery'), findsOneWidget);
    expect(find.text('90 m 0 s'), findsOneWidget);
    expect(find.text('31.5'), findsOneWidget);
    expect(find.text('24.3'), findsOneWidget);
    expect(
      find.text('${M.grpc.DishUsbcStats.source_detected}:'),
      findsOneWidget,
    );
    expect(find.text('${M.grpc.DishUsbcStats.sink_detected}:'), findsNothing);
    expect(
      find.text(
        '${M.grpc.DishGetStatus.battery_ut_insufficient_power_rf_idle_active}:',
      ),
      findsOneWidget,
    );

    // Older firmware: only the top-level battery and USB-C stats.
    // grpc-deprecated(dish firmware 2026.11.16, API 45): top-level battery_stats,
    // usbc_stats and DishBatteryStats.power_source.
    await pump(
      DishGetStatusResponse(
        batteryStats: DishBatteryStats(
          stateOfCharge: 55,
          powerSource: PowerSource.BATTERY,
        ),
        usbcStats: DishUsbcStats(sourceDetected: true),
      ),
    );
    expect(find.text('55 %'), findsOneWidget);
    expect(find.text('BATTERY'), findsOneWidget);
    expect(
      find.text('${M.grpc.DishUsbcStats.source_detected}:'),
      findsOneWidget,
    );
  });

  testWidgets('config shows auto-off and update reboot settings', (
    tester,
  ) async {
    await tester.pumpWidget(
      _testPage(
        DishWidget(
          sourceMode: MapSourceMode.stored,
          snap: Snapshot(
            timestamp: 1,
            dishGetStatus: DishGetStatusResponse(
              secondsUntilSwupdateRebootPossible: 125,
              config: DishConfig(
                swupdateRebootHour: 3,
                noBurstAutoOffEnabled: true,
                noBurstAutoOffTimeoutSeconds: 900,
                lossOfExtPowerAutoOffTimeoutSeconds: 300,
              ),
            ),
          ),
          viewOptions: ViewOptions(),
        ),
      ),
    );

    expect(find.text('03:00'), findsOneWidget);
    expect(find.text('${M.general.yes}, 15 m 0 s'), findsOneWidget);
    expect(
      find.text('${M.grpc.DishConfig.loss_of_ext_power_auto_off}:'),
      findsOneWidget,
    );
    expect(find.text('2 m 5 s'), findsOneWidget);

    await tester.pumpWidget(
      _testPage(
        DishWidget(
          sourceMode: MapSourceMode.stored,
          snap: Snapshot(
            timestamp: 1,
            dishGetStatus: DishGetStatusResponse(
              secondsUntilSwupdateRebootPossible: -1,
              config: DishConfig(snowMeltMode: DishConfig_SnowMeltMode.AUTO),
            ),
          ),
          viewOptions: ViewOptions(),
        ),
      ),
    );

    expect(
      find.text('${M.grpc.DishConfig.swupdate_reboot_hour}:'),
      findsNothing,
    );
    expect(find.text('${M.grpc.DishConfig.no_burst_auto_off}:'), findsNothing);
    expect(
      find.text(
        '${M.grpc.DishGetStatus.seconds_until_swupdate_reboot_possible}:',
      ),
      findsNothing,
    );
  });

  testWidgets('signal quality is shown as a percentage and colored by band', (
    tester,
  ) async {
    Future<Color?> qualityDot(double quality) async {
      await tester.pumpWidget(
        _testPage(
          DishWidget(
            sourceMode: MapSourceMode.stored,
            snap: Snapshot(
              timestamp: 1,
              dishGetStatus: DishGetStatusResponse.fromBuffer(
                DishGetStatusResponse(signalQuality: quality).writeToBuffer(),
              ),
            ),
            viewOptions: ViewOptions(),
          ),
        ),
      );
      var row = find.ancestor(
        of: find.text('${(quality * 100).round()} %'),
        matching: find.byType(InkWell),
      );
      expect(row, findsOneWidget);
      var dot = find.descendant(of: row, matching: find.byIcon(Icons.circle));
      return tester.widget<Icon>(dot).color;
    }

    // 0.52 is stored as float32 (0.5199999809265137) and must show as 52 %.
    expect(await qualityDot(0.52), Colors.amber);
    expect(await qualityDot(1), Colors.green);
    expect(await qualityDot(0.25), Colors.amber);
    expect(await qualityDot(0.2), Colors.red);
  });

  testWidgets('RF action follows the inhibit RF outage cause', (tester) async {
    await tester.pumpWidget(
      _testPage(
        DishWidget(
          sourceMode: MapSourceMode.stored,
          snap: Snapshot(
            timestamp: 1,
            dishGetStatus: DishGetStatusResponse(
              outage: DishOutage(cause: DishOutage_Cause.INHIBIT_RF),
            ),
          ),
          viewOptions: ViewOptions(),
          showActions: true,
        ),
      ),
    );

    expect(find.text('Uninhibit RF'), findsOneWidget);
    expect(find.text('Inhibit RF'), findsNothing);
  });

  testWidgets('advanced router flags hide defaults and show active values', (
    tester,
  ) async {
    var config = WifiConfig(
      networks: [
        WifiConfig_Network(
          dnsDisabled: false,
          getLeaseDhcp: false,
          defaultRouteDisabled: false,
          geofenceAction: WifiConfig_Network_GeofenceAction.NONE,
        ),
      ],
      unbridgedEthPorts: [
        WifiConfig_UnbridgedEthPort(bridgedNetworkGroupOverride: 0),
      ],
    );

    await tester.pumpWidget(
      _testPage(
        RouterWidget(
          snap: Snapshot(
            timestamp: 1,
            routerGetStatus: WifiGetStatusResponse(config: config),
          ),
          viewOptions: ViewOptions(),
        ),
      ),
    );

    expect(find.text('${M.grpc.Network.dns_disabled}:'), findsNothing);
    expect(find.text('${M.grpc.Network.get_lease_dhcp}:'), findsNothing);
    expect(
      find.text('${M.grpc.Network.default_route_disabled}:'),
      findsNothing,
    );
    expect(find.text('${M.grpc.Network.geofence_action}:'), findsNothing);
    expect(
      find.text('${M.grpc.WifiConfig.bridged_network_group_override}:'),
      findsNothing,
    );

    config = WifiConfig(
      networks: [
        WifiConfig_Network(
          dnsDisabled: true,
          getLeaseDhcp: true,
          defaultRouteDisabled: true,
          geofenceAction: WifiConfig_Network_GeofenceAction.BLOCK_TRAFFIC,
        ),
      ],
      unbridgedEthPorts: [
        WifiConfig_UnbridgedEthPort(
          lanPortIndex: 2,
          bridgedNetworkGroupOverride: 4,
        ),
      ],
    );

    await tester.pumpWidget(
      _testPage(
        RouterWidget(
          snap: Snapshot(
            timestamp: 1,
            routerGetStatus: WifiGetStatusResponse(config: config),
          ),
          viewOptions: ViewOptions(),
        ),
      ),
    );

    expect(find.text('${M.grpc.Network.dns_disabled}:'), findsOneWidget);
    expect(find.text('${M.grpc.Network.get_lease_dhcp}:'), findsOneWidget);
    expect(
      find.text('${M.grpc.Network.default_route_disabled}:'),
      findsOneWidget,
    );
    expect(find.text('${M.grpc.Network.geofence_action}:'), findsOneWidget);
    expect(
      find.text('${M.grpc.WifiConfig.bridged_network_group_override}:'),
      findsOneWidget,
    );
  });

  test('event metadata omits client IDs while keeping diagnostics', () {
    var event = UXEvent(
      deviceId: 'ut-123',
      clientSwitchingBandMetadata: ClientSwitchingBandMetadata(
        clientId: 7,
        fromBand: '2 GHz',
        toBand: '5 GHz',
      ),
    );

    expect(formatEventMetadata(event), [
      'Band: 2 GHz → 5 GHz',
    ]);
    expect(formatEventMetadata(event, hideIds: true), ['Band: 2 GHz → 5 GHz']);
  });
}
