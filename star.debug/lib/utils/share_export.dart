import 'dart:convert';
import 'dart:io';

import 'package:protobuf/protobuf.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/space/device_app.dart';
import 'package:star_debug/utils/debug_data.dart';
import 'package:star_debug/utils/obstruction_map_context.dart';
import 'package:star_debug/utils/obstructions.dart';
import 'package:star_debug/utils/snapshot.dart';
import 'package:star_debug/utils/view_options.dart';

enum ShareFormat { json, screenshot, diagnosticText, inventoryText }

class ShareIdentifiers {
  final String kitNumber;
  final String utid;
  final String dishSerialNumber;
  final String accountNumber;

  const ShareIdentifiers({
    this.kitNumber = '',
    this.utid = '',
    this.dishSerialNumber = '',
    this.accountNumber = '',
  });
}

class SharePayload {
  final String text;
  final String filename;
  final String mimeType;
  final String subject;

  const SharePayload({
    required this.text,
    required this.filename,
    required this.mimeType,
    required this.subject,
  });
}

/// Export preparation is independent of navigation, platform plugins and live
/// connections. Every output is a copy; privacy choices never edit the capture.
class ShareExport {
  static ShareIdentifiers identifiersFor(
    Snapshot snap, {
    ShareIdentifiers identifiers = const ShareIdentifiers(),
  }) {
    final raw = snap.debug_data;
    final metadata = <Map>[
      ?raw,
      for (final key in ['registration', 'inventory', 'identifiers'])
        if (raw?[key] is Map) raw![key] as Map,
    ];
    String find(List<Map> sources, Set<String> aliases) {
      for (final source in sources) {
        for (final entry in source.entries) {
          final value = entry.value;
          if (aliases.contains(_key('${entry.key}')) &&
              value is String &&
              value.trim().isNotEmpty) {
            return value.trim();
          }
        }
      }
      return '';
    }

    final dishSources = <Map>[];
    final dish = raw?['dish'];
    if (dish is Map) {
      dishSources.add(dish);
      for (final key in ['status', 'rawStatus']) {
        if (dish[key] is Map) dishSources.add(dish[key] as Map);
      }
      for (final source in [...dishSources]) {
        if (source['deviceInfo'] is Map)
          dishSources.add(source['deviceInfo'] as Map);
      }
    }
    String supplement(String manual, String imported) =>
        manual.trim().isNotEmpty ? manual.trim() : imported;
    final candidates = [
      snap.dishGetStatus?.deviceInfo.id.trim() ?? '',
      snap.routerGetStatus?.dishId.trim() ?? '',
      find(metadata, {'utid', 'userterminalid'}),
    ];
    final valid = RegExp(
      r'^(?:ut)?[0-9a-f]{8}-[0-9a-f]{8}-[0-9a-f]{8}$',
      caseSensitive: false,
    );
    final manual = identifiers.utid.trim();
    final id = manual.isNotEmpty
        ? manual
        : candidates.firstWhere(valid.hasMatch, orElse: () => '');
    return ShareIdentifiers(
      kitNumber: supplement(
        identifiers.kitNumber,
        find(metadata, {
          'kitnumber',
          'kitserialnumber',
          'starlinkkitnumber',
          'kit',
        }),
      ),
      utid:
          RegExp(
            r'^ut[0-9a-f]{8}-[0-9a-f]{8}-[0-9a-f]{8}$',
            caseSensitive: false,
          ).hasMatch(id)
          ? id.substring(2)
          : id,
      dishSerialNumber: supplement(
        identifiers.dishSerialNumber,
        find(
              [...metadata, ...dishSources],
              {'dishserialnumber', 'dishserial', 'physicalserialnumber'},
            ).isNotEmpty
            ? find(
                [...metadata, ...dishSources],
                {'dishserialnumber', 'dishserial', 'physicalserialnumber'},
              )
            : find(dishSources, {'serialnumber'}),
      ),
      accountNumber: supplement(
        identifiers.accountNumber,
        find(
          [...metadata, if (raw?['account'] is Map) raw!['account'] as Map],
          {'accountnumber', 'starlinkaccountnumber'},
        ),
      ),
    );
  }

