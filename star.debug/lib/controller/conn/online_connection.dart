import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:star_debug/controller/conn/connection.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/geoip.dart';
import 'package:star_debug/utils/kv_consumer.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:star_debug/utils/wait_notify.dart';

class OnlineConnection extends BaseConnection {
  static const int _pollIntervalMs = 3000;

  final String tag = 'OnlineConnection';
  final WaitNotify waitNotify = WaitNotify();
  final StreamController notifyStream;
  final PooledRequest<dynamic> pooledOptions = PooledRequest(_pollIntervalMs);

  StreamSubscription? subsConnectivity;
  Timer? _notifyTimer;
  bool isClosed = false;

  OnlineConnection({required this.notifyStream}) {
    LogUtils.d(tag, 'New connection: $this');
    subsConnectivity = Connectivity().onConnectivityChanged.listen((event) {
      LogUtils.d(tag, 'Connectivity change: $event');
      pooledOptions.sentTime = 0;
      waitNotify.notifyAll();
    });

    unawaited(run());
  }

  Future<void> run() async {
    while (true) {
      try {
        if (isClosed) return;

        await tick();
        await waitNotify.waitOrTimeout(_pollIntervalMs);
      } catch (e, s) {
        LogUtils.ers(tag, '', e, s);
        await Future<void>.delayed(const Duration(seconds: 1));
      }
    }
  }

  String? myIp;
  GeoIp? geoIp;
  bool needIfConfig = true;
  bool needStarlinkGeoIp = true;
  int cntNotOk = 0;
  int cntOk = 0;
  bool starlinkInternetDetected = false;
  String? starlinkInternetCity;
  bool hasIpv6 = false;

  late final HttpTest optCloudflare = HttpTest(
    'http://1.1.1.1/',
    _scheduleNotify,
  );
  late final HttpTest optCloudflare6 = HttpTest(
    'http://[2606:4700:4700::1111]:80/',
    _scheduleNotify,
    method: 'GET',
  );
  late final HttpTest optGoogle = HttpTest(
    'https://dns.google/',
    _scheduleNotify,
    method: 'GET',
  );
  late final HttpTest optGoogle6 = HttpTest(
    'https://ipv6.google.com/',
    _scheduleNotify,
    method: 'GET',
  );
  late final HttpTest optStarlink = HttpTest(
    'https://starlink.com/',
    _scheduleNotify,
    method: 'HEAD',
  );
  late final HttpTest getOpendns = HttpTest(
    'https://myipv4.p1.opendns.com/get_my_ip',
    () => _finishIpTest(getOpendns),
    method: 'GET',
  );
  late final HttpTest getIpify = HttpTest(
    'https://api.ipify.org?format=json',
    () => _finishIpTest(getIpify),
    method: 'GET',
  );
  late final HttpTest getIfConfig = HttpTest('https://ifconfig.co/json', () {
    _validateIpResponse(getIfConfig);
    if (getIfConfig.isOk) needIfConfig = false;
    _scheduleNotify();
  }, method: 'GET');
  late final HttpTest getStarlinkGeoIp = HttpTest(
    'https://geoip.starlinkisp.net/feed.csv',
    () {
      if (getStarlinkGeoIp.isOk) {
        try {
          final nextGeoIp = GeoIp();
          nextGeoIp.readStarlinkFeed('${getStarlinkGeoIp.data ?? ''}');
          if (nextGeoIp.map.isEmpty) {
            getStarlinkGeoIp.markFailure('Invalid response');
          } else {
            geoIp = nextGeoIp;
            needStarlinkGeoIp = false;
          }
        } catch (_) {
          getStarlinkGeoIp.markFailure('Invalid response');
        }
      }
      _scheduleNotify();
    },
    method: 'GET',
  );

  List<HttpTest> get _ipv4InternetTests => [
    optCloudflare,
    optGoogle,
    optStarlink,
    getOpendns,
    getIpify,
    getIfConfig,
  ];

  List<HttpTest> get _ipv6Tests => [optCloudflare6, optGoogle6];

