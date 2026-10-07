import 'dart:math' as math;
import 'dart:typed_data';

import 'package:star_debug/grpc/starlink/starlink.pb.dart';

enum ObstructionCell { unknown, obstructed, reducedSignal, clear }

/// The API supplies a row-major signal grid, not a percentage of sky area.
/// Negative values mean unobserved; 0..1 describes received signal quality.
class ObstructionMapData {
  final int rows;
  final int cols;
  final List<double> signal;
  final ObstructionMapReferenceFrame frame;
  final int observed;
  final int blocked;
  final int reduced;
  final int clear;
  final int largestBlockedPatch;

  const ObstructionMapData._(
    this.rows,
    this.cols,
    this.signal,
    this.frame,
    this.observed,
    this.blocked,
    this.reduced,
    this.clear,
    this.largestBlockedPatch,
  );

  static ObstructionMapData? fromResponse(DishGetObstructionMapResponse map) {
    final rows = map.numRows;
    final cols = map.numCols;
    // Bound work and allocations for malformed imported payloads.
    if (rows <= 0 ||
        cols <= 0 ||
        rows > 1024 ||
        cols > 1024 ||
        rows * cols > 262144 ||
        map.snr.length != rows * cols) {
      return null;
    }
    final signal = List<double>.unmodifiable(map.snr);
    var observed = 0;
    var blocked = 0;
    var reduced = 0;
    var clear = 0;
    for (var i = 0; i < signal.length; i++) {
      final cell = classify(signal[i]);
      if (cell == ObstructionCell.unknown) continue;
      observed++;
      if (cell == ObstructionCell.obstructed) {
        blocked++;
      } else if (cell == ObstructionCell.reducedSignal) {
        reduced++;
      } else {
        clear++;
      }
    }
    return ObstructionMapData._(
      rows,
      cols,
      signal,
      map.mapReferenceFrame,
      observed,
      blocked,
      reduced,
      clear,
      _largestPatch(signal, cols),
    );
  }

  // Four-connected zero-signal cells. Counts describe pixels, not sky area.
  static int _largestPatch(List<double> signal, int cols) {
    final visited = Uint8List(signal.length);
    final queue = <int>[];
    var largest = 0;
    for (var start = 0; start < signal.length; start++) {
      if (visited[start] != 0 ||
          classify(signal[start]) != ObstructionCell.obstructed)
        continue;
      queue.clear();
      queue.add(start);
      visited[start] = 1;
      for (var head = 0; head < queue.length; head++) {
        final cell = queue[head];
        for (final neighbor in [
          if (cell >= cols) cell - cols,
          if (cell + cols < signal.length) cell + cols,
          if (cell % cols > 0) cell - 1,
          if (cell % cols < cols - 1) cell + 1,
        ]) {
          if (visited[neighbor] == 0 &&
              classify(signal[neighbor]) == ObstructionCell.obstructed) {
            visited[neighbor] = 1;
            queue.add(neighbor);
          }
        }
      }
      largest = math.max(largest, queue.length);
    }
    return largest;
  }

  static ObstructionCell classify(double value) {
    if (!value.isFinite || value < 0) return ObstructionCell.unknown;
    if (value == 0) return ObstructionCell.obstructed;
    if (value < 1) return ObstructionCell.reducedSignal;
    return ObstructionCell.clear;
  }

  double? get blockedObservedFraction =>
      observed == 0 ? null : blocked / observed;

  /// Earth source grids already have north at the top.
  bool get northUp => frame == ObstructionMapReferenceFrame.FRAME_EARTH;
}
