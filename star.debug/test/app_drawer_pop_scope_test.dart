import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/widgets/app_drawer_pop_scope.dart';

Widget _page(GlobalKey<ScaffoldState> scaffoldKey, String label) {
  return AppDrawerPopScope(
    scaffoldKey: scaffoldKey,
    child: Scaffold(
      key: scaffoldKey,
      appBar: AppBar(title: Text(label)),
      drawer: Drawer(child: Center(child: Text('$label drawer'))),
      body: Center(child: Text('$label body')),
    ),
  );
}

void main() {
  late List<MethodCall> platformCalls;

  setUp(() {
    platformCalls = [];
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(SystemChannels.platform, (call) async {
          platformCalls.add(call);
          return null;
        });
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(SystemChannels.platform, null);
  });

  int exitCount() => platformCalls
      .where((call) => call.method == 'SystemNavigator.pop')
      .length;

  testWidgets('root Back opens the drawer, then Back exits', (tester) async {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    await tester.pumpWidget(MaterialApp(home: _page(scaffoldKey, 'root')));
    await tester.pumpAndSettle();

    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    expect(scaffoldKey.currentState!.isDrawerOpen, isTrue);
    expect(exitCount(), 0);

    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    expect(scaffoldKey.currentState!.isDrawerOpen, isFalse);
    expect(exitCount(), 1);
  });

  testWidgets('Back only closes a manually opened root drawer', (tester) async {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    await tester.pumpWidget(MaterialApp(home: _page(scaffoldKey, 'root')));
    await tester.pumpAndSettle();

    await tester.tap(find.byTooltip('Open navigation menu'));
    await tester.pumpAndSettle();
    expect(scaffoldKey.currentState!.isDrawerOpen, isTrue);

    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    expect(scaffoldKey.currentState!.isDrawerOpen, isFalse);
    expect(find.text('root body'), findsOneWidget);
    expect(exitCount(), 0);

    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    expect(scaffoldKey.currentState!.isDrawerOpen, isTrue);
    expect(exitCount(), 0);
  });

  testWidgets('pushed pages allow normal popping and preserve results', (
    tester,
  ) async {
    final navigatorKey = GlobalKey<NavigatorState>();
    final rootKey = GlobalKey<ScaffoldState>();
    final pushedKey = GlobalKey<ScaffoldState>();
    await tester.pumpWidget(
      MaterialApp(navigatorKey: navigatorKey, home: _page(rootKey, 'root')),
    );
    final result = navigatorKey.currentState!.push<String>(
      MaterialPageRoute<String>(builder: (_) => _page(pushedKey, 'pushed')),
    );
    await tester.pumpAndSettle();

    final route = ModalRoute.of(pushedKey.currentContext!)!;
    expect(route.popDisposition, RoutePopDisposition.pop);
    expect(await navigatorKey.currentState!.maybePop('result'), isTrue);
    await tester.pumpAndSettle();

    expect(await result, 'result');
    expect(pushedKey.currentState, isNull);
    expect(rootKey.currentState!.isDrawerOpen, isFalse);
    expect(exitCount(), 0);
  });

  testWidgets('Back closes a pushed page drawer before popping the page', (
    tester,
  ) async {
    final navigatorKey = GlobalKey<NavigatorState>();
    final rootKey = GlobalKey<ScaffoldState>();
    final pushedKey = GlobalKey<ScaffoldState>();
    await tester.pumpWidget(
      MaterialApp(navigatorKey: navigatorKey, home: _page(rootKey, 'root')),
    );
    navigatorKey.currentState!.push<void>(
      MaterialPageRoute<void>(builder: (_) => _page(pushedKey, 'pushed')),
    );
    await tester.pumpAndSettle();
    pushedKey.currentState!.openDrawer();
    await tester.pumpAndSettle();

    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    expect(pushedKey.currentState!.isDrawerOpen, isFalse);
    expect(find.text('pushed body'), findsOneWidget);
    expect(exitCount(), 0);

    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    expect(pushedKey.currentState, isNull);
    expect(find.text('root body'), findsOneWidget);
    expect(exitCount(), 0);
  });

  testWidgets('Back dismisses a dialog without opening the root drawer', (
    tester,
  ) async {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    await tester.pumpWidget(MaterialApp(home: _page(scaffoldKey, 'root')));
    await tester.pumpAndSettle();
    showDialog<void>(
      context: scaffoldKey.currentContext!,
      builder: (_) => AlertDialog(title: Text('dialog')),
    );
    await tester.pumpAndSettle();

    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    expect(find.text('dialog'), findsNothing);
    expect(scaffoldKey.currentState!.isDrawerOpen, isFalse);
    expect(exitCount(), 0);
  });

  testWidgets('page rebuilds do not toggle back handling', (tester) async {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    final updates = ValueNotifier<int>(0);
    addTearDown(updates.dispose);
    final notifications = <bool>[];
    await tester.pumpWidget(
      MaterialApp(
        builder: (_, child) => NotificationListener<NavigationNotification>(
          onNotification: (notification) {
            notifications.add(notification.canHandlePop);
            return false;
          },
          child: child!,
        ),
        home: ValueListenableBuilder<int>(
          valueListenable: updates,
          builder: (_, value, _) => _page(scaffoldKey, 'root $value'),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(notifications.last, isTrue);
    notifications.clear();

    for (var i = 1; i <= 3; i++) {
      updates.value = i;
      await tester.pumpAndSettle();
    }
    expect(notifications, isEmpty);

    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    updates.value++;
    await tester.pumpAndSettle();
    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    expect(scaffoldKey.currentState!.isDrawerOpen, isFalse);
    expect(exitCount(), 1);
  });
}