  List<HttpTest> get _enabledTests => [
    ..._ipv4InternetTests,
    if (R.features.checkIpV6) ..._ipv6Tests,
  ];

  List<HttpTest> get _publicIpTests => [getOpendns, getIpify, getIfConfig];

  List<HttpTest> get _allTests => [
    ..._ipv4InternetTests,
    ..._ipv6Tests,
    getStarlinkGeoIp,
  ];

  bool get isOk => myIp != null && _ipv4InternetTests.any((test) => test.isOk);

  bool get hasInternetResult =>
      isOk || _ipv4InternetTests.any((test) => test.hasResult);

  bool? get internetCheckOk {
    if (isOk) return true;
    if (_ipv4InternetTests.any((test) => test.isInitialCheck)) return null;
    return hasInternetResult ? false : null;
  }

  String get internetStatus {
    if (isOk) return M.general.yes;
    if (internetCheckOk == null) return 'Checking…';
    if (myIp == null) return 'No public IP';
    return 'All probes failed';
  }

  bool? get ipv6CheckOk {
    if (hasIpv6) return true;
    if (_ipv6Tests.any((test) => test.isInitialCheck)) return null;
    return _ipv6Tests.any((test) => test.hasResult) ? false : null;
  }

  String get ipv6Status {
    final ok = ipv6CheckOk;
    if (ok == true) return M.general.yes;
    if (ok == null) return 'Checking…';
    return M.general.no;
  }

  bool? get starlinkCheckOk {
    if (starlinkInternetDetected) return true;
    if (myIp == null) {
      if (_publicIpTests.any((test) => test.isInitialCheck)) return null;
      return _publicIpTests.any((test) => test.hasResult) ? false : null;
    }
    if (geoIp == null) {
      if (getStarlinkGeoIp.isInitialCheck || !getStarlinkGeoIp.hasResult) {
        return null;
      }
      return false;
    }
    return false;
  }

  String get starlinkStatus {
    if (starlinkInternetDetected) return starlinkInternetCity ?? M.general.yes;
    if (myIp == null) {
      return starlinkCheckOk == null ? 'Checking…' : 'No public IP';
    }
    if (geoIp == null) {
      if (!getStarlinkGeoIp.hasResult) return 'Checking location feed…';
      return 'Location feed: ${getStarlinkGeoIp.errorReason ?? 'Failed'}';
    }
    return 'Not a Starlink IP';
  }

  void _finishIpTest(HttpTest test) {
    _validateIpResponse(test);
    _scheduleNotify();
  }

  void _validateIpResponse(HttpTest test) {
    if (test.isOk && _readIp(test.data) == null) {
      test.markFailure('Invalid response');
    }
  }

  String? _readIp(dynamic data) {
    if (data is! Map) return null;
    final value = data['ip'];
    if (value is! String || value.trim().isEmpty) return null;
    final ip = value.trim();
    return InternetAddress.tryParse(ip) == null ? null : ip;
  }

  void _scheduleNotify() {
    if (isClosed || _notifyTimer != null) return;
    _notifyTimer = Timer(const Duration(milliseconds: 100), () {
      _notifyTimer = null;
      notify();
    });
  }

  void notify() {
    if (isClosed) return;

    myIp = null;
    for (final test in _publicIpTests) {
      if (!test.isOk) continue;
      myIp = _readIp(test.data);
      if (myIp != null) break;
    }

    final ifConfigIp = getIfConfig.isOk ? _readIp(getIfConfig.data) : null;
    needIfConfig = ifConfigIp == null || ifConfigIp != myIp;

    hasIpv6 = R.features.checkIpV6 && _ipv6Tests.any((test) => test.isOk);

    starlinkInternetDetected = false;
    starlinkInternetCity = null;
    if (geoIp != null && myIp != null) {
      starlinkInternetCity = geoIp!.check(myIp!);
      starlinkInternetDetected = starlinkInternetCity != null;
    }

    cntOk = _enabledTests.where((test) => test.isOk).length;
    cntNotOk = _enabledTests.where((test) => test.hasFailed).length;
    final starlinkOk = starlinkCheckOk;
    if (starlinkOk == true) cntOk++;
    if (starlinkOk == false) cntNotOk++;

    notifyStream.add(null);
  }