  static SharePayload build(
    Snapshot snap, {
    required ShareFormat format,
    required ViewOptions options,
    ShareIdentifiers identifiers = const ShareIdentifiers(),
    required String appVersion,
    MapSourceMode sourceMode = MapSourceMode.stored,
  }) {
    if (format == ShareFormat.screenshot) {
      throw ArgumentError('Screenshot rendering belongs to the report widget.');
    }
    final redacted = redactedSnapshot(snap, options);
    final ids = identifiersFor(snap, identifiers: identifiers);
    final timestamp = snap.timestamp > 0
        ? DateTime.fromMillisecondsSinceEpoch(
            snap.timestamp,
            isUtc: true,
          ).toIso8601String()
        : 'Unknown';
    final String text;
    final String name;
    if (format == ShareFormat.json) {
      text = const JsonEncoder.withIndent('  ')
          .convert(_jsonData(redacted, appVersion));
      name = 'debug-data';
    } else if (format == ShareFormat.inventoryText) {
      String identifier(String value) => options.hideIds
          ? '[hidden]'
          : value.isEmpty
          ? '[not available — enter manually]'
          : value;
      text = [
        'Starlink inventory',
        'Capture: $timestamp',
        'KIT number: ${identifier(ids.kitNumber)}',
        'UTID: ${identifier(ids.utid)}',
        'Dish ID / physical serial: ${identifier(ids.dishSerialNumber)}',
        'Starlink account number: ${identifier(ids.accountNumber)}',
        if (redacted.dishGetStatus?.deviceInfo.hardwareVersion.isNotEmpty ??
            false)
          'Terminal hardware: ${redacted.dishGetStatus!.deviceInfo.hardwareVersion}',
        if (redacted.routerGetStatus?.deviceInfo.hardwareVersion.isNotEmpty ??
            false)
          'Router hardware: ${redacted.routerGetStatus!.deviceInfo.hardwareVersion}',
        if (redacted.dishGetStatus?.deviceInfo.softwareVersion.isNotEmpty ??
            false)
          'Terminal software: ${redacted.dishGetStatus!.deviceInfo.softwareVersion}',
        if (redacted.routerGetStatus?.deviceInfo.softwareVersion.isNotEmpty ??
            false)
          'Router software: ${redacted.routerGetStatus!.deviceInfo.softwareVersion}',
        if (!options.hideIds &&
            (redacted.routerGetStatus?.deviceInfo.id.isNotEmpty ?? false))
          'Router ID: ${redacted.routerGetStatus!.deviceInfo.id}',
        'Prepared for inventory / Ukraine Starlink verification submission.',
        'This report does not confirm registration or whitelist status.',
      ].join('\n');
      name = 'inventory';
    } else {
      final output = StringBuffer()
        ..writeln('Starlink diagnostic report')
        ..writeln('Generated by StarDebug $appVersion')
        ..writeln('Capture: $timestamp')
        ..writeln('Source: ${sourceMode.name}')
        ..writeln('Privacy: ${_privacyDescription(options)}');
      void section(String title, Object? value) {
        if (value == null) return;
        output.writeln('\n$title');
        _writeReadable(output, value, 0);
      }

      section('Capture metadata', {
        'dishStatusTimestamp': _time(redacted.dishTs),
        'dishStatusTimestampEstimated': redacted.dishTsIsEstimated,
        'routerStatusTimestamp': _time(redacted.routerTs),
        'historyTimestamp': _time(redacted.historyTs),
        'obstructionMapTimestamp': _time(redacted.obstructionMapTs),
        if (redacted.dishApiVersion != null)
          'dishApiVersion': redacted.dishApiVersion,
        if (redacted.routerApiVersion != null)
          'routerApiVersion': redacted.routerApiVersion,
        if (redacted.obstructionMapApiVersion != null)
          'obstructionMapApiVersion': redacted.obstructionMapApiVersion,
      });
      section('Terminal status', redacted.dishGetStatus?.toProto3Json());
      section('Terminal features', redacted.dishFeatures);
      section('Router status', redacted.routerGetStatus?.toProto3Json());
      section('Router features', redacted.routerFeatures);
      section('History and events', redacted.dishGetHistory?.toProto3Json());
      section(
        'Obstruction map',
        redacted.dishGetObstructionMap?.toProto3Json(),
      );
      final obstructionMap = redacted.dishGetObstructionMap;
      if (obstructionMap != null) {
        final classified = ObstructionMapData.fromResponse(obstructionMap);
        section(
          'Obstruction sample classification',
          classified == null
              ? {'status': 'Invalid map dimensions or sample count'}
              : {
                  'totalSamples': classified.signal.length,
                  'unobservedSamples':
                      classified.signal.length - classified.observed,
                  'blockedSamples': classified.blocked,
                  'reducedSignalSamples': classified.reduced,
                  'clearSamples': classified.clear,
                  'largestBlockedPatchSamples': classified.largestBlockedPatch,
                  'blockedFractionOfObservedSamples':
                      classified.blockedObservedFraction,
                  'interpretation': 'Sample counts, not sky area or downtime',
                },
        );
      }
      section('GPS location', redacted.dishGetLocationGPS?.toProto3Json());
      section(
        'Starlink location',
        redacted.dishGetLocationStarlink?.toProto3Json(),
      );
      section('Online diagnostics', redacted.onlineJson);
      final app = redacted.deviceApp;
      if (app != null) {
        section('Application metadata', {
          'version': app.device_app_version,
          'environment': app.device_app_environment,
          'build': app.device_app_build,
          'hash': app.device_app_hash,
          'appTimestamp': app.device_app_timestamp,
          'platform': app.platform_os,
          'platformVersion': app.platform_os_version,
          'deviceModel': app.device_model,
          if (!options.hideIds) 'deviceId': app.device_id,
          if (!options.hideIds) 'deviceName': app.device,
          if (!options.hideIp) 'wifiIp': app.wifi_ip,
          'deviceTimestamp': app.timestamp,
          'uptime': app.uptime,
          'network': [
            for (final plugin in app.plugins)
              if (plugin is DeviceNetwork)
                {
                  'isVpn': plugin.isVpn,
                  'gatewayIp': plugin.gateway_ip,
                  'publicIp': plugin.public_ip,
                  'isStarlinkConnection': plugin.is_starlink_conn,
                  'networkType': plugin.net_type,
                  'isBypassMode': plugin.is_bypass_mode,
                  'isConnected': plugin.isConnected,
                  'isInternetAvailable': plugin.isInternetAvailable,
                  'ipAddress': plugin.ip_addr,
                  'localLinkSpeed': plugin.local_link_speed,
                  'wifiLinkFrequency': plugin.wifi_link_freq,
                  'wifiSsid': plugin.wifi_ssid,
                  'wifiBssid': plugin.wifi_bssid,
                  'wifiSignalLevel': plugin.wifi_signal_level,
                },
          ],
          'sensors': [
            for (final plugin in app.plugins)
              if (plugin is DeviceSensors) plugin.sensorsData,
          ],
        });
      }
      if (!options.hideIds &&
          [
            ids.kitNumber,
            ids.dishSerialNumber,
            ids.accountNumber,
          ].any((s) => s.isNotEmpty)) {
        section('Inventory supplements', {
          if (ids.kitNumber.isNotEmpty) 'KIT number': ids.kitNumber,
          if (ids.dishSerialNumber.isNotEmpty)
            'Dish ID / physical serial': ids.dishSerialNumber,
          if (ids.accountNumber.isNotEmpty) 'Account number': ids.accountNumber,
        });
      }
      // Preserve unfamiliar imported diagnostics alongside normalized statuses.
      section(
        'Imported debug data and application metadata',
        redacted.debug_data,
      );
      text = output.toString().trimRight();
      name = 'diagnostics';
    }
    return SharePayload(
      text: text,
      filename:
          'starlink-$name.${format == ShareFormat.json ? 'json.txt' : 'txt'}',
      mimeType: format == ShareFormat.json ? 'application/json' : 'text/plain',
      subject: 'Starlink $name',
    );
  }

