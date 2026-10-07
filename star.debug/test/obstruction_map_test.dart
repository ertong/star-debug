import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;
import 'dart:typed_data';
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

Future<Uint8List> _paintMinimap(
  WidgetTester tester, {
  String key = 'dish-obstruction-minimap',
  int size = 108,
}) async {
  final painter = tester.widget<CustomPaint>(find.byKey(Key(key))).painter!;
  return (await tester.runAsync(() async {
    final recorder = ui.PictureRecorder();
    painter.paint(Canvas(recorder), Size(size.toDouble(), size.toDouble()));
    final picture = recorder.endRecording();
    try {
      final image = await picture.toImage(size, size);
      try {
        return (await image.toByteData())!.buffer.asUint8List();
      } finally {
        image.dispose();
      }
    } finally {
      picture.dispose();
    }
  }))!;
}

int _whiteExtent(Uint8List pixels, {bool vertical = false}) {
  var extent = 0;
  for (var y = 12; y < 96; y++) {
    for (var x = 12; x < 96; x++) {
      final i = (y * 108 + x) * 4;
      if (pixels[i] == 255 &&
          pixels[i + 1] == 255 &&
          pixels[i + 2] == 255 &&
          pixels[i + 3] > 0) {
        final distance = ((vertical ? y : x) - 54).abs();
        if (distance > extent) extent = distance;
      }
    }
  }
  return extent;
}

