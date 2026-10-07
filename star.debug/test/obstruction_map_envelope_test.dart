import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/space/space_parser.dart';

DishGetObstructionMapResponse _map() => DishGetObstructionMapResponse(
  numRows: 2,
  numCols: 3,
  snr: [-1, 0, 0.5, 1, 1, 0],
  mapReferenceFrame: ObstructionMapReferenceFrame.FRAME_EARTH,
);

Map<String, dynamic> _rawMap() => {
  'numRows': 2,
  'numCols': 3,
  'snrList': [-1, 0, 0.5, 1, 1, 0],
  'mapReferenceFrame': 1,
};

Map<String, dynamic> _envelope(bool binary) => {
  if (binary) '_proto': base64Encode(_map().writeToBuffer()),
  if (!binary) 'rawMap': _rawMap(),
  'timestamp': 1710000000.125,
  'apiVersion': 42,
};

SpaceParser _parse(dynamic envelope) => SpaceParser.ofJson({
  'dish': {
    'timestamp': 1710000000,
    'rawStatus': {
      'deviceInfo': {'id': 'fixture-dish'},
      'signalQuality': 0.5,
    },
  },
  'router': {
    'timestamp': 1710000001,
    'rawStatus': {
      'deviceInfo': {'id': 'fixture-router'},
      'ipv4WanAddress': '192.0.2.1',
    },
  },
  'dishObstructionMap': envelope,
});

void _expectDeviceStatus(SpaceParser parser) {
  expect(parser.dishGetStatus!.deviceInfo.id, 'fixture-dish');
  expect(parser.dishGetStatus!.signalQuality, 0.5);
  expect(parser.routerGetStatus!.deviceInfo.id, 'fixture-router');
  expect(parser.routerGetStatus!.ipv4WanAddress, '192.0.2.1');
  expect(parser.toSnapshot().hasData(), isTrue);
}

void _expectPayload(SpaceParser parser) {
  expect(parser.dishGetObstructionMap!.writeToBuffer(), _map().writeToBuffer());
  expect(
    parser.toSnapshot().dishGetObstructionMap!.writeToBuffer(),
    _map().writeToBuffer(),
  );
  _expectDeviceStatus(parser);
}

void _expectNoMap(SpaceParser parser) {
  expect(parser.dishGetObstructionMap, isNull);
  expect(parser.obstructionMapTs, isNull);
  expect(parser.obstructionMapApiVersion, isNull);
  final snapshot = parser.toSnapshot();
  expect(snapshot.dishGetObstructionMap, isNull);
  expect(snapshot.obstructionMapTs, isNull);
  expect(snapshot.obstructionMapApiVersion, isNull);
  _expectDeviceStatus(parser);
}

