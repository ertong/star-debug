import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/controller/conn/connection.dart';

class _Connection extends BaseConnection {
  final String host;
  bool closed = false;

  _Connection(this.host);

  @override
  void close() => closed = true;
}

void main() {
  test(
    'reconnect replaces the captured host with listeners still active',
    () async {
      var host = '192.168.100.1';
      var wakes = 0;
      final holder = ConnectionHolder((_) => _Connection(host), () => wakes++);
      final updates = <Object?>[];
      final listener = holder.stream.listen(updates.add);
      addTearDown(listener.cancel);
      holder.tick(0);
      final original = holder.conn!;

      host = '192.168.100.2';
      holder.reconnect();
      expect(original.closed, isTrue);
      expect(holder.conn, isNull);
      expect(holder.listened, 1);
      expect(wakes, 2);
      await Future<void>.delayed(Duration.zero);
      expect(updates, [null]);

      holder.tick(0);
      expect(holder.conn, isNot(same(original)));
      expect(holder.conn!.host, host);
      expect(holder.conn!.closed, isFalse);
    },
  );

  test(
    'reconnect without demand discards the connection without opening one',
    () async {
      var builds = 0;
      var wakes = 0;
      final holder = ConnectionHolder((_) {
        builds++;
        return _Connection('192.168.100.1');
      }, () => wakes++);
      final listener = holder.stream.listen((_) {});
      holder.tick(0);
      final original = holder.conn!;
      await listener.cancel();

      holder.reconnect();
      holder.reconnect();
      holder.tick(0);
      expect(original.closed, isTrue);
      expect(holder.conn, isNull);
      expect(builds, 1);
      expect(wakes, 1);
    },
  );

  test('reconnect respects the paused lifecycle before rebuilding', () async {
    final holder = ConnectionHolder((_) => _Connection('192.168.100.1'), () {});
    final listener = holder.stream.listen((_) {});
    addTearDown(listener.cancel);
    holder.tick(0);
    holder.reconnect();
    holder.tick(DateTime.now().millisecondsSinceEpoch);
    expect(holder.conn, isNull);
    holder.tick(0);
    expect(holder.conn, isNotNull);
    expect(holder.conn!.closed, isFalse);
  });
}
