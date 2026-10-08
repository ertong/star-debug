import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/space/space_parser.dart';
import 'package:star_debug/space/device_app.dart';
import 'package:star_debug/utils/obstruction_map_context.dart';
import 'package:star_debug/utils/share_export.dart';
import 'package:star_debug/utils/snapshot.dart';
import 'package:star_debug/utils/view_options.dart';

const terminalId = 'ut01234567-89abcdef-01234567';

Snapshot capture({Map<String, dynamic>? imported}) => Snapshot(
  timestamp: 100000,
  dishTs: 99000,
  dishApiVersion: 42,
  dishTsIsEstimated: true,
  dishGetStatus: DishGetStatusResponse(
    deviceInfo: DeviceInfo(id: terminalId, hardwareVersion: 'rev4_test'),
    popPingLatencyMs: 0,
    stowRequested: false,
    connectedRouters: ['router0123456789abcdef'],
    config: DishConfig(snowMeltMode: DishConfig_SnowMeltMode.ALWAYS_ON),
  ),
  routerGetStatus: WifiGetStatusResponse(
    deviceInfo: DeviceInfo(id: 'router0123456789abcdef'),
    dishId: terminalId,
    ipv4WanAddress: '192.0.2.1',
    clients: [WifiClient(name: 'test-client', macAddress: '02:00:00:00:00:11')],
    config: WifiConfig(
      macWan: '02:00:00:00:00:12',
      clientKey: [1, 2, 3],
      networks: [
        WifiConfig_Network(
          basicServiceSets: [
            WifiConfig_BasicServiceSet(
              ssid: 'test-network',
              bssid: '02:00:00:00:00:13',
              authWpa2: AuthWpa2(password: 'synthetic-password'),
            ),
          ],
        ),
      ],
    ),
  ),
  dishGetHistory: DishGetHistoryResponse(popPingLatencyMs: [1, 2, 3]),
  dishFeatures: {'testFeature': true},
  onlineJson: {'probe': 'ok', 'publicIp': '198.51.100.2'},
  dishGetObstructionMap: DishGetObstructionMapResponse(
    numRows: 1,
    numCols: 2,
    snr: [0, 1],
  ),
  obstructionMapTs: 98000,
  obstructionMapApiVersion: 41,
  debug_data: imported,
);

SharePayload export(
  Snapshot snap,
  ViewOptions options, [
  ShareFormat format = ShareFormat.json,
]) => ShareExport.build(
  snap,
  format: format,
  options: options,
  appVersion: 'test',
);

