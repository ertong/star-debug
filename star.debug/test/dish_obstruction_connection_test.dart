import 'dart:async';

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
      final listener = connection.reqStream.stream.listen(requests.add);
      final channel = ClientChannel('127.0.0.1');
      addTearDown(() async {
        connection.close();
        await connection.subsConnectivity?.cancel();
        await listener.cancel();
        await connection.reqStream.close();
        await notifications.close();
        await channel.shutdown();
      });
      final stub = DeviceClient(channel);
      await connection.tickConnected(channel, stub);
      await Future<void>.delayed(Duration.zero);
      expect(connection.host, '192.168.100.2');
      expect(
        requests.where((r) => r.request.hasDishGetObstructionMap()),
        hasLength(1),
      );
      expect(requests.where((r) => r.request.hasGetStatus()), hasLength(1));
      expect(requests.where((r) => r.request.hasGetHistory()), hasLength(1));
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
      await connection.onReceived(
        FromDevice(response: Response(dishGetObstructionMap: map)),
      );
      expect(connection.dishGetObstructionMap.data, same(map));
      expect(connection.dishGetObstructionMap.receivedTime, greaterThan(0));
      expect(connection.statusReceivedTime, 0);
      connection.dishGetObstructionMap.receivedTime -= 20000;
      expect(connection.dishGetObstructionMap.data, same(map));
    },
  );
}
