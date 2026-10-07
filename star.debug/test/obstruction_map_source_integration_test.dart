import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:grpc/grpc.dart' as grpc;
import 'package:star_debug/controller/conn/connection.dart';
import 'package:star_debug/controller/conn/connection_error_log.dart';
import 'package:star_debug/controller/conn/dish_connection.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/messages/messages.i18n.dart';
import 'package:star_debug/pages/live/dish.dart';
import 'package:star_debug/pages/view/dish.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/obstruction_map_context.dart';
import 'package:star_debug/utils/snapshot.dart';
import 'package:star_debug/utils/view_options.dart';
import 'package:star_debug/widgets/obstruction_map.dart';

class _SilentDishConnection extends Fake implements DishConnection {
  @override
  final dishGetStatus = PooledRequest<DishGetStatusResponse>(2000);
  @override
  final dishGetHistory = PooledRequest<DishGetHistoryResponse>(2000);
  @override
  final dishGetObstructionMap = PooledRequest<DishGetObstructionMapResponse>(
    30000,
  );
  @override
  final dishGetLocationGPS = PooledRequest<GetLocationResponse>(2000);
  @override
  final dishGetLocationStarlink = PooledRequest<GetLocationResponse>(2000);
  @override
  final errorLog = ConnectionErrorLog();
  @override
  bool get isClosed => false;
  @override
  String get host => '192.0.2.1';
  @override
  grpc.ConnectionState get connState => grpc.ConnectionState.ready;
}

DishGetObstructionMapResponse _map() => DishGetObstructionMapResponse(
  numRows: 2,
  numCols: 2,
  snr: [0, 1, 1, 1],
  mapReferenceFrame: ObstructionMapReferenceFrame.FRAME_EARTH,
);

Widget _page(Widget child) => MaterialApp(
  home: Scaffold(body: SingleChildScrollView(child: child)),
);

Future<void> _openDetails(WidgetTester tester) async {
  final button = find.byIcon(Icons.open_in_full);
  await tester.ensureVisible(button);
  await tester.tap(button);
  await tester.pumpAndSettle();
  expect(find.byType(Dialog), findsOneWidget);
}

