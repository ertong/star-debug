import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/utils/obstruction_map_context.dart';
import 'package:star_debug/widgets/obstruction_map.dart';

const _captured = 1700000000000;
const _miniKey = Key('dish-obstruction-minimap');
const _detailsKey = Key('dish-obstruction-map');

DishGetObstructionMapResponse _map({bool ut = false}) =>
    DishGetObstructionMapResponse(
      numRows: 3,
      numCols: 3,
      snr: [1, 0, 1, 0.5, 1, 1, -1, 0, 1],
      mapReferenceFrame: ut
          ? ObstructionMapReferenceFrame.FRAME_UT
          : ObstructionMapReferenceFrame.FRAME_EARTH,
    );

DishGetStatusResponse _status({double yaw = 0, double heading = 45}) =>
    DishGetStatusResponse(
      boresightAzimuthDeg: heading,
      boresightElevationDeg: 60,
      ned2dishQuaternion: Quaternion(
        qScalar: 0,
        qX: -math.sin(yaw / 2),
        qY: math.cos(yaw / 2),
        qZ: 0,
      ),
    );

class _View extends ChangeNotifier {
  DishGetObstructionMapResponse? map;
  DishGetStatusResponse status = _status();
  int timestamp = _captured;
  Brightness brightness = Brightness.light;
  double width = 380;
  bool visible = true;

  _View(this.map);

  void update() => notifyListeners();
}

Widget _page(_View view) => ListenableBuilder(
  listenable: view,
  builder: (context, _) => MaterialApp(
    theme: ThemeData(brightness: view.brightness),
    themeAnimationDuration: Duration.zero,
    home: Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: view.width,
          child: view.visible
              ? ObstructionMapWidget(
                  key: const Key('source'),
                  map: view.map,
                  status: view.status,
                  timestamp: view.timestamp,
                  receivedTime: _captured,
                  statusReceivedTime: _captured,
                  sourceMode: MapSourceMode.live,
                )
              : const SizedBox(),
        ),
      ),
    ),
  ),
);

class _ImageCanvas extends TestRecordingCanvas {
  final images = <ui.Image>[];

  @override
  void drawImageRect(ui.Image image, Rect src, Rect dst, Paint paint) {
    expect(
      image.debugDisposed,
      false,
      reason: 'A painter retained a dead image',
    );
    expect(paint.filterQuality, FilterQuality.none);
    expect(
      src,
      Rect.fromLTWH(0, 0, image.width.toDouble(), image.height.toDouble()),
    );
    images.add(image);
  }
}

CustomPainter _painter(WidgetTester tester, [Key key = _detailsKey]) =>
    tester.widget<CustomPaint>(find.byKey(key)).painter!;

ui.Image _bitmap(WidgetTester tester, [Key key = _detailsKey]) {
  final canvas = _ImageCanvas();
  _painter(tester, key).paint(
    canvas,
    key == _miniKey ? const Size(108, 108) : const Size(310, 310),
  );
  expect(canvas.images, hasLength(1));
  return canvas.images.single;
}

Future<void> _openDetails(WidgetTester tester) async {
  await tester.tap(find.byIcon(Icons.open_in_full));
  await tester.pump();
  await tester.pump(const Duration(milliseconds: 300));
  expect(find.byType(Dialog), findsOneWidget);
}

Future<void> _update(WidgetTester tester, _View view) async {
  view.update();
  await tester.pump();
  await tester.pump();
  await tester.pump();
}

Future<void> _removeSource(WidgetTester tester, _View view) async {
  view.visible = false;
  await _update(tester, view);
  expect(find.byType(Dialog), findsNothing);
  expect(tester.takeException(), isNull);
}

