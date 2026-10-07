import 'dart:math' as math;
import 'dart:typed_data';
import 'dart:ui';

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
  final List<ObstructionSector> sectors;

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
    this.sectors,
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
    final sectorObserved = List<int>.filled(8, 0);
    final sectorBlocked = List<int>.filled(8, 0);
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
      final x = (i % cols + 0.5 - cols / 2) / (cols / 2);
      final y = (rows / 2 - (i ~/ cols + 0.5)) / (rows / 2);
      // The center has no azimuth. It remains in whole-map statistics.
      if (x == 0 && y == 0) continue;
      final angle = math.atan2(x, y) * 180 / math.pi;
      final sector = ((angle + 22.5) % 360 / 45).floor();
      sectorObserved[sector]++;
      if (cell == ObstructionCell.obstructed) sectorBlocked[sector]++;
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
      List<ObstructionSector>.unmodifiable([
        for (var i = 0; i < 8; i++)
          ObstructionSector(i, sectorObserved[i], sectorBlocked[i]),
      ]),
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

  static const unknownColor = Color(0xff657080);
  static const obstructedColor = Color(0xffe34b54);
  static const reducedSignalColor = Color(0xffe7aa46);
  static const clearColor = Color(0xff279cde);

  static Color color(double value) {
    switch (classify(value)) {
      case ObstructionCell.unknown:
        return unknownColor;
      case ObstructionCell.obstructed:
        return obstructedColor;
      case ObstructionCell.clear:
        return clearColor;
      case ObstructionCell.reducedSignal:
        return value < 0.5
            ? Color.lerp(obstructedColor, reducedSignalColor, value * 2)!
            : Color.lerp(reducedSignalColor, clearColor, (value - 0.5) * 2)!;
    }
  }

  double? get blockedObservedFraction =>
      observed == 0 ? null : blocked / observed;
}

class ObstructionSector {
  final int index;
  final int observed;
  final int blocked;

  const ObstructionSector(this.index, this.observed, this.blocked);

  double? get blockedFraction => observed == 0 ? null : blocked / observed;
}

/// Reported orientation only: a dish-relative map cannot be geographically
/// aligned by simply rotating its grid, because tilt changes its projection.
class DishOrientation {
  final double? azimuth;
  final double? elevation;
  final double? desiredAzimuth;
  final double? desiredElevation;

  const DishOrientation({
    this.azimuth,
    this.elevation,
    this.desiredAzimuth,
    this.desiredElevation,
  });

  static DishOrientation fromStatus(DishGetStatusResponse? status) {
    if (status == null) return const DishOrientation();
    final alignment = status.hasAlignmentStats() ? status.alignmentStats : null;
    return DishOrientation(
      azimuth: _bearing(
        alignment?.hasBoresightAzimuthDeg() == true
            ? alignment!.boresightAzimuthDeg
            : status.hasBoresightAzimuthDeg()
            ? status.boresightAzimuthDeg
            : null,
      ),
      elevation: _elevation(
        alignment?.hasBoresightElevationDeg() == true
            ? alignment!.boresightElevationDeg
            : status.hasBoresightElevationDeg()
            ? status.boresightElevationDeg
            : null,
      ),
      desiredAzimuth: _bearing(
        alignment?.hasDesiredBoresightAzimuthDeg() == true
            ? alignment!.desiredBoresightAzimuthDeg
            : null,
      ),
      desiredElevation: _elevation(
        alignment?.hasDesiredBoresightElevationDeg() == true
            ? alignment!.desiredBoresightElevationDeg
            : null,
      ),
    );
  }

  static double? _bearing(double? value) =>
      value != null && value.isFinite ? value % 360 : null;
  static double? _elevation(double? value) =>
      value != null && value.isFinite && value >= 0 && value <= 90
      ? value
      : null;

  bool get headingUncertain => elevation != null && elevation! > 75;
  double? get azimuthOffset => azimuth == null || desiredAzimuth == null
      ? null
      : (desiredAzimuth! - azimuth! + 180) % 360 - 180;
  double? get elevationOffset => elevation == null || desiredElevation == null
      ? null
      : desiredElevation! - elevation!;
}

/// Raster export uses the same signal colors as the in-app 2D map.
Future<Uint8List> generateObstructionImgFromMap(
  DishGetObstructionMapResponse resp,
) async {
  final map = ObstructionMapData.fromResponse(resp);
  if (map == null) throw ArgumentError('Invalid obstruction map dimensions');
  final recorder = PictureRecorder();
  final canvas = Canvas(recorder);
  final paint = Paint();
  for (var row = 0; row < map.rows; row++) {
    for (var col = 0; col < map.cols; col++) {
      paint.color = ObstructionMapData.color(map.signal[row * map.cols + col]);
      canvas.drawRect(Rect.fromLTWH(col * 2, row * 2, 2, 2), paint);
    }
  }
  final picture = recorder.endRecording();
  try {
    final image = await picture.toImage(map.cols * 2, map.rows * 2);
    try {
      final bytes = await image.toByteData(format: ImageByteFormat.png);
      return bytes!.buffer.asUint8List(
        bytes.offsetInBytes,
        bytes.lengthInBytes,
      );
    } finally {
      image.dispose();
    }
  } finally {
    picture.dispose();
  }
}
