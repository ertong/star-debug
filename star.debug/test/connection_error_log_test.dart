import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:grpc/grpc.dart' hide Response;
import 'package:star_debug/controller/conn/connection_error_log.dart';
import 'package:star_debug/controller/conn/grpc_connection.dart';
import 'package:star_debug/grpc/starlink/starlink.pbgrpc.dart';

class _TestConnection extends GrpcConnection {
  _TestConnection({required super.notifyStream, required super.port})
    : super(host: '127.0.0.1');

  // Drive retries explicitly so the tests don't depend on the polling timer.
  @override
  Future<void> run() async {}

  @override
  Future<void> tickConnected(ClientChannel channel, DeviceClient stub) async {
    reqStream.add(ToDevice(request: Request(getStatus: GetStatusRequest())));
  }
}

class _FailingDevice extends DeviceServiceBase {
  @override
  Future<Response> handle(ServiceCall call, Request request) async =>
      Response();

  @override
  Stream<FromDevice> stream(ServiceCall call, Stream<ToDevice> request) async* {
    await request.first;
    throw GrpcError.unavailable('Connection refused');
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('failure reasons omit transport wrappers and socket details', () {
    final errors = <Object, String>{
      TimeoutException('after 5 seconds'): 'Connection timed out',
      GrpcError.unavailable(
        'Error connecting: SocketException: Connection refused, '
        'address = 192.168.100.1, port = 9200',
      ): 'Connection refused',
      const SocketException('Network is unreachable'): 'Network unreachable',
      const SocketException('No route to host'): 'Network unreachable',
      const SocketException('Failed host lookup: device.test'):
          'DNS lookup failed',
      const SocketException('Connection reset by peer'): 'Connection lost',
      GrpcError.permissionDenied(): 'Permission denied',
      GrpcError.unavailable(): 'Device unavailable',
      GrpcError.deadlineExceeded(): 'Connection timed out',
      GrpcError.unimplemented('Device does not support streaming'):
          'Device does not support streaming',
      const HandshakeException('certificate verification failed'):
          'TLS handshake failed',
    };
    for (final entry in errors.entries) {
      expect(ConnectionErrorLog.describe(entry.key), entry.value);
    }
  });

  test('fallback messages stay short and on one line', () {
    expect(ConnectionErrorLog.describe('  First\n\tsecond  '), 'First second');
    expect(ConnectionErrorLog.describe(''), 'Connection failed');
    final longMessage = List.filled(200, 'x').join();
    expect(ConnectionErrorLog.describe(longMessage), hasLength(100));
    expect(ConnectionErrorLog.describe(longMessage), endsWith('...'));
  });

  test('history keeps newest failures first and bounds retained entries', () {
    final log = ConnectionErrorLog();
    for (var i = 0; i < 210; i++) {
      log.add('Failure $i', time: DateTime(2026, 10, 6, 12, 0, i));
    }
    expect(log.entries, hasLength(200));
    expect(log.entries.first.message, 'Failure 209');
    expect(log.entries.first.time, DateTime(2026, 10, 6, 12, 0, 209));
    expect(log.entries.last.message, 'Failure 10');
    expect(() => log.entries.clear(), throwsUnsupportedError);
  });

  group('device connection failures', () {
    late Server server;
    late StreamController<void> notifications;
    late _TestConnection connection;

    setUp(() async {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(
            const MethodChannel(
              'dev.fluttercommunity.plus/connectivity_status',
            ),
            (_) async => null,
          );
      server = Server.create(services: [_FailingDevice()]);
      await server.serve(address: InternetAddress.loopbackIPv4, port: 0);
      notifications = StreamController<void>.broadcast();
      connection = _TestConnection(
        notifyStream: notifications,
        port: server.port!,
      );
    });

    tearDown(() async {
      connection.close();
      await connection.subsConnectivity?.cancel();
      await connection.subsStream?.cancel();
      await connection.subsChannel?.cancel();
      await connection.channel?.shutdown();
      await server.shutdown();
      await notifications.close();
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(
            const MethodChannel(
              'dev.fluttercommunity.plus/connectivity_status',
            ),
            null,
          );
    });

    test('stream failures notify listeners and survive a retry', () async {
      final firstFailure = notifications.stream
          .firstWhere((_) => connection.errorLog.entries.isNotEmpty)
          .timeout(const Duration(seconds: 5));
      await connection.tick();
      await firstFailure;
      expect(connection.errorLog.entries.single.message, 'Connection refused');

      final secondFailure = notifications.stream
          .firstWhere((_) => connection.errorLog.entries.length == 2)
          .timeout(const Duration(seconds: 5));
      await connection.tick();
      await secondFailure;
      expect(connection.errorLog.entries, hasLength(2));
      expect(connection.subsStream, isNull);
    });

    test('connection watchdog records its timeout before retrying', () async {
      await connection.tick();
      connection.connState = ConnectionState.connecting;
      connection.timeConnectingStart =
          DateTime.now().millisecondsSinceEpoch - 6000;
      await connection.tick();
      expect(connection.errorLog.entries.first.message, 'Connection timed out');
    });

    test(
      'missing status responses are recorded before restarting the channel',
      () async {
        await connection.tick();
        final now = DateTime.now().millisecondsSinceEpoch;
        connection.connState = ConnectionState.ready;
        connection.statusReceivedTime = now - 6000;
        connection.timeLastChannel = now - 10000;
        await connection.tick();
        expect(
          connection.errorLog.entries.first.message,
          'No status received for 5 seconds',
        );
      },
    );

    test('normal shutdown does not create a failure entry', () async {
      await connection.tick();
      connection.close();
      await connection.channel!.shutdown();
      await Future<void>.delayed(Duration.zero);
      expect(connection.errorLog.entries, isEmpty);
    });
  });
}
