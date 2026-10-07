import 'dart:ui';

import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/utils/obstruction_map_geometry.dart';
import 'package:star_debug/utils/obstructions.dart';

/// Retains only the latest map and effective sector basis, including a missing
/// overlay. Heading changes do not affect directional sample counts.
class ObstructionSectorCache {
  (ObstructionMapData, ObstructionMapReferenceFrame, Offset?, Offset?)? _key;
  ObstructionSectorOverlay? _overlay;

  void clear() {
    _key = null;
    _overlay = null;
  }

  ObstructionSectorOverlay? get(
    ObstructionMapData map,
    ObstructionMapGeometry geometry,
  ) {
    final attitude = geometry.frame == ObstructionMapReferenceFrame.FRAME_UT
        ? geometry.orientation.attitude
        : null;
    final key = (map, geometry.frame, attitude?.north, attitude?.east);
    if (_key == key) return _overlay;
    _overlay = ObstructionSectorOverlay.fromMap(map, geometry);
    _key = key;
    return _overlay;
  }
}

/// Directional sample counts derived outside painting. These are display-plane
/// wedges, not calibrated geographic obstruction or sky-area percentages.
class ObstructionSectorOverlay {
  final List<Offset> boundaries;
  final List<ObstructionSector> sectors;

  const ObstructionSectorOverlay(this.boundaries, this.sectors);

  static ObstructionSectorOverlay? fromMap(
    ObstructionMapData map,
    ObstructionMapGeometry geometry,
  ) {
    final boundaries = geometry.sectorBoundaries;
    if (boundaries == null) return null;
    final observed = List<int>.filled(8, 0);
    final blocked = List<int>.filled(8, 0);
    for (var i = 0; i < map.signal.length; i++) {
      final cell = ObstructionMapData.classify(map.signal[i]);
      if (cell == ObstructionCell.unknown) continue;
      final index = geometry.sectorIndex(
        Offset(
          i % map.cols + 0.5 - map.cols / 2,
          i ~/ map.cols + 0.5 - map.rows / 2,
        ),
      );
      if (index == null) continue;
      observed[index]++;
      if (cell == ObstructionCell.obstructed) blocked[index]++;
    }
    return ObstructionSectorOverlay(
      boundaries,
      List<ObstructionSector>.unmodifiable([
        for (var i = 0; i < 8; i++)
          ObstructionSector(i, observed[i], blocked[i]),
      ]),
    );
  }
}

class ObstructionSector {
  final int index;
  final int observed;
  final int blocked;

  const ObstructionSector(this.index, this.observed, this.blocked);

  double? get blockedFraction => observed == 0 ? null : blocked / observed;
}
