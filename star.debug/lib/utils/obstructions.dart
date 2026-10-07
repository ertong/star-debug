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

  /// Earth source grids already have north at the top.
  bool get northUp => frame == ObstructionMapReferenceFrame.FRAME_EARTH;

  /// A horizontal geographic direction expressed in the displayed plane.
  /// These are direction references, not geographic bearings of individual
  /// samples in an accumulated UT map.
  Offset? horizontalDirection(double bearing, DishOrientation orientation) {
    if (!bearing.isFinite) return null;
    if (northUp) {
      final radians = (bearing % 360) * math.pi / 180;
      return Offset(math.sin(radians), -math.cos(radians));
    }
    if (frame == ObstructionMapReferenceFrame.FRAME_UT) {
      return orientation.attitude?.horizontalDirection(bearing);
    }
    return null;
  }

  /// Rotate the displayed grid, keeping north at the top when defined.
  double? northRotation(DishOrientation orientation) {
    final north = horizontalDirection(0, orientation);
    return north == null ? null : -math.atan2(north.dx, -north.dy);
  }

  /// Eight display-plane wedges cut at geographic bearings 0, 45, ... 315.
  /// UT cuts follow the current compass projection, not historical sample
  /// attitudes or a reconstruction of geographic sky area.
  ObstructionSectorOverlay? sectorOverlay(DishOrientation orientation) {
    final Offset north;
    final Offset east;
    if (northUp) {
      north = const Offset(0, -1);
      east = const Offset(1, 0);
    } else if (frame == ObstructionMapReferenceFrame.FRAME_UT &&
        orientation.attitude != null) {
      final attitude = orientation.attitude!;
      north = Offset(attitude.north.dx, -attitude.north.dy);
      east = Offset(attitude.east.dx, -attitude.east.dy);
    } else {
      return null;
    }
    final determinant = north.dx * east.dy - east.dx * north.dy;
    // A vertical panel collapses horizontal compass directions onto a line.
    // Avoid dividing by numerical residue at this geometric singularity.
    if (determinant.abs() <= 1e-6) return null;
    final observed = List<int>.filled(8, 0);
    final blocked = List<int>.filled(8, 0);
    for (var i = 0; i < signal.length; i++) {
      final cell = classify(signal[i]);
      if (cell == ObstructionCell.unknown) continue;
      final x = i % cols + 0.5 - cols / 2;
      final y = i ~/ cols + 0.5 - rows / 2;
      if (x == 0 && y == 0) continue;
      // Invert the projected compass basis to classify the same wedges that
      // are drawn. Use cell distances: rendering gives both axes equal pitch.
      final n = (east.dy * x - east.dx * y) / determinant;
      final e = (north.dx * y - north.dy * x) / determinant;
      final bearing = (math.atan2(e, n) * 180 / math.pi) % 360;
      final index = (bearing / 45).floor() % 8;
      observed[index]++;
      if (cell == ObstructionCell.obstructed) blocked[index]++;
    }
    return ObstructionSectorOverlay(
      List<Offset>.unmodifiable([
        for (var i = 0; i < 8; i++) horizontalDirection(i * 45.0, orientation)!,
      ]),
      List<ObstructionSector>.unmodifiable([
        for (var i = 0; i < 8; i++)
          ObstructionSector(i, observed[i], blocked[i]),
      ]),
    );
  }

  /// Stylized heading indicator: its direction follows the map references,
  /// while its magnitude is the normal's horizontal component, cos(elevation).
  Offset? headingProjection(
    double? bearing,
    double? elevation,
    DishOrientation orientation,
  ) {
    if (!DishOrientation.canProject(bearing, elevation)) return null;
    final attitude = orientation.attitude;
    if (!northUp &&
        (frame != ObstructionMapReferenceFrame.FRAME_UT || attitude == null))
      return null;
    final fraction = DishOrientation.horizontalFraction(elevation)!;
    if (fraction == 0) return Offset.zero;
    var direction = horizontalDirection(bearing!, orientation);
    if (direction == null && attitude != null) {
      // At a horizontal panel normal, the ground heading is perpendicular to
      // the panel and its projection vanishes. The projected Down vector is
      // the tangent toward lower elevation: use the upward-side limit at zero
      // elevation, and reverse it for a below-horizon heading.
      final tangent = Offset(attitude.down.dx, -attitude.down.dy);
      if (tangent.distanceSquared <= 1e-12) return null;
      direction = tangent / tangent.distance * (elevation! < 0 ? -1 : 1);
    }
    return direction == null ? null : direction * fraction;
  }
}