  static Snapshot redactedSnapshot(Snapshot snap, ViewOptions options) {
    T? clean<T extends GeneratedMessage>(T? message, T Function() create) {
      if (message == null) return null;
      final result = create();
      result.mergeFromProto3Json(_sanitize(message.toProto3Json(), options));
      return result;
    }

    final imported = snap.debug_data == null
        ? null
        : _sanitize(_expandBinary(snap.debug_data), options)
              as Map<String, dynamic>;
    final app = snap.deviceApp;
    // DeviceApp is normally backed by the original imported JSON. Reparse its
    // copy where available; otherwise clone its public scalar metadata safely.
    final appCopy = app == null ? null : _copyApp(app, options);
    return Snapshot(
      timestamp: snap.timestamp,
      dishTs: snap.dishTs,
      dishTsIsEstimated: snap.dishTsIsEstimated,
      dishGetStatus: clean(snap.dishGetStatus, DishGetStatusResponse.new),
      dishFeatures: snap.dishFeatures == null
          ? null
          : Map.of(snap.dishFeatures!),
      dishApiVersion: snap.dishApiVersion,
      routerTs: snap.routerTs,
      routerGetStatus: clean(snap.routerGetStatus, WifiGetStatusResponse.new),
      routerFeatures: snap.routerFeatures == null
          ? null
          : Map.of(snap.routerFeatures!),
      routerApiVersion: snap.routerApiVersion,
      dishGetObstructionMap: clean(
        snap.dishGetObstructionMap,
        DishGetObstructionMapResponse.new,
      ),
      obstructionMapTs: snap.obstructionMapTs,
      obstructionMapApiVersion: snap.obstructionMapApiVersion,
      historyTs: snap.historyTs,
      dishGetHistory: clean(snap.dishGetHistory, DishGetHistoryResponse.new),
      dishGetLocationGPS: options.hideLocation
          ? null
          : clean(snap.dishGetLocationGPS, GetLocationResponse.new),
      dishGetLocationStarlink: options.hideLocation
          ? null
          : clean(snap.dishGetLocationStarlink, GetLocationResponse.new),
      onlineJson: snap.onlineJson == null
          ? null
          : _sanitize(snap.onlineJson, options) as Map<String, dynamic>,
      deviceApp: appCopy,
      debug_data: imported,
    );
  }

