import 'dart:math' as math;
import 'dart:ui';

import 'package:star_debug/grpc/starlink/starlink.pb.dart';

/// Current display-plane references, not historical sample attitudes or a
/// reconstruction of geographic sky area in an accumulated UT map.
class ObstructionMapGeometry {
  final ObstructionMapReferenceFrame frame;
  final DishOrientation orientation;

  ObstructionMapGeometry(this.frame, this.orientation);

  bool get northUp => frame == ObstructionMapReferenceFrame.FRAME_EARTH;

  late final Offset? _north = northUp
      ? const Offset(0, -1)
      : frame == ObstructionMapReferenceFrame.FRAME_UT &&
            orientation.attitude != null
      ? Offset(orientation.attitude!.north.dx, -orientation.attitude!.north.dy)
      : null;
  late final Offset? _east = northUp
      ? const Offset(1, 0)
      : frame == ObstructionMapReferenceFrame.FRAME_UT &&
            orientation.attitude != null
      ? Offset(orientation.attitude!.east.dx, -orientation.attitude!.east.dy)
      : null;
  late final double? _determinant = _north == null || _east == null
      ? null
      : _north.dx * _east.dy - _east.dx * _north.dy;

  /// A horizontal geographic direction expressed in the displayed plane.
  Offset? horizontalDirection(double bearing) {
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
  late final double? northRotation = _northRotation();

  double? _northRotation() {
    final north = horizontalDirection(0);
    return north == null ? null : -math.atan2(north.dx, -north.dy);
  }

  double get rotation => northRotation ?? 0;

  Offset rotate(Offset direction) => Offset(
    direction.dx * math.cos(rotation) - direction.dy * math.sin(rotation),
    direction.dx * math.sin(rotation) + direction.dy * math.cos(rotation),
  );

  /// Eight display-plane cuts at geographic bearings 0, 45, ... 315.
  late final List<Offset>? sectorBoundaries = _hasSectorBasis
      ? List<Offset>.unmodifiable([
          for (var i = 0; i < 8; i++) horizontalDirection(i * 45.0)!,
        ])
      : null;

  // A vertical panel collapses horizontal compass directions onto a line.
  // Avoid dividing by numerical residue at this geometric singularity.
  bool get _hasSectorBasis => _determinant != null && _determinant.abs() > 1e-6;

  /// Classify a cell offset from the grid center using equal pitch on both
  /// axes. Invert the unnormalized projected basis so counts match the cuts.
  /// The center has no bearing and is excluded from directional counts.
  int? sectorIndex(Offset cell) {
    final north = _north;
    final east = _east;
    final determinant = _determinant;
    if (north == null ||
        east == null ||
        determinant == null ||
        determinant.abs() <= 1e-6 ||
        !cell.dx.isFinite ||
        !cell.dy.isFinite ||
        cell == Offset.zero) {
      return null;
    }
    final n = (east.dy * cell.dx - east.dx * cell.dy) / determinant;
    final e = (north.dx * cell.dy - north.dy * cell.dx) / determinant;
    final bearing = (math.atan2(e, n) * 180 / math.pi) % 360;
    return (bearing / 45).floor() % 8;
  }

  /// Stylized heading indicator: its direction follows the map references,
  /// while its magnitude is the normal's horizontal component, cos(elevation).
  Offset? headingProjection(double? bearing, double? elevation) {
    if (!DishOrientation.canProject(bearing, elevation)) return null;
    final attitude = orientation.attitude;
    if (!northUp &&
        (frame != ObstructionMapReferenceFrame.FRAME_UT || attitude == null))
      return null;
    final fraction = DishOrientation.horizontalFraction(elevation)!;
    if (fraction == 0) return Offset.zero;
    var direction = horizontalDirection(bearing!);
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

/// Fits a grid with square cells and exposes its rotated display bounds.
class ObstructionMapLayout {
  final Rect rawRect;
  final Rect displayRect;
  final double cellPitch;

  const ObstructionMapLayout._(this.rawRect, this.displayRect, this.cellPitch);

  factory ObstructionMapLayout.fit({
    required int rows,
    required int cols,
    required Size size,
    required double rotation,
    double margin = 0,
  }) {
    if (rows <= 0 ||
        cols <= 0 ||
        !size.width.isFinite ||
        !size.height.isFinite ||
        size.width < 0 ||
        size.height < 0 ||
        !rotation.isFinite ||
        !margin.isFinite ||
        margin < 0) {
      throw ArgumentError('Invalid obstruction map layout');
    }
    final available = Size(
      math.max(1, size.width - margin * 2),
      math.max(1, size.height - margin * 2),
    );
    final cosine = math.cos(rotation).abs();
    final sine = math.sin(rotation).abs();
    final pitch = math.min(
      available.width / (cols * cosine + rows * sine),
      available.height / (rows * cosine + cols * sine),
    );
    final rawRect = Rect.fromCenter(
      center: size.center(Offset.zero),
      width: cols * pitch,
      height: rows * pitch,
    );
    final displayRect = Rect.fromCenter(
      center: rawRect.center,
      width: rawRect.width * cosine + rawRect.height * sine,
      height: rawRect.height * cosine + rawRect.width * sine,
    );
    return ObstructionMapLayout._(rawRect, displayRect, pitch);
  }

  /// Intersect a ray from the rectangle center with its edge, preserving its
  /// angle on rectangular maps. Empty rectangles and zero rays have no edge.
  static Offset? rayToRect(Rect rect, Offset direction) {
    if (!rect.left.isFinite ||
        !rect.top.isFinite ||
        !rect.right.isFinite ||
        !rect.bottom.isFinite ||
        rect.width <= 0 ||
        rect.height <= 0 ||
        !direction.dx.isFinite ||
        !direction.dy.isFinite) {
      return null;
    }
    final magnitude = math.max(direction.dx.abs(), direction.dy.abs());
    if (magnitude == 0) return null;
    final ray = direction / magnitude;
    final distance = math.min(
      rect.width / 2 / ray.dx.abs(),
      rect.height / 2 / ray.dy.abs(),
    );
    if (!distance.isFinite) return null;
    return rect.center + ray * distance;
  }
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
