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

  test(
    'filenames include visible terminal ID and compact UTC capture time',
    () {
      final timestamp = DateTime.parse('2026-10-08T20:14:35.123+02:00')
          .millisecondsSinceEpoch;
      final snap = Snapshot(
        timestamp: timestamp,
        dishGetStatus: DishGetStatusResponse(
          deviceInfo: DeviceInfo(id: terminalId),
        ),
      );
      for (final format in [
        ShareFormat.json,
        ShareFormat.diagnosticText,
        ShareFormat.inventoryText,
      ]) {
        final payload = export(snap, ViewOptions(), format);
        expect(
          payload.filename,
          contains('starlink-$terminalId-20261008T181435123Z-'),
        );
        expect(
          export(snap, ViewOptions()..hideIds = true, format).filename,
          isNot(contains(terminalId)),
        );
      }
      expect(
        ShareExport.filename(snap, ViewOptions(), 'report', 'png'),
        'starlink-$terminalId-20261008T181435123Z-report.png',
      );
      expect(
        ShareExport.filename(
          Snapshot(
            timestamp: timestamp,
            routerGetStatus: WifiGetStatusResponse(dishId: terminalId),
          ),
          ViewOptions(),
          'report',
          'png',
        ),
        'starlink-$terminalId-20261008T181435123Z-report.png',
      );
      for (final imported in [
        {
          'registration': {'utid': terminalId},
        },
        {
          'dish': {
            'rawStatus': {
              'deviceInfo': {'id': terminalId},
            },
          },
        },
      ]) {
        expect(
          ShareExport.filename(
            Snapshot(timestamp: timestamp, debug_data: imported),
            ViewOptions(),
            'debug-data',
            'json',
          ),
          'starlink-$terminalId-20261008T181435123Z-debug-data.json',
        );
      }
      expect(
        ShareExport.filename(
          Snapshot(timestamp: 0),
          ViewOptions(),
          'inventory',
          'md',
        ),
        'starlink-unknown-inventory.md',
      );
      final unsafe = ShareExport.filename(
        Snapshot(
          timestamp: timestamp,
          dishGetStatus: DishGetStatusResponse(
            deviceInfo: DeviceInfo(id: r'../ut/test\unsafe:*?"<>|'),
          ),
        ),
        ViewOptions(),
        'debug-data',
        'json',
      );
      expect(unsafe, matches(RegExp(r'^[a-zA-Z0-9._-]+$')));
      expect(unsafe, contains('20261008T181435123Z'));
    },
  );

  test('filename bounds malformed long device identifiers', () {
    for (final length in [128, 129, 10000]) {
      final payload = ShareExport.filename(
        Snapshot(
          timestamp: 1000,
          dishGetStatus: DishGetStatusResponse(
            deviceInfo: DeviceInfo(id: 'x' * length),
          ),
        ),
        ViewOptions(),
        'debug-data',
        'json',
      );
      expect(
        payload,
        'starlink-${'x' * 128}-19700101T000001000Z-debug-data.json',
      );
      expect(payload.length, lessThan(255));
    }
  });

  test('plain report renders original values beside saved Markdown', () {
    final snap = capture(
      imported: {
        'registration': {'kitNumber': 'KIT|[test]\nsecond line'},
        'custom*field': {'note': r'**literal**_<test>\', 'empty': []},
      },
    );
    snap.dishGetStatus!.deviceInfo.hardwareVersion = r'rev_*`<test>\';
    final inventory = export(snap, ViewOptions(), ShareFormat.inventoryText);
    expect(inventory.plainText, startsWith('Starlink inventory\n\n'));
    expect(inventory.displayText, inventory.plainText);
    expect(
      inventory.plainText,
      contains('- KIT number: KIT|[test]\nsecond line'),
    );
    expect(
      inventory.plainText,
      contains(r'- Terminal hardware: rev_*`<test>\'),
    );
    expect(inventory.plainText, isNot(contains('<br>')));
    expect(inventory.text, contains(r'KIT\|\[test\]<br>second line'));
    final diagnostics = export(snap, ViewOptions(), ShareFormat.diagnosticText);
    expect(diagnostics.plainText, startsWith('Starlink diagnostic report\n\n'));
    expect(diagnostics.plainText, contains('\n\nTerminal status\n\n'));
    expect(diagnostics.plainText, contains('- Custom*field:'));
    expect(diagnostics.plainText, contains(r'**literal**_<test>\'));
    expect(diagnostics.plainText, contains('- None'));
    expect(diagnostics.plainText, isNot(contains('- _None_')));
    final hidden = export(
      snap,
      ViewOptions()..hideIds = true,
      ShareFormat.inventoryText,
    );
    expect(hidden.plainText, contains('- KIT number: [hidden]'));
    expect(hidden.plainText, isNot(contains('second line')));
    final json = export(snap, ViewOptions());
    expect(json.plainText, isNull);
    expect(json.displayText, json.text);
  });

  test(
    'typed DHCP clients are hidden while server health and config remain',
    () {
      final snap = Snapshot(
        timestamp: 1000,
        routerGetStatus: WifiGetStatusResponse(
          pingLatencyMs: 3,
          dhcpServers: [
            DhcpServer(
              domain: 'diagnostic.example',
              subnet: '192.0.2.0/24',
              ipExhausted: true,
              leases: [
                DhcpLease(
                  hostname: 'synthetic-lease-client',
                  ipAddress: '192.0.2.22',
                  macAddress: '02:00:00:00:00:22',
                  clientId: 123,
                ),
              ],
            ),
          ],
          config: WifiConfig(
            networks: [WifiConfig_Network(dhcpv4LeaseDurationS: 900)],
          ),
        ),
      );
      final before = snap.routerGetStatus!.writeToBuffer();
      final copy = ShareExport.redactedSnapshot(
        snap,
        ViewOptions()..hideRouterClients = true,
      );
      expect(copy.routerGetStatus!.dhcpServers.single.leases, isEmpty);
      expect(
        copy.routerGetStatus!.dhcpServers.single.domain,
        'diagnostic.example',
      );
      expect(copy.routerGetStatus!.dhcpServers.single.subnet, '192.0.2.0/24');
      expect(copy.routerGetStatus!.dhcpServers.single.ipExhausted, isTrue);
      expect(
        copy.routerGetStatus!.config.networks.single.dhcpv4LeaseDurationS,
        900,
      );
      expect(copy.routerGetStatus!.pingLatencyMs, 3);
      expect(snap.routerGetStatus!.writeToBuffer(), before);
      expect(
        export(snap, ViewOptions()).text,
        contains('synthetic-lease-client'),
      );
      for (final format in [ShareFormat.json, ShareFormat.diagnosticText]) {
        final payload = export(
          snap,
          ViewOptions()..hideRouterClients = true,
          format,
        );
        expect(payload.displayText, isNot(contains('synthetic-lease-client')));
        expect(payload.displayText, contains('diagnostic.example'));
      }
    },
  );

  test('typed client event metadata is hidden while event health remains', () {
    final events = [
      UXEvent(
        clientReconnectingOftenMetadata: ClientReconnectingOftenMetadata(
          clientId: 701,
        ),
      ),
      UXEvent(
        clientSwitchingBandMetadata: ClientSwitchingBandMetadata(
          clientId: 702,
          fromBand: 'synthetic-private-band',
        ),
      ),
      UXEvent(
        clientSwitchingUpstreamMacMetadata: ClientSwitchingUpstreamMacMetadata(
          clientId: 703,
        ),
      ),
      UXEvent(
        clientExcessiveNetworkConnectionsMetadata:
            ClientExcessiveNetworkConnectionsMetadata(clientId: 704),
      ),
    ];
    for (final event in events) {
      event.severity = EventSeverity.EVENT_SEVERITY_WARNING;
      event.reason = EventReason.EVENT_REASON_OUTAGE_OBSTRUCTED;
    }
    final snap = Snapshot(
      timestamp: 1000,
      dishGetHistory: DishGetHistoryResponse(
        popPingLatencyMs: [1, 2, 3],
        eventLog: EventLog(events: events),
      ),
    );
    final before = snap.dishGetHistory!.writeToBuffer();
    final hidden = ShareExport.redactedSnapshot(
      snap,
      ViewOptions()..hideRouterClients = true,
    );
    expect(hidden.dishGetHistory!.eventLog.events, hasLength(4));
    for (final event in hidden.dishGetHistory!.eventLog.events) {
      expect(event.whichMetadata(), UXEvent_Metadata.notSet);
      expect(event.reason, EventReason.EVENT_REASON_OUTAGE_OBSTRUCTED);
      expect(event.severity, EventSeverity.EVENT_SEVERITY_WARNING);
    }
    expect(hidden.dishGetHistory!.popPingLatencyMs, [1, 2, 3]);
    expect(snap.dishGetHistory!.writeToBuffer(), before);
    final report = export(
      snap,
      ViewOptions()..hideRouterClients = true,
      ShareFormat.diagnosticText,
    );
    expect(report.displayText, contains('EVENT_REASON_OUTAGE_OBSTRUCTED'));
    expect(report.displayText, isNot(contains('synthetic-private-band')));
    expect(
      report.displayText,
      isNot(contains('Client Reconnecting Often Metadata')),
    );
  });

  test('typed TLS secrets always disappear while certificates remain', () {
    final snap = Snapshot(
      timestamp: 1000,
      routerGetStatus: WifiGetStatusResponse(
        config: WifiConfig(
          httpServer: HttpServer(
            domainName: 'safe.example',
            tls: TlsConfig(
              key: 'synthetic-http-secret',
              cert: 'synthetic-http-cert',
            ),
          ),
          networks: [
            WifiConfig_Network(
              onboardRadiusTlsConfig: TlsConfig(
                key: 'synthetic-radius-secret',
                cert: 'synthetic-radius-cert',
              ),
            ),
          ],
        ),
      ),
    );
    final before = snap.routerGetStatus!.writeToBuffer();
    final copy = ShareExport.redactedSnapshot(snap, ViewOptions());
    expect(copy.routerGetStatus!.config.httpServer.tls.hasKey(), isFalse);
    expect(
      copy.routerGetStatus!.config.httpServer.tls.cert,
      'synthetic-http-cert',
    );
    expect(
      copy.routerGetStatus!.config.networks.single.onboardRadiusTlsConfig
          .hasKey(),
      isFalse,
    );
    for (final format in [ShareFormat.json, ShareFormat.diagnosticText]) {
      final payload = export(snap, ViewOptions(), format);
      expect(payload.displayText, isNot(contains('synthetic-http-secret')));
      expect(payload.displayText, isNot(contains('synthetic-radius-secret')));
      expect(payload.displayText, contains('synthetic-http-cert'));
    }
    expect(snap.routerGetStatus!.writeToBuffer(), before);
  });

  test(
    'JSON layouts redact DHCP aliases, client events and contextual TLS keys',
    () {
      for (final layout in ['direct', 'status', 'rawStatus']) {
        for (final suffix in ['', 'List']) {
          final status = <String, dynamic>{
            'dhcpServers$suffix': [
              {
                'domain': 'safe.example',
                'ipExhausted': true,
                'leases$suffix': [
                  {'hostname': 'synthetic-hidden-host', 'clientId': 123},
                ],
              },
            ],
            'eventLog': {
              'events$suffix': [
                for (final metadata in [
                  'clientReconnectingOftenMetadata',
                  'clientSwitchingBandMetadata',
                  'clientSwitchingUpstreamMacMetadata',
                  'clientExcessiveNetworkConnectionsMetadata',
                ])
                  {
                    'reason': 'diagnostic-reason',
                    metadata: {'name': 'synthetic-client-event'},
                  },
              ],
            },
            'config': {
              'networks$suffix': [
                {
                  'dhcpv4LeaseDurationS': 900,
                  'onboardRadiusTlsConfig': {
                    'key': 'synthetic-radius-secret',
                    'cert': 'safe-cert',
                  },
                  'onboardRadiusTlsConfigOld': {
                    'key': 'synthetic-old-secret',
                    'cert': 'old-cert',
                  },
                },
              ],
              'httpServer': {
                'tls': {'key': 'synthetic-http-secret', 'cert': 'http-cert'},
              },
            },
          };
          final raw = <String, dynamic>{
            'router': layout == 'direct' ? status : {layout: status},
            'diagnostics': {
              'key': 'safe-generic-key',
              'hostname': 'safe-hostname',
              'leases': [
                {'label': 'safe-resource-lease'},
              ],
            },
          };
          final before = jsonEncode(raw);
          final snap = Snapshot(timestamp: 1000, debug_data: raw);
          final visible = export(snap, ViewOptions()).text;
          expect(visible, contains('synthetic-hidden-host'));
          expect(visible, contains('synthetic-client-event'));
          expect(visible, isNot(contains('synthetic-radius-secret')));
          expect(visible, isNot(contains('synthetic-old-secret')));
          expect(visible, isNot(contains('synthetic-http-secret')));
          for (final format in [ShareFormat.json, ShareFormat.diagnosticText]) {
            final payload = export(
              snap,
              ViewOptions()..hideRouterClients = true,
              format,
            );
            expect(
              payload.displayText,
              isNot(contains('synthetic-hidden-host')),
            );
            expect(
              payload.displayText,
              isNot(contains('synthetic-client-event')),
            );
            expect(payload.displayText, contains('diagnostic-reason'));
            expect(payload.displayText, contains('safe-cert'));
            expect(payload.displayText, contains('old-cert'));
            expect(payload.displayText, contains('safe.example'));
            expect(payload.displayText, contains('safe-hostname'));
            expect(payload.displayText, contains('safe-generic-key'));
            expect(payload.displayText, contains('safe-resource-lease'));
          }
          expect(jsonEncode(raw), before);
        }
      }
    },
  );

  test(
    'binary and mixed router envelopes cannot bypass client or TLS privacy',
    () {
      final status = WifiGetStatusResponse(
        deviceInfo: DeviceInfo(hardwareVersion: 'safe-router-hardware'),
        pingLatencyMs: 3,
        dhcpServers: [
          DhcpServer(
            domain: 'safe.example',
            ipExhausted: true,
            leases: [DhcpLease(hostname: 'synthetic-binary-client')],
          ),
        ],
        config: WifiConfig(
          httpServer: HttpServer(
            tls: TlsConfig(
              key: 'synthetic-binary-secret',
              cert: 'safe-binary-cert',
            ),
          ),
        ),
      );
      for (final mixed in [false, true]) {
        final raw = <String, dynamic>{
          'router': {
            '_proto': base64Encode(status.writeToBuffer()),
            if (mixed)
              'rawStatus': {
                'customHealthCounter': 7,
                'dhcpServers': [
                  {
                    'leases': [
                      {'hostname': 'synthetic-json-client'},
                    ],
                  },
                ],
                'config': {
                  'httpServer': {
                    'tls': {'key': 'synthetic-json-secret'},
                  },
                },
              },
          },
        };
        final before = jsonEncode(raw);
        final payload = export(
          Snapshot(timestamp: 1000, debug_data: raw),
          ViewOptions()..hideRouterClients = true,
        );
        expect(payload.text, isNot(contains('synthetic-binary-client')));
        expect(payload.text, isNot(contains('synthetic-json-client')));
        expect(payload.text, isNot(contains('synthetic-binary-secret')));
        expect(payload.text, isNot(contains('synthetic-json-secret')));
        expect(payload.text, isNot(contains('_proto')));
        expect(payload.text, contains('safe-binary-cert'));
        expect(payload.text, contains('safe.example'));
        if (mixed) expect(payload.text, contains('customHealthCounter'));
        final parsed = SpaceParser.ofJsonStr(payload.text).toSnapshot();
        expect(parsed.routerGetStatus!.dhcpServers.single.leases, isEmpty);
        expect(parsed.routerGetStatus!.dhcpServers.single.ipExhausted, isTrue);
        expect(parsed.routerGetStatus!.config.httpServer.tls.hasKey(), isFalse);
        expect(jsonEncode(raw), before);
      }
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
    expect(payload.filename, contains(terminalId));
    expect(payload.filename, endsWith('.json'));
    expect(payload.filename, isNot(endsWith('.json.txt')));
    expect(payload.mimeType, 'application/json');
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
