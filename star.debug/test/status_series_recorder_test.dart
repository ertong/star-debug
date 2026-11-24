import 'dart:async';

import 'package:fixnum/fixnum.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:grpc/grpc.dart' hide Response;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:star_debug/controller/conn/dish_connection.dart';
import 'package:star_debug/controller/status_series_recorder.dart';
import 'package:star_debug/grpc/starlink/starlink.pbgrpc.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/shared_prefs.dart';

DishGetStatusResponse _status({
  String id = 'dish-A',
  double? quality = 0.9,
  int? bootcount,
  int? uptimeS,
}) {
  var s = DishGetStatusResponse(deviceInfo: DeviceInfo(id: id));
  if (quality != null) s.signalQuality = quality;
  if (bootcount != null) s.deviceInfo.bootcount = bootcount;
  if (uptimeS != null) s.deviceState = DeviceState(uptimeS: Int64(uptimeS));
  return s;
}

class _DishConnection extends DishConnection {
  _DishConnection({required super.notifyStream});

  @override
  Future<void> run() async {}
}

void main() {
  group('StatusSeriesRecorder', () {
    test('records samples and copies them immutably', () {
      var r = StatusSeriesRecorder();
      expect(r.series(), isNull);
      r.add(1000, _status(quality: 0.5));
      r.add(3000, _status(quality: null));
      var s = r.series()!;
      expect(s.times, [1000, 3000]);
      expect(s.signalQuality, [0.5, null]);
      r.add(5000, _status());
      expect(s.length, 2);
      expect(() => s.times.add(1), throwsUnsupportedError);
      expect(r.series(sinceMs: 3000)!.times, [3000, 5000]);
    });

    test('ring keeps the most recent samples', () {
      var r = StatusSeriesRecorder();
      var n = StatusSeriesRecorder.capacity + 5;
      for (var i = 0; i < n; ++i)
        r.add(1000 + i * 2000, _status(quality: (i % 100) / 100));
      var s = r.series()!;
      expect(s.length, StatusSeriesRecorder.capacity);
      expect(s.times.first, 1000 + 5 * 2000);
      expect(s.times.last, 1000 + (n - 1) * 2000);
      expect(s.signalQuality.last, ((n - 1) % 100) / 100);
    });

    test(
      'each dish has its own series; an empty ID belongs to the current dish',
      () {
        var r = StatusSeriesRecorder();
        r.add(1000, _status(id: ''));
        expect(r.dishId, isNull);
        r.add(3000, _status(id: 'dish-A'));
        expect(r.dishId, 'dish-A');
        expect(r.series()!.length, 2);
        r.add(5000, _status(id: ''));
        expect(r.series()!.length, 3);
        r.add(7000, _status(id: 'dish-B'));
        r.add(9000, _status(id: ''));
        expect(r.dishId, 'dish-B');
        expect(r.series()!.times, [7000, 9000]);
        expect(r.series(dishId: 'dish-A')!.times, [1000, 3000, 5000]);
        expect(r.series(dishId: '')!.times, [7000, 9000]);
        expect(r.series(dishId: 'dish-C'), isNull);
        expect(r.lastTimeOf('dish-A'), 5000);
        expect(r.lastTimeOf(null), 9000);

        // Switching back resumes the first series; the time away is a gap.
        r.add(60000, _status(id: 'dish-A'));
        expect(r.dishId, 'dish-A');
        expect(r.series()!.times, [1000, 3000, 5000, 60000]);
        expect(r.series()!.gapCount, 1);
        expect(r.series(dishId: 'dish-B')!.times, [7000, 9000]);
      },
    );

    test('keeps the most recently updated dishes', () {
      var r = StatusSeriesRecorder();
      var t = 0;
      for (var id in ['d1', 'd2', 'd3', 'd4', 'd1', 'd5'])
        r.add(t += 2000, _status(id: id));
      expect(r.dishIds, ['d3', 'd4', 'd1', 'd5']);
      expect(r.series(dishId: 'd2'), isNull);
      expect(r.series(dishId: 'd1')!.length, 2);
    });

    test('reboot detection is per dish', () {
      var r = StatusSeriesRecorder();
      r.add(0, _status(id: 'dish-A', bootcount: 5, uptimeS: 100));
      r.add(2000, _status(id: 'dish-B', bootcount: 9, uptimeS: 5000));
      r.add(4000, _status(id: 'dish-A', bootcount: 5, uptimeS: 104));
      r.add(6000, _status(id: 'dish-B', bootcount: 10, uptimeS: 3));
      expect(r.series(dishId: 'dish-A')!.reboots, isEmpty);
      expect(r.series(dishId: 'dish-B')!.reboots, [1]);
    });

    test(
      'drops samples that do not move forward; clears on a large backward jump',
      () {
        var r = StatusSeriesRecorder();
        r.add(10000000, _status());
        r.add(10000000, _status());
        r.add(9999000, _status());
        expect(r.series()!.length, 1);
        r.add(10000000 - 2 * 3600 * 1000, _status());
        expect(r.series()!.times, [10000000 - 2 * 3600 * 1000]);
        expect(r.dishId, 'dish-A');
      },
    );

    test('reboot by bootcount', () {
      var r = StatusSeriesRecorder();
      r.add(1000, _status(bootcount: 5, uptimeS: 100));
      r.add(3000, _status(bootcount: 5, uptimeS: 102));
      r.add(
        5000,
        _status(bootcount: 6, uptimeS: 500),
      ); // uptime alone would miss it
      r.add(
        7000,
        _status(bootcount: 6, uptimeS: 1),
      ); // bootcount wins over uptime
      expect(r.series()!.reboots, [2]);
    });

    test(
      'reboot by expected uptime, including uptime above the previous value',
      () {
        var r = StatusSeriesRecorder();
        r.add(0, _status(uptimeS: 1000));
        r.add(2000, _status(uptimeS: 1002));
        r.add(4000, _status(uptimeS: 995)); // within tolerance
        // One hour unobserved; the dish rebooted 30 minutes ago.
        r.add(4000 + 3600 * 1000, _status(uptimeS: 1800));
        r.add(6000 + 3600 * 1000, _status(uptimeS: 1802));
        r.add(8000 + 3600 * 1000, _status(uptimeS: 5));
        expect(r.series()!.reboots, [3, 5]);
      },
    );

    test('no reboot without a previous sample or uptime', () {
      var r = StatusSeriesRecorder();
      r.add(0, _status(uptimeS: 1));
      r.add(2000, _status());
      r.add(4000, _status(uptimeS: 1));
      expect(r.series()!.reboots, isEmpty);
    });
  });

  test('DishConnection records one sample per status response and survives a new session', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    const channelName = MethodChannel(
      'dev.fluttercommunity.plus/connectivity_status',
    );
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channelName, (_) async => null);
    addTearDown(
      () => TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channelName, null),
    );
    SharedPreferences.setMockInitialValues({'dishIp': '192.168.100.2'});
    R = Preloaded();
    R.prefs = SharedPrefs();
    await R.prefs.initialized.future;
    final notifications = StreamController.broadcast();
    final connection = _DishConnection(notifyStream: notifications);
    final listener = connection.reqStream.stream.listen((_) {});
    final channel = ClientChannel('127.0.0.1');
    addTearDown(() async {
      connection.close();
      await connection.subsConnectivity?.cancel();
      await listener.cancel();
      await notifications.close();
      await channel.shutdown();
    });

    Future<void> receive(Response response) async {
      await connection.onReceived(FromDevice(response: response));
      // Receive times are wall-clock milliseconds; keep them distinct.
      await Future<void>.delayed(const Duration(milliseconds: 2));
    }

    await receive(Response(dishGetStatus: _status(quality: 0.7)));
    await receive(Response(dishGetHistory: DishGetHistoryResponse()));
    await receive(
      Response(dishGetObstructionMap: DishGetObstructionMapResponse()),
    );
    await receive(
      Response(getLocation: GetLocationResponse(source: PositionSource.GPS)),
    );
    expect(R.statusSeries.series()!.signalQuality, [0.7]);
    expect(R.statusSeries.lastTime, connection.dishGetStatus.receivedTime);

    connection.resetSessionData();
    await receive(Response(dishGetStatus: _status(quality: 0.8)));
    expect(R.statusSeries.series()!.signalQuality, [0.7, 0.8]);
  });
}