void main() {
  setUp(() {
    R = Preloaded();
    R.versionName = 'test';
    M = Messages();
  });

  testWidgets('DishTab ages silent data and cancels its refresh on disposal', (
    tester,
  ) async {
    final connection = _SilentDishConnection();
    final received = DateTime.now().millisecondsSinceEpoch;
    connection.dishGetStatus.setData(
      received,
      DishGetStatusResponse(signalQuality: 0.75),
      1,
    );
    connection.dishGetObstructionMap.setData(received, _map(), 1);
    R.dishHolder = ConnectionHolder<DishConnection>(
      (_) => throw StateError('No connection should be started'),
      () {},
    )..conn = connection;
    R.routerHolder = ConnectionHolder(
      (_) => throw StateError('No router should be started'),
      () {},
    );
    await tester.pumpWidget(const MaterialApp(home: Scaffold(body: DishTab())));
    final source = find.byKey(const Key('dish-obstruction-source'));
    final sourceState = tester.state<State<ObstructionMapWidget>>(source);
    expect(find.text(M.header.actions), findsOneWidget);
    await _openDetails(tester);
    final route = ModalRoute.of(tester.element(find.byType(Dialog)));

    // Change receive ages without emitting a holder-stream event. The periodic
    // live-tab refresh must update both the page and its already-open dialog.
    connection.dishGetStatus.receivedTime =
        DateTime.now().millisecondsSinceEpoch - 6000;
    await tester.pump(const Duration(seconds: 1));
    await tester.pumpAndSettle();
    expect(find.text(M.header.actions, skipOffstage: false), findsNothing);
    expect(find.text(M.obstructions.status_delayed_short), findsOneWidget);
    expect(tester.state(source), same(sourceState));
    expect(ModalRoute.of(tester.element(find.byType(Dialog))), same(route));

    connection.dishGetObstructionMap.receivedTime =
        DateTime.now().millisecondsSinceEpoch - 66000;
    await tester.pump(const Duration(seconds: 1));
    await tester.pumpAndSettle();
    expect(find.text(M.obstructions.delayed), findsOneWidget);

    await tester.pumpWidget(const MaterialApp(home: SizedBox()));
    await tester.pump(const Duration(seconds: 3));
    expect(R.dishHolder.listened, 0);
    expect(tester.takeException(), isNull);
  });

  testWidgets('live map and open details survive status aging and recovery', (
    tester,
  ) async {
    final phase = ValueNotifier(0);
    addTearDown(phase.dispose);
    final map = _map();
    final status = DishGetStatusResponse(signalQuality: 0.75);
    const received = 1700000000000;
    await tester.pumpWidget(
      _page(
        ValueListenableBuilder<int>(
          valueListenable: phase,
          builder: (context, value, _) => Column(
            children: [
              if (value == 1) const Text('Connection warning'),
              if (value != 3)
                DishWidget(
                  key: const Key('live-dish-view'),
                  snap: Snapshot(
                    timestamp: received + value * 6000,
                    dishTs: received + (value == 2 ? 12000 : 0),
                    dishGetStatus: status,
                    dishGetObstructionMap: map,
                    obstructionMapTs: received,
                  ),
                  viewOptions: ViewOptions(),
                  sourceMode: MapSourceMode.live,
                  statusVisible: value != 1,
                  showActions: value != 1,
                ),
            ],
          ),
        ),
      ),
    );

    final source = find.byKey(
      const Key('dish-obstruction-source'),
      skipOffstage: false,
    );
    final sourceState = tester.state<State<ObstructionMapWidget>>(source);
    final signalRow = find.text(
      '${M.grpc.DishGetStatus.signal_quality}:',
      skipOffstage: false,
    );
    expect(signalRow, findsOneWidget);
    expect(find.text(M.header.actions), findsOneWidget);
    await _openDetails(tester);
    final route = ModalRoute.of(tester.element(find.byType(Dialog)));
    expect(route, isA<DialogRoute<void>>());
    expect(
      find.descendant(
        of: find.byType(Dialog),
        matching: find.text(
          '${M.obstructions.source}: ${M.obstructions.source_live}',
        ),
      ),
      findsOneWidget,
    );

    phase.value = 1;
    await tester.pumpAndSettle();
    expect(find.text('Connection warning'), findsOneWidget);
    expect(signalRow, findsNothing);
    expect(find.text(M.header.actions, skipOffstage: false), findsNothing);
    expect(tester.state(source), same(sourceState));
    expect(ModalRoute.of(tester.element(find.byType(Dialog))), same(route));
    expect(find.byKey(const Key('dish-obstruction-minimap')), findsOneWidget);
    expect(find.text(M.obstructions.status_delayed_short), findsOneWidget);

    phase.value = 2;
    await tester.pumpAndSettle();
    expect(find.text('Connection warning'), findsNothing);
    expect(signalRow, findsOneWidget);
    expect(find.text(M.header.actions, skipOffstage: false), findsOneWidget);
    expect(tester.state(source), same(sourceState));
    expect(ModalRoute.of(tester.element(find.byType(Dialog))), same(route));
    expect(find.text(M.obstructions.status_delayed_short), findsNothing);

    phase.value = 3;
    await tester.pumpAndSettle();
    expect(source, findsNothing);
    expect(find.byType(Dialog), findsNothing);
    expect(route!.isActive, false);
    expect(tester.takeException(), isNull);
  });

  testWidgets('live source keeps delayed-map warning with actions hidden', (
    tester,
  ) async {
    const captured = 1700000100000;
    await tester.pumpWidget(
      _page(
        DishWidget(
          snap: Snapshot(
            timestamp: captured,
            dishTs: captured,
            dishGetStatus: DishGetStatusResponse(),
            dishGetObstructionMap: _map(),
            obstructionMapTs: captured - 66000,
          ),
          viewOptions: ViewOptions(),
          sourceMode: MapSourceMode.live,
          showActions: false,
        ),
      ),
    );

    expect(find.text(M.header.actions), findsNothing);
    expect(find.text(M.obstructions.delayed_short), findsOneWidget);
    await _openDetails(tester);
    expect(
      find.descendant(
        of: find.byType(Dialog),
        matching: find.text(
          '${M.obstructions.source}: ${M.obstructions.source_live}',
        ),
      ),
      findsOneWidget,
    );
    expect(find.text(M.obstructions.delayed), findsOneWidget);
  });

  for (final mode in [MapSourceMode.stored, MapSourceMode.imported]) {
    testWidgets('$mode dish view retains frozen timing', (tester) async {
      const captured = 1700000100000;
      await tester.pumpWidget(
        _page(
          DishWidget(
            snap: Snapshot(
              timestamp: captured,
              dishTs: captured,
              dishGetStatus: DishGetStatusResponse(),
              dishGetObstructionMap: _map(),
              obstructionMapTs: captured - 66000,
            ),
            viewOptions: ViewOptions(),
            sourceMode: mode,
          ),
        ),
      );

      expect(find.text(M.obstructions.delayed_short), findsNothing);
      await _openDetails(tester);
      final label = mode == MapSourceMode.stored
          ? M.obstructions.source_stored
          : M.obstructions.source_imported;
      expect(
        find.descendant(
          of: find.byType(Dialog),
          matching: find.text('${M.obstructions.source}: $label'),
        ),
        findsOneWidget,
      );
      expect(find.text(M.obstructions.delayed), findsNothing);
      expect(
        find.textContaining('${M.obstructions.capture_map_age}:'),
        findsOneWidget,
      );
      expect(find.text(M.obstructions.status_delayed_short), findsNothing);
      await tester.pump(const Duration(seconds: 70));
      expect(find.text(M.obstructions.delayed_short), findsNothing);
      expect(find.text(M.obstructions.status_delayed_short), findsNothing);
    });
  }
}