  @override
  void close() {
    if (isClosed) return;
    isClosed = true;
    _notifyTimer?.cancel();
    unawaited(subsConnectivity?.cancel());
    for (final test in _allTests) {
      test.cancel();
    }
    waitNotify.notifyAll();
  }

  Future<void> tick() async {
    final now = DateTime.now().millisecondsSinceEpoch;
    if (!pooledOptions.needSend(now)) return;

    var started = false;
    started = optCloudflare.trigger() || started;
    if (R.features.checkIpV6) {
      started = optCloudflare6.trigger() || started;
    }
    started = optGoogle.trigger() || started;
    if (R.features.checkIpV6) started = optGoogle6.trigger() || started;
    started = optStarlink.trigger() || started;
    started = getOpendns.trigger() || started;
    started = getIpify.trigger() || started;
    if (needStarlinkGeoIp) {
      started = getStarlinkGeoIp.trigger() || started;
    }
    if (needIfConfig) started = getIfConfig.trigger() || started;

    if (started) {
      pooledOptions.sentTime = now;
      _scheduleNotify();
    }
  }

  void consume(KVConsumer b) {
    b.header('HTTP');
    _consumeLatency(b, '1.1.1.1', optCloudflare);
    if (R.features.checkIpV6) {
      _consumeLatency(b, '2606:4700:4700::1111', optCloudflare6);
    }
    _consumeLatency(b, 'dns.google', optGoogle);
    if (R.features.checkIpV6) {
      _consumeLatency(b, 'ipv6.google.com', optGoogle6);
    }
    _consumeLatency(b, 'starlink.com', optStarlink);

    b.header('My IP');
    _consumeIp(b, 'OpenDNS', getOpendns);
    _consumeIp(b, 'ipify.org', getIpify);

    if (getIfConfig.isOk && getIfConfig.data is Map) {
      final data = getIfConfig.data as Map;
      b.kv(
        'ifconfig.co',
        'IP: ${data['ip']}\n'
            'Country: ${data['country']}\n'
            'ASN: ${data['asn']}\n'
            'ASN-org: ${data['asn_org']}\n'
            'Hostname: ${data['hostname']}',
        ok: true,
      );
    } else {
      b.kv('ifconfig.co', getIfConfig.displayError, ok: getIfConfig.resultOk);
    }

    b.header(M.header.network);
    b.kv(M.online.starlink_internet, starlinkStatus, ok: starlinkCheckOk);
  }

  void _consumeLatency(KVConsumer b, String label, HttpTest test) {
    b.kv(
      label,
      test.isOk ? '${test.latency} ms' : test.displayError,
      ok: test.resultOk,
    );
  }

  void _consumeIp(KVConsumer b, String label, HttpTest test) {
    b.kv(
      label,
      test.isOk ? _readIp(test.data) ?? 'Invalid response' : test.displayError,
      ok: test.resultOk,
    );
  }
}

class HttpProbeResponse {
  final int statusCode;
  final dynamic data;

  const HttpProbeResponse(this.statusCode, this.data);
}

typedef HttpProbeRunner = Future<HttpProbeResponse> Function();

class HttpTest {
  static const Duration _requestTimeout = Duration(seconds: 6);

  final void Function() notify;
  final String url;
  final String method;
  final HttpProbeRunner? runner;
  final Dio dio = Dio();

  dynamic data;
  CancelToken? _token;
  bool _inFlight = false;
  bool? _succeeded;
  String? errorReason;
  int latency = 0;

  HttpTest(this.url, this.notify, {this.method = 'OPTIONS', this.runner});