  static DeviceApp _copyApp(DeviceApp app, ViewOptions options) => DeviceApp()
    ..device_app_version = app.device_app_version
    ..device_app_environment = app.device_app_environment
    ..device_app_build = app.device_app_build
    ..device_app_hash = app.device_app_hash
    ..device_app_timestamp = app.device_app_timestamp
    ..platform_os = app.platform_os
    ..platform_os_version = app.platform_os_version
    ..timestamp = app.timestamp
    ..uptime = app.uptime
    ..device = options.hideIds ? '' : app.device
    ..device_model = app.device_model
    ..device_id = options.hideIds ? '' : app.device_id
    ..wifi_ip = options.hideIp ? '' : app.wifi_ip
    ..plugins = [
      for (final plugin in app.plugins)
        if (plugin is DeviceNetwork)
          DeviceNetwork()
            ..isVpn = plugin.isVpn
            ..gateway_ip = options.hideIp ? '' : plugin.gateway_ip
            ..public_ip = options.hideIp ? '' : plugin.public_ip
            ..is_starlink_conn = plugin.is_starlink_conn
            ..net_type = plugin.net_type
            ..is_bypass_mode = plugin.is_bypass_mode
            ..isConnected = plugin.isConnected
            ..isInternetAvailable = plugin.isInternetAvailable
            ..ip_addr = options.hideIp ? '' : plugin.ip_addr
            ..local_link_speed = plugin.local_link_speed
            ..wifi_link_freq = plugin.wifi_link_freq
            ..wifi_ssid = plugin.wifi_ssid
            ..wifi_bssid = options.hideMac ? '' : plugin.wifi_bssid
            ..wifi_signal_level = plugin.wifi_signal_level
        else if (plugin is DeviceSensors)
          DeviceSensors()
            ..sensorsData =
                _sanitize(plugin.sensorsData, options) as Map<String, dynamic>,
    ];

