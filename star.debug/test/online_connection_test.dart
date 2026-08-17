import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/controller/conn/online_connection.dart';

void main() {
  test('probe does not overlap a slow request', () async {
    final response = Completer<HttpProbeResponse>();
    var requests = 0;
    var notifications = 0;
    final probe = HttpTest(
      'https://example.test',
      () => notifications++,
      runner: () {
        requests++;
        return response.future;
      },
    );

    expect(probe.trigger(), isTrue);
    expect(probe.trigger(), isFalse);
    expect(probe.isInitialCheck, isTrue);
    expect(probe.displayError, 'Checking…');
    expect(requests, 1);

    response.complete(const HttpProbeResponse(204, ''));
    await response.future;
    await Future<void>.delayed(Duration.zero);

    expect(probe.isOk, isTrue);
    expect(probe.resultOk, isTrue);
    expect(notifications, 1);
  });

  test('probe retains its completed result while refreshing', () async {
    final secondResponse = Completer<HttpProbeResponse>();
    var requests = 0;
    final probe = HttpTest(
      'https://example.test',
      () {},
      runner: () {
        requests++;
        if (requests == 1) {
          return Future.value(const HttpProbeResponse(200, 'ok'));
        }
        return secondResponse.future;
      },
    );

    probe.trigger();
    await Future<void>.delayed(Duration.zero);
    expect(probe.isOk, isTrue);

    probe.trigger();
    expect(probe.isInFlight, isTrue);
    expect(probe.isOk, isTrue);
    expect(probe.resultOk, isTrue);

    secondResponse.complete(const HttpProbeResponse(503, 'unavailable'));
    await secondResponse.future;
    await Future<void>.delayed(Duration.zero);

    expect(probe.isOk, isFalse);
    expect(probe.displayError, 'HTTP 503');
  });

  test('probe reports short actionable failure reasons', () async {
    final errors = <Object, String>{
      TimeoutException('slow'): 'Timeout',
      PlatformException(
        code: 'error',
        message: 'java.net.UnknownHostException: example.test',
      ): 'DNS failed',
      const SocketExceptionForTest('Network is unreachable'):
          'Network unavailable',
      StateError('unexpected'): 'Request failed',
    };

    for (final entry in errors.entries) {
      expect(HttpTest.describeError(entry.key), entry.value);
    }
  });

  test('HTTP failures include the response code', () async {
    final probe = HttpTest(
      'https://example.test',
      () {},
      runner: () async => const HttpProbeResponse(403, 'denied'),
    );

    probe.trigger();
    await Future<void>.delayed(Duration.zero);

    expect(probe.hasFailed, isTrue);
    expect(probe.errorReason, 'HTTP 403');
  });
}

class SocketExceptionForTest implements Exception {
  final String message;

  const SocketExceptionForTest(this.message);

  @override
  String toString() => 'SocketException: $message';
}
