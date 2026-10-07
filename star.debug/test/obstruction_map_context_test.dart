import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/utils/obstruction_map_context.dart';

void main() {
  const reference = 1710000100000;

  test('map and status freshness use independent reception times', () {
    final freshMap = ObstructionMapContext(
      sourceMode: MapSourceMode.live,
      referenceTime: reference,
      mapReceivedTime: reference - 30000,
      statusReceivedTime: reference - 5000,
    );
    expect(freshMap.mapAge, 30);
    expect(freshMap.mapFreshness, MapDataFreshness.fresh);
    expect(freshMap.statusAge, 5);
    expect(freshMap.statusFreshness, MapDataFreshness.delayed);
    expect(freshMap.useStatus, isFalse);

    final freshStatus = ObstructionMapContext(
      sourceMode: MapSourceMode.live,
      referenceTime: reference,
      mapReceivedTime: reference - 66000,
      statusReceivedTime: reference - 1000,
    );
    expect(freshStatus.mapFreshness, MapDataFreshness.delayed);
    expect(freshStatus.statusFreshness, MapDataFreshness.fresh);
    expect(freshStatus.useStatus, isTrue);
  });

  test('map freshness changes strictly after 65 seconds without rounding', () {
    for (final age in [64999, 65000, 65001]) {
      final context = ObstructionMapContext(
        sourceMode: MapSourceMode.live,
        referenceTime: reference,
        mapReceivedTime: reference - age,
      );
      expect(context.mapAge, age ~/ 1000);
      expect(
        context.mapFreshness,
        age <= 65000 ? MapDataFreshness.fresh : MapDataFreshness.delayed,
        reason: 'map age $age ms',
      );
    }
  });

  test('status expires at exactly five seconds', () {
    for (final mode in MapSourceMode.values) {
      for (final age in [4999, 5000, 5001]) {
        final context = ObstructionMapContext(
          sourceMode: mode,
          referenceTime: reference,
          statusReceivedTime: reference - age,
        );
        expect(context.statusAge, age ~/ 1000);
        expect(
          context.statusFreshness,
          age < 5000 ? MapDataFreshness.fresh : MapDataFreshness.delayed,
          reason: '$mode status age $age ms',
        );
        expect(context.useStatus, age < 5000);
      }
    }
  });

  test('missing, nonpositive and future times never invent freshness', () {
    for (final mode in MapSourceMode.values) {
      for (final received in [null, -1, 0, reference + 1]) {
        final context = ObstructionMapContext(
          sourceMode: mode,
          referenceTime: reference,
          mapReceivedTime: received,
          statusReceivedTime: received,
        );
        expect(context.mapAge, isNull);
        expect(context.statusAge, isNull);
        expect(context.mapFreshness, MapDataFreshness.unknown);
        expect(context.statusFreshness, MapDataFreshness.unknown);
        expect(context.useStatus, mode != MapSourceMode.live);
      }
      for (final invalidReference in [-1, 0]) {
        final context = ObstructionMapContext(
          sourceMode: mode,
          referenceTime: invalidReference,
          mapReceivedTime: reference,
          statusReceivedTime: reference,
        );
        expect(context.mapAge, isNull);
        expect(context.statusAge, isNull);
        expect(context.mapFreshness, MapDataFreshness.unknown);
        expect(context.statusFreshness, MapDataFreshness.unknown);
      }
    }
  });

  test('estimated status time remains unknown even at the reference time', () {
    for (final mode in MapSourceMode.values) {
      final context = ObstructionMapContext(
        sourceMode: mode,
        referenceTime: reference,
        mapReceivedTime: reference,
        statusReceivedTime: reference,
        statusTimestampIsEstimated: true,
      );
      expect(context.mapFreshness, MapDataFreshness.fresh);
      expect(context.statusAge, isNull);
      expect(context.statusFreshness, MapDataFreshness.unknown);
      expect(context.useStatus, mode != MapSourceMode.live);
    }
  });

  test(
    'historic imported and stored captures use their own reference time',
    () {
      for (final mode in [MapSourceMode.imported, MapSourceMode.stored]) {
        final context = ObstructionMapContext(
          sourceMode: mode,
          referenceTime: reference,
          mapReceivedTime: reference - 30000,
          statusReceivedTime: reference - 1000,
        );
        expect(context.mapAge, 30);
        expect(context.statusAge, 1);
        expect(context.mapFreshness, MapDataFreshness.fresh);
        expect(context.statusFreshness, MapDataFreshness.fresh);
        expect(context.useStatus, isTrue);
      }
    },
  );
}
