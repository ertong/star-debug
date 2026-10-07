import 'dart:ui';

import 'package:star_debug/utils/obstruction_map_geometry.dart';
import 'package:star_debug/utils/obstructions.dart';

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
