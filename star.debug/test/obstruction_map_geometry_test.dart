import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/utils/obstruction_map_analysis.dart';
import 'package:star_debug/utils/obstruction_map_geometry.dart';
import 'package:star_debug/utils/obstructions.dart';

void _expectOffset(Offset? actual, Offset expected) {
  expect(actual, isNotNull);
  expect(actual!.dx, closeTo(expected.dx, 1e-10));
  expect(actual.dy, closeTo(expected.dy, 1e-10));
}

ObstructionMapGeometry _tiltedGeometry(double tilt) => ObstructionMapGeometry(
  ObstructionMapReferenceFrame.FRAME_UT,
  DishOrientation(
    attitude: DishAttitude.fromQuaternion(
      Quaternion(
        qScalar: math.cos(tilt / 2),
        qX: math.sin(tilt / 2),
        qY: 0,
        qZ: 0,
      ),
    ),
  ),
);

void main() {
  group('rectangle ray intersections', () {
    test('wide rectangle uses its nearest edge from a translated center', () {
      const rect = Rect.fromLTWH(10, 20, 120, 60);
      for (final (direction, expected) in [
        (const Offset(1, 0), const Offset(130, 50)),
        (const Offset(0, -1), const Offset(70, 20)),
        (const Offset(1, 1), const Offset(100, 80)),
        (const Offset(-4, -1), const Offset(10, 35)),
      ]) {
        _expectOffset(
          ObstructionMapLayout.rayToRect(rect, direction),
          expected,
        );
      }
    });

    test(
      'tall rectangle intersects side edges before its diagonal corners',
      () {
        const rect = Rect.fromLTWH(-30, -60, 60, 120);
        for (final (direction, expected) in [
          (const Offset(0, 1), const Offset(0, 60)),
          (const Offset(-1, 0), const Offset(-30, 0)),
          (const Offset(1, -1), const Offset(30, -30)),
          (const Offset(-1, 4), const Offset(-15, 60)),
        ]) {
          _expectOffset(
            ObstructionMapLayout.rayToRect(rect, direction),
            expected,
          );
        }
      },
    );

    test('square diagonal reaches a corner independent of ray magnitude', () {
      const rect = Rect.fromLTWH(10, 20, 80, 80);
      for (final scale in [0.25, 1.0, 100.0]) {
        _expectOffset(
          ObstructionMapLayout.rayToRect(rect, Offset(scale, -scale)),
          const Offset(90, 20),
        );
      }
    });

    test('zero, nonfinite, empty and inverted inputs have no intersection', () {
      const valid = Rect.fromLTWH(0, 0, 100, 100);
      for (final direction in [
        Offset.zero,
        const Offset(double.nan, 1),
        const Offset(1, double.infinity),
        const Offset(double.negativeInfinity, 0),
      ]) {
        expect(ObstructionMapLayout.rayToRect(valid, direction), isNull);
      }
      for (final rect in [
        Rect.zero,
        const Rect.fromLTWH(0, 0, 0, 100),
        const Rect.fromLTWH(0, 0, 100, 0),
        const Rect.fromLTRB(10, 0, 0, 100),
        const Rect.fromLTRB(0, 0, double.infinity, 100),
        const Rect.fromLTRB(double.nan, 0, 100, 100),
      ]) {
        expect(
          ObstructionMapLayout.rayToRect(rect, const Offset(1, 1)),
          isNull,
        );
      }
    });
  });

  group('map layout', () {
    test('wide and tall maps retain square cells and centered margins', () {
      for (final (rows, cols, expected) in [
        (2, 4, const Rect.fromLTWH(10, 10, 200, 100)),
        (4, 2, const Rect.fromLTWH(85, 10, 50, 100)),
      ]) {
        final layout = ObstructionMapLayout.fit(
          rows: rows,
          cols: cols,
          size: const Size(220, 120),
          rotation: 0,
          margin: 10,
        );
        expect(layout.rawRect, expected);
        expect(layout.displayRect, expected);
        expect(layout.cellPitch, expected.width / cols);
        expect(layout.cellPitch, expected.height / rows);
      }
    });

    test('quarter turn fits swapped bounds without stretching cells', () {
      final layout = ObstructionMapLayout.fit(
        rows: 2,
        cols: 4,
        size: const Size(220, 120),
        rotation: math.pi / 2,
        margin: 10,
      );
      expect(layout.cellPitch, closeTo(25, 1e-10));
      expect(layout.rawRect.width, closeTo(100, 1e-10));
      expect(layout.rawRect.height, closeTo(50, 1e-10));
      expect(layout.displayRect.width, closeTo(50, 1e-10));
      expect(layout.displayRect.height, closeTo(100, 1e-10));
      _expectOffset(layout.displayRect.center, const Offset(110, 60));
    });

    test('diagonal rotation contains all four corners at equal cell pitch', () {
      final layout = ObstructionMapLayout.fit(
        rows: 2,
        cols: 4,
        size: const Size(220, 120),
        rotation: math.pi / 4,
        margin: 10,
      );
      // At 45 degrees the bounding square has side (4 + 2) * pitch / sqrt(2).
      expect(layout.cellPitch, closeTo(100 * math.sqrt(2) / 6, 1e-10));
      expect(layout.rawRect.width / 4, closeTo(layout.cellPitch, 1e-10));
      expect(layout.rawRect.height / 2, closeTo(layout.cellPitch, 1e-10));
      expect(layout.displayRect.width, closeTo(100, 1e-10));
      expect(layout.displayRect.height, closeTo(100, 1e-10));
      _expectOffset(layout.displayRect.center, const Offset(110, 60));
      final center = layout.rawRect.center;
      for (final corner in [
        layout.rawRect.topLeft,
        layout.rawRect.topRight,
        layout.rawRect.bottomLeft,
        layout.rawRect.bottomRight,
      ]) {
        final delta = corner - center;
        final rotated =
            center +
            Offset(delta.dx - delta.dy, delta.dx + delta.dy) / math.sqrt(2);
        expect(layout.displayRect.inflate(1e-10).contains(rotated), isTrue);
      }
    });
  });

  group('projected sectors', () {
    test('tilt preserves relative lengths when inverting north and east', () {
      final geometry = _tiltedGeometry(math.pi / 3);
      // A 60-degree X tilt projects N to (1, 0), E to (0, -1/2).
      // Thus (3, -2) means 3 N + 4 E: 53.1 degrees, in NE-to-E.
      // Normalizing N and E separately would put it at 33.7 degrees instead.
      expect(geometry.sectorIndex(const Offset(3, -2)), 1);
      expect(geometry.sectorIndex(const Offset(-3, 2)), 5);
      expect(geometry.sectorIndex(Offset.zero), isNull);
      _expectOffset(
        geometry.sectorBoundaries![1],
        Offset(2 / math.sqrt(5), -1 / math.sqrt(5)),
      );
      expect(geometry.northRotation, closeTo(-math.pi / 2, 1e-10));
      _expectOffset(
        geometry.rotate(geometry.horizontalDirection(0)!),
        const Offset(0, -1),
      );
    });

    test('sector aggregation uses tilted geometry and excludes center', () {
      final signal = List<double>.filled(49, -1);
      signal[1 * 7 + 6] = 0; // Offset (3, -2).
      signal[3 * 7 + 3] = 0; // Center has no direction.
      final map = ObstructionMapData.fromResponse(
        DishGetObstructionMapResponse(
          numRows: 7,
          numCols: 7,
          snr: signal,
          mapReferenceFrame: ObstructionMapReferenceFrame.FRAME_UT,
        ),
      )!;
      final overlay = ObstructionSectorOverlay.fromMap(
        map,
        _tiltedGeometry(math.pi / 3),
      )!;
      expect(map.blocked, 2);
      expect(overlay.sectors[1].observed, 1);
      expect(overlay.sectors[1].blocked, 1);
      expect(overlay.sectors[1].blockedFraction, 1);
      expect(overlay.sectors.map((s) => s.observed).reduce((a, b) => a + b), 1);
      expect(overlay.sectors[0].blockedFraction, isNull);
    });

    test(
      'unknown frames, missing attitude and vertical panels hide sectors',
      () {
        for (final geometry in [
          ObstructionMapGeometry(
            ObstructionMapReferenceFrame.FRAME_UNKNOWN,
            const DishOrientation(),
          ),
          ObstructionMapGeometry(
            ObstructionMapReferenceFrame.FRAME_UT,
            const DishOrientation(),
          ),
          _tiltedGeometry(math.pi / 2),
        ]) {
          expect(geometry.sectorBoundaries, isNull);
          expect(geometry.sectorIndex(const Offset(1, -1)), isNull);
        }
      },
    );
  });
}