  static Map<String, dynamic> _jsonData(Snapshot snap, String appVersion) {
    if (snap.debug_data != null) return snap.debug_data!;
    return {
      'capture': {
        'timestamp': snap.timestamp / 1000,
        if (snap.dishTs != null) 'dishStatusTimestamp': snap.dishTs! / 1000,
        'dishStatusTimestampEstimated': snap.dishTsIsEstimated,
      },
      'app': {
        'app': {'version': 'star-debug-$appVersion'},
        'device': {'os': Platform.operatingSystem},
      },
      'dish': {
        'reachable': snap.dishGetStatus != null,
        if (snap.dishGetStatus != null)
          'rawStatus': {
            ..._finite(DebugDataHelper.protoToJson(snap.dishGetStatus))
                as Map<String, dynamic>,
            if (snap.dishFeatures != null) 'features': snap.dishFeatures,
          },
        if (snap.dishApiVersion != null) 'apiVersion': snap.dishApiVersion,
        if (snap.dishTs != null) 'timestamp': snap.dishTs! / 1000,
      },
      'router': {
        'reachable': snap.routerGetStatus != null,
        if (snap.routerGetStatus != null)
          'rawStatus': {
            ..._finite(DebugDataHelper.protoToJson(snap.routerGetStatus))
                as Map<String, dynamic>,
            if (snap.routerFeatures != null) 'features': snap.routerFeatures,
          },
        if (snap.routerApiVersion != null) 'apiVersion': snap.routerApiVersion,
        if (snap.routerTs != null) 'timestamp': snap.routerTs! / 1000,
      },
      if (snap.dishGetObstructionMap != null)
        'dishObstructionMap': {
          'rawMap': _finite(
            DebugDataHelper.protoToJson(snap.dishGetObstructionMap),
          ),
          if (snap.obstructionMapTs != null)
            'timestamp': snap.obstructionMapTs! / 1000,
          if (snap.obstructionMapApiVersion != null)
            'apiVersion': snap.obstructionMapApiVersion,
        },
    };
  }

  static String _key(String key) =>
      key.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');