class ObstructionSectorOverlay {
  final List<Offset> boundaries;
  final List<ObstructionSector> sectors;

  const ObstructionSectorOverlay(this.boundaries, this.sectors);
}

class ObstructionSector {
  final int index;
  final int observed;
  final int blocked;

  const ObstructionSector(this.index, this.observed, this.blocked);

  double? get blockedFraction => observed == 0 ? null : blocked / observed;
}

/// Hamilton quaternion rotating dish axes into North-East-Down coordinates.
/// Despite the telemetry name, R(q)'s +Z column gives the reported boresight.
/// Dish +X points right and +Y toward the panel top. Canvas rows increase
/// downward, so the projected Y coordinate changes sign for display.
class DishAttitude {
  final Offset north;
  final Offset east;
  final Offset down;

  const DishAttitude._(this.north, this.east, this.down);

  static DishAttitude? fromQuaternion(Quaternion quaternion) {
    if (!quaternion.hasQScalar() ||
        !quaternion.hasQX() ||
        !quaternion.hasQY() ||
        !quaternion.hasQZ())
      return null;
    final values = [
      quaternion.qScalar,
      quaternion.qX,
      quaternion.qY,
      quaternion.qZ,
    ];
    if (values.any((value) => !value.isFinite)) return null;
    final norm = math.sqrt(
      values.fold<double>(0, (sum, value) => sum + value * value),
    );
    // Accept float telemetry rounding, not arbitrary non-unit rotations.
    if ((norm - 1).abs() > 0.001) return null;
    final w = values[0] / norm;
    final x = values[1] / norm;
    final y = values[2] / norm;
    final z = values[3] / norm;
    // R(q)^T maps geographic vectors into the dish frame. Its first two
    // coordinates are the orthogonal projection onto the displayed plane.
    return DishAttitude._(
      Offset(1 - 2 * (y * y + z * z), 2 * (x * y - z * w)),
      Offset(2 * (x * y + z * w), 1 - 2 * (x * x + z * z)),
      Offset(2 * (x * z - y * w), 2 * (y * z + x * w)),
    );
  }

  Offset? horizontalDirection(double bearing) {
    if (!bearing.isFinite) return null;
    final radians = (bearing % 360) * math.pi / 180;
    final projected = north * math.cos(radians) + east * math.sin(radians);
    // A direction normal to the panel has no in-plane direction. The bound
    // only handles floating-point residue at this geometric singularity.
    if (projected.distanceSquared <= 1e-12) return null;
    return Offset(projected.dx, -projected.dy) / projected.distance;
  }
}

/// Reported orientation only: a dish-relative map cannot be geographically
/// aligned by simply rotating its grid, because tilt changes its projection.
class DishOrientation {
  final double? azimuth;
  final double? elevation;
  final double? desiredAzimuth;
  final double? desiredElevation;
  final DishAttitude? attitude;

  const DishOrientation({
    this.azimuth,
    this.elevation,
    this.desiredAzimuth,
    this.desiredElevation,
    this.attitude,
  });

  static DishOrientation fromStatus(DishGetStatusResponse? status) {
    if (status == null) return const DishOrientation();
    final alignment = status.hasAlignmentStats() ? status.alignmentStats : null;
    final attitudeReady =
        alignment?.hasAttitudeEstimationState() != true ||
        alignment!.attitudeEstimationState ==
            AttitudeEstimationState.FILTER_CONVERGED;
    return DishOrientation(
      attitude: attitudeReady && status.hasNed2dishQuaternion()
          ? DishAttitude.fromQuaternion(status.ned2dishQuaternion)
          : null,
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
      value != null && value.isFinite && value >= -90 && value <= 90
      ? value
      : null;

  static double? horizontalFraction(double? elevation) {
    if (_elevation(elevation) == null) return null;
    final fraction = math.cos(elevation! * math.pi / 180).abs();
    return elevation.abs() == 90 ? 0 : fraction;
  }

  static bool canProject(double? azimuth, double? elevation) =>
      horizontalFraction(elevation) != null &&
      (_bearing(azimuth) != null || horizontalFraction(elevation) == 0);

  bool get hasProjection => canProject(azimuth, elevation);
  bool get hasDesiredProjection => canProject(desiredAzimuth, desiredElevation);

  bool get lookingDownward => elevation != null && elevation! < 0;
  bool get headingUncertain => elevation != null && elevation!.abs() > 75;
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
