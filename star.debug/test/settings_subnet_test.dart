import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:star_debug/controller/conn/connection.dart';
import 'package:star_debug/controller/conn/dish_connection.dart';
import 'package:star_debug/controller/conn/grpc_connection.dart';
import 'package:star_debug/controller/conn/router_connection.dart';
import 'package:star_debug/pages/settings_subnet.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/shared_prefs.dart';

// Exercise the real constructors and captured hosts without network polling.
class _DishConnection extends DishConnection {
  _DishConnection({required super.notifyStream});
  @override
  Future<void> run() async {}
}

class _RouterConnection extends RouterConnection {
  _RouterConnection({required super.notifyStream});
  @override
  Future<void> run() async {}
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late List<GrpcConnection> connections;
  late List<StreamSubscription> subscriptions;

  setUp(() async {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
          const MethodChannel('dev.fluttercommunity.plus/connectivity_status'),
          (_) async => null,
        );
    SharedPreferences.setMockInitialValues({
      'dishIp': '192.168.100.2',
      'routerIp': '10.1.0.1',
    });
    R = Preloaded();
    R.prefs = SharedPrefs();
    await R.prefs.initialized.future;
    connections = [];
    R.dishHolder = ConnectionHolder((notify) {
      final connection = _DishConnection(notifyStream: notify);
      connections.add(connection);
      return connection;
    }, () {});
    R.routerHolder = ConnectionHolder((notify) {
      final connection = _RouterConnection(notifyStream: notify);
      connections.add(connection);
      return connection;
    }, () {});
    subscriptions = [
      R.dishHolder.stream.listen((_) {}),
      R.routerHolder.stream.listen((_) {}),
    ];
    R.dishHolder.tick(0);
    R.routerHolder.tick(0);
  });

  tearDown(() async {
    for (final subscription in subscriptions) {
      await subscription.cancel();
    }
    for (final connection in connections) {
      connection.close();
      await connection.subsConnectivity?.cancel();
    }
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
          const MethodChannel('dev.fluttercommunity.plus/connectivity_status'),
          null,
        );
  });

  Future<void> showSettings(WidgetTester tester) => tester.pumpWidget(
    MaterialApp(home: Scaffold(body: SubnetSettingsSection())),
  );

  testWidgets('blank dish Apply restores default and replaces only dish', (
    tester,
  ) async {
    final dish = R.dish!;
    final router = R.router!;
    await showSettings(tester);
    await tester.enterText(find.byType(TextField).last, '   ');
    await tester.tap(find.byTooltip('Apply Dish IP'));
    await tester.pumpAndSettle();

    expect(R.prefs.data.dishIp, isNull);
    expect(R.prefs.prefs.containsKey('dishIp'), isFalse);
    expect(dish.isClosed, isTrue);
    expect(R.dishHolder.conn, isNull);
    expect(R.router, same(router));
    expect(router.isClosed, isFalse);
    expect(
      find.text('Router 10.1.0.1  •  Dish $kDefaultDishIp'),
      findsOneWidget,
    );
    R.dishHolder.tick(0);
    expect(R.dish!.host, kDefaultDishIp);
    expect(R.dish!.isClosed, isFalse);
  });

  testWidgets('custom dish Apply creates a connection with the saved host', (
    tester,
  ) async {
    final original = R.dish!;
    await showSettings(tester);
    await tester.enterText(find.byType(TextField).last, ' 192.168.100.003 ');
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();

    expect(R.prefs.data.dishIp, '192.168.100.3');
    expect(original.isClosed, isTrue);
    R.dishHolder.tick(0);
    expect(R.dish!.host, '192.168.100.3');
    expect(find.text('Router 10.1.0.1  •  Dish 192.168.100.3'), findsOneWidget);
  });

  testWidgets('invalid dish input preserves the saved host and connection', (
    tester,
  ) async {
    final original = R.dish!;
    await showSettings(tester);
    await tester.enterText(find.byType(TextField).last, '192.168.+1.1');
    await tester.tap(find.byTooltip('Apply Dish IP'));
    await tester.pumpAndSettle();

    expect(find.text('Enter a valid IPv4 address'), findsOneWidget);
    expect(R.prefs.data.dishIp, '192.168.100.2');
    expect(R.dish, same(original));
    expect(original.isClosed, isFalse);
  });

  testWidgets('blank custom router Apply resets only the router', (
    tester,
  ) async {
    final dish = R.dish!;
    final router = R.router!;
    await showSettings(tester);
    await tester.tap(find.byType(DropdownButtonFormField<String>));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Custom…').last);
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField).first, '');
    await tester.tap(find.byTooltip('Apply router IP'));
    await tester.pumpAndSettle();

    expect(R.prefs.data.routerIp, isNull);
    expect(R.prefs.prefs.containsKey('routerIp'), isFalse);
    expect(router.isClosed, isTrue);
    expect(R.dish, same(dish));
    expect(dish.isClosed, isFalse);
    R.routerHolder.tick(0);
    expect(R.router!.host, kDefaultRouterIp);
    expect(R.router!.isClosed, isFalse);
  });
}