  static bool _omit(String key, ViewOptions options) {
    final k = _key(key).replaceFirst(RegExp(r'(list|map)$'), '');
    if (k.contains('password') ||
        k.contains('passphrase') ||
        k.contains('secret') ||
        k.contains('token') ||
        k.contains('credential') ||
        k.contains('privatekey') ||
        k == 'authorization' ||
        k == 'apikey' ||
        k == 'psk' ||
        k == 'jwt' ||
        k == 'accesskey' ||
        k == 'sessionkey' ||
        k == 'clientkey' ||
        k == 'presharedkey' ||
        k == 'proto' ||
        k == 'protobuf' ||
        k == 'binarypayload')
      return true;
    if (options.hideRouterClients &&
        (k == 'clients' ||
            k == 'clientnames' ||
            k == 'clientconfigs' ||
            k == 'clienthistory' ||
            k == 'clientconfig' ||
            k == 'clientname'))
      return true;
    if (options.hideIds &&
        (k == 'id' ||
            k == 'ids' ||
            (k.endsWith('id') && !k.endsWith('ssid') && !k.endsWith('valid')) ||
            (k.endsWith('ids') && !k.endsWith('ssids')) ||
            k.contains('serial') ||
            k.contains('kitnumber') ||
            k == 'kit' ||
            k.contains('accountnumber') ||
            k == 'account' ||
            k == 'connectedrouters' ||
            k.startsWith('meshconfigs')))
      return true;
    if (options.hideMac &&
        (k.contains('macaddress') ||
            k.contains('bssid') ||
            k == 'mac' ||
            k == 'macwan' ||
            k == 'maclan' ||
            k == 'linkaddress' ||
            k == 'upstreammac'))
      return true;
    if (options.hideIp &&
        (k.contains('ipv4') ||
            k.contains('ipv6') ||
            k == 'ip' ||
            k.contains('ipaddress') ||
            k.contains('ipaddr') ||
            k.endsWith('ip') ||
            k == 'nameservers' ||
            k == 'serveraddresses' ||
            k == 'dnsstaticentries' ||
            k == 'dnsforwardrules'))
      return true;
    if (options.hideLocation &&
        (k == 'lat' ||
            k == 'lon' ||
            k == 'lng' ||
            k == 'alt' ||
            k == 'lla' ||
            k.contains('latitude') ||
            k.contains('longitude') ||
            k.contains('coordinates') ||
            k == 'location' ||
            k == 'geolocation' ||
            k == 'gpslocation' ||
            k == 'starlinklocation' ||
            k == 'serviceaddress' ||
            k == 'address' ||
            k == 'city' ||
            k == 'region' ||
            k == 'postalcode' ||
            k == 'country' ||
            k == 'countrycode' ||
            k == 'utcoffsets' ||
            k == 'timezone'))
      return true;
    return false;
  }

  static bool _sensitiveValue(String value, ViewOptions options) {
    if (options.hideMac &&
        RegExp(
          r'^(?:[0-9a-f]{2}[:-]){5}[0-9a-f]{2}$',
          caseSensitive: false,
        ).hasMatch(value))
      return true;
    if (options.hideIds &&
        RegExp(
          r'^(?:(?:ut|router)[0-9a-f-]{12,}|[0-9a-f]{8}-[0-9a-f]{8}-[0-9a-f]{8})$',
          caseSensitive: false,
        ).hasMatch(value))
      return true;
    if (options.hideIp &&
        (RegExp(r'^\d{1,3}(?:\.\d{1,3}){3}(?:/\d+)?$').hasMatch(value) ||
            ((value.contains('::') || ':'.allMatches(value).length == 7) &&
                RegExp(
                  r'^[0-9a-f:]+(?:/\d+)?$',
                  caseSensitive: false,
                ).hasMatch(value))))
      return true;
    return false;
  }

  static dynamic _sanitize(dynamic value, ViewOptions options) {
    if (value is Map) {
      return <String, dynamic>{
        for (final entry in value.entries)
          if (!_omit('${entry.key}', options) &&
              !_sensitiveValue('${entry.key}', options))
            '${entry.key}': _sanitize(entry.value, options),
      };
    }
    if (value is List) {
      return [
        for (final item in value)
          if (!(item is String && _sensitiveValue(item, options)))
            _sanitize(item, options),
      ];
    }
    if (value is String && _sensitiveValue(value, options)) return '';
    return _finite(value);
  }

