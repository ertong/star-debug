import 'dart:convert';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/space/space_parser.dart';
import 'package:star_debug/utils/debug_data.dart';
import 'package:star_debug/utils/obstructions.dart';
import 'package:star_debug/utils/snapshot.dart';
import 'package:star_debug/widgets/obstruction_map.dart';

DishGetObstructionMapResponse _map() => DishGetObstructionMapResponse(
  numRows: 2,
  numCols: 3,
  snr: [-1, 0, 0.5, 1, 1, 0],
  mapReferenceFrame: ObstructionMapReferenceFrame.FRAME_EARTH,
);

Widget _page(Widget child, {double textScale = 1, bool dark = false}) =>
    MaterialApp(
      theme: ThemeData(brightness: dark ? Brightness.dark : Brightness.light),
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context)
            .copyWith(textScaler: TextScaler.linear(textScale)),
        child: child!,
      ),
      home: Scaffold(body: SingleChildScrollView(child: child)),
    );

void main() {
  setUp(() {
    R = Preloaded();
    R.versionName = 'test';
  });

  test('unknown and intermediate signals are distinct from blocked cells', () {
    final map = ObstructionMapData.fromResponse(
      DishGetObstructionMapResponse(
        numRows: 2,
        numCols: 4,
        snr: [
          -1,
          double.nan,
          double.infinity,
          double.negativeInfinity,
          0,
          0.01,
          1,
          2,
        ],
      ),
    )!;
    expect(map.observed, 4);
    expect(map.blocked, 1);
    expect(map.blockedObservedFraction, 0.25);
    expect(ObstructionMapData.classify(-1), ObstructionCell.unknown);
    expect(ObstructionMapData.classify(0), ObstructionCell.obstructed);
    expect(ObstructionMapData.classify(0.01), ObstructionCell.reducedSignal);
    expect(ObstructionMapData.classify(1), ObstructionCell.clear);
    expect(ObstructionMapData.color(-1), ObstructionMapData.unknownColor);
    expect(ObstructionMapData.color(0), ObstructionMapData.obstructedColor);
    expect(
      ObstructionMapData.color(0.5),
      ObstructionMapData.reducedSignalColor,
    );
    expect(ObstructionMapData.color(2), ObstructionMapData.clearColor);
  });

  test('rectangular row-major data is retained for every reference frame', () {
    for (final frame in ObstructionMapReferenceFrame.values) {
      final response = _map()..mapReferenceFrame = frame;
      final map = ObstructionMapData.fromResponse(response)!;
      expect(map.rows, 2);
      expect(map.cols, 3);
      expect(map.signal, [-1, 0, 0.5, 1, 1, 0]);
      expect(map.frame, frame);
      expect(map.blockedObservedFraction, 2 / 5);
    }
  });

  test('invalid dimensions and sample counts do not render', () {
    for (final response in [
      DishGetObstructionMapResponse(),
      DishGetObstructionMapResponse(numRows: 0, numCols: 3),
      DishGetObstructionMapResponse(numRows: 2, numCols: 3, snr: [1]),
      DishGetObstructionMapResponse(numRows: 1, numCols: 1, snr: [1, 1]),
      DishGetObstructionMapResponse(numRows: 999999, numCols: 999999),
    ]) {
      expect(ObstructionMapData.fromResponse(response), isNull);
    }
    expect(
      ObstructionMapData.fromResponse(
        DishGetObstructionMapResponse(numRows: 1, numCols: 1, snr: [-1]),
      )!.blockedObservedFraction,
      isNull,
    );
  });

  testWidgets('raster dimensions and pixels match a rectangular map', (
    tester,
  ) async {
    await tester.runAsync(() async {
      final png = await generateObstructionImgFromMap(_map());
      final codec = await ui.instantiateImageCodec(png);
      final image = (await codec.getNextFrame()).image;
      try {
        expect(image.width, 6);
        expect(image.height, 4);
        final bytes = (await image.toByteData())!.buffer.asUint8List();
        expect(bytes.sublist(0, 3), [0x65, 0x70, 0x80]);
        expect(bytes.sublist(8, 11), [0xe3, 0x4b, 0x54]);
        expect(bytes.sublist(48, 51), [0x27, 0x9c, 0xde]);
      } finally {
        image.dispose();
        codec.dispose();
      }
    });
  });

  test('sanitized fixture round-trips binary and JSON-only maps', () {
    final fixture = jsonDecode(
      File('test_resources/debug_data_obstruction_map.json').readAsStringSync(),
    );
    final original = SpaceParser.ofJson(fixture).toSnapshot();
    final exported = DebugDataHelper.debugData(original);
    for (final binary in [true, false]) {
      if (!binary) {
        exported['dishObstructionMap'].remove('_proto');
        exported['dish'].remove('_proto');
      }
      final restored = SpaceParser.ofJson(exported).toSnapshot();
      expect(
        restored.dishGetObstructionMap!.writeToBuffer(),
        original.dishGetObstructionMap!.writeToBuffer(),
      );
      expect(restored.obstructionMapTs, 1710000000125);
      expect(restored.obstructionMapApiVersion, 42);
      expect(restored.dishGetStatus!.deviceInfo.id, 'fixture-dish');
    }
  });

  test('corrupt optional map preserves dish status', () {
    final fixture = jsonDecode(
      File('test_resources/debug_data_obstruction_map.json').readAsStringSync(),
    );
    fixture['dishObstructionMap']['_proto'] = 'not base64!';
    final restored = SpaceParser.ofJson(fixture).toSnapshot();
    expect(restored.dishGetObstructionMap, isNull);
    expect(restored.dishGetStatus!.deviceInfo.id, 'fixture-dish');
  });

  test('nonfinite map signals and metadata remain safe to export', () {
    final map = DishGetObstructionMapResponse(
      numRows: 1,
      numCols: 3,
      snr: [double.nan, double.infinity, 0],
      maxThetaDeg: double.infinity,
    );
    final exported = DebugDataHelper.debugData(
      Snapshot(timestamp: 1, dishGetObstructionMap: map),
    );
    final json = jsonDecode(jsonEncode(exported));
    final binary = SpaceParser.ofJson(json).dishGetObstructionMap!;
    expect(binary.snr.first.isNaN, isTrue);
    json['dishObstructionMap'].remove('_proto');
    final fallback = SpaceParser.ofJson(json).dishGetObstructionMap!;
    expect(fallback.snr, [-1, -1, 0]);
    expect(fallback.hasMaxThetaDeg(), isFalse);
  });

  test(
    'blocked patches use edge connectivity and sectors exclude the center',
    () {
      final map = ObstructionMapData.fromResponse(
        DishGetObstructionMapResponse(
          numRows: 3,
          numCols: 3,
          snr: [0, 0, 1, 1, 0, 1, 0, 1, 0],
          mapReferenceFrame: ObstructionMapReferenceFrame.FRAME_EARTH,
        ),
      )!;
      expect(map.blocked, 5);
      expect(map.largestBlockedPatch, 3);
      expect(map.clear, 4);
      expect(map.sectors.map((s) => s.observed).reduce((a, b) => a + b), 8);
      expect(map.sectors[0].blocked, 1); // North is the top row.
      expect(map.sectors[4].blocked, 0); // South is the bottom row.
      expect(map.sectors[6].blocked, 0);
      expect(map.sectors[7].blocked, 1);
      final center = ObstructionMapData.fromResponse(
        DishGetObstructionMapResponse(numRows: 1, numCols: 1, snr: [0]),
      )!;
      expect(center.blocked, 1);
      expect(center.sectors.every((s) => s.blockedFraction == null), isTrue);
    },
  );

  test(
    'orientation normalizes bearings and uses the reported alignment fields',
    () {
      final orientation = DishOrientation.fromStatus(
        DishGetStatusResponse(
          boresightAzimuthDeg: 90,
          boresightElevationDeg: 45,
          alignmentStats: AlignmentStats(
            boresightAzimuthDeg: 350,
            boresightElevationDeg: 60,
            desiredBoresightAzimuthDeg: 370,
            desiredBoresightElevationDeg: 65,
          ),
        ),
      );
      expect(orientation.azimuth, 350);
      expect(orientation.desiredAzimuth, 10);
      expect(orientation.azimuthOffset, 20);
      expect(orientation.elevationOffset, 5);
      expect(orientation.headingUncertain, isFalse);
      final fallback = DishOrientation.fromStatus(
        DishGetStatusResponse(
          boresightAzimuthDeg: -10,
          boresightElevationDeg: 80,
        ),
      );
      expect(fallback.azimuth, 350);
      expect(fallback.headingUncertain, isTrue);
      final invalid = DishOrientation.fromStatus(
        DishGetStatusResponse(
          boresightAzimuthDeg: double.nan,
          boresightElevationDeg: 100,
        ),
      );
      expect(invalid.azimuth, isNull);
      expect(invalid.elevation, isNull);
    },
  );

  test('JSON-only exports preserve absent and explicit readiness counts', () {
    for (final patches in [null, 0, 12]) {
      final stats = DishObstructionStats();
      if (patches != null) stats.patchesValid = patches;
      final exported = DebugDataHelper.debugData(
        Snapshot(
          timestamp: 1,
          dishGetObstructionMap: _map(),
          dishGetStatus: DishGetStatusResponse(
            deviceInfo: DeviceInfo(id: 'fixture-dish'),
            obstructionStats: stats,
          ),
        ),
      );
      exported['dish'].remove('_proto');
      exported['dishObstructionMap'].remove('_proto');
      final restored = SpaceParser.ofJson(exported).toSnapshot();
      expect(
        restored.dishGetStatus!.obstructionStats.hasPatchesValid(),
        patches != null,
      );
      if (patches != null)
        expect(restored.dishGetStatus!.obstructionStats.patchesValid, patches);
    }
  });

  testWidgets(
    'compact summary opens details and retains an updating live map',
    (tester) async {
      final map = ValueNotifier<DishGetObstructionMapResponse>(_map());
      addTearDown(map.dispose);
      await tester.pumpWidget(
        _page(
          ValueListenableBuilder<DishGetObstructionMapResponse>(
            valueListenable: map,
            builder: (context, response, _) => ObstructionMapWidget(
              map: response,
              timestamp: 100000,
              receivedTime: 10000,
              live: true,
              stats: DishObstructionStats(
                fractionObstructed: 0.025,
                avgProlongedObstructionValid: false,
                avgProlongedObstructionDurationS: 12,
              ),
            ),
          ),
        ),
      );
      expect(find.byKey(const Key('dish-obstruction-minimap')), findsOneWidget);
      expect(find.byKey(const Key('dish-obstruction-map')), findsNothing);
      expect(find.text('40.00%'), findsOneWidget);
      expect(find.text(M.obstructions.orientation), findsNothing);
      expect(find.text(M.obstructions.delayed_short), findsOneWidget);
      await tester.tap(find.text(M.obstructions.title));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('dish-obstruction-map')), findsOneWidget);
      expect(find.text(M.obstructions.orientation), findsOneWidget);
      expect(find.text(M.obstructions.average_duration), findsNothing);
      expect(find.text(M.obstructions.delayed), findsOneWidget);
      map.value = _map()..snr.setAll(0, [1, 1, 1, 1, 1, 1]);
      await tester.pump();
      await tester.pump();
      expect(find.text('0.00%'), findsNWidgets(2));
      expect(tester.takeException(), isNull);
      await tester.tap(find.byTooltip(M.general.close));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('dish-obstruction-map')), findsNothing);
    },
  );

  testWidgets('removing the live source closes its details dialog', (
    tester,
  ) async {
    final connected = ValueNotifier(true);
    addTearDown(connected.dispose);
    await tester.pumpWidget(
      _page(
        ValueListenableBuilder<bool>(
          valueListenable: connected,
          builder: (context, active, _) => active
              ? ObstructionMapWidget(map: _map(), timestamp: 1, live: true)
              : const Text('Disconnected'),
        ),
      ),
    );
    await tester.tap(find.text(M.obstructions.title));
    await tester.pumpAndSettle();
    expect(find.byType(Dialog), findsOneWidget);
    connected.value = false;
    await tester.pumpAndSettle();
    expect(find.byType(Dialog), findsNothing);
    expect(find.text('Disconnected'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets(
    'popup fits portrait, landscape, themes, text scales and languages',
    (tester) async {
      addTearDown(() => tester.binding.setSurfaceSize(null));
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetDevicePixelRatio);
      addTearDown(tester.view.resetPhysicalSize);
      final originalMessages = M;
      addTearDown(() => M = originalMessages);
      for (final language in ['en', 'uk']) {
        M = I18n.instance.langs[language]!();
        for (final size in [
          const Size(320, 700),
          const Size(800, 450),
          const Size(1000, 800),
        ]) {
          for (final frame in [
            ObstructionMapReferenceFrame.FRAME_EARTH,
            ObstructionMapReferenceFrame.FRAME_UT,
          ]) {
            await tester.binding.setSurfaceSize(size);
            tester.view.physicalSize = size;
            await tester.pumpWidget(
              _page(
                ObstructionMapWidget(
                  map: _map()..mapReferenceFrame = frame,
                  timestamp: 1,
                  status: DishGetStatusResponse(
                    boresightAzimuthDeg: 350,
                    boresightElevationDeg: 60,
                  ),
                  stats: DishObstructionStats(
                    avgProlongedObstructionValid: true,
                    avgProlongedObstructionDurationS: 12,
                    avgProlongedObstructionIntervalS: 600,
                  ),
                ),
                textScale: 1.3,
                dark: frame == ObstructionMapReferenceFrame.FRAME_UT,
              ),
            );
            expect(
              find.byKey(const Key('dish-obstruction-minimap')),
              findsOneWidget,
            );
            await tester.tap(find.text(M.obstructions.title));
            await tester.pumpAndSettle();
            expect(find.text(M.obstructions.average_duration), findsOneWidget);
            expect(find.text(M.obstructions.average_interval), findsOneWidget);
            expect(
              tester.takeException(),
              isNull,
              reason: '$language $size $frame',
            );
            await tester.tap(find.byTooltip(M.general.close));
            await tester.pumpAndSettle();
            await tester.pumpWidget(const SizedBox());
          }
        }
      }
    },
  );

  testWidgets('obstruction minimap supports the screenshot intrinsic layout', (
    tester,
  ) async {
    await tester.pumpWidget(
      _page(
        IntrinsicWidth(
          child: Row(
            children: [
              SizedBox(
                width: 380,
                child: ObstructionMapWidget(map: _map(), timestamp: 1),
              ),
            ],
          ),
        ),
      ),
    );
    expect(find.byKey(const Key('dish-obstruction-minimap')), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets(
    'absent, malformed, unobserved and unready maps never show a canvas',
    (tester) async {
      final cases = [
        (null, null, M.obstructions.unavailable),
        (DishGetObstructionMapResponse(), null, M.obstructions.invalid_map),
        (
          DishGetObstructionMapResponse(numRows: 1, numCols: 1, snr: [-1]),
          null,
          M.obstructions.gathering,
        ),
        (
          _map(),
          DishObstructionStats(patchesValid: 0),
          M.obstructions.gathering,
        ),
      ];
      for (final (map, stats, message) in cases) {
        await tester.pumpWidget(
          _page(ObstructionMapWidget(map: map, stats: stats, timestamp: 1)),
        );
        expect(find.text(message), findsOneWidget);
        expect(find.byKey(const Key('dish-obstruction-minimap')), findsNothing);
        await tester.tap(find.text(M.obstructions.title));
        await tester.pumpAndSettle();
        expect(find.text(message), findsNWidgets(2));
        expect(find.byKey(const Key('dish-obstruction-map')), findsNothing);
        await tester.tap(find.byTooltip(M.general.close));
        await tester.pumpAndSettle();
        await tester.pumpWidget(const SizedBox());
      }
    },
  );
}