  bool get isInFlight => _inFlight;
  bool get isOk => _succeeded == true;
  bool get hasResult => _succeeded != null;
  bool get hasFailed => _succeeded == false;
  bool get isInitialCheck => !hasResult && isInFlight;
  bool? get resultOk => hasResult ? isOk : null;

  String get displayError {
    if (hasResult) return errorReason ?? 'Failed';
    if (isInFlight) return 'Checking…';
    return 'Waiting…';
  }

  bool trigger() {
    if (_inFlight) return false;
    _inFlight = true;
    unawaited(_run());
    return true;
  }

  Future<void> _run() async {
    final startedAt = DateTime.now().millisecondsSinceEpoch;
    try {
      final response = await (runner?.call() ?? _request()).timeout(
        _requestTimeout,
      );
      if (response.statusCode ~/ 100 == 2 || response.statusCode ~/ 100 == 3) {
        _succeeded = true;
        errorReason = null;
        data = response.data;
      } else {
        markFailure('HTTP ${response.statusCode}');
      }
    } catch (error) {
      if (error is TimeoutException) _token?.cancel('Timed out');
      markFailure(describeError(error));
    } finally {
      latency = DateTime.now().millisecondsSinceEpoch - startedAt;
      _inFlight = false;
      try {
        notify();
      } catch (error, stackTrace) {
        LogUtils.ers('HttpTest', url, error, stackTrace);
      }
    }
  }

  void markFailure(String reason) {
    _succeeded = false;
    errorReason = reason;
  }

  void cancel() {
    _token?.cancel('Connection closed');
  }

  Future<HttpProbeResponse> _request() async {
    if (Platform.isAndroid) return _requestAndroid();
    return _requestDio();
  }

  Future<HttpProbeResponse> _requestDio() async {
    _token = CancelToken();
    final response = await dio.request<dynamic>(
      url,
      cancelToken: _token,
      options: Options(
        connectTimeout: const Duration(seconds: 2),
        sendTimeout: const Duration(seconds: 2),
        receiveTimeout: const Duration(seconds: 4),
        method: method,
        followRedirects: false,
        validateStatus: (status) => status != null,
      ),
    );
    return HttpProbeResponse(response.statusCode ?? 0, response.data);
  }

  Future<HttpProbeResponse> _requestAndroid() async {
    final result = await R.starChannel
        .httpTest(url, method, null)
        .timeout(const Duration(seconds: 4));

    dynamic parsedBody;
    try {
      parsedBody = jsonDecode(result.body);
    } catch (_) {
      parsedBody = result.body;
    }
    return HttpProbeResponse(result.code, parsedBody);
  }

  static String describeError(Object error) {
    if (error is TimeoutException) return 'Timeout';
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.transformTimeout:
          return 'Timeout';
        case DioExceptionType.cancel:
          return 'Cancelled';
        case DioExceptionType.badCertificate:
          return 'TLS failed';
        case DioExceptionType.connectionError:
        case DioExceptionType.unknown:
          return _describeMessage('${error.error ?? error.message ?? ''}');
        case DioExceptionType.badResponse:
          return 'HTTP ${error.response?.statusCode ?? 0}';
      }
    }
    if (error is PlatformException) {
      return _describeMessage(error.message ?? error.code);
    }
    return _describeMessage('$error');
  }

  static String _describeMessage(String message) {
    final value = message.toLowerCase();
    if (value.contains('unknownhost') ||
        value.contains('failed host lookup') ||
        value.contains('name or service not known')) {
      return 'DNS failed';
    }
    if (value.contains('timeout') || value.contains('timed out')) {
      return 'Timeout';
    }
    if (value.contains('certificate') || value.contains('handshake')) {
      return 'TLS failed';
    }
    if (value.contains('network is unreachable') ||
        value.contains('no route to host')) {
      return 'Network unavailable';
    }
    if (value.contains('connection refused')) return 'Connection refused';
    if (value.contains('cancel')) return 'Cancelled';
    if (value.contains('socket') || value.contains('connection')) {
      return 'Connection failed';
    }
    return 'Request failed';
  }
}