DishGetStatusResponse _utStatus(double elevation, {double bearing = 90}) {
  // A level panel rotated toward the supplied bearing, then tilted around X.
  // Its +Z normal has exactly the requested geographic bearing/elevation.
  final yaw = (bearing - 90) * math.pi / 180 / 2;
  final tilt = (90 - elevation) * math.pi / 180 / 2;
  return DishGetStatusResponse(
    boresightAzimuthDeg: bearing,
    boresightElevationDeg: elevation,
    ned2dishQuaternion: Quaternion(
      qScalar: -math.sin(yaw) * math.sin(tilt),
      qX: -math.sin(yaw) * math.cos(tilt),
      qY: math.cos(yaw) * math.cos(tilt),
      qZ: math.cos(yaw) * math.sin(tilt),
    ),
  );
}

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
      final sectors = map.sectorOverlay(const DishOrientation())!.sectors;
      expect(sectors.map((s) => s.observed).reduce((a, b) => a + b), 8);
      expect(sectors[0].blocked, 1); // North is the top row.
      expect(sectors[4].blocked, 0); // South is the bottom row.
      expect(sectors[6].blocked, 0);
      expect(sectors[7].blocked, 1);
      final center = ObstructionMapData.fromResponse(
        DishGetObstructionMapResponse(
          numRows: 1,
          numCols: 1,
          snr: [0],
          mapReferenceFrame: ObstructionMapReferenceFrame.FRAME_EARTH,
        ),
      )!;
      expect(center.blocked, 1);
      expect(
        center
            .sectorOverlay(const DishOrientation())!
            .sectors
            .every((s) => s.blockedFraction == null),
        isTrue,
      );
    },
  );

  test(
    'sector cuts start at north and counts follow their projected basis',
    () {
      final signal = List<double>.filled(49, -1);
      // North-northeast (26.6 degrees) belongs to the first wedge, not a
      // north-centered wedge. The center has no direction and is excluded.
      signal[1 * 7 + 4] = 0;
      signal[3 * 7 + 3] = 0;
      final response = DishGetObstructionMapResponse(
        numRows: 7,
        numCols: 7,
        snr: signal,
        mapReferenceFrame: ObstructionMapReferenceFrame.FRAME_EARTH,
      );
      final earth = ObstructionMapData.fromResponse(response)!;
      final sectors = earth.sectorOverlay(const DishOrientation())!;
      expect(sectors.boundaries[0], const Offset(0, -1));
      expect(sectors.boundaries[1].dx, closeTo(math.sqrt(0.5), 1e-12));
      expect(sectors.boundaries[1].dy, closeTo(-math.sqrt(0.5), 1e-12));
      expect(sectors.sectors[0].blockedFraction, 1);
      expect(sectors.sectors.skip(1).every((s) => s.observed == 0), isTrue);

      // In a tilted UT panel, equal geographic bearing steps are not equal
      // screen angles. Use the full projected basis, including its magnitudes.
      signal.fillRange(0, signal.length, -1);
      signal[1 * 7] = 0; // Raw offset (-3, -2); geographic N=3, E=4.
      final tilted = ObstructionMapData.fromResponse(
        response
          ..mapReferenceFrame = ObstructionMapReferenceFrame.FRAME_UT
          ..snr.setAll(0, signal),
      )!;
      final tilt = DishOrientation.fromStatus(_utStatus(30));
      final projected = tilted.sectorOverlay(tilt)!;
      expect(projected.sectors[1].blocked, 1); // Bearing 53.1 degrees.
      expect(projected.sectors[0].observed, 0);
      expect(
        projected.sectors.map((s) => s.observed).reduce((a, b) => a + b),
        1,
      );
      expect(tilted.northRotation(tilt), closeTo(math.pi / 2, 1e-12));
    },
  );

  test('rectangular grids use equal cell pitch for sector classification', () {
    final signal = List<double>.filled(15, -1);
    signal[3] = 0; // Offset (+1, -1): 45 degrees, on the NE cut.
    final map = ObstructionMapData.fromResponse(
      DishGetObstructionMapResponse(
        numRows: 3,
        numCols: 5,
        snr: signal,
        mapReferenceFrame: ObstructionMapReferenceFrame.FRAME_EARTH,
      ),
    )!;
    final sectors = map.sectorOverlay(const DishOrientation())!.sectors;
    expect(sectors[1].blocked, 1);
    expect(sectors[0].observed, 0);
  });

  test(
    'UT sectors use geographic references and reject unavailable geometry',
    () {
      final response = DishGetObstructionMapResponse(
        numRows: 3,
        numCols: 3,
        snr: [-1, -1, -1, -1, 0, -1, -1, 0, -1],
        mapReferenceFrame: ObstructionMapReferenceFrame.FRAME_UT,
      );
      final map = ObstructionMapData.fromResponse(response)!;
      final up = DishOrientation.fromStatus(_utStatus(90));
      final sectors = map.sectorOverlay(up)!.sectors;
      expect(sectors[6].blocked, 1); // Raw bottom is west, not south.
      expect(sectors[4].observed, 0);
      expect(map.northRotation(up), closeTo(math.pi / 2, 1e-12));
      expect(map.sectorOverlay(const DishOrientation()), isNull);
      expect(map.northRotation(const DishOrientation()), isNull);
      expect(
        map.sectorOverlay(DishOrientation.fromStatus(_utStatus(0))),
        isNull,
      );
      final unknown = ObstructionMapData.fromResponse(
        response
          ..mapReferenceFrame = ObstructionMapReferenceFrame.FRAME_UNKNOWN,
      )!;
      expect(unknown.sectorOverlay(up), isNull);
      expect(unknown.northRotation(up), isNull);
    },
  );

  testWidgets('only the detailed map paints sector statistics', (tester) async {
    final map = DishGetObstructionMapResponse(
      numRows: 5,
      numCols: 5,
      snr: List.filled(25, 1.0),
      mapReferenceFrame: ObstructionMapReferenceFrame.FRAME_EARTH,
    );
    await tester.pumpWidget(
      _page(ObstructionMapWidget(map: map, timestamp: 1)),
    );
    final mini = await _paintMinimap(tester, size: 310);
    expect(find.text(M.obstructions.sectors_hint), findsNothing);
    await tester.tap(find.text(M.obstructions.title));
    await tester.pumpAndSettle();
    final full = await _paintMinimap(
      tester,
      key: 'dish-obstruction-map',
      size: 310,
    );
    // The first badge sits inside the N-to-NE wedge. Its pale background is
    // visible here in the detail view, while the minimap remains plain blue.
    int palePixels(Uint8List pixels) {
      var count = 0;
      for (var y = 35; y < 55; y++) {
        for (var x = 190; x < 210; x++) {
          final i = (y * 310 + x) * 4;
          if (pixels[i] > 180 &&
              pixels[i + 1] > 180 &&
              pixels[i + 2] > 180 &&
              pixels[i + 3] > 0)
            count++;
        }
      }
      return count;
    }

    expect(palePixels(mini), 0);
    expect(palePixels(full), greaterThan(0));
    expect(find.text(M.obstructions.sectors_hint), findsOneWidget);
    expect(find.text(M.obstructions.sectors), findsNothing);
    expect(find.byType(LinearProgressIndicator), findsNothing);
    expect(tester.takeException(), isNull);
  });

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

  test('signed elevation detects downward and vertical panel normals', () {
    for (final elevation in [-90.0, -45.0, 0.0, 45.0, 90.0]) {
      final orientation = DishOrientation.fromStatus(
        DishGetStatusResponse(
          alignmentStats: AlignmentStats(boresightElevationDeg: elevation),
        ),
      );
      expect(orientation.elevation, elevation);
      expect(orientation.lookingDownward, elevation < 0);
      expect(orientation.headingUncertain, elevation.abs() > 75);
    }
    expect(DishOrientation.horizontalFraction(90), 0);
    expect(DishOrientation.horizontalFraction(-90), 0);
    expect(DishOrientation.horizontalFraction(0), 1);
    expect(DishOrientation.horizontalFraction(60), closeTo(0.5, 1e-12));
    expect(DishOrientation.horizontalFraction(-60), closeTo(0.5, 1e-12));
    for (final elevation in [null, double.nan, double.infinity, -91.0, 91.0]) {
      expect(DishOrientation.horizontalFraction(elevation), isNull);
    }
  });

  test('geographic bearings require an explicit Earth reference frame', () {
    for (final frame in ObstructionMapReferenceFrame.values) {
      final map = ObstructionMapData.fromResponse(
        _map()..mapReferenceFrame = frame,
      )!;
      expect(map.northUp, frame == ObstructionMapReferenceFrame.FRAME_EARTH);
    }
    final unspecified = ObstructionMapData.fromResponse(
      _map()..clearMapReferenceFrame(),
    )!;
    expect(unspecified.northUp, isFalse);
  });

  test(
    'arrows require valid angles and do not assume horizontal elevation',
    () {
      for (final elevation in [
        null,
        double.nan,
        double.infinity,
        -91.0,
        91.0,
      ]) {
        expect(DishOrientation.canProject(90, elevation), isFalse);
      }
      for (final bearing in [null, double.nan, double.infinity]) {
        expect(DishOrientation.canProject(bearing, 45), isFalse);
        expect(DishOrientation.canProject(bearing, 90), isTrue);
        expect(DishOrientation.canProject(bearing, -90), isTrue);
      }
      expect(DishOrientation.canProject(90, 0), isTrue);
      expect(DishOrientation.canProject(-20, -45), isTrue);
      expect(DishOrientation.canProject(null, 89.99999), isFalse);
      final orientation = DishOrientation.fromStatus(
        DishGetStatusResponse(
          boresightElevationDeg: 45,
          alignmentStats: AlignmentStats(boresightElevationDeg: double.nan),
        ),
      );
      expect(orientation.elevation, isNull);
      expect(orientation.hasProjection, isFalse);
      expect(orientation.hasDesiredProjection, isFalse);
    },
  );

  testWidgets('arrow shrinks with elevation and becomes a dot at zenith', (
    tester,
  ) async {
    final extents = <int>[];
    CustomPainter? previous;
    final map = DishGetObstructionMapResponse(
      numRows: 5,
      numCols: 5,
      snr: List.filled(25, 1),
      mapReferenceFrame: ObstructionMapReferenceFrame.FRAME_EARTH,
    );
    for (final elevation in [0.0, 60.0, 90.0]) {
      final status = DishGetStatusResponse(boresightElevationDeg: elevation);
      if (elevation != 90) status.boresightAzimuthDeg = 90;
      await tester.pumpWidget(
        _page(ObstructionMapWidget(map: map, timestamp: 1, status: status)),
      );
      final painter = tester
          .widget<CustomPaint>(
            find.byKey(const Key('dish-obstruction-minimap')),
          )
          .painter!;
      if (previous != null) expect(painter.shouldRepaint(previous), isTrue);
      previous = painter;
      extents.add(_whiteExtent(await _paintMinimap(tester)));
    }
    expect(extents[0], greaterThan(20));
    expect(extents[1], inInclusiveRange(8, 13));
    expect(extents[2], inInclusiveRange(1, 2));
    expect(tester.takeException(), isNull);
  });

  test(
    'UT heading projection preserves angle scaling and horizontal limit',
    () {
      final map = ObstructionMapData.fromResponse(
        _map()..mapReferenceFrame = ObstructionMapReferenceFrame.FRAME_UT,
      )!;
      for (final elevation in [0.0, 60.0, 90.0, -60.0, -90.0]) {
        final orientation = DishOrientation.fromStatus(_utStatus(elevation));
        final projection = map.headingProjection(
          orientation.azimuth,
          orientation.elevation,
          orientation,
        )!;
        final fraction = DishOrientation.horizontalFraction(elevation)!;
        expect(projection.dx, closeTo(0, 1e-12));
        expect(
          projection.dy,
          closeTo(elevation < 0 ? fraction : -fraction, 1e-12),
        );
        expect(projection.distance, closeTo(fraction, 1e-12));
        if (elevation.abs() == 90) {
          expect(
            map.headingProjection(null, elevation, orientation),
            Offset.zero,
          );
        }
      }
      // The exact horizontal case agrees with the limit from above the horizon.
      final almostHorizontal = DishOrientation.fromStatus(_utStatus(0.0000001));
      expect(
        map
            .headingProjection(
              90,
              almostHorizontal.elevation,
              almostHorizontal,
            )!
            .dy,
        closeTo(-1, 1e-12),
      );
    },
  );

  test(
    'heading projections require valid angles, known frame and UT attitude',
    () {
      final valid = DishOrientation.fromStatus(_utStatus(60));
      for (final frame in ObstructionMapReferenceFrame.values) {
        final map = ObstructionMapData.fromResponse(
          _map()..mapReferenceFrame = frame,
        )!;
        for (final elevation in [
          null,
          double.nan,
          double.infinity,
          -91.0,
          91.0,
        ]) {
          expect(map.headingProjection(90, elevation, valid), isNull);
        }
        expect(map.headingProjection(null, 60, valid), isNull);
        expect(map.headingProjection(double.nan, 60, valid), isNull);
        if (frame != ObstructionMapReferenceFrame.FRAME_EARTH) {
          expect(
            map.headingProjection(90, 60, const DishOrientation()),
            isNull,
          );
        }
        if (frame == ObstructionMapReferenceFrame.FRAME_UNKNOWN) {
          expect(map.headingProjection(90, 60, valid), isNull);
          expect(map.headingProjection(null, 90, valid), isNull);
        }
      }
      final faulted = _utStatus(60)
        ..alignmentStats = AlignmentStats(
          attitudeEstimationState: AttitudeEstimationState.FILTER_FAULTED,
        );
      final orientation = DishOrientation.fromStatus(faulted);
      final map = ObstructionMapData.fromResponse(
        _map()..mapReferenceFrame = ObstructionMapReferenceFrame.FRAME_UT,
      )!;
      expect(map.headingProjection(90, 60, orientation), isNull);
    },
  );

  testWidgets(
    'UT dish arrow scales from the center and warns when facing down',
    (tester) async {
      final map = DishGetObstructionMapResponse(
        numRows: 5,
        numCols: 5,
        snr: List.filled(25, 1.0),
        mapReferenceFrame: ObstructionMapReferenceFrame.FRAME_UT,
      );
      final extents = <int>[];
      for (final elevation in [0.0, 60.0, 90.0, -60.0]) {
        final status = _utStatus(elevation);
        if (elevation == 90) status.clearBoresightAzimuthDeg();
        await tester.pumpWidget(
          _page(ObstructionMapWidget(map: map, timestamp: 1, status: status)),
        );
        final pixels = await _paintMinimap(tester);
        extents.add(_whiteExtent(pixels));
        // The solid white indicator always starts at the map center.
        final center = (54 * 108 + 54) * 4;
        expect(pixels.sublist(center, center + 3), [255, 255, 255]);
        expect(find.byKey(const Key('dish-orientation-compass')), findsNothing);
        if (elevation < 0) {
          expect(find.text(M.obstructions.looking_downward), findsOneWidget);
          // Below-horizon east projects left after aligning north upward.
          final tip = (54 * 108 + 46) * 4;
          expect(pixels.sublist(tip, tip + 3), [255, 255, 255]);
        }
        await tester.tap(find.text(M.obstructions.title));
        await tester.pumpAndSettle();
        expect(find.text(M.obstructions.arrow_guide), findsOneWidget);
        expect(
          _whiteExtent(
            await _paintMinimap(tester, key: 'dish-obstruction-map'),
          ),
          greaterThan(0),
        );
        await tester.tap(find.byTooltip(M.general.close));
        await tester.pumpAndSettle();
      }
      expect(extents[0], greaterThan(20));
      expect(extents[1], inInclusiveRange(8, 13));
      expect(extents[2], inInclusiveRange(1, 2));
      expect(extents[3], inInclusiveRange(8, 13));
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets('UT target arrow shares the dish map with the actual heading', (
    tester,
  ) async {
    final map = DishGetObstructionMapResponse(
      numRows: 5,
      numCols: 5,
      snr: List.filled(25, 1.0),
      mapReferenceFrame: ObstructionMapReferenceFrame.FRAME_UT,
    );
    final status = _utStatus(60)
      ..alignmentStats = AlignmentStats(
        desiredBoresightAzimuthDeg: 270,
        desiredBoresightElevationDeg: 40,
      );
    await tester.pumpWidget(
      _page(ObstructionMapWidget(map: map, timestamp: 1, status: status)),
    );
    await tester.tap(find.text(M.obstructions.title));
    await tester.pumpAndSettle();
    final pixels = await _paintMinimap(tester, key: 'dish-obstruction-map');
    var hasTarget = false;
    for (var y = 12; y < 96; y++) {
      for (var x = 12; x < 54; x++) {
        final i = (y * 108 + x) * 4;
        if (pixels[i] == 244 && pixels[i + 1] == 209 && pixels[i + 2] == 101)
          hasTarget = true;
      }
    }
    expect(hasTarget, isTrue);
    expect(_whiteExtent(pixels), greaterThan(8));
    expect(find.byKey(const Key('dish-orientation-compass')), findsNothing);
    expect(tester.takeException(), isNull);
  });

  test('UT direction references use full attitude, including handedness', () {
    final map = ObstructionMapData.fromResponse(
      _map()..mapReferenceFrame = ObstructionMapReferenceFrame.FRAME_UT,
    )!;
    final up = DishOrientation.fromStatus(
      DishGetStatusResponse(
        ned2dishQuaternion: Quaternion(qScalar: 0, qX: 0, qY: 1, qZ: 0),
      ),
    );
    expect(map.horizontalDirection(0, up), const Offset(-1, 0));
    expect(map.horizontalDirection(90, up)!.dx, closeTo(0, 1e-12));
    expect(map.horizontalDirection(90, up)!.dy, closeTo(-1, 1e-12));
    // Panel +X faces east, +Y north, and +Z up. Its front view must have
    // north above the center and east to the right, without modifying cells.
    final northAligned = DishOrientation.fromStatus(
      DishGetStatusResponse(
        ned2dishQuaternion: Quaternion(
          qScalar: 0,
          qX: math.sqrt(0.5),
          qY: math.sqrt(0.5),
          qZ: 0,
        ),
      ),
    );
    expect(map.horizontalDirection(0, northAligned)!.dy, closeTo(-1, 1e-12));
    expect(map.horizontalDirection(90, northAligned)!.dx, closeTo(1, 1e-12));
    expect(map.horizontalDirection(180, northAligned)!.dy, closeTo(1, 1e-12));
    expect(map.horizontalDirection(270, northAligned)!.dx, closeTo(-1, 1e-12));
    final down = DishOrientation.fromStatus(
      DishGetStatusResponse(
        ned2dishQuaternion: Quaternion(qScalar: 1, qX: 0, qY: 0, qZ: 0),
      ),
    );
    expect(map.horizontalDirection(0, down), const Offset(1, 0));
    expect(map.horizontalDirection(90, down)!.dy, closeTo(-1, 1e-12));

    // Rotation of 90 degrees about Y makes north perpendicular to the panel.
    final vertical = DishOrientation.fromStatus(
      DishGetStatusResponse(
        ned2dishQuaternion: Quaternion(
          qScalar: math.sqrt(0.5),
          qX: 0,
          qY: math.sqrt(0.5),
          qZ: 0,
        ),
      ),
    );
    expect(map.horizontalDirection(0, vertical), isNull);
    expect(map.horizontalDirection(180, vertical), isNull);
    expect(map.horizontalDirection(90, vertical)!.dy, closeTo(-1, 1e-12));
  });

  test(
    'UT tilt changes cardinal spacing instead of applying a 2D rotation',
    () {
      // A 60-degree pitch followed by a 45-degree yaw. For geographic north,
      // the projected body vector is (cos(60)*cos(45), -sin(45));
      // its Y coordinate is reversed when converting to canvas coordinates.
      final attitude = DishAttitude.fromQuaternion(
        Quaternion(
          qScalar: math.cos(math.pi / 8) * math.cos(math.pi / 6),
          qX: -math.sin(math.pi / 8) * math.sin(math.pi / 6),
          qY: math.cos(math.pi / 8) * math.sin(math.pi / 6),
          qZ: math.sin(math.pi / 8) * math.cos(math.pi / 6),
        ),
      )!;
      final north = attitude.horizontalDirection(0)!;
      final east = attitude.horizontalDirection(90)!;
      expect(north.dx, closeTo(1 / math.sqrt(5), 1e-12));
      expect(north.dy, closeTo(2 / math.sqrt(5), 1e-12));
      expect(east.dx, closeTo(1 / math.sqrt(5), 1e-12));
      expect(east.dy, closeTo(-2 / math.sqrt(5), 1e-12));
      expect(north.dx * east.dx + north.dy * east.dy, closeTo(-0.6, 1e-12));
    },
  );

  test('captured attitude references are independent of boresight bearing', () {
    // Orientation only; no device identifiers or personal data from the capture.
    const values = [
      -0.005305043421685696,
      0.04815489798784256,
      0.9987706542015076,
      0.01049418281763792,
    ];
    Offset? reference;
    for (final sign in [1.0, -1.0]) {
      for (final bearing in [0.0, 90.0, 180.0, 270.0]) {
        final orientation = DishOrientation.fromStatus(
          DishGetStatusResponse(
            boresightAzimuthDeg: bearing,
            boresightElevationDeg: 90,
            ned2dishQuaternion: Quaternion(
              qScalar: values[0] * sign,
              qX: values[1] * sign,
              qY: values[2] * sign,
              qZ: values[3] * sign,
            ),
          ),
        );
        final north = orientation.attitude!.horizontalDirection(0)!;
        expect(north.dx, closeTo(-0.99535, 0.00001));
        expect(north.dy, closeTo(-0.096307, 0.00001));
        // The known west-side building is below the clear patch in the raw
        // capture. West must point down, east up, with the grid unchanged.
        final west = orientation.attitude!.horizontalDirection(270)!;
        final east = orientation.attitude!.horizontalDirection(90)!;
        expect(west.dy, greaterThan(0.99));
        expect(east.dy, lessThan(-0.99));
        if (reference != null) expect(north, reference);
        reference = north;
      }
    }
  });

  test('invalid attitude cannot be replaced by bearing or target bearing', () {
    for (final quaternion in [
      Quaternion(),
      Quaternion(qScalar: 1),
      Quaternion(qScalar: 0, qX: 0, qY: 0, qZ: 0),
      Quaternion(qScalar: 2, qX: 0, qY: 0, qZ: 0),
      Quaternion(qScalar: double.nan, qX: 0, qY: 0, qZ: 0),
      Quaternion(qScalar: double.infinity, qX: 0, qY: 0, qZ: 0),
    ]) {
      final orientation = DishOrientation.fromStatus(
        DishGetStatusResponse(
          ned2dishQuaternion: quaternion,
          boresightAzimuthDeg: 30,
          boresightElevationDeg: 60,
          alignmentStats: AlignmentStats(
            desiredBoresightAzimuthDeg: 45,
            desiredBoresightElevationDeg: 70,
          ),
        ),
      );
      final map = ObstructionMapData.fromResponse(
        _map()..mapReferenceFrame = ObstructionMapReferenceFrame.FRAME_UT,
      )!;
      expect(orientation.attitude, isNull);
      expect(map.horizontalDirection(0, orientation), isNull);
    }
    final unknown = ObstructionMapData.fromResponse(
      _map()..mapReferenceFrame = ObstructionMapReferenceFrame.FRAME_UNKNOWN,
    )!;
    expect(
      unknown.horizontalDirection(
        0,
        DishOrientation(
          attitude: DishAttitude.fromQuaternion(
            Quaternion(qScalar: 1, qX: 0, qY: 0, qZ: 0),
          ),
        ),
      ),
      isNull,
    );
  });

  test(
    'an explicitly unready attitude filter hides UT direction references',
    () {
      for (final state in AttitudeEstimationState.values) {
        final orientation = DishOrientation.fromStatus(
          DishGetStatusResponse(
            ned2dishQuaternion: Quaternion(qScalar: 0, qX: 0, qY: 1, qZ: 0),
            alignmentStats: AlignmentStats(attitudeEstimationState: state),
          ),
        );
        expect(
          orientation.attitude != null,
          state == AttitudeEstimationState.FILTER_CONVERGED,
        );
      }
    },
  );

  testWidgets('UT north-up display rotates the grid as attitude updates', (
    tester,
  ) async {
    final map = DishGetObstructionMapResponse(
      numRows: 3,
      numCols: 3,
      snr: [1, 1, 1, 1, 1, 1, 1, 0, 1],
      mapReferenceFrame: ObstructionMapReferenceFrame.FRAME_UT,
    );
    Uint8List? previous;
    CustomPainter? previousPainter;
    for (final angle in [0.0, math.pi / 4]) {
      // A level, sky-facing panel with changing yaw and identical boresight.
      final status = DishGetStatusResponse(
        boresightElevationDeg: 90,
        ned2dishQuaternion: Quaternion(
          qScalar: 0,
          qX: -math.sin(angle / 2),
          qY: math.cos(angle / 2),
          qZ: 0,
        ),
      );
      await tester.pumpWidget(
        _page(ObstructionMapWidget(map: map, timestamp: 1, status: status)),
      );
      final painter = tester
          .widget<CustomPaint>(
            find.byKey(const Key('dish-obstruction-minimap')),
          )
          .painter!;
      if (previousPainter != null)
        expect(painter.shouldRepaint(previousPainter), isTrue);
      previousPainter = painter;
      final pixels = await _paintMinimap(tester);
      if (previous != null) {
        expect(pixels, isNot(orderedEquals(previous)));
      }
      previous = pixels;
      final sample = angle == 0 ? (54 * 108 + 26) * 4 : (40 * 108 + 40) * 4;
      expect(pixels.sublist(sample, sample + 3), [0xe3, 0x4b, 0x54]);
      if (angle != 0) {
        // The rotated grid is padded to an upright rounded rectangle.
        final padding = (17 * 108 + 17) * 4;
        expect(pixels.sublist(padding, padding + 4), [0x65, 0x70, 0x80, 255]);
        final corner = (12 * 108 + 12) * 4;
        expect(pixels[corner + 3], 0);
      }
      expect(map.snr, [1, 1, 1, 1, 1, 1, 1, 0, 1]);
      expect(
        find.text(M.obstructions.dish_frame_oriented_short),
        findsOneWidget,
      );
      await tester.tap(find.text(M.obstructions.title));
      await tester.pumpAndSettle();
      expect(find.text(M.obstructions.dish_frame_oriented), findsOneWidget);
      expect(find.text(M.obstructions.bottom), findsNothing);
      expect(find.text(M.obstructions.sectors), findsNothing);
      expect(find.byKey(const Key('dish-orientation-compass')), findsNothing);
      expect(
        find.byKey(const Key('dish-orientation-minicompass')),
        findsNothing,
      );
      await tester.tap(find.byTooltip(M.general.close));
      await tester.pumpAndSettle();
    }
    expect(tester.takeException(), isNull);
  });

  testWidgets('coincident UT references remain readable on a vertical panel', (
    tester,
  ) async {
    final map = DishGetObstructionMapResponse(
      numRows: 3,
      numCols: 3,
      snr: List.filled(9, 1.0),
      mapReferenceFrame: ObstructionMapReferenceFrame.FRAME_UT,
    );
    final status = DishGetStatusResponse(
      ned2dishQuaternion: Quaternion(
        qScalar: math.cos(math.pi / 8) * math.sqrt(0.5),
        qX: -math.sin(math.pi / 8) * math.sqrt(0.5),
        qY: math.cos(math.pi / 8) * math.sqrt(0.5),
        qZ: math.sin(math.pi / 8) * math.sqrt(0.5),
      ),
    );
    await tester.pumpWidget(
      _page(ObstructionMapWidget(map: map, timestamp: 1, status: status)),
    );
    final pixels = await _paintMinimap(tester);
    // North and west share the top edge. Their grouped label must be wider
    // than one glyph, rather than both glyphs being painted over one another.
    final columns = <int>{};
    for (var y = 0; y < 12; y++) {
      for (var x = 12; x < 96; x++) {
        if (pixels[(y * 108 + x) * 4 + 3] != 0) columns.add(x);
      }
    }
    expect(columns.length, greaterThan(18));
    expect(tester.takeException(), isNull);
  });

  testWidgets('UT without valid attitude and unknown grids hide references', (
    tester,
  ) async {
    for (final frame in [
      ObstructionMapReferenceFrame.FRAME_UT,
      ObstructionMapReferenceFrame.FRAME_UNKNOWN,
    ]) {
      final map = DishGetObstructionMapResponse(
        numRows: 3,
        numCols: 3,
        snr: [1, 1, 1, 1, 1, 1, 1, 0, 1],
        mapReferenceFrame: frame,
        minElevationDeg: 10,
        maxThetaDeg: 80,
      );
      Uint8List? previous;
      for (final bearing in [0.0, 90.0, 180.0, 270.0, null]) {
        final status = DishGetStatusResponse(
          boresightElevationDeg: 88.65,
          ned2dishQuaternion: Quaternion(qScalar: 0, qX: 0, qY: 0, qZ: 0),
        );
        if (bearing != null) status.boresightAzimuthDeg = bearing;
        await tester.pumpWidget(
          _page(ObstructionMapWidget(map: map, timestamp: 1, status: status)),
        );
        final pixels = await _paintMinimap(tester);
        if (previous != null) expect(pixels, orderedEquals(previous));
        previous = pixels;
        // Raw bottom-center stays bottom-center despite bearing changes.
        final sample = (82 * 108 + 64) * 4;
        expect(pixels.sublist(sample, sample + 3), [0xe3, 0x4b, 0x54]);
        expect(_whiteExtent(pixels), 0);
        for (final (left, top) in [(48, 0), (96, 48), (48, 96), (0, 48)]) {
          var hasMark = false;
          for (var y = top; y < top + 12; y++) {
            for (var x = left; x < left + 12; x++) {
              if (pixels[(y * 108 + x) * 4 + 3] != 0) hasMark = true;
            }
          }
          expect(hasMark, isFalse);
        }
        await tester.tap(find.text(M.obstructions.title));
        await tester.pumpAndSettle();
        expect(
          find.text(
            frame == ObstructionMapReferenceFrame.FRAME_UT
                ? M.obstructions.dish_frame
                : M.obstructions.unknown_frame,
          ),
          findsAtLeastNWidgets(1),
        );
        expect(find.text(M.obstructions.bottom), findsNothing);
        expect(find.text(M.obstructions.sectors), findsNothing);
        expect(find.text('NE'), findsNothing);
        expect(find.byKey(const Key('dish-orientation-compass')), findsNothing);
        expect(
          find.byKey(const Key('dish-orientation-minicompass')),
          findsNothing,
        );
        expect(find.text(M.obstructions.arrow_guide), findsNothing);
        expect(find.text('88.7°'), findsOneWidget);
        await tester.tap(find.byTooltip(M.general.close));
        await tester.pumpAndSettle();
      }
    }
    expect(tester.takeException(), isNull);
  });

  testWidgets('missing or invalid elevation never draws a full-length arrow', (
    tester,
  ) async {
    for (final elevation in [null, double.nan, double.infinity, -91.0, 91.0]) {
      final status = DishGetStatusResponse(boresightAzimuthDeg: 90);
      if (elevation != null) status.boresightElevationDeg = elevation;
      await tester.pumpWidget(
        _page(ObstructionMapWidget(map: _map(), timestamp: 1, status: status)),
      );
      expect(_whiteExtent(await _paintMinimap(tester)), 0);
    }
    expect(tester.takeException(), isNull);
  });

  testWidgets('map arrows require a known frame and UT attitude', (
    tester,
  ) async {
    for (final frame in ObstructionMapReferenceFrame.values) {
      final map = DishGetObstructionMapResponse(
        numRows: 5,
        numCols: 5,
        snr: List.filled(25, 1),
        mapReferenceFrame: frame,
      );
      await tester.pumpWidget(
        _page(
          ObstructionMapWidget(
            map: map,
            timestamp: 1,
            status: DishGetStatusResponse(
              boresightAzimuthDeg: 90,
              boresightElevationDeg: 0,
            ),
          ),
        ),
      );
      final geographic = frame == ObstructionMapReferenceFrame.FRAME_EARTH;
      expect(
        _whiteExtent(await _paintMinimap(tester)),
        geographic ? greaterThan(20) : 0,
      );
      await tester.tap(find.text(M.obstructions.title));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('dish-obstruction-map')), findsOneWidget);
      expect(
        _whiteExtent(await _paintMinimap(tester, key: 'dish-obstruction-map')),
        geographic ? greaterThan(18) : 0,
      );
      expect(find.byKey(const Key('dish-orientation-compass')), findsNothing);
      expect(
        find.byKey(const Key('dish-orientation-minicompass')),
        findsNothing,
      );
      expect(
        find.text(M.obstructions.arrow_guide),
        geographic ? findsOneWidget : findsNothing,
      );
      expect(find.text(M.obstructions.dish_bearing), findsOneWidget);
      expect(find.text('90.0°'), findsOneWidget);
      await tester.tap(find.byTooltip(M.general.close));
      await tester.pumpAndSettle();
    }
    expect(tester.takeException(), isNull);
  });

  testWidgets('downward warning updates in the summary and open dialog', (
    tester,
  ) async {
    final status = ValueNotifier(
      DishGetStatusResponse(
        boresightAzimuthDeg: 90,
        boresightElevationDeg: -10,
      ),
    );
    addTearDown(status.dispose);
    await tester.pumpWidget(
      _page(
        ValueListenableBuilder<DishGetStatusResponse>(
          valueListenable: status,
          builder: (context, value, _) =>
              ObstructionMapWidget(map: _map(), timestamp: 1, status: value),
        ),
      ),
    );
    expect(find.text(M.obstructions.looking_downward), findsOneWidget);
    await tester.tap(find.text(M.obstructions.title));
    await tester.pumpAndSettle();
    expect(find.text(M.obstructions.looking_downward), findsNWidgets(2));
    status.value = DishGetStatusResponse(boresightElevationDeg: 10);
    await tester.pump();
    await tester.pump();
    expect(find.text(M.obstructions.looking_downward), findsNothing);
    expect(tester.takeException(), isNull);
  });

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
                    ned2dishQuaternion: Quaternion(
                      qScalar: 0,
                      qX: 0,
                      qY: 1,
                      qZ: 0,
                    ),
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