  /// Materialize known binary envelopes before removing opaque wire payloads.
  static dynamic _expandBinary(dynamic value, [String path = '']) {
    if (value is List)
      return [for (final item in value) _expandBinary(item, path)];
    if (value is! Map) return value;
    final result = <String, dynamic>{
      for (final entry in value.entries)
        '${entry.key}': _expandBinary(entry.value, '$path/${entry.key}'),
    };
    final binary = result['_proto'];
    if (binary is String) {
      try {
        final bytes = base64Decode(binary);
        final GeneratedMessage? message = path.contains('dishObstructionMap')
            ? DishGetObstructionMapResponse.fromBuffer(bytes)
            : path.contains('router')
            ? WifiGetStatusResponse.fromBuffer(bytes)
            : path.contains('dish')
            ? DishGetStatusResponse.fromBuffer(bytes)
            : null;
        if (message != null) {
          final decoded =
              DebugDataHelper.protoToJson(message) as Map<String, dynamic>;
          final target = path.contains('dishObstructionMap')
              ? 'rawMap'
              : 'rawStatus';
          if (result[target] is Map) {
            result[target] = {...result[target] as Map, ...decoded};
          } else if (path.endsWith('/status') ||
              path.endsWith('/rawStatus') ||
              result.containsKey('deviceInfo')) {
            result.addAll(decoded);
          } else {
            result[target] = decoded;
          }
        }
      } catch (_) {
        // An unrecognized/corrupt optional blob cannot bypass privacy controls.
      }
    }
    result.remove('_proto');
    return result;
  }

  static dynamic _finite(dynamic value) {
    if (value is double && !value.isFinite) return -1.0;
    if (value is Map)
      return <String, dynamic>{
        for (final e in value.entries) '${e.key}': _finite(e.value),
      };
    if (value is List) return [for (final item in value) _finite(item)];
    return value;
  }

  static String _time(int? value) => value == null || value <= 0
      ? 'Unknown'
      : DateTime.fromMillisecondsSinceEpoch(
          value,
          isUtc: true,
        ).toIso8601String();

  static String _privacyDescription(ViewOptions options) => [
    'credentials removed',
    if (options.hideIds) 'identifiers hidden',
    if (options.hideMac) 'MAC addresses hidden',
    if (options.hideIp) 'IP addresses hidden',
    if (options.hideLocation) 'location hidden',
    if (options.hideRouterClients) 'router clients hidden',
  ].join(', ');

  static String _label(String key) => key
      .replaceAllMapped(RegExp(r'([a-z0-9])([A-Z])'), (m) => '${m[1]} ${m[2]}')
      .replaceAll('_', ' ')
      .replaceFirstMapped(RegExp(r'^.'), (m) => m[0]!.toUpperCase());

  static void _writeReadable(StringBuffer output, dynamic value, int depth) {
    final indent = '  ' * depth;
    if (value is Map) {
      if (value.isEmpty) output.writeln('$indent(no fields available)');
      for (final entry in value.entries) {
        if (entry.value is Map || entry.value is List) {
          output.writeln('$indent${_label('${entry.key}')}:');
          _writeReadable(output, entry.value, depth + 1);
        } else {
          output.writeln(
            '$indent${_label('${entry.key}')}: ${entry.value ?? 'Unknown'}',
          );
        }
      }
    } else if (value is List) {
      if (value.isEmpty) output.writeln('$indent(none)');
      if (value.length > 24 &&
          value.every(
            (v) =>
                v is num || v == 'NaN' || v == 'Infinity' || v == '-Infinity',
          )) {
        final numbers = value
            .whereType<num>()
            .where((v) => v.isFinite)
            .toList();
        if (numbers.isEmpty) {
          output.writeln('$indent${value.length} samples; no finite values');
        } else {
          final sorted = [...numbers]..sort();
          final mean =
              numbers.fold<double>(0, (sum, v) => sum + v) / numbers.length;
          output.writeln(
            '$indent${value.length} samples; ${value.length - numbers.length} nonfinite; min ${sorted.first}; max ${sorted.last}; mean ${mean.toStringAsFixed(3)}; first ${numbers.first}; last ${numbers.last}',
          );
        }
      } else {
        for (var i = 0; i < value.length; i++) {
          if (value[i] is Map || value[i] is List) {
            output.writeln('$indent[${i + 1}]');
            _writeReadable(output, value[i], depth + 1);
          } else {
            output.writeln('$indent- ${value[i]}');
          }
        }
      }
    } else {
      output.writeln('$indent$value');
    }
  }
}
