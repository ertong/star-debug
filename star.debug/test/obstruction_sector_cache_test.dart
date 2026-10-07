import 'dart:math' as math;

import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/utils/obstruction_map_analysis.dart';
import 'package:star_debug/utils/obstruction_map_geometry.dart';
import 'package:star_debug/utils/obstructions.dart';

ObstructionMapData _map() => ObstructionMapData.fromResponse(
  DishGetObstructionMapResponse(
    numRows: 2,
    numCols: 3,
    snr: [-1, 0, 0.5, 1, 1, 0],
    mapReferenceFrame: ObstructionMapReferenceFrame.FRAME_UT,
  ),
)!;

DishAttitude _attitude(double yaw) => DishAttitude.fromQuaternion(
  Quaternion(qScalar: 0, qX: -math.sin(yaw / 2), qY: math.cos(yaw / 2), qZ: 0),
)!;

class _CountingGeometry extends ObstructionMapGeometry {
  int boundaryReads = 0;

  _CountingGeometry(super.frame, super.orientation);

  @override
  List<Offset>? get sectorBoundaries {
    boundaryReads++;
    return super.sectorBoundaries;
  }
}

void main() {
  test('EARTH reuses the overlay across all orientation changes', () {
    final cache = ObstructionSectorCache();
    final map = _map();
    final overlay = cache.get(
      map,
      ObstructionMapGeometry(
        ObstructionMapReferenceFrame.FRAME_EARTH,
        const DishOrientation(),
      ),
    );
    expect(overlay, isNotNull);
    for (final yaw in [0.0, math.pi / 2]) {
      final geometry = _CountingGeometry(
        ObstructionMapReferenceFrame.FRAME_EARTH,
        DishOrientation(
          azimuth: yaw * 180 / math.pi,
          elevation: 45,
          desiredAzimuth: 200,
          desiredElevation: 70,
          attitude: _attitude(yaw),
        ),
      );
      expect(cache.get(map, geometry), same(overlay));
      expect(geometry.boundaryReads, 0);
    }
  });

  test('UT reuses equal basis values across heading and attitude objects', () {
    final cache = ObstructionSectorCache();
    final map = _map();
    final original = _CountingGeometry(
      ObstructionMapReferenceFrame.FRAME_UT,
      DishOrientation(attitude: _attitude(0)),
    );
    final overlay = cache.get(map, original);
    expect(overlay, isNotNull);
    expect(cache.get(map, original), same(overlay));
    expect(original.boundaryReads, 1);

    final updated = _CountingGeometry(
      ObstructionMapReferenceFrame.FRAME_UT,
      DishOrientation(
        attitude: _attitude(0),
        azimuth: 90,
        elevation: 30,
        desiredAzimuth: 180,
        desiredElevation: 50,
      ),
    );
    expect(
      updated.orientation.attitude,
      isNot(same(original.orientation.attitude)),
    );
    expect(cache.get(map, updated), same(overlay));
    expect(updated.boundaryReads, 0);
  });

  test('a changed UT basis replaces the cached overlay', () {
    final cache = ObstructionSectorCache();
    final map = _map();
    final original = cache.get(
      map,
      ObstructionMapGeometry(
        ObstructionMapReferenceFrame.FRAME_UT,
        DishOrientation(attitude: _attitude(0)),
      ),
    );
    final changed = _CountingGeometry(
      ObstructionMapReferenceFrame.FRAME_UT,
      DishOrientation(attitude: _attitude(math.pi / 2)),
    );
    final overlay = cache.get(map, changed);
    expect(overlay, isNotNull);
    expect(overlay, isNot(same(original)));
    expect(cache.get(map, changed), same(overlay));
    expect(changed.boundaryReads, 1);
  });

  test('new map identity replaces the only retained entry', () {
    final cache = ObstructionSectorCache();
    final map = _map();
    final replacement = _map();
    final geometry = ObstructionMapGeometry(
      ObstructionMapReferenceFrame.FRAME_EARTH,
      const DishOrientation(),
    );
    final first = cache.get(map, geometry);
    final second = cache.get(replacement, geometry);
    expect(first, isNotNull);
    expect(second, isNotNull);
    expect(second, isNot(same(first)));
    expect(cache.get(replacement, geometry), same(second));
    final revisited = cache.get(map, geometry);
    expect(revisited, isNot(same(first)));
    expect(revisited, isNot(same(second)));
  });

  test('frame changes invalidate even when the map identity is unchanged', () {
    final cache = ObstructionSectorCache();
    final map = _map();
    final orientation = DishOrientation(attitude: _attitude(0));
    final earth = cache.get(
      map,
      ObstructionMapGeometry(
        ObstructionMapReferenceFrame.FRAME_EARTH,
        orientation,
      ),
    );
    final ut = cache.get(
      map,
      ObstructionMapGeometry(
        ObstructionMapReferenceFrame.FRAME_UT,
        orientation,
      ),
    );
    expect(earth, isNotNull);
    expect(ut, isNotNull);
    expect(ut, isNot(same(earth)));
    expect(
      cache.get(
        map,
        ObstructionMapGeometry(
          ObstructionMapReferenceFrame.FRAME_UNKNOWN,
          orientation,
        ),
      ),
      isNull,
    );
  });

  test('missing and singular UT bases cache null and recover', () {
    final singular = DishAttitude.fromQuaternion(
      Quaternion(qScalar: 0, qX: 0, qY: math.sqrt(0.5), qZ: math.sqrt(0.5)),
    )!;
    for (final unavailable in [null, singular]) {
      final cache = ObstructionSectorCache();
      final map = _map();
      final fresh = ObstructionMapGeometry(
        ObstructionMapReferenceFrame.FRAME_UT,
        DishOrientation(attitude: _attitude(0)),
      );
      final initial = cache.get(map, fresh);
      expect(initial, isNotNull);
      final stale = _CountingGeometry(
        ObstructionMapReferenceFrame.FRAME_UT,
        DishOrientation(attitude: unavailable),
      );
      expect(cache.get(map, stale), isNull);
      expect(cache.get(map, stale), isNull);
      expect(stale.boundaryReads, 1);
      final equivalent = _CountingGeometry(
        ObstructionMapReferenceFrame.FRAME_UT,
        DishOrientation(attitude: unavailable, azimuth: 90),
      );
      expect(cache.get(map, equivalent), isNull);
      expect(equivalent.boundaryReads, 0);
      final recovered = cache.get(map, fresh);
      expect(recovered, isNotNull);
      expect(recovered, isNot(same(initial)));
      expect(cache.get(map, fresh), same(recovered));
    }
  });

  test('UNKNOWN caches its missing basis independently of attitude', () {
    final cache = ObstructionSectorCache();
    final map = _map();
    final initial = _CountingGeometry(
      ObstructionMapReferenceFrame.FRAME_UNKNOWN,
      const DishOrientation(),
    );
    expect(cache.get(map, initial), isNull);
    expect(cache.get(map, initial), isNull);
    expect(initial.boundaryReads, 1);
    final updated = _CountingGeometry(
      ObstructionMapReferenceFrame.FRAME_UNKNOWN,
      DishOrientation(attitude: _attitude(math.pi / 2)),
    );
    expect(cache.get(map, updated), isNull);
    expect(updated.boundaryReads, 0);
  });

  test('clear releases both populated and missing cached overlays', () {
    for (final frame in [
      ObstructionMapReferenceFrame.FRAME_EARTH,
      ObstructionMapReferenceFrame.FRAME_UNKNOWN,
    ]) {
      final cache = ObstructionSectorCache();
      final map = _map();
      final geometry = _CountingGeometry(frame, const DishOrientation());
      final first = cache.get(map, geometry);
      cache.clear();
      final next = cache.get(map, geometry);
      expect(geometry.boundaryReads, 2);
      if (frame == ObstructionMapReferenceFrame.FRAME_EARTH) {
        expect(next, isNotNull);
        expect(next, isNot(same(first)));
      } else {
        expect(next, isNull);
      }
      expect(cache.get(map, geometry), same(next));
      expect(geometry.boundaryReads, 2);
    }
  });
}
