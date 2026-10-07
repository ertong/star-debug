import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
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
