import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/grpc/starlink/network.pbenum.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/messages/messages.i18n.dart';
import 'package:star_debug/messages/messages_uk.i18n.dart';
import 'package:star_debug/pages/dialogs/hint.dart';
import 'package:star_debug/pages/view/dish.dart';
import 'package:star_debug/pages/view/router.dart';
import 'package:star_debug/utils/obstruction_map_context.dart';
import 'package:star_debug/utils/snapshot.dart';
import 'package:star_debug/utils/view_options.dart';

Widget _page(Widget child) => MaterialApp(
  home: Scaffold(body: SingleChildScrollView(child: child)),
);

Widget _dish(DishGetStatusResponse status) => _page(
  DishWidget(
    sourceMode: MapSourceMode.stored,
    snap: Snapshot(timestamp: 1, dishGetStatus: status),
    viewOptions: ViewOptions(),
  ),
);

Widget _router(WifiGetStatusResponse status, {ViewOptions? options}) => _page(
  RouterWidget(
    snap: Snapshot(timestamp: 1, routerGetStatus: status),
    viewOptions: options ?? ViewOptions(),
  ),
);

WifiGetStatusResponse _routerStatus() => WifiGetStatusResponse(
  publicIpv4: '203.0.113.42',
  clients: [
    WifiClient(
      name: 'Example client',
      usingMlo: true,
      links: [
        WifiClient_Link(
          band: WifiClient_Interface.RF_5GHZ,
          linkAddress: '02:00:00:00:00:01',
          signalStrength: -50,
          snr: 31.5,
        ),
        WifiClient_Link(
          band: WifiClient_Interface.RF_5GHZ_HIGH,
          linkAddress: '02:00:00:00:00:02',
          signalStrength: -55,
          snr: 0,
        ),
        WifiClient_Link(),
      ],
    ),
  ],
);

