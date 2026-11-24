import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/dialogs/confirm.dart';
import 'package:star_debug/pages/dialogs/wifi_setup.dart';

class _Harness {
  WifiSetupResult? result;
  bool closed = false;
}

Future<_Harness> _open(WidgetTester tester) async {
  final harness = _Harness();
  await tester.pumpWidget(
    MaterialApp(
      home: Builder(
        builder: (context) => TextButton(
          onPressed: () async {
            harness.result = await showDialog<WifiSetupResult?>(
              context: context,
              builder: (_) => const WifiSetupDialog(),
            );
            harness.closed = true;
          },
          child: const Text('open'),
        ),
      ),
    ),
  );
  await tester.tap(find.text('open'));
  await tester.pumpAndSettle();
  return harness;
}

Future<void> _answer(WidgetTester tester, String button) async {
  expect(find.byType(ConfirmDialog), findsOneWidget);
  await tester.tap(find.text(button));
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('keep default settings returns skip after confirmation', (
    WidgetTester tester,
  ) async {
    final harness = await _open(tester);

    await tester.tap(find.text(M.wifi.keep_default_wifi_settings));
    await tester.pumpAndSettle();
    await _answer(tester, M.general.confirm);

    expect(harness.closed, isTrue);
    expect(harness.result?.result, WifiSetupResult.RES_SKIP);
  });

  testWidgets('bypass mode returns bypass after confirmation', (
    WidgetTester tester,
  ) async {
    final harness = await _open(tester);

    await tester.tap(find.text(M.wifi.enable_bypass_mode));
    await tester.pumpAndSettle();
    await _answer(tester, M.general.confirm);

    expect(harness.closed, isTrue);
    expect(harness.result?.result, WifiSetupResult.RES_BYPASS);
  });

  testWidgets('cancelling the confirmation keeps the dialog open', (
    WidgetTester tester,
  ) async {
    final harness = await _open(tester);

    await tester.tap(find.text(M.wifi.enable_bypass_mode));
    await tester.pumpAndSettle();
    await _answer(tester, M.general.cancel);

    expect(harness.closed, isFalse);
    expect(find.byType(WifiSetupDialog), findsOneWidget);
  });

  testWidgets('wifi settings require a valid form before confirmation', (
    WidgetTester tester,
  ) async {
    final harness = await _open(tester);

    await tester.tap(find.text(M.wifi.setup_ssid_and_password));
    await tester.pumpAndSettle();
    expect(find.byType(ConfirmDialog), findsNothing);

    await tester.enterText(find.byType(TextFormField).at(0), 'Home');
    await tester.enterText(find.byType(TextFormField).at(1), 'secret-pass');
    await tester.tap(find.text(M.wifi.setup_ssid_and_password));
    await tester.pumpAndSettle();
    await _answer(tester, M.general.confirm);

    expect(harness.closed, isTrue);
    expect(harness.result?.result, WifiSetupResult.RES_WIFI);
    expect(harness.result?.name, 'Home');
    expect(harness.result?.pass, 'secret-pass');
  });
}