void main() {
  testWidgets('summary and details share a reusable raster', (tester) async {
    final view = _View(_map());
    addTearDown(view.dispose);
    await tester.pumpWidget(_page(view));
    final image = _bitmap(tester, _miniKey);
    expect(image.width, 3);
    expect(image.height, 3);
    await _openDetails(tester);
    expect(_bitmap(tester), same(image));

    var previous = _painter(tester);
    view.timestamp += 1000;
    await _update(tester, view);
    expect(_painter(tester).shouldRepaint(previous), false);
    expect(_bitmap(tester), same(image));

    previous = _painter(tester);
    view.status = _status();
    await _update(tester, view);
    expect(_painter(tester).shouldRepaint(previous), false);

    previous = _painter(tester);
    view.status = _status(heading: 120);
    await _update(tester, view);
    expect(_painter(tester).shouldRepaint(previous), true);
    expect(_bitmap(tester), same(image));

    previous = _painter(tester, _miniKey);
    view.brightness = Brightness.dark;
    view.width = 500;
    await _update(tester, view);
    expect(_painter(tester, _miniKey).shouldRepaint(previous), true);
    expect(_bitmap(tester, _miniKey), same(image));
    expect(_bitmap(tester), same(image));

    await _removeSource(tester, view);
    expect(image.debugDisposed, true);
  });

  testWidgets('UT basis and freshness control repainting', (tester) async {
    final view = _View(_map(ut: true));
    addTearDown(view.dispose);
    await tester.pumpWidget(_page(view));
    await _openDetails(tester);
    final image = _bitmap(tester);
    var previous = _painter(tester);

    view.status = _status();
    view.timestamp += 1000;
    await _update(tester, view);
    expect(_painter(tester).shouldRepaint(previous), false);

    previous = _painter(tester);
    view.status = _status(yaw: math.pi / 4);
    await _update(tester, view);
    expect(_painter(tester).shouldRepaint(previous), true);
    expect(_bitmap(tester), same(image));

    previous = _painter(tester);
    view.timestamp = _captured + 5000;
    await _update(tester, view);
    expect(_painter(tester).shouldRepaint(previous), true);
    expect(_bitmap(tester), same(image));

    previous = _painter(tester);
    view.timestamp += 1000;
    await _update(tester, view);
    expect(_painter(tester).shouldRepaint(previous), false);
    expect(_bitmap(tester), same(image));

    await _removeSource(tester, view);
    expect(image.debugDisposed, true);
  });

  testWidgets('map replacement safely retires raster handles', (tester) async {
    final disposed = <ui.Image>[];
    final previousOnDispose = ui.Image.onDispose;
    ui.Image.onDispose = (image) {
      disposed.add(image);
      previousOnDispose?.call(image);
    };
    addTearDown(() => ui.Image.onDispose = previousOnDispose);
    final view = _View(_map());
    addTearDown(view.dispose);
    final capturedImages = <ui.Image>[];
    await tester.pumpWidget(_page(view));
    await _openDetails(tester);
    final original = _bitmap(tester);
    capturedImages.add(original);
    final oldPainter = _painter(tester);
    final route = ModalRoute.of(tester.element(find.byType(Dialog)));

    view.map = _map()..snr[0] = 0;
    view.update();
    await tester.pump();
    final replacement = _bitmap(tester, _miniKey);
    capturedImages.add(replacement);
    expect(replacement, isNot(same(original)));
    expect(original.debugDisposed, false);
    expect(_bitmap(tester), same(original));

    await tester.pump();
    expect(_bitmap(tester), same(replacement));
    expect(_painter(tester).shouldRepaint(oldPainter), true);
    expect(original.debugDisposed, true);
    expect(ModalRoute.of(tester.element(find.byType(Dialog))), same(route));

    // Replace again before the preceding retirement finishes. Every live
    // painter must still have a usable handle during this sequence.
    view.map = _map()..snr[1] = 1;
    view.update();
    await tester.pump();
    final intermediate = _bitmap(tester, _miniKey);
    capturedImages.add(intermediate);
    expect(_bitmap(tester), same(replacement));
    view.map = _map()..snr[2] = 0;
    view.update();
    await tester.pump();
    final latest = _bitmap(tester, _miniKey);
    capturedImages.add(latest);
    expect(_bitmap(tester), same(intermediate));
    expect(intermediate.debugDisposed, false);
    await tester.pump();
    expect(_bitmap(tester), same(latest));
    expect(replacement.debugDisposed, true);
    expect(intermediate.debugDisposed, true);

    view.map = null;
    await _update(tester, view);
    expect(find.byKey(_miniKey), findsNothing);
    expect(find.byKey(_detailsKey), findsNothing);
    expect(latest.debugDisposed, true);

    view.map = DishGetObstructionMapResponse(numRows: 3, numCols: 3, snr: [1]);
    await _update(tester, view);
    expect(find.byKey(_miniKey), findsNothing);
    expect(find.byKey(_detailsKey), findsNothing);

    view.map = _map();
    await _update(tester, view);
    final restored = _bitmap(tester);
    capturedImages.add(restored);
    expect(_bitmap(tester, _miniKey), same(restored));

    // Remove the source while its dialog still holds a retiring image.
    view.map = _map()..snr[0] = 0;
    view.update();
    await tester.pump();
    final pending = _bitmap(tester, _miniKey);
    capturedImages.add(pending);
    expect(_bitmap(tester), same(restored));
    expect(restored.debugDisposed, false);
    await _removeSource(tester, view);
    for (final image in capturedImages) {
      expect(image.debugDisposed, true);
      expect(disposed.where((entry) => identical(entry, image)), hasLength(1));
    }
  });
}
