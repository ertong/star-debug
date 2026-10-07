import 'dart:async';

import 'package:fixnum/fixnum.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:grpc/grpc.dart' hide Response;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:star_debug/controller/conn/dish_connection.dart';
import 'package:star_debug/utils/shared_prefs.dart';
import 'package:star_debug/grpc/starlink/starlink.pbgrpc.dart';
import 'package:star_debug/preloaded.dart';

class _DishConnection extends DishConnection {
  _DishConnection({required super.notifyStream});

  @override
  Future<void> run() async {}
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test(
    'map polling uses the existing stream and retains independently timed data',
    () async {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(
            const MethodChannel(
              'dev.fluttercommunity.plus/connectivity_status',
            ),
            (_) async => null,
          );
      addTearDown(
        () => TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
            .setMockMethodCallHandler(
              const MethodChannel(
                'dev.fluttercommunity.plus/connectivity_status',
              ),
              null,
            ),
      );
      SharedPreferences.setMockInitialValues({'dishIp': '192.168.100.2'});
      R = Preloaded();
      R.prefs = SharedPrefs();
      await R.prefs.initialized.future;
      final notifications = StreamController.broadcast();
      final connection = _DishConnection(notifyStream: notifications);
      final requests = <ToDevice>[];
      final requestStreams = [connection.reqStream];
      final listeners = [connection.reqStream.stream.listen(requests.add)];
      final channel = ClientChannel('127.0.0.1');
      addTearDown(() async {
        connection.close();
        await connection.subsConnectivity?.cancel();
        for (final listener in listeners) {
          await listener.cancel();
        }
        for (final stream in requestStreams) {
          await stream.close();
        }
        await notifications.close();
        await channel.shutdown();
      });
      final stub = DeviceClient(channel);
      await connection.tickConnected(channel, stub);
      await Future<void>.delayed(Duration.zero);
      expect(connection.host, '192.168.100.2');
      expect(
        requests.where((r) => r.request.hasDishGetObstructionMap()),
        isEmpty,
      );
      // The first successful status must request a map without another tick.
      final status = FromDevice(
        response: Response(
          dishGetStatus: DishGetStatusResponse(
            deviceInfo: DeviceInfo(id: 'dish-A'),
          ),
        ),
      );
      await connection.onReceived(status);
      await Future<void>.delayed(Duration.zero);
      expect(
        requests.where((r) => r.request.hasDishGetObstructionMap()),
        hasLength(1),
      );
      expect(requests.where((r) => r.request.hasGetStatus()), hasLength(1));
      expect(requests.where((r) => r.request.hasGetHistory()), hasLength(1));
      await connection.onReceived(status);
      await connection.tickConnected(channel, stub);
      await Future<void>.delayed(Duration.zero);
      expect(
        requests.where((r) => r.request.hasDishGetObstructionMap()),
        hasLength(1),
      );
      connection.dishGetObstructionMap.sentTime -= 31000;
      await connection.tickConnected(channel, stub);
      await Future<void>.delayed(Duration.zero);
      expect(
        requests.where((r) => r.request.hasDishGetObstructionMap()),
        hasLength(2),
      );

      final map = DishGetObstructionMapResponse(
        numRows: 1,
        numCols: 1,
        snr: [0],
      );
      final statusTime = connection.statusReceivedTime;
      await connection.onReceived(
        FromDevice(response: Response(dishGetObstructionMap: map)),
      );
      expect(connection.dishGetObstructionMap.data, same(map));
      expect(connection.dishGetObstructionMap.receivedTime, greaterThan(0));
      expect(connection.statusReceivedTime, statusTime);
      expect(statusTime, greaterThan(0));
      connection.dishGetObstructionMap.receivedTime -= 20000;
      expect(connection.dishGetObstructionMap.data, same(map));

      // A replacement stream must refresh immediately, even while the last
      // map poll is recent. Cached data remains available until the response.
      final mapTime = connection.dishGetObstructionMap.receivedTime;
      connection.reqStream = StreamController<ToDevice>();
      requestStreams.add(connection.reqStream);
      listeners.add(connection.reqStream.stream.listen(requests.add));
      await connection.tickConnected(channel, stub);
      await Future<void>.delayed(Duration.zero);
      expect(
        requests.where((r) => r.request.hasDishGetObstructionMap()),
        hasLength(2),
      );
      await connection.onReceived(status);
      await Future<void>.delayed(Duration.zero);
      expect(
        requests.where((r) => r.request.hasDishGetObstructionMap()),
        hasLength(3),
      );
      expect(connection.dishGetObstructionMap.data, same(map));
      expect(connection.dishGetObstructionMap.receivedTime, mapTime);
      await connection.onReceived(status);
      await connection.tickConnected(channel, stub);
      await Future<void>.delayed(Duration.zero);
      expect(
        requests.where((r) => r.request.hasDishGetObstructionMap()),
        hasLength(3),
      );
    },
  );

