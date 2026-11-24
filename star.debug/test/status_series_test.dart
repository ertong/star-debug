import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/utils/status_series.dart';

StatusSeries _series(
  List<int> times,
  List<double?> quality, {
  List<int> reboots = const [],
}) {
  return StatusSeries(
    times: times,
    signalQuality: quality,
    gpsSats: List.filled(times.length, null),
    azimuth: List.filled(times.length, null),
    elevation: List.filled(times.length, null),
    reboots: reboots,
  );
}

void main() {
  group('StatusSeries', () {
    test(
      'rejects mismatched columns, non-increasing times, and bad reboots',
      () {
        expect(() => _series([1, 2], [0.5]), throwsArgumentError);
        expect(() => _series([2, 2], [0.5, 0.5]), throwsArgumentError);
        expect(
          () => _series([1, 2], [0.5, 0.5], reboots: [2]),
          throwsArgumentError,
        );
        expect(
          () => _series([1, 2, 3], [0.5, 0.5, 0.5], reboots: [2, 1]),
          throwsArgumentError,
        );
      },
    );

    test('derives gaps above 7 s, not at it', () {
      var s = _series([0, 7000, 14001, 16000], [0.9, 0.9, 0.9, 0.9]);
      expect(s.isGapAfter(0), isFalse);
      expect(s.isGapAfter(1), isTrue);
      expect(s.isGapAfter(2), isFalse);
      expect(s.gapCount, 1);
      expect(s.observedMs, 7000 + 1999);
    });

    test('window keeps the bounds and remaps reboots', () {
      var s = _series(
        [0, 1000, 2000, 3000],
        [0.1, 0.2, 0.3, 0.4],
        reboots: [1, 3],
      );
      var w = s.window(1000, 2000);
      expect(w.times, [1000, 2000]);
      expect(w.signalQuality, [0.2, 0.3]);
      expect(w.reboots, [0]);
      expect(s.last(1000).times, [2000, 3000]);
      expect(s.last(1000).reboots, [1]);
      expect(identical(s.window(0, 3000), s), isTrue);
    });

    test('signal quality statistics', () {
      var s = _series(
        [0, 2000, 4000, 6000, 8000, 20000],
        [0.9, null, 0.1, 0.8, 0.5, 0.95],
        reboots: [5],
      );
      var stats = s.signalQualityStats(startMs: 0, endMs: 40000)!;
      expect(stats.samples, 6);
      expect(stats.valueSamples, 5);
      expect(stats.last, 0.95);
      expect(stats.min, 0.1);
      expect(stats.max, 0.95);
      expect(stats.median, 0.8);
      expect(stats.p10, 0.1);
      expect(stats.goodShare, 3 / 5);
      expect(stats.badShare, 1 / 5);
      expect(stats.gaps, 1);
      expect(stats.reboots, 1);
      expect(stats.coverage, 8000 / 40000);
    });

    test('statistics for empty and single-sample input', () {
      expect(_series([], []).signalQualityStats(), isNull);
      expect(_series([0, 1], [null, null]).signalQualityStats(), isNull);
      var one = _series([5], [0.42]).signalQualityStats()!;
      expect(one.median, 0.42);
      expect(one.p10, 0.42);
      expect(one.coverage, 1.0);
    });

    test('bands use the rounded percentage', () {
      var s = _series([0, 1, 2], [0.7951, 0.2451, 0.2449]);
      var stats = s.signalQualityStats()!;
      expect(stats.goodShare, 1 / 3);
      expect(stats.badShare, 1 / 3);
    });

    test('percentile uses nearest rank', () {
      var sorted = [for (var i = 1; i <= 20; ++i) i.toDouble()];
      expect(StatusSeries.percentile(sorted, 10), 2);
      expect(StatusSeries.percentile(sorted, 50), 10);
      expect(StatusSeries.percentile(sorted, 100), 20);
      expect(StatusSeries.percentile([3], 10), 3);
    });
  });

  group('StatusSample', () {
    test('reads values from a status', () {
      var sample = StatusSample.of(
        DishGetStatusResponse(
          signalQuality: 0.87,
          gpsStats: DishGpsStats(gpsSats: 14),
          boresightAzimuthDeg: -18.43,
          boresightElevationDeg: 69.63,
        ),
      );
      expect(sample.signalQuality, closeTo(0.87, 1e-6));
      expect(sample.gpsSats, 14);
      expect(sample.azimuth, closeTo(-18.43, 1e-4));
      expect(sample.elevation, closeTo(69.63, 1e-4));
    });

    test('missing and nonfinite values are null', () {
      var sample = StatusSample.of(
        DishGetStatusResponse(signalQuality: double.nan),
      );
      expect(sample.signalQuality, isNull);
      expect(sample.gpsSats, isNull);
      expect(sample.azimuth, isNull);
      expect(sample.elevation, isNull);
    });

    test('falls back to alignment stats for boresight', () {
      var sample = StatusSample.of(
        DishGetStatusResponse(
          alignmentStats: AlignmentStats(
            boresightAzimuthDeg: 12.5,
            boresightElevationDeg: 70,
          ),
        ),
      );
      expect(sample.azimuth, 12.5);
      expect(sample.elevation, 70);
    });

    test('a 0/0 boresight is missing', () {
      var sample = StatusSample.of(
        DishGetStatusResponse(
          boresightAzimuthDeg: 0,
          boresightElevationDeg: 0,
          alignmentStats: AlignmentStats(
            boresightAzimuthDeg: 0,
            boresightElevationDeg: 0,
          ),
        ),
      );
      expect(sample.azimuth, isNull);
      expect(sample.elevation, isNull);
    });
  });
}