void main() {
  test(
    'explicit imported inventory metadata prefills only matching identifiers',
    () {
      final snap = capture(
        imported: {
          'registration': {
            'kit_number': 'KIT-IMPORTED',
            'accountNumber': 'ACCOUNT-IMPORTED',
          },
          'dish': {
            'rawStatus': {
              'deviceInfo': {'serialNumber': 'PHYSICAL-IMPORTED'},
            },
          },
          'router': {
            'deviceInfo': {'serialNumber': 'ROUTER-SERIAL'},
            'dishId': terminalId,
          },
        },
      );
      final ids = ShareExport.identifiersFor(snap);
      expect(ids.kitNumber, 'KIT-IMPORTED');
      expect(ids.accountNumber, 'ACCOUNT-IMPORTED');
      expect(ids.dishSerialNumber, 'PHYSICAL-IMPORTED');
      final manual = ShareExport.identifiersFor(
        snap,
        identifiers: const ShareIdentifiers(
          kitNumber: 'KIT-MANUAL',
          dishSerialNumber: 'PHYSICAL-MANUAL',
          accountNumber: 'ACCOUNT-MANUAL',
        ),
      );
      expect(manual.kitNumber, 'KIT-MANUAL');
      expect(manual.accountNumber, 'ACCOUNT-MANUAL');
      expect(manual.dishSerialNumber, 'PHYSICAL-MANUAL');
      final unrelated = ShareExport.identifiersFor(
        capture(
          imported: {
            'router': {
              'deviceInfo': {'serialNumber': 'ROUTER-SERIAL'},
              'dishId': terminalId,
            },
            'device': {'serialNumber': 'PHONE-SERIAL'},
          },
        ),
      );
      expect(unrelated.dishSerialNumber, isEmpty);
      expect(unrelated.kitNumber, isEmpty);
      expect(
        export(
          snap,
          ViewOptions()..hideIds = true,
          ShareFormat.inventoryText,
        ).text,
        isNot(contains('IMPORTED')),
      );
    },
  );

  test('compact inventory includes hardware and software versions', () {
    final snap = capture();
    snap.dishGetStatus!.deviceInfo.softwareVersion = 'dish-test-version';
    snap.routerGetStatus!.deviceInfo.hardwareVersion = 'router-test-hardware';
    snap.routerGetStatus!.deviceInfo.softwareVersion = 'router-test-version';
    final report = export(snap, ViewOptions(), ShareFormat.inventoryText).text;
    expect(report, contains('- Terminal software: dish-test-version'));
    expect(report, contains('- Router software: router-test-version'));
    expect(report, contains('- Terminal hardware: rev4\\_test'));
    expect(report, contains('- Router hardware: router-test-hardware'));
  });

  test('Markdown inventory lists fields and escapes values without losing identifiers', () {
    final snap = capture(
      imported: {
        'registration': {'kitNumber': 'KIT|[test]\nsecond line'},
      },
    );
    snap.dishGetStatus!.deviceInfo.hardwareVersion = r'rev_*`<test>\';
    final payload = export(snap, ViewOptions(), ShareFormat.inventoryText);
    expect(payload.text, startsWith('# Starlink inventory\n\n'));
    expect(payload.text, isNot(contains('**')));
    expect(payload.text, isNot(contains('| --- |')));
    expect(payload.text, contains('- Capture: '));
    expect(
      payload.text,
      contains(r'- KIT number: KIT\|\[test\]<br>second line'),
    );
    expect(payload.text, contains(r'- Terminal hardware: rev\_\*\`\<test\>\\'));
    expect(payload.filename, endsWith('.md'));
    expect(payload.mimeType, 'text/markdown');
    expect(
      snap.debug_data!['registration']['kitNumber'],
      'KIT|[test]\nsecond line',
    );
    final hidden = export(
      snap,
      ViewOptions()..hideIds = true,
      ShareFormat.inventoryText,
    ).text;
    expect(hidden, isNot(contains('second line')));
    expect(hidden, contains(r'- KIT number: \[hidden\]'));
  });

  test(
    'Markdown diagnostics retain nested fields and escape imported content',
    () {
      final snap = capture(
        imported: {
          'custom*field': {
            'note': '[link](https://example.invalid)\n# heading',
            'records': [
              {'value': '**literal**', 'empty': <String, dynamic>{}},
              [],
              null,
            ],
          },
        },
      );
      final payload = export(snap, ViewOptions(), ShareFormat.diagnosticText);
      expect(payload.text, startsWith('# Starlink diagnostic report\n\n'));
      expect(payload.text, isNot(contains('**')));
      expect(payload.text, contains('\n\n## Terminal status\n\n'));
      expect(payload.text, contains(r'- Custom\*field:'));
      expect(
        payload.text,
        contains(r'    - Note: \[link\](https://example.invalid)<br># heading'),
      );
      expect(
        payload.text,
        contains('        - Item 1:\n            - Value: '),
      );
      expect(payload.text, contains(r'\*\*literal\*\*'));
      expect(payload.text, contains('                - _No fields available_'));
      expect(payload.text, contains('            - _None_'));
      expect(payload.text, contains('        - Unknown'));
      expect(payload.filename, endsWith('.md'));
      expect(payload.mimeType, 'text/markdown');
    },
  );

  test(
    'large numeric summaries retain nonfinite counts and obstruction classes',
    () {
      final snap = Snapshot(
        timestamp: 1000,
        dishGetHistory: DishGetHistoryResponse(
          popPingLatencyMs: [...List.filled(899, 10.0), double.nan],
        ),
        dishGetObstructionMap: DishGetObstructionMapResponse(
          numRows: 5,
          numCols: 6,
          snr: [
            ...List.filled(6, -1.0),
            ...List.filled(6, 0.0),
            ...List.filled(6, 0.5),
            ...List.filled(12, 1.0),
          ],
        ),
      );
      final report = export(
        snap,
        ViewOptions(),
        ShareFormat.diagnosticText,
      ).text;
      expect(report, contains('900 samples; 1 nonfinite; min 10'));
      expect(report, contains('Unobserved Samples: 6'));
      expect(report, contains('Blocked Samples: 6'));
      expect(report, contains('Reduced Signal Samples: 6'));
      expect(report, contains('Clear Samples: 12'));
      expect(report, contains('Sample counts, not sky area or downtime'));
    },
  );

  test(
    'manual UTID override is honored and malformed telemetry is not a UTID',
    () {
      expect(
        ShareExport.identifiersFor(
          capture(),
          identifiers: const ShareIdentifiers(
            utid: 'ut11111111-22222222-33333333',
          ),
        ).utid,
        '11111111-22222222-33333333',
      );
      expect(
        ShareExport.identifiersFor(
          Snapshot(
            timestamp: 0,
            dishGetStatus: DishGetStatusResponse(
              deviceInfo: DeviceInfo(id: 'unrecognized-device'),
            ),
          ),
        ).utid,
        isEmpty,
      );
    },
  );

  test(
    'standalone application network metadata and locations respect privacy',
    () {
      final app = DeviceApp()
        ..device_app_version = 'test-app-version'
        ..device_model = 'test-phone'
        ..wifi_ip = '192.0.2.50'
        ..plugins = [
          DeviceNetwork()
            ..gateway_ip = '192.0.2.51'
            ..wifi_bssid = '02:00:00:00:00:51'
            ..wifi_link_freq = 5200,
        ];
      final snap = Snapshot(
        timestamp: 1000,
        deviceApp: app,
        dishGetLocationGPS: GetLocationResponse(
          lla: LLAPosition(lat: 12.25, lon: 34.5),
        ),
        dishGetStatus: DishGetStatusResponse(
          gpsStats: DishGpsStats(gpsValid: true),
        ),
      );
      final visible = export(
        snap,
        ViewOptions(),
        ShareFormat.diagnosticText,
      ).text;
      expect(visible, contains('test-phone'));
      expect(visible, contains('test-app-version'));
      expect(visible, contains('5200'));
      expect(visible, contains('12.25'));
      final hidden = export(
        snap,
        ViewOptions()
          ..hideIds = true
          ..hideIp = true
          ..hideMac = true
          ..hideLocation = true,
        ShareFormat.diagnosticText,
      ).text;
      expect(hidden, isNot(contains('192.0.2.5')));
      expect(hidden, isNot(contains('02:00:00')));
      expect(hidden, isNot(contains('12.25')));
      expect(hidden, contains('Gps Valid: true'));
      expect(app.wifi_ip, '192.0.2.50');
    },
  );

  test('JSON removes binary and credentials and retains parseable status', () {
    final original = capture();
    final payload = export(original, ViewOptions());
    expect(payload.text, isNot(contains('synthetic-password')));
    expect(payload.text, isNot(contains('clientKey')));
    expect(payload.text, isNot(contains('_proto')));
    final parsed = SpaceParser.ofJsonStr(payload.text).toSnapshot();
    expect(parsed.dishGetStatus!.deviceInfo.id, terminalId);
    expect(parsed.dishGetStatus!.hasPopPingLatencyMs(), isTrue);
    expect(parsed.dishGetStatus!.popPingLatencyMs, 0);
    expect(
      parsed.dishGetStatus!.config.snowMeltMode,
      DishConfig_SnowMeltMode.ALWAYS_ON,
    );
    expect(parsed.dishFeatures, {'testFeature': true});
    expect(parsed.dishTs, 99000);
    expect(parsed.dishTsIsEstimated, isTrue);
    expect(parsed.dishGetObstructionMap!.snr, [0, 1]);
    expect(
      original
          .routerGetStatus!
          .config
          .networks
          .first
          .basicServiceSets
          .first
          .authWpa2
          .password,
      'synthetic-password',
    );
    expect(payload.filename, isNot(contains(terminalId)));
    expect(payload.subject, isNot(contains(terminalId)));
  });

  test(
    'ID redaction includes connected routers and binary-only imported status',
    () {
      final original = capture();
      final raw = {
        'dish': {
          '_proto': base64Encode(original.dishGetStatus!.writeToBuffer()),
        },
        'router': {
          '_proto': base64Encode(original.routerGetStatus!.writeToBuffer()),
        },
        'unknownDiagnostic': {'meaningfulCounter': 7},
        'metadata': {
          'device_id': 'synthetic-device',
          'accountNumber': 'synthetic-account',
        },
        'meshConfigsMap': [
          [
            'router0123456789abcdef',
            {'counter': 2},
          ],
        ],
        'nested': {'authToken': 'synthetic-token', '_proto': 'opaque'},
      };
      final before = jsonEncode(raw);
      final payload = export(
        capture(imported: raw),
        ViewOptions()..hideIds = true,
      );
      expect(payload.text, isNot(contains('01234567')));
      expect(payload.text, isNot(contains('synthetic-account')));
      expect(payload.text, isNot(contains('synthetic-device')));
      expect(payload.text, isNot(contains('synthetic-token')));
      expect(payload.text, isNot(contains('_proto')));
      expect(payload.text, contains('meaningfulCounter'));
      expect(jsonEncode(raw), before);
      final parsed = SpaceParser.ofJsonStr(payload.text);
      expect(parsed.dishGetStatus!.deviceInfo.id, isEmpty);
      expect(parsed.dishGetStatus!.deviceInfo.hardwareVersion, 'rev4_test');
      expect(parsed.dishGetStatus!.connectedRouters, isEmpty);
    },
  );

  test(
    'each privacy option removes its aliases without removing other groups',
    () {
      final raw = <String, dynamic>{
        'extra': {
          'id': 'synthetic-id',
          'macWan': '02:00:00:00:00:12',
          'linkAddress': '02:00:00:00:00:13',
          'ipv6AddressesList': ['2001:db8::1'],
          'gatewayIp': '192.0.2.10',
          'gpsLatitude': 12.25,
          'lla': {'lat': 12.25, 'lon': 34.5},
          'serviceAddress': 'synthetic location',
          'clientConfigsList': [
            {'name': 'synthetic-client'},
          ],
          'clients': [
            {'name': 'synthetic-client'},
          ],
          'byAddress': {
            '02:00:00:00:00:14': {'counter': 1},
          },
        },
      };
      String text(ViewOptions o) => export(capture(imported: raw), o).text;
      final mac = text(ViewOptions()..hideMac = true);
      expect(mac, isNot(contains('02:00:00')));
      expect(mac, contains('192.0.2.10'));
      final ip = text(ViewOptions()..hideIp = true);
      expect(ip, isNot(contains('192.0.2.10')));
      expect(ip, isNot(contains('2001:db8')));
      expect(ip, contains('synthetic-id'));
      expect(ip, contains('02:00:00:00:00:12'));
      final location = text(ViewOptions()..hideLocation = true);
      expect(location, isNot(contains('12.25')));
      expect(location, isNot(contains('synthetic location')));
      expect(location, contains('synthetic-id'));
      final clients = text(ViewOptions()..hideRouterClients = true);
      expect(clients, isNot(contains('synthetic-client')));
      expect(clients, contains('synthetic-id'));
    },
  );

  test(
    'snapshot redaction clones all sources and preserves capture metadata',
    () {
      final original = capture();
      final copy = ShareExport.redactedSnapshot(
        original,
        ViewOptions()
          ..hideIds = true
          ..hideMac = true
          ..hideIp = true
          ..hideRouterClients = true,
      );
      expect(copy.dishGetStatus!.deviceInfo.id, isEmpty);
      expect(copy.dishGetStatus!.connectedRouters, isEmpty);
      expect(copy.routerGetStatus!.dishId, isEmpty);
      expect(copy.routerGetStatus!.clients, isEmpty);
      expect(copy.routerGetStatus!.config.macWan, isEmpty);
      expect(copy.onlineJson, {'probe': 'ok'});
      expect(copy.dishGetHistory!.popPingLatencyMs, [1, 2, 3]);
      expect(copy.obstructionMapTs, original.obstructionMapTs);
      expect(copy.obstructionMapApiVersion, original.obstructionMapApiVersion);
      expect(copy.dishFeatures, original.dishFeatures);
      copy.dishFeatures!['testFeature'] = false;
      expect(original.dishFeatures!['testFeature'], isTrue);
      expect(original.dishGetStatus!.deviceInfo.id, terminalId);
      expect(original.routerGetStatus!.clients, hasLength(1));
    },
  );

  test('identifiers distinguish UTID, KIT, physical serial and account', () {
    final ids = ShareExport.identifiersFor(
      capture(),
      identifiers: const ShareIdentifiers(
        kitNumber: ' KIT-TEST ',
        dishSerialNumber: ' DISH-SERIAL ',
        accountNumber: ' ACCOUNT-TEST ',
      ),
    );
    expect(ids.utid, '01234567-89abcdef-01234567');
    expect(ids.kitNumber, 'KIT-TEST');
    expect(ids.dishSerialNumber, 'DISH-SERIAL');
    expect(ids.accountNumber, 'ACCOUNT-TEST');
    expect(
      ShareExport.identifiersFor(
        Snapshot(
          timestamp: 0,
          routerGetStatus: WifiGetStatusResponse(dishId: terminalId),
        ),
      ).utid,
      ids.utid,
    );
    expect(
      ShareExport.identifiersFor(
        Snapshot(timestamp: 0),
        identifiers: const ShareIdentifiers(utid: 'ut-unrecognized'),
      ).utid,
      'ut-unrecognized',
    );
    expect(
      ShareExport.identifiersFor(
        Snapshot(timestamp: 0),
        identifiers: const ShareIdentifiers(
          utid: 'ut01234567-89abcdef-01234567',
        ),
      ).utid,
      ids.utid,
    );
  });

  test('compact inventory omits unavailable identifiers and honors hiding', () {
    final visible = export(capture(), ViewOptions(), ShareFormat.inventoryText);
    expect(visible.text, isNot(contains('- KIT number:')));
    expect(visible.text, contains('- UTID: 01234567-89abcdef-01234567'));
    expect(visible.text, isNot(contains('- Dish ID / physical serial:')));
    expect(visible.text, isNot(contains('- Starlink account number:')));
    expect(visible.text, isNot(contains('enter manually')));
    expect(visible.text, isNot(contains('Prepared for')));
    expect(visible.text, isNot(contains('does not confirm')));
    final hidden = export(
      capture(),
      ViewOptions()..hideIds = true,
      ShareFormat.inventoryText,
    );
    expect(hidden.text, isNot(contains('01234567')));
    expect(hidden.text, contains(r'- UTID: \[hidden\]'));
  });

  test('full report covers diagnostic sources and names enum values', () {
    final payload = ShareExport.build(
      capture(
        imported: {
          'app': {
            'device': {'model': 'test-phone'},
          },
          'unknownDiagnostic': 7,
        },
      ),
      format: ShareFormat.diagnosticText,
      options: ViewOptions(),
      appVersion: 'test',
      sourceMode: MapSourceMode.imported,
    );
    for (final section in [
      'Terminal status',
      'Router status',
      'History and events',
      'Obstruction map',
      'Online diagnostics',
      'Terminal features',
      'Imported debug data',
      r'ALWAYS\_ON',
      'test-phone',
      'Source: imported',
    ]) {
      expect(payload.text, contains(section));
    }
    expect(payload.text, isNot(contains('synthetic-password')));
    expect(payload.text, contains('Pop Ping Latency Ms: 0'));
  });
}