  for (final replaceStream in [false, true]) {
    test('changed dish clears its map and fetches immediately '
        '(replace stream: $replaceStream)', () async {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(
            const MethodChannel(
              'dev.fluttercommunity.plus/connectivity_status',
            ),
            (_) async => null,
          );
      addTearDown(
        () => TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
            .setMockMethodCallHandler(
              const MethodChannel(
                'dev.fluttercommunity.plus/connectivity_status',
              ),
              null,
            ),
      );
      SharedPreferences.setMockInitialValues({});
      R = Preloaded();
      R.prefs = SharedPrefs();
      await R.prefs.initialized.future;
      final notifications = StreamController.broadcast();
      final connection = _DishConnection(notifyStream: notifications);
      final requests = <ToDevice>[];
      final requestStreams = [connection.reqStream];
      final listeners = [connection.reqStream.stream.listen(requests.add)];
      final visibleMaps = <DishGetObstructionMapResponse?>[];
      final notificationListener = notifications.stream.listen(
        (_) => visibleMaps.add(connection.dishGetObstructionMap.data),
      );
      final channel = ClientChannel('127.0.0.1');
      addTearDown(() async {
        connection.close();
        await connection.subsConnectivity?.cancel();
        await notificationListener.cancel();
        for (final listener in listeners) {
          await listener.cancel();
        }
        for (final stream in requestStreams) {
          await stream.close();
        }
        await notifications.close();
        await channel.shutdown();
      });
      final stub = DeviceClient(channel);
      final statusA = FromDevice(
        response: Response(
          dishGetStatus: DishGetStatusResponse(
            deviceInfo: DeviceInfo(id: 'dish-A'),
          ),
        ),
      );
      await connection.onReceived(statusA);
      final mapA = DishGetObstructionMapResponse(
        numRows: 1,
        numCols: 1,
        snr: [0],
      );
      await connection.onReceived(
        FromDevice(
          response: Response(
            apiVersion: Int64(42),
            dishGetObstructionMap: mapA,
          ),
        ),
      );
      await Future<void>.delayed(Duration.zero);
      expect(connection.dishGetObstructionMap.data, same(mapA));
      expect(connection.dishGetObstructionMap.apiVersion, 42);
      expect(connection.dishGetObstructionMap.receivedTime, greaterThan(0));

      // Neither the same ID nor a temporarily missing ID invalidates a map.
      await connection.onReceived(statusA);
      await connection.onReceived(
        FromDevice(response: Response(dishGetStatus: DishGetStatusResponse())),
      );
      await connection.tickConnected(channel, stub);
      await Future<void>.delayed(Duration.zero);
      expect(connection.dishGetObstructionMap.data, same(mapA));
      expect(
        requests.where((r) => r.request.hasDishGetObstructionMap()),
        hasLength(1),
      );

      if (replaceStream) {
        connection.reqStream = StreamController<ToDevice>();
        requestStreams.add(connection.reqStream);
        listeners.add(connection.reqStream.stream.listen(requests.add));
      }
      visibleMaps.clear();
      final beforeChange = DateTime.now().millisecondsSinceEpoch;
      await connection.onReceived(
        FromDevice(
          response: Response(
            dishGetStatus: DishGetStatusResponse(
              deviceInfo: DeviceInfo(id: 'dish-B'),
            ),
          ),
        ),
      );
      await Future<void>.delayed(Duration.zero);
      expect(connection.dishGetStatus.data!.deviceInfo.id, 'dish-B');
      expect(connection.dishGetObstructionMap.data, isNull);
      expect(connection.dishGetObstructionMap.receivedTime, 0);
      expect(connection.dishGetObstructionMap.apiVersion, 0);
      expect(
        connection.dishGetObstructionMap.sentTime,
        greaterThanOrEqualTo(beforeChange),
      );
      expect(visibleMaps, [null]);
      expect(
        requests.where((r) => r.request.hasDishGetObstructionMap()),
        hasLength(2),
      );

      // The immediate fetch resets the interval; the next tick must not
      // duplicate it, and no old map reappears while the response is absent.
      await connection.tickConnected(channel, stub);
      await Future<void>.delayed(Duration.zero);
      expect(connection.dishGetObstructionMap.data, isNull);
      expect(
        requests.where((r) => r.request.hasDishGetObstructionMap()),
        hasLength(2),
      );
      final mapB = DishGetObstructionMapResponse(
        numRows: 1,
        numCols: 1,
        snr: [1],
      );
      await connection.onReceived(
        FromDevice(response: Response(dishGetObstructionMap: mapB)),
      );
      expect(connection.dishGetObstructionMap.data, same(mapB));
      expect(connection.dishGetObstructionMap.receivedTime, greaterThan(0));
    });
  }
}