void main() {
  setUp(() => M = Messages());
  tearDown(() => M = Messages());

  testWidgets(
    'signal quality hides missing or nonfinite values and shows zero',
    (tester) async {
      for (var status in [
        DishGetStatusResponse(),
        DishGetStatusResponse(signalQuality: double.nan),
        DishGetStatusResponse(signalQuality: double.infinity),
      ]) {
        await tester.pumpWidget(_dish(status));
        expect(
          find.text('${M.grpc.DishGetStatus.signal_quality}:'),
          findsNothing,
        );
      }

      await tester.pumpWidget(_dish(DishGetStatusResponse(signalQuality: 0)));
      expect(
        find.text('${M.grpc.DishGetStatus.signal_quality}:'),
        findsOneWidget,
      );
      expect(find.text('0.0'), findsOneWidget);

      await tester.pumpWidget(
        _dish(DishGetStatusResponse(signalQuality: 0.75)),
      );
      expect(find.text('0.75'), findsOneWidget);
      expect(find.text('75 %'), findsNothing);
      await tester.ensureVisible(
        find.text('${M.grpc.DishGetStatus.signal_quality}:'),
      );
      await tester.tap(find.text('${M.grpc.DishGetStatus.signal_quality}:'));
      await tester.pumpAndSettle();
      expect(
        tester.widget<HintDialog>(find.byType(HintDialog)).hint,
        M.grpc.DishGetStatus.signal_quality__hint,
      );
    },
  );

  testWidgets('older router data omits new diagnostic rows', (tester) async {
    await tester.pumpWidget(
      _router(
        WifiGetStatusResponse(
          publicIpv4: '',
          clients: [
            WifiClient(links: [WifiClient_Link()]),
          ],
        ),
      ),
    );
    expect(find.text('${M.grpc.WifiGetStatus.public_ipv4}:'), findsNothing);
    expect(find.text('${M.grpc.WifiClient.using_mlo}:'), findsNothing);
    expect(find.text(M.grpc.WifiClient.link(1)), findsNothing);
    expect(find.text('${M.grpc.WifiClient.snr}:'), findsNothing);
  });

  testWidgets('router displays public IP and individual link diagnostics', (
    tester,
  ) async {
    await tester.pumpWidget(_router(_routerStatus()));
    expect(find.text('203.0.113.42'), findsOneWidget);
    expect(find.text('${M.grpc.WifiClient.using_mlo}:'), findsOneWidget);
    expect(find.text(M.general.yes), findsOneWidget);
    expect(find.text(M.grpc.WifiClient.link(1)), findsOneWidget);
    expect(find.text(M.grpc.WifiClient.link(2)), findsOneWidget);
    expect(find.text(M.grpc.WifiClient.link(3)), findsNothing);
    expect(find.text('RF_5GHZ'), findsOneWidget);
    expect(find.text('RF_5GHZ_HIGH'), findsOneWidget);
    expect(find.text('02:00:00:00:00:01'), findsOneWidget);
    expect(find.text('02:00:00:00:00:02'), findsOneWidget);
    expect(find.text('${M.grpc.WifiClient.snr}:'), findsNWidgets(2));
    expect(find.text('31.5'), findsOneWidget);
    expect(find.text('0.0'), findsOneWidget);
  });

  testWidgets('IP and MAC privacy settings mask the new diagnostics', (
    tester,
  ) async {
    await tester.pumpWidget(
      _router(
        _routerStatus(),
        options: ViewOptions()
          ..hideIp = true
          ..hideMac = true,
      ),
    );
    expect(find.text('203.0.113.42'), findsNothing);
    expect(find.text('02:00:00:00:00:01'), findsNothing);
    expect(find.text('02:00:00:00:00:02'), findsNothing);
    expect(find.text('***'), findsNWidgets(3));
    expect(find.text('31.5'), findsOneWidget);
  });

  testWidgets('hiding router clients also hides their MLO and link rows', (
    tester,
  ) async {
    await tester.pumpWidget(
      _router(
        _routerStatus(),
        options: ViewOptions()..hideRouterClients = true,
      ),
    );
    expect(find.text('203.0.113.42'), findsOneWidget);
    expect(find.text('${M.grpc.WifiClient.using_mlo}:'), findsNothing);
    expect(find.text(M.grpc.WifiClient.link(1)), findsNothing);
    expect(find.text('${M.grpc.WifiClient.snr}:'), findsNothing);
    expect(find.text('02:00:00:00:00:01'), findsNothing);
  });

  testWidgets('non-MLO clients can still report individual link SNR', (
    tester,
  ) async {
    await tester.pumpWidget(
      _router(
        WifiGetStatusResponse(
          clients: [
            WifiClient(usingMlo: false, links: [WifiClient_Link(snr: 12.5)]),
          ],
        ),
      ),
    );
    expect(find.text(M.general.no), findsOneWidget);
    expect(find.text('12.5'), findsOneWidget);
  });

  for (var messages in [Messages(), MessagesUk()]) {
    testWidgets('new enum hints are available in ${messages.runtimeType}', (
      tester,
    ) async {
      M = messages;
      await tester.pumpWidget(
        _dish(
          DishGetStatusResponse(
            disablementCode: UtDisablementCode.OUTSIDE_HOME_REGION,
            rebootReason: RebootReason.REBOOT_REASON_BATTERY_AUTO_OFF,
          ),
        ),
      );
      await tester.tap(find.text('${M.grpc.DishGetStatus.disablement_code}:'));
      await tester.pumpAndSettle();
      expect(
        tester.widget<HintDialog>(find.byType(HintDialog)).hint,
        contains('**OUTSIDE_HOME_REGION** - '),
      );
      await tester.tap(find.widgetWithText(ElevatedButton, M.general.ok));
      await tester.pumpAndSettle();
      await tester.tap(find.text('${M.grpc.DishGetStatus.reboot_reason}:'));
      await tester.pumpAndSettle();
      var hint = tester.widget<HintDialog>(find.byType(HintDialog)).hint;
      expect(hint, contains('**BATTERY_AUTO_OFF** - '));
      expect(hint, contains('**MINI2_AUTO_OFF** - '));
    });
  }
}
