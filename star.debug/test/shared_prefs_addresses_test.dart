import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/shared_prefs.dart';
import 'package:star_debug/utils/starlink_addresses.dart';

Future<SharedPrefs> _load(Map<String, Object> values) async {
  SharedPreferences.setMockInitialValues(values);
  final prefs = SharedPrefs();
  await prefs.initialized.future;
  return prefs;
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() => R = Preloaded());

  test('upgrade without address keys uses the original defaults', () async {
    final prefs = await _load({'darkMode': false});
    expect(prefs.data.dishIp ?? kDefaultDishIp, '192.168.100.1');
    expect(prefs.data.routerIp ?? kDefaultRouterIp, '192.168.1.1');
    expect(prefs.data.darkMode, isFalse);
    expect(prefs.prefs.containsKey('dishIp'), isFalse);
    expect(prefs.prefs.containsKey('routerIp'), isFalse);
  });

  test(
    'startup repairs unusable overrides without clearing other data',
    () async {
      for (final value in <Object>[
        '',
        '   ',
        '192.168.100.256',
        '192.168.100',
        'device.local',
        '192.168.+1.1',
        '192.168. 1.1',
        123,
        false,
      ]) {
        final prefs = await _load({
          'dishIp': value,
          'routerIp': value,
          'lang': 'uk',
          'autoStoreDiskLog': false,
        });
        expect(prefs.data.dishIp, isNull, reason: '$value');
        expect(prefs.data.routerIp, isNull, reason: '$value');
        expect(prefs.prefs.containsKey('dishIp'), isFalse);
        expect(prefs.prefs.containsKey('routerIp'), isFalse);
        expect(prefs.data.lang, 'uk');
        expect(prefs.data.autoStoreDiskLog, isFalse);
        final restarted = SharedPrefs();
        await restarted.initialized.future;
        expect(restarted.data.dishIp, isNull);
        expect(restarted.data.routerIp, isNull);
      }
    },
  );

  test('startup preserves and canonicalizes valid custom addresses', () async {
    final prefs = await _load({
      'dishIp': ' 192.168.100.002 ',
      'routerIp': '10.1.0.1',
    });
    expect(prefs.data.dishIp, '192.168.100.2');
    expect(prefs.data.routerIp, '10.1.0.1');
    expect(prefs.prefs.getString('dishIp'), '192.168.100.2');
    expect(prefs.prefs.getString('routerIp'), '10.1.0.1');
  });

  test('explicit defaults are removed from persisted overrides', () async {
    final prefs = await _load({
      'dishIp': '192.168.100.001',
      'routerIp': kDefaultRouterIp,
    });
    expect(prefs.data.dishIp, isNull);
    expect(prefs.data.routerIp, isNull);
    expect(prefs.prefs.containsKey('dishIp'), isFalse);
    expect(prefs.prefs.containsKey('routerIp'), isFalse);
  });

  test('saving blank or invalid addresses restores defaults durably', () async {
    final prefs = await _load({
      'dishIp': '192.168.100.2',
      'routerIp': '10.1.0.1',
    });
    final changed = prefs.stream.first;
    await prefs.save((p) {
      p.dishIp = ' ';
      p.routerIp = 'invalid';
    });
    final data = await changed as Prefs;
    expect(data.dishIp, isNull);
    expect(data.routerIp, isNull);
    expect(prefs.prefs.containsKey('dishIp'), isFalse);
    expect(prefs.prefs.containsKey('routerIp'), isFalse);
    final restarted = SharedPrefs();
    await restarted.initialized.future;
    expect(restarted.data.dishIp ?? kDefaultDishIp, kDefaultDishIp);
    expect(restarted.data.routerIp ?? kDefaultRouterIp, kDefaultRouterIp);
  });
}