void main() {
  for (final binary in [false, true]) {
    final source = binary ? 'protobuf' : 'JSON';

    test('$source payload and metadata reach the snapshot unchanged', () {
      final parser = _parse(_envelope(binary));
      _expectPayload(parser);
      expect(parser.obstructionMapTs, 1710000000125);
      expect(parser.obstructionMapApiVersion, 42);
      final snapshot = parser.toSnapshot();
      expect(snapshot.obstructionMapTs, 1710000000125);
      expect(snapshot.obstructionMapApiVersion, 42);
    });

    test(
      '$source payload survives invalid timestamps independently of API',
      () {
        for (final timestamp in <dynamic>[
          null,
          false,
          '1710000000',
          [],
          <String, dynamic>{},
          -1,
          0,
          0.0004,
          double.nan,
          double.infinity,
          double.negativeInfinity,
          8640000000001,
          9223372036854775807,
          double.maxFinite,
        ]) {
          final parser = _parse(_envelope(binary)..['timestamp'] = timestamp);
          _expectPayload(parser);
          expect(parser.obstructionMapTs, isNull, reason: '$timestamp');
          expect(parser.obstructionMapApiVersion, 42);
          expect(parser.toSnapshot().obstructionMapTs, isNull);
        }
      },
    );

    test('$source timestamps round seconds and accept the DateTime limit', () {
      for (final (timestamp, expected) in [
        (0.0005, 1),
        (1, 1000),
        (1.2345, 1235),
        (1710000000.125, 1710000000125),
        (8640000000000, 8640000000000000),
      ]) {
        final parser = _parse(_envelope(binary)..['timestamp'] = timestamp);
        _expectPayload(parser);
        expect(parser.obstructionMapTs, expected, reason: '$timestamp');
        expect(parser.obstructionMapApiVersion, 42);
      }
    });

    test(
      '$source payload survives invalid API values independently of time',
      () {
        for (final api in <dynamic>[
          null,
          true,
          '42',
          [],
          <String, dynamic>{},
          -1,
          -0.5,
          42.5,
          double.nan,
          double.infinity,
          double.negativeInfinity,
          9223372036854775808.0,
          jsonDecode('9223372036854775808'),
          double.maxFinite,
        ]) {
          final parser = _parse(_envelope(binary)..['apiVersion'] = api);
          _expectPayload(parser);
          expect(parser.obstructionMapApiVersion, isNull, reason: '$api');
          expect(parser.obstructionMapTs, 1710000000125);
          expect(parser.toSnapshot().obstructionMapApiVersion, isNull);
        }
      },
    );

    test(
      '$source API accepts integral values through signed 64-bit limits',
      () {
        for (final (api, expected) in [
          (0, 0),
          (0.0, 0),
          (42, 42),
          (42.0, 42),
          (9223372036854774784.0, 9223372036854774784),
          (9223372036854775807, 9223372036854775807),
        ]) {
          final parser = _parse(_envelope(binary)..['apiVersion'] = api);
          _expectPayload(parser);
          expect(parser.obstructionMapApiVersion, expected, reason: '$api');
          expect(parser.obstructionMapTs, 1710000000125);
        }
      },
    );

    test('$source payload survives missing or jointly malformed metadata', () {
      for (final malformed in [false, true]) {
        final envelope = _envelope(binary);
        if (malformed) {
          envelope['timestamp'] = 'invalid';
          envelope['apiVersion'] = 1.5;
        } else {
          envelope.remove('timestamp');
          envelope.remove('apiVersion');
        }
        final parser = _parse(envelope);
        _expectPayload(parser);
        expect(parser.obstructionMapTs, isNull);
        expect(parser.obstructionMapApiVersion, isNull);
      }
    });

    test(
      '$source standalone map does not change device import eligibility',
      () {
        final parser = SpaceParser.ofJson({
          'dishObstructionMap': _envelope(binary),
        });
        expect(
          parser.dishGetObstructionMap!.writeToBuffer(),
          _map().writeToBuffer(),
        );
        expect(parser.hasData(), isFalse);
        expect(parser.toSnapshot().hasData(), isFalse);
        expect(parser.toSnapshot().obstructionMapTs, 1710000000125);
      },
    );
  }

  test('absent and unsupported payloads never attach map metadata', () {
    for (final envelope in <dynamic>[
      null,
      true,
      'map',
      [],
      {'timestamp': 1710000000.125, 'apiVersion': 42},
      {'rawMap': [], 'timestamp': 1710000000.125, 'apiVersion': 42},
      {'_proto': 17, 'timestamp': 1710000000.125, 'apiVersion': 42},
    ]) {
      _expectNoMap(_parse(envelope));
    }
  });

  test('string protobuf wins over a conflicting valid JSON payload', () {
    final envelope = _envelope(true)
      ..['rawMap'] = {
        'numRows': 1,
        'numCols': 1,
        'snrList': [1],
      };
    final parser = _parse(envelope);
    _expectPayload(parser);
    expect(parser.obstructionMapTs, 1710000000125);
    expect(parser.obstructionMapApiVersion, 42);
  });

  test('corrupt protobuf never falls back to valid raw JSON', () {
    for (final corrupt in [
      'not base64!',
      // Valid base64 containing an unfinished protobuf field tag.
      base64Encode([0x80]),
    ]) {
      for (final withRaw in [false, true]) {
        final envelope = _envelope(true)..['_proto'] = corrupt;
        if (withRaw) envelope['rawMap'] = _rawMap();
        _expectNoMap(_parse(envelope));
      }
    }
  });

  test('non-string protobuf permits the existing raw JSON fallback', () {
    for (final value in <dynamic>[null, false, 17, [], <String, dynamic>{}]) {
      final parser = _parse(_envelope(false)..['_proto'] = value);
      _expectPayload(parser);
      expect(parser.obstructionMapTs, 1710000000125);
      expect(parser.obstructionMapApiVersion, 42);
    }
  });

  test('empty protobuf remains a parsed message without raw JSON fallback', () {
    final parser = _parse(_envelope(false)..['_proto'] = '');
    _expectDeviceStatus(parser);
    expect(parser.dishGetObstructionMap, isNotNull);
    expect(parser.dishGetObstructionMap!.snr, isEmpty);
    expect(parser.dishGetObstructionMap!.numRows, 0);
    expect(parser.obstructionMapTs, 1710000000125);
    expect(parser.obstructionMapApiVersion, 42);
  });

  test('raw JSON field conversion errors do not prevent device import', () {
    final parser = _parse(
      _envelope(false)..['rawMap'] = {'numRows': 'bad', 'snrList': 'bad'},
    );
    // jsonToProto tolerates field-level failures. Keep that compatibility
    // separate from map geometry validation and optional envelope isolation.
    _expectDeviceStatus(parser);
  });
}
