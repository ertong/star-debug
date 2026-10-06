import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/controller/conn/connection.dart';
import 'package:star_debug/controller/conn/connection_error_log.dart';
import 'package:star_debug/controller/conn/dish_connection.dart';
import 'package:star_debug/controller/conn/router_connection.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/pages/live/dish.dart';
import 'package:star_debug/pages/live/router.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/widgets/connection_error_log.dart';
import 'package:grpc/grpc.dart' as grpc;

class _Dish implements DishConnection {
  @override
  final errorLog = ConnectionErrorLog();
  @override
  final host = '192.168.100.42';
  @override
  final isClosed = false;
  @override
  final connState = grpc.ConnectionState.connecting;
  @override
  final dishGetStatus = PooledRequest<DishGetStatusResponse>(2000);
  @override
  final dishGetHistory = PooledRequest<DishGetHistoryResponse>(2000);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _Router implements RouterConnection {
  @override
  final errorLog = ConnectionErrorLog();
  @override
  final host = '192.168.1.42';
  @override
  final isClosed = false;
  @override
  final connState = grpc.ConnectionState.connecting;
  @override
  final statusReceivedTime = 0;
  @override
  final wifiGetStatus = PooledRequest<WifiGetStatusResponse>(2000);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

Widget _page(Widget child) => MaterialApp(home: Scaffold(body: child));

void main() {
  testWidgets('empty error history occupies no space', (tester) async {
    await tester.pumpWidget(_page(const ConnectionErrorLogView(entries: [])));
    expect(find.byType(ListView), findsNothing);
  });

  testWidgets('log fits a narrow screen with enlarged text', (tester) async {
    tester.view.physicalSize = const Size(320, 640);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final log = ConnectionErrorLog()..add('No status received for 5 seconds');
    await tester.pumpWidget(
      MaterialApp(
        theme: ThemeData.dark(),
        home: Scaffold(
          body: MediaQuery(
            data: const MediaQueryData(textScaler: TextScaler.linear(2)),
            child: ConnectionErrorLogView(entries: log.entries),
          ),
        ),
      ),
    );
    expect(find.text('No status received for 5 seconds'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets(
    'new failures appear first with time only and remain scrollable',
    (tester) async {
      final log = ConnectionErrorLog();
      log.add('Connection refused', time: DateTime(2026, 10, 6, 9, 5, 2));
      await tester.pumpWidget(
        _page(ConnectionErrorLogView(entries: log.entries)),
      );
      expect(find.text('09:05:02'), findsOneWidget);
      expect(find.textContaining('2026'), findsNothing);

      log.add('Connection timed out', time: DateTime(2026, 10, 6, 9, 5, 7));
      await tester.pumpWidget(
        _page(ConnectionErrorLogView(entries: log.entries)),
      );
      expect(
        tester.getTopLeft(find.text('Connection timed out')).dy,
        lessThan(tester.getTopLeft(find.text('Connection refused')).dy),
      );

      for (var i = 0; i < 198; i++) {
        log.add('Failure $i', time: DateTime(2026, 10, 6, 9, 6, i));
      }
      await tester.pumpWidget(
        _page(ConnectionErrorLogView(entries: log.entries)),
      );
      expect(tester.getSize(find.byType(ListView)).height, greaterThan(180));
      await tester.drag(find.byType(ListView), const Offset(0, -10000));
      await tester.pumpAndSettle();
      expect(find.text('Connection refused'), findsOneWidget);
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets('details remain scrollable when taller than the page', (
    tester,
  ) async {
    final log = ConnectionErrorLog()..add('Connection refused');
    await tester.pumpWidget(
      _page(
        ConnectionErrorLogLayout(
          entries: log.entries,
          children: const [
            SizedBox(height: 1000, child: Text('Device details')),
          ],
        ),
      ),
    );
    await tester.drag(find.byType(CustomScrollView), const Offset(0, -1200));
    await tester.pumpAndSettle();
    expect(find.text('Connection refused').hitTestable(), findsOneWidget);
    expect(tester.getSize(find.byType(ConnectionErrorLogView)).height, 180);
    expect(tester.takeException(), isNull);
  });

  for (final dish in [true, false]) {
    testWidgets(
      '${dish ? 'dish' : 'router'} log follows its connection status',
      (tester) async {
        R = Preloaded();
        final connection = dish ? _Dish() : _Router();
        final log = dish
            ? (connection as _Dish).errorLog
            : (connection as _Router).errorLog;
        log.add('Connection refused');
        if (dish) {
          R.dishHolder = ConnectionHolder<DishConnection>(
            (_) => connection as _Dish,
            () {},
          )..conn = connection as _Dish;
        } else {
          R.routerHolder = ConnectionHolder<RouterConnection>(
            (_) => connection as _Router,
            () {},
          )..conn = connection as _Router;
        }
        await tester.pumpWidget(
          _page(dish ? const DishTab() : const RouterTab()),
        );
        final status = find.textContaining('Channel:');
        final error = find.text('Connection refused');
        expect(status, findsOneWidget);
        expect(error, findsOneWidget);
        expect(
          tester.getTopLeft(error).dy,
          greaterThan(tester.getBottomLeft(status).dy),
        );
        expect(
          tester.widget<Text>(status).data,
          contains(dish ? '192.168.100.42' : '192.168.1.42'),
        );
        expect(tester.getSize(find.byType(ListView)).height, greaterThan(180));
        expect(
          tester.getBottomRight(find.byType(ConnectionErrorLogView)).dy,
          tester.getBottomRight(find.byType(Scaffold)).dy,
        );

        for (var i = 0; i < 210; i++) {
          log.add('Failure $i');
        }
        await tester.pumpWidget(_page(dish ? DishTab() : RouterTab()));
        expect(find.text('Failure 209'), findsOneWidget);
        await tester.drag(find.byType(ListView), const Offset(0, -10000));
        await tester.pumpAndSettle();
        expect(find.text('Failure 10'), findsOneWidget);
        expect(tester.takeException(), isNull);

        // Disposing the tab must release its demand for the live connection.
        await tester.pumpWidget(const SizedBox.shrink());
        expect(dish ? R.dishHolder.listened : R.routerHolder.listened, 0);
      },
    );
  }
}
