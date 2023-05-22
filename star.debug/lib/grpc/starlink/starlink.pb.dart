///
//  Generated code. Do not modify.
//  source: starlink.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'status.pb.dart' as $1;

import 'starlink.pbenum.dart';
import 'network.pbenum.dart' as $2;

export 'starlink.pbenum.dart';

enum ToDevice_Message {
  request, 
  healthCheck, 
  notSet
}

class ToDevice extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ToDevice_Message> _ToDevice_MessageByTag = {
    1 : ToDevice_Message.request,
    2 : ToDevice_Message.healthCheck,
    0 : ToDevice_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ToDevice', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<Request>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'request', subBuilder: Request.create)
    ..aOM<HealthCheck>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'healthCheck', subBuilder: HealthCheck.create)
    ..hasRequiredFields = false
  ;

  ToDevice._() : super();
  factory ToDevice({
    Request? request,
    HealthCheck? healthCheck,
  }) {
    final _result = create();
    if (request != null) {
      _result.request = request;
    }
    if (healthCheck != null) {
      _result.healthCheck = healthCheck;
    }
    return _result;
  }
  factory ToDevice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ToDevice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ToDevice clone() => ToDevice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ToDevice copyWith(void Function(ToDevice) updates) => super.copyWith((message) => updates(message as ToDevice)) as ToDevice; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ToDevice create() => ToDevice._();
  ToDevice createEmptyInstance() => create();
  static $pb.PbList<ToDevice> createRepeated() => $pb.PbList<ToDevice>();
  @$core.pragma('dart2js:noInline')
  static ToDevice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ToDevice>(create);
  static ToDevice? _defaultInstance;

  ToDevice_Message whichMessage() => _ToDevice_MessageByTag[$_whichOneof(0)]!;
  void clearMessage() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Request get request => $_getN(0);
  @$pb.TagNumber(1)
  set request(Request v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => clearField(1);
  @$pb.TagNumber(1)
  Request ensureRequest() => $_ensure(0);

  @$pb.TagNumber(2)
  HealthCheck get healthCheck => $_getN(1);
  @$pb.TagNumber(2)
  set healthCheck(HealthCheck v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasHealthCheck() => $_has(1);
  @$pb.TagNumber(2)
  void clearHealthCheck() => clearField(2);
  @$pb.TagNumber(2)
  HealthCheck ensureHealthCheck() => $_ensure(1);
}

class HealthCheck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HealthCheck', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  HealthCheck._() : super();
  factory HealthCheck() => create();
  factory HealthCheck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HealthCheck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HealthCheck clone() => HealthCheck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HealthCheck copyWith(void Function(HealthCheck) updates) => super.copyWith((message) => updates(message as HealthCheck)) as HealthCheck; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HealthCheck create() => HealthCheck._();
  HealthCheck createEmptyInstance() => create();
  static $pb.PbList<HealthCheck> createRepeated() => $pb.PbList<HealthCheck>();
  @$core.pragma('dart2js:noInline')
  static HealthCheck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HealthCheck>(create);
  static HealthCheck? _defaultInstance;
}

enum FromDevice_Message {
  response, 
  event, 
  healthCheck, 
  notSet
}

class FromDevice extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, FromDevice_Message> _FromDevice_MessageByTag = {
    1 : FromDevice_Message.response,
    2 : FromDevice_Message.event,
    3 : FromDevice_Message.healthCheck,
    0 : FromDevice_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FromDevice', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<Response>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'response', subBuilder: Response.create)
    ..aOM<Event>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'event', subBuilder: Event.create)
    ..aOM<HealthCheck>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'healthCheck', subBuilder: HealthCheck.create)
    ..hasRequiredFields = false
  ;

  FromDevice._() : super();
  factory FromDevice({
    Response? response,
    Event? event,
    HealthCheck? healthCheck,
  }) {
    final _result = create();
    if (response != null) {
      _result.response = response;
    }
    if (event != null) {
      _result.event = event;
    }
    if (healthCheck != null) {
      _result.healthCheck = healthCheck;
    }
    return _result;
  }
  factory FromDevice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FromDevice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FromDevice clone() => FromDevice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FromDevice copyWith(void Function(FromDevice) updates) => super.copyWith((message) => updates(message as FromDevice)) as FromDevice; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FromDevice create() => FromDevice._();
  FromDevice createEmptyInstance() => create();
  static $pb.PbList<FromDevice> createRepeated() => $pb.PbList<FromDevice>();
  @$core.pragma('dart2js:noInline')
  static FromDevice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FromDevice>(create);
  static FromDevice? _defaultInstance;

  FromDevice_Message whichMessage() => _FromDevice_MessageByTag[$_whichOneof(0)]!;
  void clearMessage() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Response get response => $_getN(0);
  @$pb.TagNumber(1)
  set response(Response v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponse() => clearField(1);
  @$pb.TagNumber(1)
  Response ensureResponse() => $_ensure(0);

  @$pb.TagNumber(2)
  Event get event => $_getN(1);
  @$pb.TagNumber(2)
  set event(Event v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEvent() => $_has(1);
  @$pb.TagNumber(2)
  void clearEvent() => clearField(2);
  @$pb.TagNumber(2)
  Event ensureEvent() => $_ensure(1);

  @$pb.TagNumber(3)
  HealthCheck get healthCheck => $_getN(2);
  @$pb.TagNumber(3)
  set healthCheck(HealthCheck v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasHealthCheck() => $_has(2);
  @$pb.TagNumber(3)
  void clearHealthCheck() => clearField(3);
  @$pb.TagNumber(3)
  HealthCheck ensureHealthCheck() => $_ensure(2);
}

enum Event_Event {
  wifiNewClientConnected, 
  wifiAccountBonding, 
  wifiNewPeer, 
  notSet
}

class Event extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Event_Event> _Event_EventByTag = {
    3001 : Event_Event.wifiNewClientConnected,
    3002 : Event_Event.wifiAccountBonding,
    3003 : Event_Event.wifiNewPeer,
    0 : Event_Event.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Event', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..oo(0, [3001, 3002, 3003])
    ..aOM<WifiNewClientConnectedEvent>(3001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiNewClientConnected', subBuilder: WifiNewClientConnectedEvent.create)
    ..aOM<WifiAccountBondingEvent>(3002, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiAccountBonding', subBuilder: WifiAccountBondingEvent.create)
    ..aOM<WifiNewPeerEvent>(3003, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiNewPeer', subBuilder: WifiNewPeerEvent.create)
    ..hasRequiredFields = false
  ;

  Event._() : super();
  factory Event({
    WifiNewClientConnectedEvent? wifiNewClientConnected,
    WifiAccountBondingEvent? wifiAccountBonding,
    WifiNewPeerEvent? wifiNewPeer,
  }) {
    final _result = create();
    if (wifiNewClientConnected != null) {
      _result.wifiNewClientConnected = wifiNewClientConnected;
    }
    if (wifiAccountBonding != null) {
      _result.wifiAccountBonding = wifiAccountBonding;
    }
    if (wifiNewPeer != null) {
      _result.wifiNewPeer = wifiNewPeer;
    }
    return _result;
  }
  factory Event.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Event.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Event clone() => Event()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Event copyWith(void Function(Event) updates) => super.copyWith((message) => updates(message as Event)) as Event; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Event create() => Event._();
  Event createEmptyInstance() => create();
  static $pb.PbList<Event> createRepeated() => $pb.PbList<Event>();
  @$core.pragma('dart2js:noInline')
  static Event getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Event>(create);
  static Event? _defaultInstance;

  Event_Event whichEvent() => _Event_EventByTag[$_whichOneof(0)]!;
  void clearEvent() => clearField($_whichOneof(0));

  @$pb.TagNumber(3001)
  WifiNewClientConnectedEvent get wifiNewClientConnected => $_getN(0);
  @$pb.TagNumber(3001)
  set wifiNewClientConnected(WifiNewClientConnectedEvent v) { setField(3001, v); }
  @$pb.TagNumber(3001)
  $core.bool hasWifiNewClientConnected() => $_has(0);
  @$pb.TagNumber(3001)
  void clearWifiNewClientConnected() => clearField(3001);
  @$pb.TagNumber(3001)
  WifiNewClientConnectedEvent ensureWifiNewClientConnected() => $_ensure(0);

  @$pb.TagNumber(3002)
  WifiAccountBondingEvent get wifiAccountBonding => $_getN(1);
  @$pb.TagNumber(3002)
  set wifiAccountBonding(WifiAccountBondingEvent v) { setField(3002, v); }
  @$pb.TagNumber(3002)
  $core.bool hasWifiAccountBonding() => $_has(1);
  @$pb.TagNumber(3002)
  void clearWifiAccountBonding() => clearField(3002);
  @$pb.TagNumber(3002)
  WifiAccountBondingEvent ensureWifiAccountBonding() => $_ensure(1);

  @$pb.TagNumber(3003)
  WifiNewPeerEvent get wifiNewPeer => $_getN(2);
  @$pb.TagNumber(3003)
  set wifiNewPeer(WifiNewPeerEvent v) { setField(3003, v); }
  @$pb.TagNumber(3003)
  $core.bool hasWifiNewPeer() => $_has(2);
  @$pb.TagNumber(3003)
  void clearWifiNewPeer() => clearField(3003);
  @$pb.TagNumber(3003)
  WifiNewPeerEvent ensureWifiNewPeer() => $_ensure(2);
}

class WifiNewClientConnectedEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiNewClientConnectedEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<WifiClient>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'client', subBuilder: WifiClient.create)
    ..hasRequiredFields = false
  ;

  WifiNewClientConnectedEvent._() : super();
  factory WifiNewClientConnectedEvent({
    WifiClient? client,
  }) {
    final _result = create();
    if (client != null) {
      _result.client = client;
    }
    return _result;
  }
  factory WifiNewClientConnectedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiNewClientConnectedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiNewClientConnectedEvent clone() => WifiNewClientConnectedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiNewClientConnectedEvent copyWith(void Function(WifiNewClientConnectedEvent) updates) => super.copyWith((message) => updates(message as WifiNewClientConnectedEvent)) as WifiNewClientConnectedEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiNewClientConnectedEvent create() => WifiNewClientConnectedEvent._();
  WifiNewClientConnectedEvent createEmptyInstance() => create();
  static $pb.PbList<WifiNewClientConnectedEvent> createRepeated() => $pb.PbList<WifiNewClientConnectedEvent>();
  @$core.pragma('dart2js:noInline')
  static WifiNewClientConnectedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiNewClientConnectedEvent>(create);
  static WifiNewClientConnectedEvent? _defaultInstance;

  @$pb.TagNumber(1)
  WifiClient get client => $_getN(0);
  @$pb.TagNumber(1)
  set client(WifiClient v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasClient() => $_has(0);
  @$pb.TagNumber(1)
  void clearClient() => clearField(1);
  @$pb.TagNumber(1)
  WifiClient ensureClient() => $_ensure(0);
}

class WifiAccountBondingEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiAccountBondingEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishId')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isRepeater')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hardwareVersion')
    ..hasRequiredFields = false
  ;

  WifiAccountBondingEvent._() : super();
  factory WifiAccountBondingEvent({
    $core.String? dishId,
    $core.bool? isRepeater,
    $core.String? hardwareVersion,
  }) {
    final _result = create();
    if (dishId != null) {
      _result.dishId = dishId;
    }
    if (isRepeater != null) {
      _result.isRepeater = isRepeater;
    }
    if (hardwareVersion != null) {
      _result.hardwareVersion = hardwareVersion;
    }
    return _result;
  }
  factory WifiAccountBondingEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiAccountBondingEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiAccountBondingEvent clone() => WifiAccountBondingEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiAccountBondingEvent copyWith(void Function(WifiAccountBondingEvent) updates) => super.copyWith((message) => updates(message as WifiAccountBondingEvent)) as WifiAccountBondingEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiAccountBondingEvent create() => WifiAccountBondingEvent._();
  WifiAccountBondingEvent createEmptyInstance() => create();
  static $pb.PbList<WifiAccountBondingEvent> createRepeated() => $pb.PbList<WifiAccountBondingEvent>();
  @$core.pragma('dart2js:noInline')
  static WifiAccountBondingEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiAccountBondingEvent>(create);
  static WifiAccountBondingEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dishId => $_getSZ(0);
  @$pb.TagNumber(1)
  set dishId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDishId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDishId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isRepeater => $_getBF(1);
  @$pb.TagNumber(2)
  set isRepeater($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsRepeater() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsRepeater() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get hardwareVersion => $_getSZ(2);
  @$pb.TagNumber(3)
  set hardwareVersion($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHardwareVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearHardwareVersion() => clearField(3);
}

class WifiNewPeerEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiNewPeerEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peerId')
    ..hasRequiredFields = false
  ;

  WifiNewPeerEvent._() : super();
  factory WifiNewPeerEvent({
    $core.String? peerId,
  }) {
    final _result = create();
    if (peerId != null) {
      _result.peerId = peerId;
    }
    return _result;
  }
  factory WifiNewPeerEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiNewPeerEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiNewPeerEvent clone() => WifiNewPeerEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiNewPeerEvent copyWith(void Function(WifiNewPeerEvent) updates) => super.copyWith((message) => updates(message as WifiNewPeerEvent)) as WifiNewPeerEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiNewPeerEvent create() => WifiNewPeerEvent._();
  WifiNewPeerEvent createEmptyInstance() => create();
  static $pb.PbList<WifiNewPeerEvent> createRepeated() => $pb.PbList<WifiNewPeerEvent>();
  @$core.pragma('dart2js:noInline')
  static WifiNewPeerEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiNewPeerEvent>(create);
  static WifiNewPeerEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get peerId => $_getSZ(0);
  @$pb.TagNumber(1)
  set peerId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPeerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPeerId() => clearField(1);
}

class WifiClient_PingMetrics extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiClient.PingMetrics', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inUnhappyHour2s', protoName: 'in_unhappy_hour_2s')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inUnhappyHour5s', protoName: 'in_unhappy_hour_5s')
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dropRate5m', $pb.PbFieldType.OF, protoName: 'drop_rate_5m')
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latency5m', $pb.PbFieldType.OF, protoName: 'latency_5m')
    ..hasRequiredFields = false
  ;

  WifiClient_PingMetrics._() : super();
  factory WifiClient_PingMetrics({
    $core.bool? inUnhappyHour2s,
    $core.bool? inUnhappyHour5s,
    $core.double? dropRate5m,
    $core.double? latency5m,
  }) {
    final _result = create();
    if (inUnhappyHour2s != null) {
      _result.inUnhappyHour2s = inUnhappyHour2s;
    }
    if (inUnhappyHour5s != null) {
      _result.inUnhappyHour5s = inUnhappyHour5s;
    }
    if (dropRate5m != null) {
      _result.dropRate5m = dropRate5m;
    }
    if (latency5m != null) {
      _result.latency5m = latency5m;
    }
    return _result;
  }
  factory WifiClient_PingMetrics.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiClient_PingMetrics.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiClient_PingMetrics clone() => WifiClient_PingMetrics()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiClient_PingMetrics copyWith(void Function(WifiClient_PingMetrics) updates) => super.copyWith((message) => updates(message as WifiClient_PingMetrics)) as WifiClient_PingMetrics; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiClient_PingMetrics create() => WifiClient_PingMetrics._();
  WifiClient_PingMetrics createEmptyInstance() => create();
  static $pb.PbList<WifiClient_PingMetrics> createRepeated() => $pb.PbList<WifiClient_PingMetrics>();
  @$core.pragma('dart2js:noInline')
  static WifiClient_PingMetrics getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiClient_PingMetrics>(create);
  static WifiClient_PingMetrics? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get inUnhappyHour2s => $_getBF(0);
  @$pb.TagNumber(1)
  set inUnhappyHour2s($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInUnhappyHour2s() => $_has(0);
  @$pb.TagNumber(1)
  void clearInUnhappyHour2s() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get inUnhappyHour5s => $_getBF(1);
  @$pb.TagNumber(2)
  set inUnhappyHour5s($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInUnhappyHour5s() => $_has(1);
  @$pb.TagNumber(2)
  void clearInUnhappyHour5s() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get dropRate5m => $_getN(2);
  @$pb.TagNumber(3)
  set dropRate5m($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDropRate5m() => $_has(2);
  @$pb.TagNumber(3)
  void clearDropRate5m() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get latency5m => $_getN(3);
  @$pb.TagNumber(4)
  set latency5m($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLatency5m() => $_has(3);
  @$pb.TagNumber(4)
  void clearLatency5m() => clearField(4);
}

class WifiClient_RxStats extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiClient.RxStats', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bytes', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countErrors', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nss', $pb.PbFieldType.O3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mcs', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bandwidth', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guardNs', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rateMbps', $pb.PbFieldType.OU3)
    ..a<$core.double>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'airtimeFractionLast1s', $pb.PbFieldType.OF, protoName: 'airtime_fraction_last_1s')
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sampledPackets', $pb.PbFieldType.OU3)
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sampledPacketsRetried', $pb.PbFieldType.OU3)
    ..a<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sampledPacketsDropped', $pb.PbFieldType.OU3)
    ..a<$core.int>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phyMode', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  WifiClient_RxStats._() : super();
  factory WifiClient_RxStats({
    $fixnum.Int64? bytes,
    $fixnum.Int64? countErrors,
    $core.int? nss,
    $core.int? mcs,
    $core.int? bandwidth,
    $core.int? guardNs,
    $core.int? rateMbps,
    $core.double? airtimeFractionLast1s,
    $core.int? sampledPackets,
    $core.int? sampledPacketsRetried,
    $core.int? sampledPacketsDropped,
    $core.int? phyMode,
  }) {
    final _result = create();
    if (bytes != null) {
      _result.bytes = bytes;
    }
    if (countErrors != null) {
      _result.countErrors = countErrors;
    }
    if (nss != null) {
      _result.nss = nss;
    }
    if (mcs != null) {
      _result.mcs = mcs;
    }
    if (bandwidth != null) {
      _result.bandwidth = bandwidth;
    }
    if (guardNs != null) {
      _result.guardNs = guardNs;
    }
    if (rateMbps != null) {
      _result.rateMbps = rateMbps;
    }
    if (airtimeFractionLast1s != null) {
      _result.airtimeFractionLast1s = airtimeFractionLast1s;
    }
    if (sampledPackets != null) {
      _result.sampledPackets = sampledPackets;
    }
    if (sampledPacketsRetried != null) {
      _result.sampledPacketsRetried = sampledPacketsRetried;
    }
    if (sampledPacketsDropped != null) {
      _result.sampledPacketsDropped = sampledPacketsDropped;
    }
    if (phyMode != null) {
      _result.phyMode = phyMode;
    }
    return _result;
  }
  factory WifiClient_RxStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiClient_RxStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiClient_RxStats clone() => WifiClient_RxStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiClient_RxStats copyWith(void Function(WifiClient_RxStats) updates) => super.copyWith((message) => updates(message as WifiClient_RxStats)) as WifiClient_RxStats; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiClient_RxStats create() => WifiClient_RxStats._();
  WifiClient_RxStats createEmptyInstance() => create();
  static $pb.PbList<WifiClient_RxStats> createRepeated() => $pb.PbList<WifiClient_RxStats>();
  @$core.pragma('dart2js:noInline')
  static WifiClient_RxStats getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiClient_RxStats>(create);
  static WifiClient_RxStats? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get bytes => $_getI64(0);
  @$pb.TagNumber(1)
  set bytes($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearBytes() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get countErrors => $_getI64(1);
  @$pb.TagNumber(2)
  set countErrors($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCountErrors() => $_has(1);
  @$pb.TagNumber(2)
  void clearCountErrors() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get nss => $_getIZ(2);
  @$pb.TagNumber(3)
  set nss($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNss() => $_has(2);
  @$pb.TagNumber(3)
  void clearNss() => clearField(3);

  @$pb.TagNumber(5)
  $core.int get mcs => $_getIZ(3);
  @$pb.TagNumber(5)
  set mcs($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasMcs() => $_has(3);
  @$pb.TagNumber(5)
  void clearMcs() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get bandwidth => $_getIZ(4);
  @$pb.TagNumber(6)
  set bandwidth($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasBandwidth() => $_has(4);
  @$pb.TagNumber(6)
  void clearBandwidth() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get guardNs => $_getIZ(5);
  @$pb.TagNumber(7)
  set guardNs($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasGuardNs() => $_has(5);
  @$pb.TagNumber(7)
  void clearGuardNs() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get rateMbps => $_getIZ(6);
  @$pb.TagNumber(8)
  set rateMbps($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasRateMbps() => $_has(6);
  @$pb.TagNumber(8)
  void clearRateMbps() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get airtimeFractionLast1s => $_getN(7);
  @$pb.TagNumber(9)
  set airtimeFractionLast1s($core.double v) { $_setFloat(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasAirtimeFractionLast1s() => $_has(7);
  @$pb.TagNumber(9)
  void clearAirtimeFractionLast1s() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get sampledPackets => $_getIZ(8);
  @$pb.TagNumber(10)
  set sampledPackets($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasSampledPackets() => $_has(8);
  @$pb.TagNumber(10)
  void clearSampledPackets() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get sampledPacketsRetried => $_getIZ(9);
  @$pb.TagNumber(11)
  set sampledPacketsRetried($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasSampledPacketsRetried() => $_has(9);
  @$pb.TagNumber(11)
  void clearSampledPacketsRetried() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get sampledPacketsDropped => $_getIZ(10);
  @$pb.TagNumber(12)
  set sampledPacketsDropped($core.int v) { $_setUnsignedInt32(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasSampledPacketsDropped() => $_has(10);
  @$pb.TagNumber(12)
  void clearSampledPacketsDropped() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get phyMode => $_getIZ(11);
  @$pb.TagNumber(13)
  set phyMode($core.int v) { $_setUnsignedInt32(11, v); }
  @$pb.TagNumber(13)
  $core.bool hasPhyMode() => $_has(11);
  @$pb.TagNumber(13)
  void clearPhyMode() => clearField(13);
}

class WifiClient_TxStats extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiClient.TxStats', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bytes', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'successBytes', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nss', $pb.PbFieldType.O3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mcs', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bandwidth', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guardNs', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rateMbps', $pb.PbFieldType.OU3)
    ..a<$core.double>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'airtimeFractionLast1s', $pb.PbFieldType.OF, protoName: 'airtime_fraction_last_1s')
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phyMode', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  WifiClient_TxStats._() : super();
  factory WifiClient_TxStats({
    $fixnum.Int64? bytes,
    $fixnum.Int64? successBytes,
    $core.int? nss,
    $core.int? mcs,
    $core.int? bandwidth,
    $core.int? guardNs,
    $core.int? rateMbps,
    $core.double? airtimeFractionLast1s,
    $core.int? phyMode,
  }) {
    final _result = create();
    if (bytes != null) {
      _result.bytes = bytes;
    }
    if (successBytes != null) {
      _result.successBytes = successBytes;
    }
    if (nss != null) {
      _result.nss = nss;
    }
    if (mcs != null) {
      _result.mcs = mcs;
    }
    if (bandwidth != null) {
      _result.bandwidth = bandwidth;
    }
    if (guardNs != null) {
      _result.guardNs = guardNs;
    }
    if (rateMbps != null) {
      _result.rateMbps = rateMbps;
    }
    if (airtimeFractionLast1s != null) {
      _result.airtimeFractionLast1s = airtimeFractionLast1s;
    }
    if (phyMode != null) {
      _result.phyMode = phyMode;
    }
    return _result;
  }
  factory WifiClient_TxStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiClient_TxStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiClient_TxStats clone() => WifiClient_TxStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiClient_TxStats copyWith(void Function(WifiClient_TxStats) updates) => super.copyWith((message) => updates(message as WifiClient_TxStats)) as WifiClient_TxStats; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiClient_TxStats create() => WifiClient_TxStats._();
  WifiClient_TxStats createEmptyInstance() => create();
  static $pb.PbList<WifiClient_TxStats> createRepeated() => $pb.PbList<WifiClient_TxStats>();
  @$core.pragma('dart2js:noInline')
  static WifiClient_TxStats getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiClient_TxStats>(create);
  static WifiClient_TxStats? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get bytes => $_getI64(0);
  @$pb.TagNumber(1)
  set bytes($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearBytes() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get successBytes => $_getI64(1);
  @$pb.TagNumber(2)
  set successBytes($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSuccessBytes() => $_has(1);
  @$pb.TagNumber(2)
  void clearSuccessBytes() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get nss => $_getIZ(2);
  @$pb.TagNumber(3)
  set nss($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNss() => $_has(2);
  @$pb.TagNumber(3)
  void clearNss() => clearField(3);

  @$pb.TagNumber(5)
  $core.int get mcs => $_getIZ(3);
  @$pb.TagNumber(5)
  set mcs($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasMcs() => $_has(3);
  @$pb.TagNumber(5)
  void clearMcs() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get bandwidth => $_getIZ(4);
  @$pb.TagNumber(6)
  set bandwidth($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasBandwidth() => $_has(4);
  @$pb.TagNumber(6)
  void clearBandwidth() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get guardNs => $_getIZ(5);
  @$pb.TagNumber(7)
  set guardNs($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasGuardNs() => $_has(5);
  @$pb.TagNumber(7)
  void clearGuardNs() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get rateMbps => $_getIZ(6);
  @$pb.TagNumber(8)
  set rateMbps($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasRateMbps() => $_has(6);
  @$pb.TagNumber(8)
  void clearRateMbps() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get airtimeFractionLast1s => $_getN(7);
  @$pb.TagNumber(9)
  set airtimeFractionLast1s($core.double v) { $_setFloat(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasAirtimeFractionLast1s() => $_has(7);
  @$pb.TagNumber(9)
  void clearAirtimeFractionLast1s() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get phyMode => $_getIZ(8);
  @$pb.TagNumber(10)
  set phyMode($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasPhyMode() => $_has(8);
  @$pb.TagNumber(10)
  void clearPhyMode() => clearField(10);
}

class WifiClient extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiClient', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'macAddress')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ipAddress')
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signalStrength', $pb.PbFieldType.OF)
    ..aOM<WifiClient_RxStats>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rxStats', subBuilder: WifiClient_RxStats.create)
    ..aOM<WifiClient_TxStats>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txStats', subBuilder: WifiClient_TxStats.create)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'associatedTimeS', $pb.PbFieldType.OU3)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modeStr')
    ..e<WifiClient_Interface>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'iface', $pb.PbFieldType.OE, defaultOrMaker: WifiClient_Interface.UNKNOWN, valueOf: WifiClient_Interface.valueOf, enumValues: WifiClient_Interface.values)
    ..a<$core.double>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'snr', $pb.PbFieldType.OF)
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'psmode', $pb.PbFieldType.O3)
    ..a<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelWidth', $pb.PbFieldType.OU3)
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'upstreamMacAddress')
    ..e<WifiClient_Role>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'role', $pb.PbFieldType.OE, defaultOrMaker: WifiClient_Role.ROLE_UNKNOWN, valueOf: WifiClient_Role.valueOf, enumValues: WifiClient_Role.values)
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId')
    ..a<$core.int>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'swqChecks', $pb.PbFieldType.OU3)
    ..a<$core.int>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'swqChecksNonEmpty', $pb.PbFieldType.OU3)
    ..a<$core.int>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mibSteerState', $pb.PbFieldType.OU3)
    ..a<$core.int>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mibSteerMethod', $pb.PbFieldType.OU3)
    ..a<$core.int>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'btmRequests', $pb.PbFieldType.OU3)
    ..a<$core.int>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'btmRequestsSuccess', $pb.PbFieldType.OU3)
    ..aOS(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'domain')
    ..aOB(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dot11vSupport')
    ..aOS(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ifaceName')
    ..a<$core.int>(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'steerReqSuccessLast1h', $pb.PbFieldType.OU3, protoName: 'steer_req_success_last_1h')
    ..a<$core.int>(28, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'steerReqFailLast1h', $pb.PbFieldType.OU3, protoName: 'steer_req_fail_last_1h')
    ..a<$core.int>(29, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'steerReqFailAndDissocLast1h', $pb.PbFieldType.OU3, protoName: 'steer_req_fail_and_dissoc_last_1h')
    ..a<$core.int>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'steerState', $pb.PbFieldType.OU3)
    ..aOS(31, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'givenName')
    ..a<$core.int>(32, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hopsFromController', $pb.PbFieldType.OU3)
    ..a<$core.double>(33, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'estTxRateMbpsFromController', $pb.PbFieldType.OF)
    ..a<$core.double>(34, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'estRxRateMbpsFromController', $pb.PbFieldType.OF)
    ..aOS(37, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hardwareVersion')
    ..aOS(38, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'softwareVersion')
    ..a<$core.int>(39, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'apiVersion', $pb.PbFieldType.OU3)
    ..aOM<WifiClient_PingMetrics>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pingMetrics', subBuilder: WifiClient_PingMetrics.create)
    ..pPS(41, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ipv6Addresses')
    ..hasRequiredFields = false
  ;

  WifiClient._() : super();
  factory WifiClient({
    $core.String? name,
    $core.String? macAddress,
    $core.String? ipAddress,
    $core.double? signalStrength,
    WifiClient_RxStats? rxStats,
    WifiClient_TxStats? txStats,
    $core.int? associatedTimeS,
    $core.String? modeStr,
    WifiClient_Interface? iface,
    $core.double? snr,
    $core.int? psmode,
    $core.int? channelWidth,
    $core.String? upstreamMacAddress,
    WifiClient_Role? role,
    $core.String? deviceId,
    $core.int? swqChecks,
    $core.int? swqChecksNonEmpty,
    $core.int? mibSteerState,
    $core.int? mibSteerMethod,
    $core.int? btmRequests,
    $core.int? btmRequestsSuccess,
    $core.String? domain,
    $core.bool? dot11vSupport,
    $core.String? ifaceName,
    $core.int? steerReqSuccessLast1h,
    $core.int? steerReqFailLast1h,
    $core.int? steerReqFailAndDissocLast1h,
    $core.int? steerState,
    $core.String? givenName,
    $core.int? hopsFromController,
    $core.double? estTxRateMbpsFromController,
    $core.double? estRxRateMbpsFromController,
    $core.String? hardwareVersion,
    $core.String? softwareVersion,
    $core.int? apiVersion,
    WifiClient_PingMetrics? pingMetrics,
    $core.Iterable<$core.String>? ipv6Addresses,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (macAddress != null) {
      _result.macAddress = macAddress;
    }
    if (ipAddress != null) {
      _result.ipAddress = ipAddress;
    }
    if (signalStrength != null) {
      _result.signalStrength = signalStrength;
    }
    if (rxStats != null) {
      _result.rxStats = rxStats;
    }
    if (txStats != null) {
      _result.txStats = txStats;
    }
    if (associatedTimeS != null) {
      _result.associatedTimeS = associatedTimeS;
    }
    if (modeStr != null) {
      _result.modeStr = modeStr;
    }
    if (iface != null) {
      _result.iface = iface;
    }
    if (snr != null) {
      _result.snr = snr;
    }
    if (psmode != null) {
      _result.psmode = psmode;
    }
    if (channelWidth != null) {
      _result.channelWidth = channelWidth;
    }
    if (upstreamMacAddress != null) {
      _result.upstreamMacAddress = upstreamMacAddress;
    }
    if (role != null) {
      _result.role = role;
    }
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    if (swqChecks != null) {
      _result.swqChecks = swqChecks;
    }
    if (swqChecksNonEmpty != null) {
      _result.swqChecksNonEmpty = swqChecksNonEmpty;
    }
    if (mibSteerState != null) {
      _result.mibSteerState = mibSteerState;
    }
    if (mibSteerMethod != null) {
      _result.mibSteerMethod = mibSteerMethod;
    }
    if (btmRequests != null) {
      _result.btmRequests = btmRequests;
    }
    if (btmRequestsSuccess != null) {
      _result.btmRequestsSuccess = btmRequestsSuccess;
    }
    if (domain != null) {
      _result.domain = domain;
    }
    if (dot11vSupport != null) {
      _result.dot11vSupport = dot11vSupport;
    }
    if (ifaceName != null) {
      _result.ifaceName = ifaceName;
    }
    if (steerReqSuccessLast1h != null) {
      _result.steerReqSuccessLast1h = steerReqSuccessLast1h;
    }
    if (steerReqFailLast1h != null) {
      _result.steerReqFailLast1h = steerReqFailLast1h;
    }
    if (steerReqFailAndDissocLast1h != null) {
      _result.steerReqFailAndDissocLast1h = steerReqFailAndDissocLast1h;
    }
    if (steerState != null) {
      _result.steerState = steerState;
    }
    if (givenName != null) {
      _result.givenName = givenName;
    }
    if (hopsFromController != null) {
      _result.hopsFromController = hopsFromController;
    }
    if (estTxRateMbpsFromController != null) {
      _result.estTxRateMbpsFromController = estTxRateMbpsFromController;
    }
    if (estRxRateMbpsFromController != null) {
      _result.estRxRateMbpsFromController = estRxRateMbpsFromController;
    }
    if (hardwareVersion != null) {
      _result.hardwareVersion = hardwareVersion;
    }
    if (softwareVersion != null) {
      _result.softwareVersion = softwareVersion;
    }
    if (apiVersion != null) {
      _result.apiVersion = apiVersion;
    }
    if (pingMetrics != null) {
      _result.pingMetrics = pingMetrics;
    }
    if (ipv6Addresses != null) {
      _result.ipv6Addresses.addAll(ipv6Addresses);
    }
    return _result;
  }
  factory WifiClient.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiClient.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiClient clone() => WifiClient()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiClient copyWith(void Function(WifiClient) updates) => super.copyWith((message) => updates(message as WifiClient)) as WifiClient; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiClient create() => WifiClient._();
  WifiClient createEmptyInstance() => create();
  static $pb.PbList<WifiClient> createRepeated() => $pb.PbList<WifiClient>();
  @$core.pragma('dart2js:noInline')
  static WifiClient getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiClient>(create);
  static WifiClient? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get macAddress => $_getSZ(1);
  @$pb.TagNumber(2)
  set macAddress($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMacAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearMacAddress() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get ipAddress => $_getSZ(2);
  @$pb.TagNumber(3)
  set ipAddress($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIpAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearIpAddress() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get signalStrength => $_getN(3);
  @$pb.TagNumber(4)
  set signalStrength($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSignalStrength() => $_has(3);
  @$pb.TagNumber(4)
  void clearSignalStrength() => clearField(4);

  @$pb.TagNumber(5)
  WifiClient_RxStats get rxStats => $_getN(4);
  @$pb.TagNumber(5)
  set rxStats(WifiClient_RxStats v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasRxStats() => $_has(4);
  @$pb.TagNumber(5)
  void clearRxStats() => clearField(5);
  @$pb.TagNumber(5)
  WifiClient_RxStats ensureRxStats() => $_ensure(4);

  @$pb.TagNumber(6)
  WifiClient_TxStats get txStats => $_getN(5);
  @$pb.TagNumber(6)
  set txStats(WifiClient_TxStats v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasTxStats() => $_has(5);
  @$pb.TagNumber(6)
  void clearTxStats() => clearField(6);
  @$pb.TagNumber(6)
  WifiClient_TxStats ensureTxStats() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.int get associatedTimeS => $_getIZ(6);
  @$pb.TagNumber(7)
  set associatedTimeS($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAssociatedTimeS() => $_has(6);
  @$pb.TagNumber(7)
  void clearAssociatedTimeS() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get modeStr => $_getSZ(7);
  @$pb.TagNumber(8)
  set modeStr($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasModeStr() => $_has(7);
  @$pb.TagNumber(8)
  void clearModeStr() => clearField(8);

  @$pb.TagNumber(9)
  WifiClient_Interface get iface => $_getN(8);
  @$pb.TagNumber(9)
  set iface(WifiClient_Interface v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasIface() => $_has(8);
  @$pb.TagNumber(9)
  void clearIface() => clearField(9);

  @$pb.TagNumber(10)
  $core.double get snr => $_getN(9);
  @$pb.TagNumber(10)
  set snr($core.double v) { $_setFloat(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSnr() => $_has(9);
  @$pb.TagNumber(10)
  void clearSnr() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get psmode => $_getIZ(10);
  @$pb.TagNumber(11)
  set psmode($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasPsmode() => $_has(10);
  @$pb.TagNumber(11)
  void clearPsmode() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get channelWidth => $_getIZ(11);
  @$pb.TagNumber(12)
  set channelWidth($core.int v) { $_setUnsignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasChannelWidth() => $_has(11);
  @$pb.TagNumber(12)
  void clearChannelWidth() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get upstreamMacAddress => $_getSZ(12);
  @$pb.TagNumber(13)
  set upstreamMacAddress($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasUpstreamMacAddress() => $_has(12);
  @$pb.TagNumber(13)
  void clearUpstreamMacAddress() => clearField(13);

  @$pb.TagNumber(14)
  WifiClient_Role get role => $_getN(13);
  @$pb.TagNumber(14)
  set role(WifiClient_Role v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasRole() => $_has(13);
  @$pb.TagNumber(14)
  void clearRole() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get deviceId => $_getSZ(14);
  @$pb.TagNumber(15)
  set deviceId($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasDeviceId() => $_has(14);
  @$pb.TagNumber(15)
  void clearDeviceId() => clearField(15);

  @$pb.TagNumber(16)
  $core.int get swqChecks => $_getIZ(15);
  @$pb.TagNumber(16)
  set swqChecks($core.int v) { $_setUnsignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasSwqChecks() => $_has(15);
  @$pb.TagNumber(16)
  void clearSwqChecks() => clearField(16);

  @$pb.TagNumber(17)
  $core.int get swqChecksNonEmpty => $_getIZ(16);
  @$pb.TagNumber(17)
  set swqChecksNonEmpty($core.int v) { $_setUnsignedInt32(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasSwqChecksNonEmpty() => $_has(16);
  @$pb.TagNumber(17)
  void clearSwqChecksNonEmpty() => clearField(17);

  @$pb.TagNumber(18)
  $core.int get mibSteerState => $_getIZ(17);
  @$pb.TagNumber(18)
  set mibSteerState($core.int v) { $_setUnsignedInt32(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasMibSteerState() => $_has(17);
  @$pb.TagNumber(18)
  void clearMibSteerState() => clearField(18);

  @$pb.TagNumber(19)
  $core.int get mibSteerMethod => $_getIZ(18);
  @$pb.TagNumber(19)
  set mibSteerMethod($core.int v) { $_setUnsignedInt32(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasMibSteerMethod() => $_has(18);
  @$pb.TagNumber(19)
  void clearMibSteerMethod() => clearField(19);

  @$pb.TagNumber(20)
  $core.int get btmRequests => $_getIZ(19);
  @$pb.TagNumber(20)
  set btmRequests($core.int v) { $_setUnsignedInt32(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasBtmRequests() => $_has(19);
  @$pb.TagNumber(20)
  void clearBtmRequests() => clearField(20);

  @$pb.TagNumber(21)
  $core.int get btmRequestsSuccess => $_getIZ(20);
  @$pb.TagNumber(21)
  set btmRequestsSuccess($core.int v) { $_setUnsignedInt32(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasBtmRequestsSuccess() => $_has(20);
  @$pb.TagNumber(21)
  void clearBtmRequestsSuccess() => clearField(21);

  @$pb.TagNumber(22)
  $core.String get domain => $_getSZ(21);
  @$pb.TagNumber(22)
  set domain($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasDomain() => $_has(21);
  @$pb.TagNumber(22)
  void clearDomain() => clearField(22);

  @$pb.TagNumber(23)
  $core.bool get dot11vSupport => $_getBF(22);
  @$pb.TagNumber(23)
  set dot11vSupport($core.bool v) { $_setBool(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasDot11vSupport() => $_has(22);
  @$pb.TagNumber(23)
  void clearDot11vSupport() => clearField(23);

  @$pb.TagNumber(26)
  $core.String get ifaceName => $_getSZ(23);
  @$pb.TagNumber(26)
  set ifaceName($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(26)
  $core.bool hasIfaceName() => $_has(23);
  @$pb.TagNumber(26)
  void clearIfaceName() => clearField(26);

  @$pb.TagNumber(27)
  $core.int get steerReqSuccessLast1h => $_getIZ(24);
  @$pb.TagNumber(27)
  set steerReqSuccessLast1h($core.int v) { $_setUnsignedInt32(24, v); }
  @$pb.TagNumber(27)
  $core.bool hasSteerReqSuccessLast1h() => $_has(24);
  @$pb.TagNumber(27)
  void clearSteerReqSuccessLast1h() => clearField(27);

  @$pb.TagNumber(28)
  $core.int get steerReqFailLast1h => $_getIZ(25);
  @$pb.TagNumber(28)
  set steerReqFailLast1h($core.int v) { $_setUnsignedInt32(25, v); }
  @$pb.TagNumber(28)
  $core.bool hasSteerReqFailLast1h() => $_has(25);
  @$pb.TagNumber(28)
  void clearSteerReqFailLast1h() => clearField(28);

  @$pb.TagNumber(29)
  $core.int get steerReqFailAndDissocLast1h => $_getIZ(26);
  @$pb.TagNumber(29)
  set steerReqFailAndDissocLast1h($core.int v) { $_setUnsignedInt32(26, v); }
  @$pb.TagNumber(29)
  $core.bool hasSteerReqFailAndDissocLast1h() => $_has(26);
  @$pb.TagNumber(29)
  void clearSteerReqFailAndDissocLast1h() => clearField(29);

  @$pb.TagNumber(30)
  $core.int get steerState => $_getIZ(27);
  @$pb.TagNumber(30)
  set steerState($core.int v) { $_setUnsignedInt32(27, v); }
  @$pb.TagNumber(30)
  $core.bool hasSteerState() => $_has(27);
  @$pb.TagNumber(30)
  void clearSteerState() => clearField(30);

  @$pb.TagNumber(31)
  $core.String get givenName => $_getSZ(28);
  @$pb.TagNumber(31)
  set givenName($core.String v) { $_setString(28, v); }
  @$pb.TagNumber(31)
  $core.bool hasGivenName() => $_has(28);
  @$pb.TagNumber(31)
  void clearGivenName() => clearField(31);

  @$pb.TagNumber(32)
  $core.int get hopsFromController => $_getIZ(29);
  @$pb.TagNumber(32)
  set hopsFromController($core.int v) { $_setUnsignedInt32(29, v); }
  @$pb.TagNumber(32)
  $core.bool hasHopsFromController() => $_has(29);
  @$pb.TagNumber(32)
  void clearHopsFromController() => clearField(32);

  @$pb.TagNumber(33)
  $core.double get estTxRateMbpsFromController => $_getN(30);
  @$pb.TagNumber(33)
  set estTxRateMbpsFromController($core.double v) { $_setFloat(30, v); }
  @$pb.TagNumber(33)
  $core.bool hasEstTxRateMbpsFromController() => $_has(30);
  @$pb.TagNumber(33)
  void clearEstTxRateMbpsFromController() => clearField(33);

  @$pb.TagNumber(34)
  $core.double get estRxRateMbpsFromController => $_getN(31);
  @$pb.TagNumber(34)
  set estRxRateMbpsFromController($core.double v) { $_setFloat(31, v); }
  @$pb.TagNumber(34)
  $core.bool hasEstRxRateMbpsFromController() => $_has(31);
  @$pb.TagNumber(34)
  void clearEstRxRateMbpsFromController() => clearField(34);

  @$pb.TagNumber(37)
  $core.String get hardwareVersion => $_getSZ(32);
  @$pb.TagNumber(37)
  set hardwareVersion($core.String v) { $_setString(32, v); }
  @$pb.TagNumber(37)
  $core.bool hasHardwareVersion() => $_has(32);
  @$pb.TagNumber(37)
  void clearHardwareVersion() => clearField(37);

  @$pb.TagNumber(38)
  $core.String get softwareVersion => $_getSZ(33);
  @$pb.TagNumber(38)
  set softwareVersion($core.String v) { $_setString(33, v); }
  @$pb.TagNumber(38)
  $core.bool hasSoftwareVersion() => $_has(33);
  @$pb.TagNumber(38)
  void clearSoftwareVersion() => clearField(38);

  @$pb.TagNumber(39)
  $core.int get apiVersion => $_getIZ(34);
  @$pb.TagNumber(39)
  set apiVersion($core.int v) { $_setUnsignedInt32(34, v); }
  @$pb.TagNumber(39)
  $core.bool hasApiVersion() => $_has(34);
  @$pb.TagNumber(39)
  void clearApiVersion() => clearField(39);

  @$pb.TagNumber(40)
  WifiClient_PingMetrics get pingMetrics => $_getN(35);
  @$pb.TagNumber(40)
  set pingMetrics(WifiClient_PingMetrics v) { setField(40, v); }
  @$pb.TagNumber(40)
  $core.bool hasPingMetrics() => $_has(35);
  @$pb.TagNumber(40)
  void clearPingMetrics() => clearField(40);
  @$pb.TagNumber(40)
  WifiClient_PingMetrics ensurePingMetrics() => $_ensure(35);

  @$pb.TagNumber(41)
  $core.List<$core.String> get ipv6Addresses => $_getList(36);
}

enum Request_Request {
  reboot, 
  getStatus, 
  getDeviceInfo, 
  getLocation, 
  getPersistentStats, 
  getConnections, 
  dishStow, 
  dishGetObstructionMap, 
  dishSetConfig, 
  dishGetConfig, 
  dishInhibitGps, 
  wifiSetConfig, 
  wifiGetClients, 
  wifiGetDiagnostics, 
  wifiGetConfig, 
  transceiverGetStatus, 
  transceiverGetTelemetry, 
  notSet
}

class Request extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Request_Request> _Request_RequestByTag = {
    1001 : Request_Request.reboot,
    1004 : Request_Request.getStatus,
    1008 : Request_Request.getDeviceInfo,
    1017 : Request_Request.getLocation,
    1022 : Request_Request.getPersistentStats,
    1023 : Request_Request.getConnections,
    2002 : Request_Request.dishStow,
    2008 : Request_Request.dishGetObstructionMap,
    2010 : Request_Request.dishSetConfig,
    2011 : Request_Request.dishGetConfig,
    2014 : Request_Request.dishInhibitGps,
    3001 : Request_Request.wifiSetConfig,
    3002 : Request_Request.wifiGetClients,
    3008 : Request_Request.wifiGetDiagnostics,
    3009 : Request_Request.wifiGetConfig,
    4003 : Request_Request.transceiverGetStatus,
    4004 : Request_Request.transceiverGetTelemetry,
    0 : Request_Request.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..oo(0, [1001, 1004, 1008, 1017, 1022, 1023, 2002, 2008, 2010, 2011, 2014, 3001, 3002, 3008, 3009, 4003, 4004])
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'targetId')
    ..a<$fixnum.Int64>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'epochId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<RebootRequest>(1001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reboot', subBuilder: RebootRequest.create)
    ..aOM<GetStatusRequest>(1004, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getStatus', subBuilder: GetStatusRequest.create)
    ..aOM<GetDeviceInfoRequest>(1008, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getDeviceInfo', subBuilder: GetDeviceInfoRequest.create)
    ..aOM<GetLocationRequest>(1017, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getLocation', subBuilder: GetLocationRequest.create)
    ..aOM<GetPersistentStatsRequest>(1022, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getPersistentStats', subBuilder: GetPersistentStatsRequest.create)
    ..aOM<GetConnectionsRequest>(1023, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getConnections', subBuilder: GetConnectionsRequest.create)
    ..aOM<DishStowRequest>(2002, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishStow', subBuilder: DishStowRequest.create)
    ..aOM<DishGetObstructionMapRequest>(2008, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishGetObstructionMap', subBuilder: DishGetObstructionMapRequest.create)
    ..aOM<DishSetConfigRequest>(2010, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishSetConfig', subBuilder: DishSetConfigRequest.create)
    ..aOM<DishGetConfigRequest>(2011, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishGetConfig', subBuilder: DishGetConfigRequest.create)
    ..aOM<DishInhibitGpsRequest>(2014, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishInhibitGps', subBuilder: DishInhibitGpsRequest.create)
    ..aOM<WifiSetConfigRequest>(3001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiSetConfig', subBuilder: WifiSetConfigRequest.create)
    ..aOM<WifiGetClientsRequest>(3002, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiGetClients', subBuilder: WifiGetClientsRequest.create)
    ..aOM<WifiGetDiagnosticsRequest>(3008, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiGetDiagnostics', subBuilder: WifiGetDiagnosticsRequest.create)
    ..aOM<WifiGetConfigRequest>(3009, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiGetConfig', subBuilder: WifiGetConfigRequest.create)
    ..aOM<TransceiverGetStatusRequest>(4003, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transceiverGetStatus', subBuilder: TransceiverGetStatusRequest.create)
    ..aOM<TransceiverGetTelemetryRequest>(4004, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transceiverGetTelemetry', subBuilder: TransceiverGetTelemetryRequest.create)
    ..hasRequiredFields = false
  ;

  Request._() : super();
  factory Request({
    $fixnum.Int64? id,
    $core.String? targetId,
    $fixnum.Int64? epochId,
    RebootRequest? reboot,
    GetStatusRequest? getStatus,
    GetDeviceInfoRequest? getDeviceInfo,
    GetLocationRequest? getLocation,
    GetPersistentStatsRequest? getPersistentStats,
    GetConnectionsRequest? getConnections,
    DishStowRequest? dishStow,
    DishGetObstructionMapRequest? dishGetObstructionMap,
    DishSetConfigRequest? dishSetConfig,
    DishGetConfigRequest? dishGetConfig,
    DishInhibitGpsRequest? dishInhibitGps,
    WifiSetConfigRequest? wifiSetConfig,
    WifiGetClientsRequest? wifiGetClients,
    WifiGetDiagnosticsRequest? wifiGetDiagnostics,
    WifiGetConfigRequest? wifiGetConfig,
    TransceiverGetStatusRequest? transceiverGetStatus,
    TransceiverGetTelemetryRequest? transceiverGetTelemetry,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (targetId != null) {
      _result.targetId = targetId;
    }
    if (epochId != null) {
      _result.epochId = epochId;
    }
    if (reboot != null) {
      _result.reboot = reboot;
    }
    if (getStatus != null) {
      _result.getStatus = getStatus;
    }
    if (getDeviceInfo != null) {
      _result.getDeviceInfo = getDeviceInfo;
    }
    if (getLocation != null) {
      _result.getLocation = getLocation;
    }
    if (getPersistentStats != null) {
      _result.getPersistentStats = getPersistentStats;
    }
    if (getConnections != null) {
      _result.getConnections = getConnections;
    }
    if (dishStow != null) {
      _result.dishStow = dishStow;
    }
    if (dishGetObstructionMap != null) {
      _result.dishGetObstructionMap = dishGetObstructionMap;
    }
    if (dishSetConfig != null) {
      _result.dishSetConfig = dishSetConfig;
    }
    if (dishGetConfig != null) {
      _result.dishGetConfig = dishGetConfig;
    }
    if (dishInhibitGps != null) {
      _result.dishInhibitGps = dishInhibitGps;
    }
    if (wifiSetConfig != null) {
      _result.wifiSetConfig = wifiSetConfig;
    }
    if (wifiGetClients != null) {
      _result.wifiGetClients = wifiGetClients;
    }
    if (wifiGetDiagnostics != null) {
      _result.wifiGetDiagnostics = wifiGetDiagnostics;
    }
    if (wifiGetConfig != null) {
      _result.wifiGetConfig = wifiGetConfig;
    }
    if (transceiverGetStatus != null) {
      _result.transceiverGetStatus = transceiverGetStatus;
    }
    if (transceiverGetTelemetry != null) {
      _result.transceiverGetTelemetry = transceiverGetTelemetry;
    }
    return _result;
  }
  factory Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Request clone() => Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Request copyWith(void Function(Request) updates) => super.copyWith((message) => updates(message as Request)) as Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Request create() => Request._();
  Request createEmptyInstance() => create();
  static $pb.PbList<Request> createRepeated() => $pb.PbList<Request>();
  @$core.pragma('dart2js:noInline')
  static Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Request>(create);
  static Request? _defaultInstance;

  Request_Request whichRequest() => _Request_RequestByTag[$_whichOneof(0)]!;
  void clearRequest() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(13)
  $core.String get targetId => $_getSZ(1);
  @$pb.TagNumber(13)
  set targetId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(13)
  $core.bool hasTargetId() => $_has(1);
  @$pb.TagNumber(13)
  void clearTargetId() => clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get epochId => $_getI64(2);
  @$pb.TagNumber(14)
  set epochId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(14)
  $core.bool hasEpochId() => $_has(2);
  @$pb.TagNumber(14)
  void clearEpochId() => clearField(14);

  @$pb.TagNumber(1001)
  RebootRequest get reboot => $_getN(3);
  @$pb.TagNumber(1001)
  set reboot(RebootRequest v) { setField(1001, v); }
  @$pb.TagNumber(1001)
  $core.bool hasReboot() => $_has(3);
  @$pb.TagNumber(1001)
  void clearReboot() => clearField(1001);
  @$pb.TagNumber(1001)
  RebootRequest ensureReboot() => $_ensure(3);

  @$pb.TagNumber(1004)
  GetStatusRequest get getStatus => $_getN(4);
  @$pb.TagNumber(1004)
  set getStatus(GetStatusRequest v) { setField(1004, v); }
  @$pb.TagNumber(1004)
  $core.bool hasGetStatus() => $_has(4);
  @$pb.TagNumber(1004)
  void clearGetStatus() => clearField(1004);
  @$pb.TagNumber(1004)
  GetStatusRequest ensureGetStatus() => $_ensure(4);

  @$pb.TagNumber(1008)
  GetDeviceInfoRequest get getDeviceInfo => $_getN(5);
  @$pb.TagNumber(1008)
  set getDeviceInfo(GetDeviceInfoRequest v) { setField(1008, v); }
  @$pb.TagNumber(1008)
  $core.bool hasGetDeviceInfo() => $_has(5);
  @$pb.TagNumber(1008)
  void clearGetDeviceInfo() => clearField(1008);
  @$pb.TagNumber(1008)
  GetDeviceInfoRequest ensureGetDeviceInfo() => $_ensure(5);

  @$pb.TagNumber(1017)
  GetLocationRequest get getLocation => $_getN(6);
  @$pb.TagNumber(1017)
  set getLocation(GetLocationRequest v) { setField(1017, v); }
  @$pb.TagNumber(1017)
  $core.bool hasGetLocation() => $_has(6);
  @$pb.TagNumber(1017)
  void clearGetLocation() => clearField(1017);
  @$pb.TagNumber(1017)
  GetLocationRequest ensureGetLocation() => $_ensure(6);

  @$pb.TagNumber(1022)
  GetPersistentStatsRequest get getPersistentStats => $_getN(7);
  @$pb.TagNumber(1022)
  set getPersistentStats(GetPersistentStatsRequest v) { setField(1022, v); }
  @$pb.TagNumber(1022)
  $core.bool hasGetPersistentStats() => $_has(7);
  @$pb.TagNumber(1022)
  void clearGetPersistentStats() => clearField(1022);
  @$pb.TagNumber(1022)
  GetPersistentStatsRequest ensureGetPersistentStats() => $_ensure(7);

  @$pb.TagNumber(1023)
  GetConnectionsRequest get getConnections => $_getN(8);
  @$pb.TagNumber(1023)
  set getConnections(GetConnectionsRequest v) { setField(1023, v); }
  @$pb.TagNumber(1023)
  $core.bool hasGetConnections() => $_has(8);
  @$pb.TagNumber(1023)
  void clearGetConnections() => clearField(1023);
  @$pb.TagNumber(1023)
  GetConnectionsRequest ensureGetConnections() => $_ensure(8);

  @$pb.TagNumber(2002)
  DishStowRequest get dishStow => $_getN(9);
  @$pb.TagNumber(2002)
  set dishStow(DishStowRequest v) { setField(2002, v); }
  @$pb.TagNumber(2002)
  $core.bool hasDishStow() => $_has(9);
  @$pb.TagNumber(2002)
  void clearDishStow() => clearField(2002);
  @$pb.TagNumber(2002)
  DishStowRequest ensureDishStow() => $_ensure(9);

  @$pb.TagNumber(2008)
  DishGetObstructionMapRequest get dishGetObstructionMap => $_getN(10);
  @$pb.TagNumber(2008)
  set dishGetObstructionMap(DishGetObstructionMapRequest v) { setField(2008, v); }
  @$pb.TagNumber(2008)
  $core.bool hasDishGetObstructionMap() => $_has(10);
  @$pb.TagNumber(2008)
  void clearDishGetObstructionMap() => clearField(2008);
  @$pb.TagNumber(2008)
  DishGetObstructionMapRequest ensureDishGetObstructionMap() => $_ensure(10);

  @$pb.TagNumber(2010)
  DishSetConfigRequest get dishSetConfig => $_getN(11);
  @$pb.TagNumber(2010)
  set dishSetConfig(DishSetConfigRequest v) { setField(2010, v); }
  @$pb.TagNumber(2010)
  $core.bool hasDishSetConfig() => $_has(11);
  @$pb.TagNumber(2010)
  void clearDishSetConfig() => clearField(2010);
  @$pb.TagNumber(2010)
  DishSetConfigRequest ensureDishSetConfig() => $_ensure(11);

  @$pb.TagNumber(2011)
  DishGetConfigRequest get dishGetConfig => $_getN(12);
  @$pb.TagNumber(2011)
  set dishGetConfig(DishGetConfigRequest v) { setField(2011, v); }
  @$pb.TagNumber(2011)
  $core.bool hasDishGetConfig() => $_has(12);
  @$pb.TagNumber(2011)
  void clearDishGetConfig() => clearField(2011);
  @$pb.TagNumber(2011)
  DishGetConfigRequest ensureDishGetConfig() => $_ensure(12);

  @$pb.TagNumber(2014)
  DishInhibitGpsRequest get dishInhibitGps => $_getN(13);
  @$pb.TagNumber(2014)
  set dishInhibitGps(DishInhibitGpsRequest v) { setField(2014, v); }
  @$pb.TagNumber(2014)
  $core.bool hasDishInhibitGps() => $_has(13);
  @$pb.TagNumber(2014)
  void clearDishInhibitGps() => clearField(2014);
  @$pb.TagNumber(2014)
  DishInhibitGpsRequest ensureDishInhibitGps() => $_ensure(13);

  @$pb.TagNumber(3001)
  WifiSetConfigRequest get wifiSetConfig => $_getN(14);
  @$pb.TagNumber(3001)
  set wifiSetConfig(WifiSetConfigRequest v) { setField(3001, v); }
  @$pb.TagNumber(3001)
  $core.bool hasWifiSetConfig() => $_has(14);
  @$pb.TagNumber(3001)
  void clearWifiSetConfig() => clearField(3001);
  @$pb.TagNumber(3001)
  WifiSetConfigRequest ensureWifiSetConfig() => $_ensure(14);

  @$pb.TagNumber(3002)
  WifiGetClientsRequest get wifiGetClients => $_getN(15);
  @$pb.TagNumber(3002)
  set wifiGetClients(WifiGetClientsRequest v) { setField(3002, v); }
  @$pb.TagNumber(3002)
  $core.bool hasWifiGetClients() => $_has(15);
  @$pb.TagNumber(3002)
  void clearWifiGetClients() => clearField(3002);
  @$pb.TagNumber(3002)
  WifiGetClientsRequest ensureWifiGetClients() => $_ensure(15);

  @$pb.TagNumber(3008)
  WifiGetDiagnosticsRequest get wifiGetDiagnostics => $_getN(16);
  @$pb.TagNumber(3008)
  set wifiGetDiagnostics(WifiGetDiagnosticsRequest v) { setField(3008, v); }
  @$pb.TagNumber(3008)
  $core.bool hasWifiGetDiagnostics() => $_has(16);
  @$pb.TagNumber(3008)
  void clearWifiGetDiagnostics() => clearField(3008);
  @$pb.TagNumber(3008)
  WifiGetDiagnosticsRequest ensureWifiGetDiagnostics() => $_ensure(16);

  @$pb.TagNumber(3009)
  WifiGetConfigRequest get wifiGetConfig => $_getN(17);
  @$pb.TagNumber(3009)
  set wifiGetConfig(WifiGetConfigRequest v) { setField(3009, v); }
  @$pb.TagNumber(3009)
  $core.bool hasWifiGetConfig() => $_has(17);
  @$pb.TagNumber(3009)
  void clearWifiGetConfig() => clearField(3009);
  @$pb.TagNumber(3009)
  WifiGetConfigRequest ensureWifiGetConfig() => $_ensure(17);

  @$pb.TagNumber(4003)
  TransceiverGetStatusRequest get transceiverGetStatus => $_getN(18);
  @$pb.TagNumber(4003)
  set transceiverGetStatus(TransceiverGetStatusRequest v) { setField(4003, v); }
  @$pb.TagNumber(4003)
  $core.bool hasTransceiverGetStatus() => $_has(18);
  @$pb.TagNumber(4003)
  void clearTransceiverGetStatus() => clearField(4003);
  @$pb.TagNumber(4003)
  TransceiverGetStatusRequest ensureTransceiverGetStatus() => $_ensure(18);

  @$pb.TagNumber(4004)
  TransceiverGetTelemetryRequest get transceiverGetTelemetry => $_getN(19);
  @$pb.TagNumber(4004)
  set transceiverGetTelemetry(TransceiverGetTelemetryRequest v) { setField(4004, v); }
  @$pb.TagNumber(4004)
  $core.bool hasTransceiverGetTelemetry() => $_has(19);
  @$pb.TagNumber(4004)
  void clearTransceiverGetTelemetry() => clearField(4004);
  @$pb.TagNumber(4004)
  TransceiverGetTelemetryRequest ensureTransceiverGetTelemetry() => $_ensure(19);
}

enum Response_Response {
  reboot, 
  getDeviceInfo, 
  getLocation, 
  getConnections, 
  dishStow, 
  dishGetStatus, 
  dishGetObstructionMap, 
  dishSetConfig, 
  dishGetConfig, 
  dishInhibitGps, 
  wifiSetConfig, 
  wifiGetClients, 
  wifiGetDiagnostics, 
  wifiGetConfig, 
  wifiGetPersistentStats, 
  transceiverGetStatus, 
  transceiverGetTelemetry, 
  notSet
}

class Response extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Response_Response> _Response_ResponseByTag = {
    1001 : Response_Response.reboot,
    1004 : Response_Response.getDeviceInfo,
    1017 : Response_Response.getLocation,
    1023 : Response_Response.getConnections,
    2002 : Response_Response.dishStow,
    2004 : Response_Response.dishGetStatus,
    2008 : Response_Response.dishGetObstructionMap,
    2010 : Response_Response.dishSetConfig,
    2011 : Response_Response.dishGetConfig,
    2013 : Response_Response.dishInhibitGps,
    3001 : Response_Response.wifiSetConfig,
    3002 : Response_Response.wifiGetClients,
    3008 : Response_Response.wifiGetDiagnostics,
    3009 : Response_Response.wifiGetConfig,
    3022 : Response_Response.wifiGetPersistentStats,
    4003 : Response_Response.transceiverGetStatus,
    4004 : Response_Response.transceiverGetTelemetry,
    0 : Response_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..oo(0, [1001, 1004, 1017, 1023, 2002, 2004, 2008, 2010, 2011, 2013, 3001, 3002, 3008, 3009, 3022, 4003, 4004])
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$1.Status>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', subBuilder: $1.Status.create)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'apiVersion', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<RebootResponse>(1001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reboot', subBuilder: RebootResponse.create)
    ..aOM<GetDeviceInfoResponse>(1004, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getDeviceInfo', subBuilder: GetDeviceInfoResponse.create)
    ..aOM<GetLocationResponse>(1017, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getLocation', subBuilder: GetLocationResponse.create)
    ..aOM<GetConnectionsResponse>(1023, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getConnections', subBuilder: GetConnectionsResponse.create)
    ..aOM<DishStowResponse>(2002, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishStow', subBuilder: DishStowResponse.create)
    ..aOM<DishGetStatusResponse>(2004, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishGetStatus', subBuilder: DishGetStatusResponse.create)
    ..aOM<DishGetObstructionMapResponse>(2008, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishGetObstructionMap', subBuilder: DishGetObstructionMapResponse.create)
    ..aOM<DishSetConfigResponse>(2010, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishSetConfig', subBuilder: DishSetConfigResponse.create)
    ..aOM<DishGetConfigResponse>(2011, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishGetConfig', subBuilder: DishGetConfigResponse.create)
    ..aOM<DishInhibitGpsResponse>(2013, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishInhibitGps', subBuilder: DishInhibitGpsResponse.create)
    ..aOM<WifiSetConfigResponse>(3001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiSetConfig', subBuilder: WifiSetConfigResponse.create)
    ..aOM<WifiGetClientsResponse>(3002, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiGetClients', subBuilder: WifiGetClientsResponse.create)
    ..aOM<WifiGetDiagnosticsResponse>(3008, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiGetDiagnostics', subBuilder: WifiGetDiagnosticsResponse.create)
    ..aOM<WifiGetConfigResponse>(3009, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiGetConfig', subBuilder: WifiGetConfigResponse.create)
    ..aOM<WifiGetPersistentStatsResponse>(3022, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiGetPersistentStats', subBuilder: WifiGetPersistentStatsResponse.create)
    ..aOM<TransceiverGetStatusResponse>(4003, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transceiverGetStatus', subBuilder: TransceiverGetStatusResponse.create)
    ..aOM<TransceiverGetTelemetryResponse>(4004, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transceiverGetTelemetry', subBuilder: TransceiverGetTelemetryResponse.create)
    ..hasRequiredFields = false
  ;

  Response._() : super();
  factory Response({
    $fixnum.Int64? id,
    $1.Status? status,
    $fixnum.Int64? apiVersion,
    RebootResponse? reboot,
    GetDeviceInfoResponse? getDeviceInfo,
    GetLocationResponse? getLocation,
    GetConnectionsResponse? getConnections,
    DishStowResponse? dishStow,
    DishGetStatusResponse? dishGetStatus,
    DishGetObstructionMapResponse? dishGetObstructionMap,
    DishSetConfigResponse? dishSetConfig,
    DishGetConfigResponse? dishGetConfig,
    DishInhibitGpsResponse? dishInhibitGps,
    WifiSetConfigResponse? wifiSetConfig,
    WifiGetClientsResponse? wifiGetClients,
    WifiGetDiagnosticsResponse? wifiGetDiagnostics,
    WifiGetConfigResponse? wifiGetConfig,
    WifiGetPersistentStatsResponse? wifiGetPersistentStats,
    TransceiverGetStatusResponse? transceiverGetStatus,
    TransceiverGetTelemetryResponse? transceiverGetTelemetry,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (status != null) {
      _result.status = status;
    }
    if (apiVersion != null) {
      _result.apiVersion = apiVersion;
    }
    if (reboot != null) {
      _result.reboot = reboot;
    }
    if (getDeviceInfo != null) {
      _result.getDeviceInfo = getDeviceInfo;
    }
    if (getLocation != null) {
      _result.getLocation = getLocation;
    }
    if (getConnections != null) {
      _result.getConnections = getConnections;
    }
    if (dishStow != null) {
      _result.dishStow = dishStow;
    }
    if (dishGetStatus != null) {
      _result.dishGetStatus = dishGetStatus;
    }
    if (dishGetObstructionMap != null) {
      _result.dishGetObstructionMap = dishGetObstructionMap;
    }
    if (dishSetConfig != null) {
      _result.dishSetConfig = dishSetConfig;
    }
    if (dishGetConfig != null) {
      _result.dishGetConfig = dishGetConfig;
    }
    if (dishInhibitGps != null) {
      _result.dishInhibitGps = dishInhibitGps;
    }
    if (wifiSetConfig != null) {
      _result.wifiSetConfig = wifiSetConfig;
    }
    if (wifiGetClients != null) {
      _result.wifiGetClients = wifiGetClients;
    }
    if (wifiGetDiagnostics != null) {
      _result.wifiGetDiagnostics = wifiGetDiagnostics;
    }
    if (wifiGetConfig != null) {
      _result.wifiGetConfig = wifiGetConfig;
    }
    if (wifiGetPersistentStats != null) {
      _result.wifiGetPersistentStats = wifiGetPersistentStats;
    }
    if (transceiverGetStatus != null) {
      _result.transceiverGetStatus = transceiverGetStatus;
    }
    if (transceiverGetTelemetry != null) {
      _result.transceiverGetTelemetry = transceiverGetTelemetry;
    }
    return _result;
  }
  factory Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Response clone() => Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Response copyWith(void Function(Response) updates) => super.copyWith((message) => updates(message as Response)) as Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Response create() => Response._();
  Response createEmptyInstance() => create();
  static $pb.PbList<Response> createRepeated() => $pb.PbList<Response>();
  @$core.pragma('dart2js:noInline')
  static Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Response>(create);
  static Response? _defaultInstance;

  Response_Response whichResponse() => _Response_ResponseByTag[$_whichOneof(0)]!;
  void clearResponse() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $1.Status get status => $_getN(1);
  @$pb.TagNumber(2)
  set status($1.Status v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
  @$pb.TagNumber(2)
  $1.Status ensureStatus() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get apiVersion => $_getI64(2);
  @$pb.TagNumber(3)
  set apiVersion($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasApiVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearApiVersion() => clearField(3);

  @$pb.TagNumber(1001)
  RebootResponse get reboot => $_getN(3);
  @$pb.TagNumber(1001)
  set reboot(RebootResponse v) { setField(1001, v); }
  @$pb.TagNumber(1001)
  $core.bool hasReboot() => $_has(3);
  @$pb.TagNumber(1001)
  void clearReboot() => clearField(1001);
  @$pb.TagNumber(1001)
  RebootResponse ensureReboot() => $_ensure(3);

  @$pb.TagNumber(1004)
  GetDeviceInfoResponse get getDeviceInfo => $_getN(4);
  @$pb.TagNumber(1004)
  set getDeviceInfo(GetDeviceInfoResponse v) { setField(1004, v); }
  @$pb.TagNumber(1004)
  $core.bool hasGetDeviceInfo() => $_has(4);
  @$pb.TagNumber(1004)
  void clearGetDeviceInfo() => clearField(1004);
  @$pb.TagNumber(1004)
  GetDeviceInfoResponse ensureGetDeviceInfo() => $_ensure(4);

  @$pb.TagNumber(1017)
  GetLocationResponse get getLocation => $_getN(5);
  @$pb.TagNumber(1017)
  set getLocation(GetLocationResponse v) { setField(1017, v); }
  @$pb.TagNumber(1017)
  $core.bool hasGetLocation() => $_has(5);
  @$pb.TagNumber(1017)
  void clearGetLocation() => clearField(1017);
  @$pb.TagNumber(1017)
  GetLocationResponse ensureGetLocation() => $_ensure(5);

  @$pb.TagNumber(1023)
  GetConnectionsResponse get getConnections => $_getN(6);
  @$pb.TagNumber(1023)
  set getConnections(GetConnectionsResponse v) { setField(1023, v); }
  @$pb.TagNumber(1023)
  $core.bool hasGetConnections() => $_has(6);
  @$pb.TagNumber(1023)
  void clearGetConnections() => clearField(1023);
  @$pb.TagNumber(1023)
  GetConnectionsResponse ensureGetConnections() => $_ensure(6);

  @$pb.TagNumber(2002)
  DishStowResponse get dishStow => $_getN(7);
  @$pb.TagNumber(2002)
  set dishStow(DishStowResponse v) { setField(2002, v); }
  @$pb.TagNumber(2002)
  $core.bool hasDishStow() => $_has(7);
  @$pb.TagNumber(2002)
  void clearDishStow() => clearField(2002);
  @$pb.TagNumber(2002)
  DishStowResponse ensureDishStow() => $_ensure(7);

  @$pb.TagNumber(2004)
  DishGetStatusResponse get dishGetStatus => $_getN(8);
  @$pb.TagNumber(2004)
  set dishGetStatus(DishGetStatusResponse v) { setField(2004, v); }
  @$pb.TagNumber(2004)
  $core.bool hasDishGetStatus() => $_has(8);
  @$pb.TagNumber(2004)
  void clearDishGetStatus() => clearField(2004);
  @$pb.TagNumber(2004)
  DishGetStatusResponse ensureDishGetStatus() => $_ensure(8);

  @$pb.TagNumber(2008)
  DishGetObstructionMapResponse get dishGetObstructionMap => $_getN(9);
  @$pb.TagNumber(2008)
  set dishGetObstructionMap(DishGetObstructionMapResponse v) { setField(2008, v); }
  @$pb.TagNumber(2008)
  $core.bool hasDishGetObstructionMap() => $_has(9);
  @$pb.TagNumber(2008)
  void clearDishGetObstructionMap() => clearField(2008);
  @$pb.TagNumber(2008)
  DishGetObstructionMapResponse ensureDishGetObstructionMap() => $_ensure(9);

  @$pb.TagNumber(2010)
  DishSetConfigResponse get dishSetConfig => $_getN(10);
  @$pb.TagNumber(2010)
  set dishSetConfig(DishSetConfigResponse v) { setField(2010, v); }
  @$pb.TagNumber(2010)
  $core.bool hasDishSetConfig() => $_has(10);
  @$pb.TagNumber(2010)
  void clearDishSetConfig() => clearField(2010);
  @$pb.TagNumber(2010)
  DishSetConfigResponse ensureDishSetConfig() => $_ensure(10);

  @$pb.TagNumber(2011)
  DishGetConfigResponse get dishGetConfig => $_getN(11);
  @$pb.TagNumber(2011)
  set dishGetConfig(DishGetConfigResponse v) { setField(2011, v); }
  @$pb.TagNumber(2011)
  $core.bool hasDishGetConfig() => $_has(11);
  @$pb.TagNumber(2011)
  void clearDishGetConfig() => clearField(2011);
  @$pb.TagNumber(2011)
  DishGetConfigResponse ensureDishGetConfig() => $_ensure(11);

  @$pb.TagNumber(2013)
  DishInhibitGpsResponse get dishInhibitGps => $_getN(12);
  @$pb.TagNumber(2013)
  set dishInhibitGps(DishInhibitGpsResponse v) { setField(2013, v); }
  @$pb.TagNumber(2013)
  $core.bool hasDishInhibitGps() => $_has(12);
  @$pb.TagNumber(2013)
  void clearDishInhibitGps() => clearField(2013);
  @$pb.TagNumber(2013)
  DishInhibitGpsResponse ensureDishInhibitGps() => $_ensure(12);

  @$pb.TagNumber(3001)
  WifiSetConfigResponse get wifiSetConfig => $_getN(13);
  @$pb.TagNumber(3001)
  set wifiSetConfig(WifiSetConfigResponse v) { setField(3001, v); }
  @$pb.TagNumber(3001)
  $core.bool hasWifiSetConfig() => $_has(13);
  @$pb.TagNumber(3001)
  void clearWifiSetConfig() => clearField(3001);
  @$pb.TagNumber(3001)
  WifiSetConfigResponse ensureWifiSetConfig() => $_ensure(13);

  @$pb.TagNumber(3002)
  WifiGetClientsResponse get wifiGetClients => $_getN(14);
  @$pb.TagNumber(3002)
  set wifiGetClients(WifiGetClientsResponse v) { setField(3002, v); }
  @$pb.TagNumber(3002)
  $core.bool hasWifiGetClients() => $_has(14);
  @$pb.TagNumber(3002)
  void clearWifiGetClients() => clearField(3002);
  @$pb.TagNumber(3002)
  WifiGetClientsResponse ensureWifiGetClients() => $_ensure(14);

  @$pb.TagNumber(3008)
  WifiGetDiagnosticsResponse get wifiGetDiagnostics => $_getN(15);
  @$pb.TagNumber(3008)
  set wifiGetDiagnostics(WifiGetDiagnosticsResponse v) { setField(3008, v); }
  @$pb.TagNumber(3008)
  $core.bool hasWifiGetDiagnostics() => $_has(15);
  @$pb.TagNumber(3008)
  void clearWifiGetDiagnostics() => clearField(3008);
  @$pb.TagNumber(3008)
  WifiGetDiagnosticsResponse ensureWifiGetDiagnostics() => $_ensure(15);

  @$pb.TagNumber(3009)
  WifiGetConfigResponse get wifiGetConfig => $_getN(16);
  @$pb.TagNumber(3009)
  set wifiGetConfig(WifiGetConfigResponse v) { setField(3009, v); }
  @$pb.TagNumber(3009)
  $core.bool hasWifiGetConfig() => $_has(16);
  @$pb.TagNumber(3009)
  void clearWifiGetConfig() => clearField(3009);
  @$pb.TagNumber(3009)
  WifiGetConfigResponse ensureWifiGetConfig() => $_ensure(16);

  @$pb.TagNumber(3022)
  WifiGetPersistentStatsResponse get wifiGetPersistentStats => $_getN(17);
  @$pb.TagNumber(3022)
  set wifiGetPersistentStats(WifiGetPersistentStatsResponse v) { setField(3022, v); }
  @$pb.TagNumber(3022)
  $core.bool hasWifiGetPersistentStats() => $_has(17);
  @$pb.TagNumber(3022)
  void clearWifiGetPersistentStats() => clearField(3022);
  @$pb.TagNumber(3022)
  WifiGetPersistentStatsResponse ensureWifiGetPersistentStats() => $_ensure(17);

  @$pb.TagNumber(4003)
  TransceiverGetStatusResponse get transceiverGetStatus => $_getN(18);
  @$pb.TagNumber(4003)
  set transceiverGetStatus(TransceiverGetStatusResponse v) { setField(4003, v); }
  @$pb.TagNumber(4003)
  $core.bool hasTransceiverGetStatus() => $_has(18);
  @$pb.TagNumber(4003)
  void clearTransceiverGetStatus() => clearField(4003);
  @$pb.TagNumber(4003)
  TransceiverGetStatusResponse ensureTransceiverGetStatus() => $_ensure(18);

  @$pb.TagNumber(4004)
  TransceiverGetTelemetryResponse get transceiverGetTelemetry => $_getN(19);
  @$pb.TagNumber(4004)
  set transceiverGetTelemetry(TransceiverGetTelemetryResponse v) { setField(4004, v); }
  @$pb.TagNumber(4004)
  $core.bool hasTransceiverGetTelemetry() => $_has(19);
  @$pb.TagNumber(4004)
  void clearTransceiverGetTelemetry() => clearField(4004);
  @$pb.TagNumber(4004)
  TransceiverGetTelemetryResponse ensureTransceiverGetTelemetry() => $_ensure(19);
}

class GetStatusRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetStatusRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetStatusRequest._() : super();
  factory GetStatusRequest() => create();
  factory GetStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetStatusRequest clone() => GetStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetStatusRequest copyWith(void Function(GetStatusRequest) updates) => super.copyWith((message) => updates(message as GetStatusRequest)) as GetStatusRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetStatusRequest create() => GetStatusRequest._();
  GetStatusRequest createEmptyInstance() => create();
  static $pb.PbList<GetStatusRequest> createRepeated() => $pb.PbList<GetStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static GetStatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStatusRequest>(create);
  static GetStatusRequest? _defaultInstance;
}

class GetDeviceInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetDeviceInfoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetDeviceInfoRequest._() : super();
  factory GetDeviceInfoRequest() => create();
  factory GetDeviceInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDeviceInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDeviceInfoRequest clone() => GetDeviceInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDeviceInfoRequest copyWith(void Function(GetDeviceInfoRequest) updates) => super.copyWith((message) => updates(message as GetDeviceInfoRequest)) as GetDeviceInfoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetDeviceInfoRequest create() => GetDeviceInfoRequest._();
  GetDeviceInfoRequest createEmptyInstance() => create();
  static $pb.PbList<GetDeviceInfoRequest> createRepeated() => $pb.PbList<GetDeviceInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static GetDeviceInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDeviceInfoRequest>(create);
  static GetDeviceInfoRequest? _defaultInstance;
}

class GetDeviceInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetDeviceInfoResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<DeviceInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceInfo', subBuilder: DeviceInfo.create)
    ..hasRequiredFields = false
  ;

  GetDeviceInfoResponse._() : super();
  factory GetDeviceInfoResponse({
    DeviceInfo? deviceInfo,
  }) {
    final _result = create();
    if (deviceInfo != null) {
      _result.deviceInfo = deviceInfo;
    }
    return _result;
  }
  factory GetDeviceInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDeviceInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDeviceInfoResponse clone() => GetDeviceInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDeviceInfoResponse copyWith(void Function(GetDeviceInfoResponse) updates) => super.copyWith((message) => updates(message as GetDeviceInfoResponse)) as GetDeviceInfoResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetDeviceInfoResponse create() => GetDeviceInfoResponse._();
  GetDeviceInfoResponse createEmptyInstance() => create();
  static $pb.PbList<GetDeviceInfoResponse> createRepeated() => $pb.PbList<GetDeviceInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static GetDeviceInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDeviceInfoResponse>(create);
  static GetDeviceInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  DeviceInfo get deviceInfo => $_getN(0);
  @$pb.TagNumber(1)
  set deviceInfo(DeviceInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceInfo() => clearField(1);
  @$pb.TagNumber(1)
  DeviceInfo ensureDeviceInfo() => $_ensure(0);
}

class DeviceInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeviceInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hardwareVersion')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'softwareVersion')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countryCode')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'utcOffsetS', $pb.PbFieldType.O3)
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'softwarePartitionsEqual')
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isDev')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bootcount', $pb.PbFieldType.O3)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'antiRollbackVersion', $pb.PbFieldType.O3)
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isHitl')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'manufacturedVersion')
    ..aInt64(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'generationNumber')
    ..aOB(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishCohoused')
    ..aOM<BootInfo>(1001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boot', subBuilder: BootInfo.create)
    ..hasRequiredFields = false
  ;

  DeviceInfo._() : super();
  factory DeviceInfo({
    $core.String? id,
    $core.String? hardwareVersion,
    $core.String? softwareVersion,
    $core.String? countryCode,
    $core.int? utcOffsetS,
    $core.bool? softwarePartitionsEqual,
    $core.bool? isDev,
    $core.int? bootcount,
    $core.int? antiRollbackVersion,
    $core.bool? isHitl,
    $core.String? manufacturedVersion,
    $fixnum.Int64? generationNumber,
    $core.bool? dishCohoused,
    BootInfo? boot,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (hardwareVersion != null) {
      _result.hardwareVersion = hardwareVersion;
    }
    if (softwareVersion != null) {
      _result.softwareVersion = softwareVersion;
    }
    if (countryCode != null) {
      _result.countryCode = countryCode;
    }
    if (utcOffsetS != null) {
      _result.utcOffsetS = utcOffsetS;
    }
    if (softwarePartitionsEqual != null) {
      _result.softwarePartitionsEqual = softwarePartitionsEqual;
    }
    if (isDev != null) {
      _result.isDev = isDev;
    }
    if (bootcount != null) {
      _result.bootcount = bootcount;
    }
    if (antiRollbackVersion != null) {
      _result.antiRollbackVersion = antiRollbackVersion;
    }
    if (isHitl != null) {
      _result.isHitl = isHitl;
    }
    if (manufacturedVersion != null) {
      _result.manufacturedVersion = manufacturedVersion;
    }
    if (generationNumber != null) {
      _result.generationNumber = generationNumber;
    }
    if (dishCohoused != null) {
      _result.dishCohoused = dishCohoused;
    }
    if (boot != null) {
      _result.boot = boot;
    }
    return _result;
  }
  factory DeviceInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeviceInfo clone() => DeviceInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeviceInfo copyWith(void Function(DeviceInfo) updates) => super.copyWith((message) => updates(message as DeviceInfo)) as DeviceInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeviceInfo create() => DeviceInfo._();
  DeviceInfo createEmptyInstance() => create();
  static $pb.PbList<DeviceInfo> createRepeated() => $pb.PbList<DeviceInfo>();
  @$core.pragma('dart2js:noInline')
  static DeviceInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceInfo>(create);
  static DeviceInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get hardwareVersion => $_getSZ(1);
  @$pb.TagNumber(2)
  set hardwareVersion($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHardwareVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearHardwareVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get softwareVersion => $_getSZ(2);
  @$pb.TagNumber(3)
  set softwareVersion($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSoftwareVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearSoftwareVersion() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get countryCode => $_getSZ(3);
  @$pb.TagNumber(4)
  set countryCode($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCountryCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearCountryCode() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get utcOffsetS => $_getIZ(4);
  @$pb.TagNumber(5)
  set utcOffsetS($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUtcOffsetS() => $_has(4);
  @$pb.TagNumber(5)
  void clearUtcOffsetS() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get softwarePartitionsEqual => $_getBF(5);
  @$pb.TagNumber(6)
  set softwarePartitionsEqual($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSoftwarePartitionsEqual() => $_has(5);
  @$pb.TagNumber(6)
  void clearSoftwarePartitionsEqual() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get isDev => $_getBF(6);
  @$pb.TagNumber(7)
  set isDev($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIsDev() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsDev() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get bootcount => $_getIZ(7);
  @$pb.TagNumber(8)
  set bootcount($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasBootcount() => $_has(7);
  @$pb.TagNumber(8)
  void clearBootcount() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get antiRollbackVersion => $_getIZ(8);
  @$pb.TagNumber(9)
  set antiRollbackVersion($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasAntiRollbackVersion() => $_has(8);
  @$pb.TagNumber(9)
  void clearAntiRollbackVersion() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get isHitl => $_getBF(9);
  @$pb.TagNumber(10)
  set isHitl($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasIsHitl() => $_has(9);
  @$pb.TagNumber(10)
  void clearIsHitl() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get manufacturedVersion => $_getSZ(10);
  @$pb.TagNumber(11)
  set manufacturedVersion($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasManufacturedVersion() => $_has(10);
  @$pb.TagNumber(11)
  void clearManufacturedVersion() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get generationNumber => $_getI64(11);
  @$pb.TagNumber(12)
  set generationNumber($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasGenerationNumber() => $_has(11);
  @$pb.TagNumber(12)
  void clearGenerationNumber() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get dishCohoused => $_getBF(12);
  @$pb.TagNumber(13)
  set dishCohoused($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasDishCohoused() => $_has(12);
  @$pb.TagNumber(13)
  void clearDishCohoused() => clearField(13);

  @$pb.TagNumber(1001)
  BootInfo get boot => $_getN(13);
  @$pb.TagNumber(1001)
  set boot(BootInfo v) { setField(1001, v); }
  @$pb.TagNumber(1001)
  $core.bool hasBoot() => $_has(13);
  @$pb.TagNumber(1001)
  void clearBoot() => clearField(1001);
  @$pb.TagNumber(1001)
  BootInfo ensureBoot() => $_ensure(13);
}

class BootInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BootInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countByReason', entryClassName: 'BootInfo.CountByReasonEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.O3, packageName: const $pb.PackageName('SpaceX.API.Device'))
    ..e<BootReason>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReason', $pb.PbFieldType.OE, defaultOrMaker: BootReason.BOOT_REASON_UNKNOWN, valueOf: BootReason.valueOf, enumValues: BootReason.values)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastCount', $pb.PbFieldType.O3)
    ..m<$core.int, $core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countByReasonDelta', entryClassName: 'BootInfo.CountByReasonDeltaEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.O3, packageName: const $pb.PackageName('SpaceX.API.Device'))
    ..hasRequiredFields = false
  ;

  BootInfo._() : super();
  factory BootInfo({
    $core.Map<$core.int, $core.int>? countByReason,
    BootReason? lastReason,
    $core.int? lastCount,
    $core.Map<$core.int, $core.int>? countByReasonDelta,
  }) {
    final _result = create();
    if (countByReason != null) {
      _result.countByReason.addAll(countByReason);
    }
    if (lastReason != null) {
      _result.lastReason = lastReason;
    }
    if (lastCount != null) {
      _result.lastCount = lastCount;
    }
    if (countByReasonDelta != null) {
      _result.countByReasonDelta.addAll(countByReasonDelta);
    }
    return _result;
  }
  factory BootInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BootInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BootInfo clone() => BootInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BootInfo copyWith(void Function(BootInfo) updates) => super.copyWith((message) => updates(message as BootInfo)) as BootInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BootInfo create() => BootInfo._();
  BootInfo createEmptyInstance() => create();
  static $pb.PbList<BootInfo> createRepeated() => $pb.PbList<BootInfo>();
  @$core.pragma('dart2js:noInline')
  static BootInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BootInfo>(create);
  static BootInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.int, $core.int> get countByReason => $_getMap(0);

  @$pb.TagNumber(2)
  BootReason get lastReason => $_getN(1);
  @$pb.TagNumber(2)
  set lastReason(BootReason v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastReason() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get lastCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set lastCount($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastCount() => clearField(3);

  @$pb.TagNumber(4)
  $core.Map<$core.int, $core.int> get countByReasonDelta => $_getMap(3);
}

class DishGetStatusResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishGetStatusResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<DeviceInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceInfo', subBuilder: DeviceInfo.create)
    ..aOM<DeviceState>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceState', subBuilder: DeviceState.create)
    ..a<$core.double>(1002, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secondsToFirstNonemptySlot', $pb.PbFieldType.OF)
    ..a<$core.double>(1003, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'popPingDropRate', $pb.PbFieldType.OF)
    ..aOM<DishObstructionStats>(1004, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'obstructionStats', subBuilder: DishObstructionStats.create)
    ..aOM<DishAlerts>(1005, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alerts', subBuilder: DishAlerts.create)
    ..a<$core.double>(1007, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'downlinkThroughputBps', $pb.PbFieldType.OF)
    ..a<$core.double>(1008, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uplinkThroughputBps', $pb.PbFieldType.OF)
    ..a<$core.double>(1009, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'popPingLatencyMs', $pb.PbFieldType.OF)
    ..aOB(1010, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stowRequested')
    ..a<$core.double>(1011, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boresightAzimuthDeg', $pb.PbFieldType.OF)
    ..a<$core.double>(1012, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boresightElevationDeg', $pb.PbFieldType.OF)
    ..aOM<DishOutage>(1014, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outage', subBuilder: DishOutage.create)
    ..aOM<DishGpsStats>(1015, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gpsStats', subBuilder: DishGpsStats.create)
    ..a<$core.int>(1016, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ethSpeedMbps', $pb.PbFieldType.O3)
    ..e<UserMobilityClass>(1017, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mobilityClass', $pb.PbFieldType.OE, defaultOrMaker: UserMobilityClass.STATIONARY, valueOf: UserMobilityClass.valueOf, enumValues: UserMobilityClass.values)
    ..aOB(1018, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isSnrAboveNoiseFloor')
    ..aOM<DishReadyStates>(1019, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'readyStates', subBuilder: DishReadyStates.create)
    ..e<UserClassOfService>(1020, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'classOfService', $pb.PbFieldType.OE, defaultOrMaker: UserClassOfService.UNKNOWN_USER_CLASS_OF_SERVICE, valueOf: UserClassOfService.valueOf, enumValues: UserClassOfService.values)
    ..e<SoftwareUpdateState>(1021, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'softwareUpdateState', $pb.PbFieldType.OE, defaultOrMaker: SoftwareUpdateState.SOFTWARE_UPDATE_STATE_UNKNOWN, valueOf: SoftwareUpdateState.valueOf, enumValues: SoftwareUpdateState.values)
    ..aOB(1022, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isSnrPersistentlyLow')
    ..e<HasActuators>(1023, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hasActuators', $pb.PbFieldType.OE, defaultOrMaker: HasActuators.HAS_ACTUATORS_UNKNOWN, valueOf: HasActuators.valueOf, enumValues: HasActuators.values)
    ..e<$2.UtDisablementCode>(1024, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disablementCode', $pb.PbFieldType.OE, defaultOrMaker: $2.UtDisablementCode.UNKNOWN_STATE, valueOf: $2.UtDisablementCode.valueOf, enumValues: $2.UtDisablementCode.values)
    ..aOM<DishConfig>(2000, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'config', subBuilder: DishConfig.create)
    ..hasRequiredFields = false
  ;

  DishGetStatusResponse._() : super();
  factory DishGetStatusResponse({
    DeviceInfo? deviceInfo,
    DeviceState? deviceState,
    $core.double? secondsToFirstNonemptySlot,
    $core.double? popPingDropRate,
    DishObstructionStats? obstructionStats,
    DishAlerts? alerts,
    $core.double? downlinkThroughputBps,
    $core.double? uplinkThroughputBps,
    $core.double? popPingLatencyMs,
    $core.bool? stowRequested,
    $core.double? boresightAzimuthDeg,
    $core.double? boresightElevationDeg,
    DishOutage? outage,
    DishGpsStats? gpsStats,
    $core.int? ethSpeedMbps,
    UserMobilityClass? mobilityClass,
    $core.bool? isSnrAboveNoiseFloor,
    DishReadyStates? readyStates,
    UserClassOfService? classOfService,
    SoftwareUpdateState? softwareUpdateState,
    $core.bool? isSnrPersistentlyLow,
    HasActuators? hasActuators,
    $2.UtDisablementCode? disablementCode,
    DishConfig? config,
  }) {
    final _result = create();
    if (deviceInfo != null) {
      _result.deviceInfo = deviceInfo;
    }
    if (deviceState != null) {
      _result.deviceState = deviceState;
    }
    if (secondsToFirstNonemptySlot != null) {
      _result.secondsToFirstNonemptySlot = secondsToFirstNonemptySlot;
    }
    if (popPingDropRate != null) {
      _result.popPingDropRate = popPingDropRate;
    }
    if (obstructionStats != null) {
      _result.obstructionStats = obstructionStats;
    }
    if (alerts != null) {
      _result.alerts = alerts;
    }
    if (downlinkThroughputBps != null) {
      _result.downlinkThroughputBps = downlinkThroughputBps;
    }
    if (uplinkThroughputBps != null) {
      _result.uplinkThroughputBps = uplinkThroughputBps;
    }
    if (popPingLatencyMs != null) {
      _result.popPingLatencyMs = popPingLatencyMs;
    }
    if (stowRequested != null) {
      _result.stowRequested = stowRequested;
    }
    if (boresightAzimuthDeg != null) {
      _result.boresightAzimuthDeg = boresightAzimuthDeg;
    }
    if (boresightElevationDeg != null) {
      _result.boresightElevationDeg = boresightElevationDeg;
    }
    if (outage != null) {
      _result.outage = outage;
    }
    if (gpsStats != null) {
      _result.gpsStats = gpsStats;
    }
    if (ethSpeedMbps != null) {
      _result.ethSpeedMbps = ethSpeedMbps;
    }
    if (mobilityClass != null) {
      _result.mobilityClass = mobilityClass;
    }
    if (isSnrAboveNoiseFloor != null) {
      _result.isSnrAboveNoiseFloor = isSnrAboveNoiseFloor;
    }
    if (readyStates != null) {
      _result.readyStates = readyStates;
    }
    if (classOfService != null) {
      _result.classOfService = classOfService;
    }
    if (softwareUpdateState != null) {
      _result.softwareUpdateState = softwareUpdateState;
    }
    if (isSnrPersistentlyLow != null) {
      _result.isSnrPersistentlyLow = isSnrPersistentlyLow;
    }
    if (hasActuators != null) {
      _result.hasActuators = hasActuators;
    }
    if (disablementCode != null) {
      _result.disablementCode = disablementCode;
    }
    if (config != null) {
      _result.config = config;
    }
    return _result;
  }
  factory DishGetStatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishGetStatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishGetStatusResponse clone() => DishGetStatusResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishGetStatusResponse copyWith(void Function(DishGetStatusResponse) updates) => super.copyWith((message) => updates(message as DishGetStatusResponse)) as DishGetStatusResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DishGetStatusResponse create() => DishGetStatusResponse._();
  DishGetStatusResponse createEmptyInstance() => create();
  static $pb.PbList<DishGetStatusResponse> createRepeated() => $pb.PbList<DishGetStatusResponse>();
  @$core.pragma('dart2js:noInline')
  static DishGetStatusResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishGetStatusResponse>(create);
  static DishGetStatusResponse? _defaultInstance;

  @$pb.TagNumber(1)
  DeviceInfo get deviceInfo => $_getN(0);
  @$pb.TagNumber(1)
  set deviceInfo(DeviceInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceInfo() => clearField(1);
  @$pb.TagNumber(1)
  DeviceInfo ensureDeviceInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  DeviceState get deviceState => $_getN(1);
  @$pb.TagNumber(2)
  set deviceState(DeviceState v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeviceState() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceState() => clearField(2);
  @$pb.TagNumber(2)
  DeviceState ensureDeviceState() => $_ensure(1);

  @$pb.TagNumber(1002)
  $core.double get secondsToFirstNonemptySlot => $_getN(2);
  @$pb.TagNumber(1002)
  set secondsToFirstNonemptySlot($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(1002)
  $core.bool hasSecondsToFirstNonemptySlot() => $_has(2);
  @$pb.TagNumber(1002)
  void clearSecondsToFirstNonemptySlot() => clearField(1002);

  @$pb.TagNumber(1003)
  $core.double get popPingDropRate => $_getN(3);
  @$pb.TagNumber(1003)
  set popPingDropRate($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(1003)
  $core.bool hasPopPingDropRate() => $_has(3);
  @$pb.TagNumber(1003)
  void clearPopPingDropRate() => clearField(1003);

  @$pb.TagNumber(1004)
  DishObstructionStats get obstructionStats => $_getN(4);
  @$pb.TagNumber(1004)
  set obstructionStats(DishObstructionStats v) { setField(1004, v); }
  @$pb.TagNumber(1004)
  $core.bool hasObstructionStats() => $_has(4);
  @$pb.TagNumber(1004)
  void clearObstructionStats() => clearField(1004);
  @$pb.TagNumber(1004)
  DishObstructionStats ensureObstructionStats() => $_ensure(4);

  @$pb.TagNumber(1005)
  DishAlerts get alerts => $_getN(5);
  @$pb.TagNumber(1005)
  set alerts(DishAlerts v) { setField(1005, v); }
  @$pb.TagNumber(1005)
  $core.bool hasAlerts() => $_has(5);
  @$pb.TagNumber(1005)
  void clearAlerts() => clearField(1005);
  @$pb.TagNumber(1005)
  DishAlerts ensureAlerts() => $_ensure(5);

  @$pb.TagNumber(1007)
  $core.double get downlinkThroughputBps => $_getN(6);
  @$pb.TagNumber(1007)
  set downlinkThroughputBps($core.double v) { $_setFloat(6, v); }
  @$pb.TagNumber(1007)
  $core.bool hasDownlinkThroughputBps() => $_has(6);
  @$pb.TagNumber(1007)
  void clearDownlinkThroughputBps() => clearField(1007);

  @$pb.TagNumber(1008)
  $core.double get uplinkThroughputBps => $_getN(7);
  @$pb.TagNumber(1008)
  set uplinkThroughputBps($core.double v) { $_setFloat(7, v); }
  @$pb.TagNumber(1008)
  $core.bool hasUplinkThroughputBps() => $_has(7);
  @$pb.TagNumber(1008)
  void clearUplinkThroughputBps() => clearField(1008);

  @$pb.TagNumber(1009)
  $core.double get popPingLatencyMs => $_getN(8);
  @$pb.TagNumber(1009)
  set popPingLatencyMs($core.double v) { $_setFloat(8, v); }
  @$pb.TagNumber(1009)
  $core.bool hasPopPingLatencyMs() => $_has(8);
  @$pb.TagNumber(1009)
  void clearPopPingLatencyMs() => clearField(1009);

  @$pb.TagNumber(1010)
  $core.bool get stowRequested => $_getBF(9);
  @$pb.TagNumber(1010)
  set stowRequested($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(1010)
  $core.bool hasStowRequested() => $_has(9);
  @$pb.TagNumber(1010)
  void clearStowRequested() => clearField(1010);

  @$pb.TagNumber(1011)
  $core.double get boresightAzimuthDeg => $_getN(10);
  @$pb.TagNumber(1011)
  set boresightAzimuthDeg($core.double v) { $_setFloat(10, v); }
  @$pb.TagNumber(1011)
  $core.bool hasBoresightAzimuthDeg() => $_has(10);
  @$pb.TagNumber(1011)
  void clearBoresightAzimuthDeg() => clearField(1011);

  @$pb.TagNumber(1012)
  $core.double get boresightElevationDeg => $_getN(11);
  @$pb.TagNumber(1012)
  set boresightElevationDeg($core.double v) { $_setFloat(11, v); }
  @$pb.TagNumber(1012)
  $core.bool hasBoresightElevationDeg() => $_has(11);
  @$pb.TagNumber(1012)
  void clearBoresightElevationDeg() => clearField(1012);

  @$pb.TagNumber(1014)
  DishOutage get outage => $_getN(12);
  @$pb.TagNumber(1014)
  set outage(DishOutage v) { setField(1014, v); }
  @$pb.TagNumber(1014)
  $core.bool hasOutage() => $_has(12);
  @$pb.TagNumber(1014)
  void clearOutage() => clearField(1014);
  @$pb.TagNumber(1014)
  DishOutage ensureOutage() => $_ensure(12);

  @$pb.TagNumber(1015)
  DishGpsStats get gpsStats => $_getN(13);
  @$pb.TagNumber(1015)
  set gpsStats(DishGpsStats v) { setField(1015, v); }
  @$pb.TagNumber(1015)
  $core.bool hasGpsStats() => $_has(13);
  @$pb.TagNumber(1015)
  void clearGpsStats() => clearField(1015);
  @$pb.TagNumber(1015)
  DishGpsStats ensureGpsStats() => $_ensure(13);

  @$pb.TagNumber(1016)
  $core.int get ethSpeedMbps => $_getIZ(14);
  @$pb.TagNumber(1016)
  set ethSpeedMbps($core.int v) { $_setSignedInt32(14, v); }
  @$pb.TagNumber(1016)
  $core.bool hasEthSpeedMbps() => $_has(14);
  @$pb.TagNumber(1016)
  void clearEthSpeedMbps() => clearField(1016);

  @$pb.TagNumber(1017)
  UserMobilityClass get mobilityClass => $_getN(15);
  @$pb.TagNumber(1017)
  set mobilityClass(UserMobilityClass v) { setField(1017, v); }
  @$pb.TagNumber(1017)
  $core.bool hasMobilityClass() => $_has(15);
  @$pb.TagNumber(1017)
  void clearMobilityClass() => clearField(1017);

  @$pb.TagNumber(1018)
  $core.bool get isSnrAboveNoiseFloor => $_getBF(16);
  @$pb.TagNumber(1018)
  set isSnrAboveNoiseFloor($core.bool v) { $_setBool(16, v); }
  @$pb.TagNumber(1018)
  $core.bool hasIsSnrAboveNoiseFloor() => $_has(16);
  @$pb.TagNumber(1018)
  void clearIsSnrAboveNoiseFloor() => clearField(1018);

  @$pb.TagNumber(1019)
  DishReadyStates get readyStates => $_getN(17);
  @$pb.TagNumber(1019)
  set readyStates(DishReadyStates v) { setField(1019, v); }
  @$pb.TagNumber(1019)
  $core.bool hasReadyStates() => $_has(17);
  @$pb.TagNumber(1019)
  void clearReadyStates() => clearField(1019);
  @$pb.TagNumber(1019)
  DishReadyStates ensureReadyStates() => $_ensure(17);

  @$pb.TagNumber(1020)
  UserClassOfService get classOfService => $_getN(18);
  @$pb.TagNumber(1020)
  set classOfService(UserClassOfService v) { setField(1020, v); }
  @$pb.TagNumber(1020)
  $core.bool hasClassOfService() => $_has(18);
  @$pb.TagNumber(1020)
  void clearClassOfService() => clearField(1020);

  @$pb.TagNumber(1021)
  SoftwareUpdateState get softwareUpdateState => $_getN(19);
  @$pb.TagNumber(1021)
  set softwareUpdateState(SoftwareUpdateState v) { setField(1021, v); }
  @$pb.TagNumber(1021)
  $core.bool hasSoftwareUpdateState() => $_has(19);
  @$pb.TagNumber(1021)
  void clearSoftwareUpdateState() => clearField(1021);

  @$pb.TagNumber(1022)
  $core.bool get isSnrPersistentlyLow => $_getBF(20);
  @$pb.TagNumber(1022)
  set isSnrPersistentlyLow($core.bool v) { $_setBool(20, v); }
  @$pb.TagNumber(1022)
  $core.bool hasIsSnrPersistentlyLow() => $_has(20);
  @$pb.TagNumber(1022)
  void clearIsSnrPersistentlyLow() => clearField(1022);

  @$pb.TagNumber(1023)
  HasActuators get hasActuators => $_getN(21);
  @$pb.TagNumber(1023)
  set hasActuators(HasActuators v) { setField(1023, v); }
  @$pb.TagNumber(1023)
  $core.bool hasHasActuators() => $_has(21);
  @$pb.TagNumber(1023)
  void clearHasActuators() => clearField(1023);

  @$pb.TagNumber(1024)
  $2.UtDisablementCode get disablementCode => $_getN(22);
  @$pb.TagNumber(1024)
  set disablementCode($2.UtDisablementCode v) { setField(1024, v); }
  @$pb.TagNumber(1024)
  $core.bool hasDisablementCode() => $_has(22);
  @$pb.TagNumber(1024)
  void clearDisablementCode() => clearField(1024);

  @$pb.TagNumber(2000)
  DishConfig get config => $_getN(23);
  @$pb.TagNumber(2000)
  set config(DishConfig v) { setField(2000, v); }
  @$pb.TagNumber(2000)
  $core.bool hasConfig() => $_has(23);
  @$pb.TagNumber(2000)
  void clearConfig() => clearField(2000);
  @$pb.TagNumber(2000)
  DishConfig ensureConfig() => $_ensure(23);
}

class DeviceState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeviceState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uptimeS', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  DeviceState._() : super();
  factory DeviceState({
    $fixnum.Int64? uptimeS,
  }) {
    final _result = create();
    if (uptimeS != null) {
      _result.uptimeS = uptimeS;
    }
    return _result;
  }
  factory DeviceState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeviceState clone() => DeviceState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeviceState copyWith(void Function(DeviceState) updates) => super.copyWith((message) => updates(message as DeviceState)) as DeviceState; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeviceState create() => DeviceState._();
  DeviceState createEmptyInstance() => create();
  static $pb.PbList<DeviceState> createRepeated() => $pb.PbList<DeviceState>();
  @$core.pragma('dart2js:noInline')
  static DeviceState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceState>(create);
  static DeviceState? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get uptimeS => $_getI64(0);
  @$pb.TagNumber(1)
  set uptimeS($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUptimeS() => $_has(0);
  @$pb.TagNumber(1)
  void clearUptimeS() => clearField(1);
}

class DishObstructionStats extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishObstructionStats', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fractionObstructed', $pb.PbFieldType.OF)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'validS', $pb.PbFieldType.OF)
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'currentlyObstructed')
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avgProlongedObstructionDurationS', $pb.PbFieldType.OF)
    ..a<$core.double>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avgProlongedObstructionIntervalS', $pb.PbFieldType.OF)
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avgProlongedObstructionValid')
    ..a<$core.double>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeObstructed', $pb.PbFieldType.OF)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'patchesValid', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  DishObstructionStats._() : super();
  factory DishObstructionStats({
    $core.double? fractionObstructed,
    $core.double? validS,
    $core.bool? currentlyObstructed,
    $core.double? avgProlongedObstructionDurationS,
    $core.double? avgProlongedObstructionIntervalS,
    $core.bool? avgProlongedObstructionValid,
    $core.double? timeObstructed,
    $core.int? patchesValid,
  }) {
    final _result = create();
    if (fractionObstructed != null) {
      _result.fractionObstructed = fractionObstructed;
    }
    if (validS != null) {
      _result.validS = validS;
    }
    if (currentlyObstructed != null) {
      _result.currentlyObstructed = currentlyObstructed;
    }
    if (avgProlongedObstructionDurationS != null) {
      _result.avgProlongedObstructionDurationS = avgProlongedObstructionDurationS;
    }
    if (avgProlongedObstructionIntervalS != null) {
      _result.avgProlongedObstructionIntervalS = avgProlongedObstructionIntervalS;
    }
    if (avgProlongedObstructionValid != null) {
      _result.avgProlongedObstructionValid = avgProlongedObstructionValid;
    }
    if (timeObstructed != null) {
      _result.timeObstructed = timeObstructed;
    }
    if (patchesValid != null) {
      _result.patchesValid = patchesValid;
    }
    return _result;
  }
  factory DishObstructionStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishObstructionStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishObstructionStats clone() => DishObstructionStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishObstructionStats copyWith(void Function(DishObstructionStats) updates) => super.copyWith((message) => updates(message as DishObstructionStats)) as DishObstructionStats; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DishObstructionStats create() => DishObstructionStats._();
  DishObstructionStats createEmptyInstance() => create();
  static $pb.PbList<DishObstructionStats> createRepeated() => $pb.PbList<DishObstructionStats>();
  @$core.pragma('dart2js:noInline')
  static DishObstructionStats getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishObstructionStats>(create);
  static DishObstructionStats? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get fractionObstructed => $_getN(0);
  @$pb.TagNumber(1)
  set fractionObstructed($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFractionObstructed() => $_has(0);
  @$pb.TagNumber(1)
  void clearFractionObstructed() => clearField(1);

  @$pb.TagNumber(4)
  $core.double get validS => $_getN(1);
  @$pb.TagNumber(4)
  set validS($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(4)
  $core.bool hasValidS() => $_has(1);
  @$pb.TagNumber(4)
  void clearValidS() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get currentlyObstructed => $_getBF(2);
  @$pb.TagNumber(5)
  set currentlyObstructed($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(5)
  $core.bool hasCurrentlyObstructed() => $_has(2);
  @$pb.TagNumber(5)
  void clearCurrentlyObstructed() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get avgProlongedObstructionDurationS => $_getN(3);
  @$pb.TagNumber(6)
  set avgProlongedObstructionDurationS($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(6)
  $core.bool hasAvgProlongedObstructionDurationS() => $_has(3);
  @$pb.TagNumber(6)
  void clearAvgProlongedObstructionDurationS() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get avgProlongedObstructionIntervalS => $_getN(4);
  @$pb.TagNumber(7)
  set avgProlongedObstructionIntervalS($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(7)
  $core.bool hasAvgProlongedObstructionIntervalS() => $_has(4);
  @$pb.TagNumber(7)
  void clearAvgProlongedObstructionIntervalS() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get avgProlongedObstructionValid => $_getBF(5);
  @$pb.TagNumber(8)
  set avgProlongedObstructionValid($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(8)
  $core.bool hasAvgProlongedObstructionValid() => $_has(5);
  @$pb.TagNumber(8)
  void clearAvgProlongedObstructionValid() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get timeObstructed => $_getN(6);
  @$pb.TagNumber(9)
  set timeObstructed($core.double v) { $_setFloat(6, v); }
  @$pb.TagNumber(9)
  $core.bool hasTimeObstructed() => $_has(6);
  @$pb.TagNumber(9)
  void clearTimeObstructed() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get patchesValid => $_getIZ(7);
  @$pb.TagNumber(10)
  set patchesValid($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(10)
  $core.bool hasPatchesValid() => $_has(7);
  @$pb.TagNumber(10)
  void clearPatchesValid() => clearField(10);
}

class DishAlerts extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishAlerts', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'motorsStuck')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'thermalShutdown')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'thermalThrottle')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unexpectedLocation')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mastNotNearVertical')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'slowEthernetSpeeds')
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roaming')
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'installPending')
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isHeating')
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'powerSupplyThermalThrottle')
    ..aOB(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isPowerSaveIdle')
    ..aOB(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'movingWhileNotMobile')
    ..aOB(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'movingFastWhileNotAviation')
    ..hasRequiredFields = false
  ;

  DishAlerts._() : super();
  factory DishAlerts({
    $core.bool? motorsStuck,
    $core.bool? thermalShutdown,
    $core.bool? thermalThrottle,
    $core.bool? unexpectedLocation,
    $core.bool? mastNotNearVertical,
    $core.bool? slowEthernetSpeeds,
    $core.bool? roaming,
    $core.bool? installPending,
    $core.bool? isHeating,
    $core.bool? powerSupplyThermalThrottle,
    $core.bool? isPowerSaveIdle,
    $core.bool? movingWhileNotMobile,
    $core.bool? movingFastWhileNotAviation,
  }) {
    final _result = create();
    if (motorsStuck != null) {
      _result.motorsStuck = motorsStuck;
    }
    if (thermalShutdown != null) {
      _result.thermalShutdown = thermalShutdown;
    }
    if (thermalThrottle != null) {
      _result.thermalThrottle = thermalThrottle;
    }
    if (unexpectedLocation != null) {
      _result.unexpectedLocation = unexpectedLocation;
    }
    if (mastNotNearVertical != null) {
      _result.mastNotNearVertical = mastNotNearVertical;
    }
    if (slowEthernetSpeeds != null) {
      _result.slowEthernetSpeeds = slowEthernetSpeeds;
    }
    if (roaming != null) {
      _result.roaming = roaming;
    }
    if (installPending != null) {
      _result.installPending = installPending;
    }
    if (isHeating != null) {
      _result.isHeating = isHeating;
    }
    if (powerSupplyThermalThrottle != null) {
      _result.powerSupplyThermalThrottle = powerSupplyThermalThrottle;
    }
    if (isPowerSaveIdle != null) {
      _result.isPowerSaveIdle = isPowerSaveIdle;
    }
    if (movingWhileNotMobile != null) {
      _result.movingWhileNotMobile = movingWhileNotMobile;
    }
    if (movingFastWhileNotAviation != null) {
      _result.movingFastWhileNotAviation = movingFastWhileNotAviation;
    }
    return _result;
  }
  factory DishAlerts.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishAlerts.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishAlerts clone() => DishAlerts()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishAlerts copyWith(void Function(DishAlerts) updates) => super.copyWith((message) => updates(message as DishAlerts)) as DishAlerts; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DishAlerts create() => DishAlerts._();
  DishAlerts createEmptyInstance() => create();
  static $pb.PbList<DishAlerts> createRepeated() => $pb.PbList<DishAlerts>();
  @$core.pragma('dart2js:noInline')
  static DishAlerts getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishAlerts>(create);
  static DishAlerts? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get motorsStuck => $_getBF(0);
  @$pb.TagNumber(1)
  set motorsStuck($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMotorsStuck() => $_has(0);
  @$pb.TagNumber(1)
  void clearMotorsStuck() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get thermalShutdown => $_getBF(1);
  @$pb.TagNumber(2)
  set thermalShutdown($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasThermalShutdown() => $_has(1);
  @$pb.TagNumber(2)
  void clearThermalShutdown() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get thermalThrottle => $_getBF(2);
  @$pb.TagNumber(3)
  set thermalThrottle($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasThermalThrottle() => $_has(2);
  @$pb.TagNumber(3)
  void clearThermalThrottle() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get unexpectedLocation => $_getBF(3);
  @$pb.TagNumber(4)
  set unexpectedLocation($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUnexpectedLocation() => $_has(3);
  @$pb.TagNumber(4)
  void clearUnexpectedLocation() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get mastNotNearVertical => $_getBF(4);
  @$pb.TagNumber(5)
  set mastNotNearVertical($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMastNotNearVertical() => $_has(4);
  @$pb.TagNumber(5)
  void clearMastNotNearVertical() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get slowEthernetSpeeds => $_getBF(5);
  @$pb.TagNumber(6)
  set slowEthernetSpeeds($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSlowEthernetSpeeds() => $_has(5);
  @$pb.TagNumber(6)
  void clearSlowEthernetSpeeds() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get roaming => $_getBF(6);
  @$pb.TagNumber(7)
  set roaming($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRoaming() => $_has(6);
  @$pb.TagNumber(7)
  void clearRoaming() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get installPending => $_getBF(7);
  @$pb.TagNumber(8)
  set installPending($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasInstallPending() => $_has(7);
  @$pb.TagNumber(8)
  void clearInstallPending() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get isHeating => $_getBF(8);
  @$pb.TagNumber(9)
  set isHeating($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasIsHeating() => $_has(8);
  @$pb.TagNumber(9)
  void clearIsHeating() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get powerSupplyThermalThrottle => $_getBF(9);
  @$pb.TagNumber(10)
  set powerSupplyThermalThrottle($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasPowerSupplyThermalThrottle() => $_has(9);
  @$pb.TagNumber(10)
  void clearPowerSupplyThermalThrottle() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get isPowerSaveIdle => $_getBF(10);
  @$pb.TagNumber(11)
  set isPowerSaveIdle($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasIsPowerSaveIdle() => $_has(10);
  @$pb.TagNumber(11)
  void clearIsPowerSaveIdle() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get movingWhileNotMobile => $_getBF(11);
  @$pb.TagNumber(12)
  set movingWhileNotMobile($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasMovingWhileNotMobile() => $_has(11);
  @$pb.TagNumber(12)
  void clearMovingWhileNotMobile() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get movingFastWhileNotAviation => $_getBF(12);
  @$pb.TagNumber(13)
  set movingFastWhileNotAviation($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasMovingFastWhileNotAviation() => $_has(12);
  @$pb.TagNumber(13)
  void clearMovingFastWhileNotAviation() => clearField(13);
}

class DishOutage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishOutage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..e<DishOutage_Cause>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cause', $pb.PbFieldType.OE, defaultOrMaker: DishOutage_Cause.UNKNOWN, valueOf: DishOutage_Cause.valueOf, enumValues: DishOutage_Cause.values)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startTimestampNs')
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'durationNs', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'didSwitch')
    ..hasRequiredFields = false
  ;

  DishOutage._() : super();
  factory DishOutage({
    DishOutage_Cause? cause,
    $fixnum.Int64? startTimestampNs,
    $fixnum.Int64? durationNs,
    $core.bool? didSwitch,
  }) {
    final _result = create();
    if (cause != null) {
      _result.cause = cause;
    }
    if (startTimestampNs != null) {
      _result.startTimestampNs = startTimestampNs;
    }
    if (durationNs != null) {
      _result.durationNs = durationNs;
    }
    if (didSwitch != null) {
      _result.didSwitch = didSwitch;
    }
    return _result;
  }
  factory DishOutage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishOutage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishOutage clone() => DishOutage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishOutage copyWith(void Function(DishOutage) updates) => super.copyWith((message) => updates(message as DishOutage)) as DishOutage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DishOutage create() => DishOutage._();
  DishOutage createEmptyInstance() => create();
  static $pb.PbList<DishOutage> createRepeated() => $pb.PbList<DishOutage>();
  @$core.pragma('dart2js:noInline')
  static DishOutage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishOutage>(create);
  static DishOutage? _defaultInstance;

  @$pb.TagNumber(1)
  DishOutage_Cause get cause => $_getN(0);
  @$pb.TagNumber(1)
  set cause(DishOutage_Cause v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCause() => $_has(0);
  @$pb.TagNumber(1)
  void clearCause() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get startTimestampNs => $_getI64(1);
  @$pb.TagNumber(2)
  set startTimestampNs($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStartTimestampNs() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartTimestampNs() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get durationNs => $_getI64(2);
  @$pb.TagNumber(3)
  set durationNs($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDurationNs() => $_has(2);
  @$pb.TagNumber(3)
  void clearDurationNs() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get didSwitch => $_getBF(3);
  @$pb.TagNumber(4)
  set didSwitch($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDidSwitch() => $_has(3);
  @$pb.TagNumber(4)
  void clearDidSwitch() => clearField(4);
}

class DishGpsStats extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishGpsStats', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gpsValid')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gpsSats', $pb.PbFieldType.OU3)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'noSatsAfterTtff')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inhibitGps')
    ..hasRequiredFields = false
  ;

  DishGpsStats._() : super();
  factory DishGpsStats({
    $core.bool? gpsValid,
    $core.int? gpsSats,
    $core.bool? noSatsAfterTtff,
    $core.bool? inhibitGps,
  }) {
    final _result = create();
    if (gpsValid != null) {
      _result.gpsValid = gpsValid;
    }
    if (gpsSats != null) {
      _result.gpsSats = gpsSats;
    }
    if (noSatsAfterTtff != null) {
      _result.noSatsAfterTtff = noSatsAfterTtff;
    }
    if (inhibitGps != null) {
      _result.inhibitGps = inhibitGps;
    }
    return _result;
  }
  factory DishGpsStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishGpsStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishGpsStats clone() => DishGpsStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishGpsStats copyWith(void Function(DishGpsStats) updates) => super.copyWith((message) => updates(message as DishGpsStats)) as DishGpsStats; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DishGpsStats create() => DishGpsStats._();
  DishGpsStats createEmptyInstance() => create();
  static $pb.PbList<DishGpsStats> createRepeated() => $pb.PbList<DishGpsStats>();
  @$core.pragma('dart2js:noInline')
  static DishGpsStats getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishGpsStats>(create);
  static DishGpsStats? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get gpsValid => $_getBF(0);
  @$pb.TagNumber(1)
  set gpsValid($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGpsValid() => $_has(0);
  @$pb.TagNumber(1)
  void clearGpsValid() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get gpsSats => $_getIZ(1);
  @$pb.TagNumber(2)
  set gpsSats($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGpsSats() => $_has(1);
  @$pb.TagNumber(2)
  void clearGpsSats() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get noSatsAfterTtff => $_getBF(2);
  @$pb.TagNumber(3)
  set noSatsAfterTtff($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNoSatsAfterTtff() => $_has(2);
  @$pb.TagNumber(3)
  void clearNoSatsAfterTtff() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get inhibitGps => $_getBF(3);
  @$pb.TagNumber(4)
  set inhibitGps($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInhibitGps() => $_has(3);
  @$pb.TagNumber(4)
  void clearInhibitGps() => clearField(4);
}

class DishReadyStates extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishReadyStates', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cady')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scp')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'l1l2')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'xphy')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'aap')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rf')
    ..hasRequiredFields = false
  ;

  DishReadyStates._() : super();
  factory DishReadyStates({
    $core.bool? cady,
    $core.bool? scp,
    $core.bool? l1l2,
    $core.bool? xphy,
    $core.bool? aap,
    $core.bool? rf,
  }) {
    final _result = create();
    if (cady != null) {
      _result.cady = cady;
    }
    if (scp != null) {
      _result.scp = scp;
    }
    if (l1l2 != null) {
      _result.l1l2 = l1l2;
    }
    if (xphy != null) {
      _result.xphy = xphy;
    }
    if (aap != null) {
      _result.aap = aap;
    }
    if (rf != null) {
      _result.rf = rf;
    }
    return _result;
  }
  factory DishReadyStates.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishReadyStates.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishReadyStates clone() => DishReadyStates()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishReadyStates copyWith(void Function(DishReadyStates) updates) => super.copyWith((message) => updates(message as DishReadyStates)) as DishReadyStates; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DishReadyStates create() => DishReadyStates._();
  DishReadyStates createEmptyInstance() => create();
  static $pb.PbList<DishReadyStates> createRepeated() => $pb.PbList<DishReadyStates>();
  @$core.pragma('dart2js:noInline')
  static DishReadyStates getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishReadyStates>(create);
  static DishReadyStates? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get cady => $_getBF(0);
  @$pb.TagNumber(1)
  set cady($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCady() => $_has(0);
  @$pb.TagNumber(1)
  void clearCady() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get scp => $_getBF(1);
  @$pb.TagNumber(2)
  set scp($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasScp() => $_has(1);
  @$pb.TagNumber(2)
  void clearScp() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get l1l2 => $_getBF(2);
  @$pb.TagNumber(3)
  set l1l2($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasL1l2() => $_has(2);
  @$pb.TagNumber(3)
  void clearL1l2() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get xphy => $_getBF(3);
  @$pb.TagNumber(4)
  set xphy($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasXphy() => $_has(3);
  @$pb.TagNumber(4)
  void clearXphy() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get aap => $_getBF(4);
  @$pb.TagNumber(5)
  set aap($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAap() => $_has(4);
  @$pb.TagNumber(5)
  void clearAap() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get rf => $_getBF(5);
  @$pb.TagNumber(6)
  set rf($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRf() => $_has(5);
  @$pb.TagNumber(6)
  void clearRf() => clearField(6);
}

class DishConfig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishConfig', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..e<DishConfig_SnowMeltMode>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'snowMeltMode', $pb.PbFieldType.OE, defaultOrMaker: DishConfig_SnowMeltMode.AUTO, valueOf: DishConfig_SnowMeltMode.valueOf, enumValues: DishConfig_SnowMeltMode.values)
    ..e<DishConfig_LocationRequestMode>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationRequestMode', $pb.PbFieldType.OE, defaultOrMaker: DishConfig_LocationRequestMode.NONE, valueOf: DishConfig_LocationRequestMode.valueOf, enumValues: DishConfig_LocationRequestMode.values)
    ..e<DishConfig_LevelDishMode>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'levelDishMode', $pb.PbFieldType.OE, defaultOrMaker: DishConfig_LevelDishMode.TILT_LIKE_NORMAL, valueOf: DishConfig_LevelDishMode.valueOf, enumValues: DishConfig_LevelDishMode.values)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'powerSaveStartMinutes', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'powerSaveDurationMinutes', $pb.PbFieldType.OU3)
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'powerSaveMode')
    ..aOB(1001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applySnowMeltMode')
    ..aOB(2001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyLocationRequestMode')
    ..aOB(3001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyLevelDishMode')
    ..aOB(4001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyPowerSaveStartMinutes')
    ..aOB(5001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyPowerSaveDurationMinutes')
    ..aOB(6001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyPowerSaveMode')
    ..hasRequiredFields = false
  ;

  DishConfig._() : super();
  factory DishConfig({
    DishConfig_SnowMeltMode? snowMeltMode,
    DishConfig_LocationRequestMode? locationRequestMode,
    DishConfig_LevelDishMode? levelDishMode,
    $core.int? powerSaveStartMinutes,
    $core.int? powerSaveDurationMinutes,
    $core.bool? powerSaveMode,
    $core.bool? applySnowMeltMode,
    $core.bool? applyLocationRequestMode,
    $core.bool? applyLevelDishMode,
    $core.bool? applyPowerSaveStartMinutes,
    $core.bool? applyPowerSaveDurationMinutes,
    $core.bool? applyPowerSaveMode,
  }) {
    final _result = create();
    if (snowMeltMode != null) {
      _result.snowMeltMode = snowMeltMode;
    }
    if (locationRequestMode != null) {
      _result.locationRequestMode = locationRequestMode;
    }
    if (levelDishMode != null) {
      _result.levelDishMode = levelDishMode;
    }
    if (powerSaveStartMinutes != null) {
      _result.powerSaveStartMinutes = powerSaveStartMinutes;
    }
    if (powerSaveDurationMinutes != null) {
      _result.powerSaveDurationMinutes = powerSaveDurationMinutes;
    }
    if (powerSaveMode != null) {
      _result.powerSaveMode = powerSaveMode;
    }
    if (applySnowMeltMode != null) {
      _result.applySnowMeltMode = applySnowMeltMode;
    }
    if (applyLocationRequestMode != null) {
      _result.applyLocationRequestMode = applyLocationRequestMode;
    }
    if (applyLevelDishMode != null) {
      _result.applyLevelDishMode = applyLevelDishMode;
    }
    if (applyPowerSaveStartMinutes != null) {
      _result.applyPowerSaveStartMinutes = applyPowerSaveStartMinutes;
    }
    if (applyPowerSaveDurationMinutes != null) {
      _result.applyPowerSaveDurationMinutes = applyPowerSaveDurationMinutes;
    }
    if (applyPowerSaveMode != null) {
      _result.applyPowerSaveMode = applyPowerSaveMode;
    }
    return _result;
  }
  factory DishConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishConfig clone() => DishConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishConfig copyWith(void Function(DishConfig) updates) => super.copyWith((message) => updates(message as DishConfig)) as DishConfig; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DishConfig create() => DishConfig._();
  DishConfig createEmptyInstance() => create();
  static $pb.PbList<DishConfig> createRepeated() => $pb.PbList<DishConfig>();
  @$core.pragma('dart2js:noInline')
  static DishConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishConfig>(create);
  static DishConfig? _defaultInstance;

  @$pb.TagNumber(1)
  DishConfig_SnowMeltMode get snowMeltMode => $_getN(0);
  @$pb.TagNumber(1)
  set snowMeltMode(DishConfig_SnowMeltMode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSnowMeltMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearSnowMeltMode() => clearField(1);

  @$pb.TagNumber(2)
  DishConfig_LocationRequestMode get locationRequestMode => $_getN(1);
  @$pb.TagNumber(2)
  set locationRequestMode(DishConfig_LocationRequestMode v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLocationRequestMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocationRequestMode() => clearField(2);

  @$pb.TagNumber(3)
  DishConfig_LevelDishMode get levelDishMode => $_getN(2);
  @$pb.TagNumber(3)
  set levelDishMode(DishConfig_LevelDishMode v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLevelDishMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearLevelDishMode() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get powerSaveStartMinutes => $_getIZ(3);
  @$pb.TagNumber(4)
  set powerSaveStartMinutes($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPowerSaveStartMinutes() => $_has(3);
  @$pb.TagNumber(4)
  void clearPowerSaveStartMinutes() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get powerSaveDurationMinutes => $_getIZ(4);
  @$pb.TagNumber(5)
  set powerSaveDurationMinutes($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPowerSaveDurationMinutes() => $_has(4);
  @$pb.TagNumber(5)
  void clearPowerSaveDurationMinutes() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get powerSaveMode => $_getBF(5);
  @$pb.TagNumber(6)
  set powerSaveMode($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPowerSaveMode() => $_has(5);
  @$pb.TagNumber(6)
  void clearPowerSaveMode() => clearField(6);

  @$pb.TagNumber(1001)
  $core.bool get applySnowMeltMode => $_getBF(6);
  @$pb.TagNumber(1001)
  set applySnowMeltMode($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(1001)
  $core.bool hasApplySnowMeltMode() => $_has(6);
  @$pb.TagNumber(1001)
  void clearApplySnowMeltMode() => clearField(1001);

  @$pb.TagNumber(2001)
  $core.bool get applyLocationRequestMode => $_getBF(7);
  @$pb.TagNumber(2001)
  set applyLocationRequestMode($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(2001)
  $core.bool hasApplyLocationRequestMode() => $_has(7);
  @$pb.TagNumber(2001)
  void clearApplyLocationRequestMode() => clearField(2001);

  @$pb.TagNumber(3001)
  $core.bool get applyLevelDishMode => $_getBF(8);
  @$pb.TagNumber(3001)
  set applyLevelDishMode($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(3001)
  $core.bool hasApplyLevelDishMode() => $_has(8);
  @$pb.TagNumber(3001)
  void clearApplyLevelDishMode() => clearField(3001);

  @$pb.TagNumber(4001)
  $core.bool get applyPowerSaveStartMinutes => $_getBF(9);
  @$pb.TagNumber(4001)
  set applyPowerSaveStartMinutes($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(4001)
  $core.bool hasApplyPowerSaveStartMinutes() => $_has(9);
  @$pb.TagNumber(4001)
  void clearApplyPowerSaveStartMinutes() => clearField(4001);

  @$pb.TagNumber(5001)
  $core.bool get applyPowerSaveDurationMinutes => $_getBF(10);
  @$pb.TagNumber(5001)
  set applyPowerSaveDurationMinutes($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(5001)
  $core.bool hasApplyPowerSaveDurationMinutes() => $_has(10);
  @$pb.TagNumber(5001)
  void clearApplyPowerSaveDurationMinutes() => clearField(5001);

  @$pb.TagNumber(6001)
  $core.bool get applyPowerSaveMode => $_getBF(11);
  @$pb.TagNumber(6001)
  set applyPowerSaveMode($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(6001)
  $core.bool hasApplyPowerSaveMode() => $_has(11);
  @$pb.TagNumber(6001)
  void clearApplyPowerSaveMode() => clearField(6001);
}

class GetLocationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLocationRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..e<PositionSource>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'source', $pb.PbFieldType.OE, defaultOrMaker: PositionSource.AUTO, valueOf: PositionSource.valueOf, enumValues: PositionSource.values)
    ..hasRequiredFields = false
  ;

  GetLocationRequest._() : super();
  factory GetLocationRequest({
    PositionSource? source,
  }) {
    final _result = create();
    if (source != null) {
      _result.source = source;
    }
    return _result;
  }
  factory GetLocationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLocationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLocationRequest clone() => GetLocationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLocationRequest copyWith(void Function(GetLocationRequest) updates) => super.copyWith((message) => updates(message as GetLocationRequest)) as GetLocationRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLocationRequest create() => GetLocationRequest._();
  GetLocationRequest createEmptyInstance() => create();
  static $pb.PbList<GetLocationRequest> createRepeated() => $pb.PbList<GetLocationRequest>();
  @$core.pragma('dart2js:noInline')
  static GetLocationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLocationRequest>(create);
  static GetLocationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  PositionSource get source => $_getN(0);
  @$pb.TagNumber(1)
  set source(PositionSource v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSource() => clearField(1);
}

class GetLocationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLocationResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<LLAPosition>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lla', subBuilder: LLAPosition.create)
    ..e<PositionSource>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'source', $pb.PbFieldType.OE, defaultOrMaker: PositionSource.AUTO, valueOf: PositionSource.valueOf, enumValues: PositionSource.values)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sigmaM', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  GetLocationResponse._() : super();
  factory GetLocationResponse({
    LLAPosition? lla,
    PositionSource? source,
    $core.double? sigmaM,
  }) {
    final _result = create();
    if (lla != null) {
      _result.lla = lla;
    }
    if (source != null) {
      _result.source = source;
    }
    if (sigmaM != null) {
      _result.sigmaM = sigmaM;
    }
    return _result;
  }
  factory GetLocationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLocationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLocationResponse clone() => GetLocationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLocationResponse copyWith(void Function(GetLocationResponse) updates) => super.copyWith((message) => updates(message as GetLocationResponse)) as GetLocationResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLocationResponse create() => GetLocationResponse._();
  GetLocationResponse createEmptyInstance() => create();
  static $pb.PbList<GetLocationResponse> createRepeated() => $pb.PbList<GetLocationResponse>();
  @$core.pragma('dart2js:noInline')
  static GetLocationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLocationResponse>(create);
  static GetLocationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  LLAPosition get lla => $_getN(0);
  @$pb.TagNumber(1)
  set lla(LLAPosition v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLla() => $_has(0);
  @$pb.TagNumber(1)
  void clearLla() => clearField(1);
  @$pb.TagNumber(1)
  LLAPosition ensureLla() => $_ensure(0);

  @$pb.TagNumber(3)
  PositionSource get source => $_getN(1);
  @$pb.TagNumber(3)
  set source(PositionSource v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSource() => $_has(1);
  @$pb.TagNumber(3)
  void clearSource() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get sigmaM => $_getN(2);
  @$pb.TagNumber(4)
  set sigmaM($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasSigmaM() => $_has(2);
  @$pb.TagNumber(4)
  void clearSigmaM() => clearField(4);
}

class LLAPosition extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LLAPosition', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lat', $pb.PbFieldType.OD)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lon', $pb.PbFieldType.OD)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alt', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  LLAPosition._() : super();
  factory LLAPosition({
    $core.double? lat,
    $core.double? lon,
    $core.double? alt,
  }) {
    final _result = create();
    if (lat != null) {
      _result.lat = lat;
    }
    if (lon != null) {
      _result.lon = lon;
    }
    if (alt != null) {
      _result.alt = alt;
    }
    return _result;
  }
  factory LLAPosition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LLAPosition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LLAPosition clone() => LLAPosition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LLAPosition copyWith(void Function(LLAPosition) updates) => super.copyWith((message) => updates(message as LLAPosition)) as LLAPosition; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LLAPosition create() => LLAPosition._();
  LLAPosition createEmptyInstance() => create();
  static $pb.PbList<LLAPosition> createRepeated() => $pb.PbList<LLAPosition>();
  @$core.pragma('dart2js:noInline')
  static LLAPosition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LLAPosition>(create);
  static LLAPosition? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get lat => $_getN(0);
  @$pb.TagNumber(1)
  set lat($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLat() => $_has(0);
  @$pb.TagNumber(1)
  void clearLat() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get lon => $_getN(1);
  @$pb.TagNumber(2)
  set lon($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLon() => $_has(1);
  @$pb.TagNumber(2)
  void clearLon() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get alt => $_getN(2);
  @$pb.TagNumber(3)
  set alt($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAlt() => $_has(2);
  @$pb.TagNumber(3)
  void clearAlt() => clearField(3);
}

class GetConnectionsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetConnectionsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetConnectionsRequest._() : super();
  factory GetConnectionsRequest() => create();
  factory GetConnectionsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetConnectionsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetConnectionsRequest clone() => GetConnectionsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetConnectionsRequest copyWith(void Function(GetConnectionsRequest) updates) => super.copyWith((message) => updates(message as GetConnectionsRequest)) as GetConnectionsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetConnectionsRequest create() => GetConnectionsRequest._();
  GetConnectionsRequest createEmptyInstance() => create();
  static $pb.PbList<GetConnectionsRequest> createRepeated() => $pb.PbList<GetConnectionsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetConnectionsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetConnectionsRequest>(create);
  static GetConnectionsRequest? _defaultInstance;
}

class GetConnectionsResponse_ServiceConnection extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetConnectionsResponse.ServiceConnection', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secondsSinceSuccess', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GetConnectionsResponse_ServiceConnection._() : super();
  factory GetConnectionsResponse_ServiceConnection({
    $core.String? address,
    $core.int? secondsSinceSuccess,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (secondsSinceSuccess != null) {
      _result.secondsSinceSuccess = secondsSinceSuccess;
    }
    return _result;
  }
  factory GetConnectionsResponse_ServiceConnection.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetConnectionsResponse_ServiceConnection.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetConnectionsResponse_ServiceConnection clone() => GetConnectionsResponse_ServiceConnection()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetConnectionsResponse_ServiceConnection copyWith(void Function(GetConnectionsResponse_ServiceConnection) updates) => super.copyWith((message) => updates(message as GetConnectionsResponse_ServiceConnection)) as GetConnectionsResponse_ServiceConnection; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetConnectionsResponse_ServiceConnection create() => GetConnectionsResponse_ServiceConnection._();
  GetConnectionsResponse_ServiceConnection createEmptyInstance() => create();
  static $pb.PbList<GetConnectionsResponse_ServiceConnection> createRepeated() => $pb.PbList<GetConnectionsResponse_ServiceConnection>();
  @$core.pragma('dart2js:noInline')
  static GetConnectionsResponse_ServiceConnection getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetConnectionsResponse_ServiceConnection>(create);
  static GetConnectionsResponse_ServiceConnection? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get secondsSinceSuccess => $_getIZ(1);
  @$pb.TagNumber(2)
  set secondsSinceSuccess($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSecondsSinceSuccess() => $_has(1);
  @$pb.TagNumber(2)
  void clearSecondsSinceSuccess() => clearField(2);
}

class GetConnectionsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetConnectionsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..m<$core.String, GetConnectionsResponse_ServiceConnection>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'services', entryClassName: 'GetConnectionsResponse.ServicesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: GetConnectionsResponse_ServiceConnection.create, packageName: const $pb.PackageName('SpaceX.API.Device'))
    ..hasRequiredFields = false
  ;

  GetConnectionsResponse._() : super();
  factory GetConnectionsResponse({
    $core.Map<$core.String, GetConnectionsResponse_ServiceConnection>? services,
  }) {
    final _result = create();
    if (services != null) {
      _result.services.addAll(services);
    }
    return _result;
  }
  factory GetConnectionsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetConnectionsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetConnectionsResponse clone() => GetConnectionsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetConnectionsResponse copyWith(void Function(GetConnectionsResponse) updates) => super.copyWith((message) => updates(message as GetConnectionsResponse)) as GetConnectionsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetConnectionsResponse create() => GetConnectionsResponse._();
  GetConnectionsResponse createEmptyInstance() => create();
  static $pb.PbList<GetConnectionsResponse> createRepeated() => $pb.PbList<GetConnectionsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetConnectionsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetConnectionsResponse>(create);
  static GetConnectionsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, GetConnectionsResponse_ServiceConnection> get services => $_getMap(0);
}

class DishStowRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishStowRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unstow')
    ..hasRequiredFields = false
  ;

  DishStowRequest._() : super();
  factory DishStowRequest({
    $core.bool? unstow,
  }) {
    final _result = create();
    if (unstow != null) {
      _result.unstow = unstow;
    }
    return _result;
  }
  factory DishStowRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishStowRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishStowRequest clone() => DishStowRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishStowRequest copyWith(void Function(DishStowRequest) updates) => super.copyWith((message) => updates(message as DishStowRequest)) as DishStowRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DishStowRequest create() => DishStowRequest._();
  DishStowRequest createEmptyInstance() => create();
  static $pb.PbList<DishStowRequest> createRepeated() => $pb.PbList<DishStowRequest>();
  @$core.pragma('dart2js:noInline')
  static DishStowRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishStowRequest>(create);
  static DishStowRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get unstow => $_getBF(0);
  @$pb.TagNumber(1)
  set unstow($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUnstow() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnstow() => clearField(1);
}

class DishStowResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishStowResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DishStowResponse._() : super();
  factory DishStowResponse() => create();
  factory DishStowResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishStowResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishStowResponse clone() => DishStowResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishStowResponse copyWith(void Function(DishStowResponse) updates) => super.copyWith((message) => updates(message as DishStowResponse)) as DishStowResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DishStowResponse create() => DishStowResponse._();
  DishStowResponse createEmptyInstance() => create();
  static $pb.PbList<DishStowResponse> createRepeated() => $pb.PbList<DishStowResponse>();
  @$core.pragma('dart2js:noInline')
  static DishStowResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishStowResponse>(create);
  static DishStowResponse? _defaultInstance;
}

class RebootRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RebootRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  RebootRequest._() : super();
  factory RebootRequest() => create();
  factory RebootRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RebootRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RebootRequest clone() => RebootRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RebootRequest copyWith(void Function(RebootRequest) updates) => super.copyWith((message) => updates(message as RebootRequest)) as RebootRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RebootRequest create() => RebootRequest._();
  RebootRequest createEmptyInstance() => create();
  static $pb.PbList<RebootRequest> createRepeated() => $pb.PbList<RebootRequest>();
  @$core.pragma('dart2js:noInline')
  static RebootRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RebootRequest>(create);
  static RebootRequest? _defaultInstance;
}

class RebootResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RebootResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  RebootResponse._() : super();
  factory RebootResponse() => create();
  factory RebootResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RebootResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RebootResponse clone() => RebootResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RebootResponse copyWith(void Function(RebootResponse) updates) => super.copyWith((message) => updates(message as RebootResponse)) as RebootResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RebootResponse create() => RebootResponse._();
  RebootResponse createEmptyInstance() => create();
  static $pb.PbList<RebootResponse> createRepeated() => $pb.PbList<RebootResponse>();
  @$core.pragma('dart2js:noInline')
  static RebootResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RebootResponse>(create);
  static RebootResponse? _defaultInstance;
}

class DishInhibitGpsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishInhibitGpsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inhibitGps')
    ..hasRequiredFields = false
  ;

  DishInhibitGpsRequest._() : super();
  factory DishInhibitGpsRequest({
    $core.bool? inhibitGps,
  }) {
    final _result = create();
    if (inhibitGps != null) {
      _result.inhibitGps = inhibitGps;
    }
    return _result;
  }
  factory DishInhibitGpsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishInhibitGpsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishInhibitGpsRequest clone() => DishInhibitGpsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishInhibitGpsRequest copyWith(void Function(DishInhibitGpsRequest) updates) => super.copyWith((message) => updates(message as DishInhibitGpsRequest)) as DishInhibitGpsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DishInhibitGpsRequest create() => DishInhibitGpsRequest._();
  DishInhibitGpsRequest createEmptyInstance() => create();
  static $pb.PbList<DishInhibitGpsRequest> createRepeated() => $pb.PbList<DishInhibitGpsRequest>();
  @$core.pragma('dart2js:noInline')
  static DishInhibitGpsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishInhibitGpsRequest>(create);
  static DishInhibitGpsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get inhibitGps => $_getBF(0);
  @$pb.TagNumber(1)
  set inhibitGps($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInhibitGps() => $_has(0);
  @$pb.TagNumber(1)
  void clearInhibitGps() => clearField(1);
}

class DishInhibitGpsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishInhibitGpsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inhibitGps')
    ..hasRequiredFields = false
  ;

  DishInhibitGpsResponse._() : super();
  factory DishInhibitGpsResponse({
    $core.bool? inhibitGps,
  }) {
    final _result = create();
    if (inhibitGps != null) {
      _result.inhibitGps = inhibitGps;
    }
    return _result;
  }
  factory DishInhibitGpsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishInhibitGpsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishInhibitGpsResponse clone() => DishInhibitGpsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishInhibitGpsResponse copyWith(void Function(DishInhibitGpsResponse) updates) => super.copyWith((message) => updates(message as DishInhibitGpsResponse)) as DishInhibitGpsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DishInhibitGpsResponse create() => DishInhibitGpsResponse._();
  DishInhibitGpsResponse createEmptyInstance() => create();
  static $pb.PbList<DishInhibitGpsResponse> createRepeated() => $pb.PbList<DishInhibitGpsResponse>();
  @$core.pragma('dart2js:noInline')
  static DishInhibitGpsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishInhibitGpsResponse>(create);
  static DishInhibitGpsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get inhibitGps => $_getBF(0);
  @$pb.TagNumber(1)
  set inhibitGps($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInhibitGps() => $_has(0);
  @$pb.TagNumber(1)
  void clearInhibitGps() => clearField(1);
}

class DishSetConfigRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishSetConfigRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<DishConfig>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishConfig', subBuilder: DishConfig.create)
    ..hasRequiredFields = false
  ;

  DishSetConfigRequest._() : super();
  factory DishSetConfigRequest({
    DishConfig? dishConfig,
  }) {
    final _result = create();
    if (dishConfig != null) {
      _result.dishConfig = dishConfig;
    }
    return _result;
  }
  factory DishSetConfigRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishSetConfigRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishSetConfigRequest clone() => DishSetConfigRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishSetConfigRequest copyWith(void Function(DishSetConfigRequest) updates) => super.copyWith((message) => updates(message as DishSetConfigRequest)) as DishSetConfigRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DishSetConfigRequest create() => DishSetConfigRequest._();
  DishSetConfigRequest createEmptyInstance() => create();
  static $pb.PbList<DishSetConfigRequest> createRepeated() => $pb.PbList<DishSetConfigRequest>();
  @$core.pragma('dart2js:noInline')
  static DishSetConfigRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishSetConfigRequest>(create);
  static DishSetConfigRequest? _defaultInstance;

  @$pb.TagNumber(1)
  DishConfig get dishConfig => $_getN(0);
  @$pb.TagNumber(1)
  set dishConfig(DishConfig v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDishConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearDishConfig() => clearField(1);
  @$pb.TagNumber(1)
  DishConfig ensureDishConfig() => $_ensure(0);
}

class DishGetConfigRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishGetConfigRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DishGetConfigRequest._() : super();
  factory DishGetConfigRequest() => create();
  factory DishGetConfigRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishGetConfigRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishGetConfigRequest clone() => DishGetConfigRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishGetConfigRequest copyWith(void Function(DishGetConfigRequest) updates) => super.copyWith((message) => updates(message as DishGetConfigRequest)) as DishGetConfigRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DishGetConfigRequest create() => DishGetConfigRequest._();
  DishGetConfigRequest createEmptyInstance() => create();
  static $pb.PbList<DishGetConfigRequest> createRepeated() => $pb.PbList<DishGetConfigRequest>();
  @$core.pragma('dart2js:noInline')
  static DishGetConfigRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishGetConfigRequest>(create);
  static DishGetConfigRequest? _defaultInstance;
}

class DishSetConfigResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishSetConfigResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<DishConfig>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedDishConfig', subBuilder: DishConfig.create)
    ..hasRequiredFields = false
  ;

  DishSetConfigResponse._() : super();
  factory DishSetConfigResponse({
    DishConfig? updatedDishConfig,
  }) {
    final _result = create();
    if (updatedDishConfig != null) {
      _result.updatedDishConfig = updatedDishConfig;
    }
    return _result;
  }
  factory DishSetConfigResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishSetConfigResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishSetConfigResponse clone() => DishSetConfigResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishSetConfigResponse copyWith(void Function(DishSetConfigResponse) updates) => super.copyWith((message) => updates(message as DishSetConfigResponse)) as DishSetConfigResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DishSetConfigResponse create() => DishSetConfigResponse._();
  DishSetConfigResponse createEmptyInstance() => create();
  static $pb.PbList<DishSetConfigResponse> createRepeated() => $pb.PbList<DishSetConfigResponse>();
  @$core.pragma('dart2js:noInline')
  static DishSetConfigResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishSetConfigResponse>(create);
  static DishSetConfigResponse? _defaultInstance;

  @$pb.TagNumber(1)
  DishConfig get updatedDishConfig => $_getN(0);
  @$pb.TagNumber(1)
  set updatedDishConfig(DishConfig v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUpdatedDishConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpdatedDishConfig() => clearField(1);
  @$pb.TagNumber(1)
  DishConfig ensureUpdatedDishConfig() => $_ensure(0);
}

class DishGetConfigResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishGetConfigResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<DishConfig>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishConfig', subBuilder: DishConfig.create)
    ..hasRequiredFields = false
  ;

  DishGetConfigResponse._() : super();
  factory DishGetConfigResponse({
    DishConfig? dishConfig,
  }) {
    final _result = create();
    if (dishConfig != null) {
      _result.dishConfig = dishConfig;
    }
    return _result;
  }
  factory DishGetConfigResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishGetConfigResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishGetConfigResponse clone() => DishGetConfigResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishGetConfigResponse copyWith(void Function(DishGetConfigResponse) updates) => super.copyWith((message) => updates(message as DishGetConfigResponse)) as DishGetConfigResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DishGetConfigResponse create() => DishGetConfigResponse._();
  DishGetConfigResponse createEmptyInstance() => create();
  static $pb.PbList<DishGetConfigResponse> createRepeated() => $pb.PbList<DishGetConfigResponse>();
  @$core.pragma('dart2js:noInline')
  static DishGetConfigResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishGetConfigResponse>(create);
  static DishGetConfigResponse? _defaultInstance;

  @$pb.TagNumber(1)
  DishConfig get dishConfig => $_getN(0);
  @$pb.TagNumber(1)
  set dishConfig(DishConfig v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDishConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearDishConfig() => clearField(1);
  @$pb.TagNumber(1)
  DishConfig ensureDishConfig() => $_ensure(0);
}

class WifiGetConfigRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiGetConfigRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  WifiGetConfigRequest._() : super();
  factory WifiGetConfigRequest() => create();
  factory WifiGetConfigRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetConfigRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetConfigRequest clone() => WifiGetConfigRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetConfigRequest copyWith(void Function(WifiGetConfigRequest) updates) => super.copyWith((message) => updates(message as WifiGetConfigRequest)) as WifiGetConfigRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiGetConfigRequest create() => WifiGetConfigRequest._();
  WifiGetConfigRequest createEmptyInstance() => create();
  static $pb.PbList<WifiGetConfigRequest> createRepeated() => $pb.PbList<WifiGetConfigRequest>();
  @$core.pragma('dart2js:noInline')
  static WifiGetConfigRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiGetConfigRequest>(create);
  static WifiGetConfigRequest? _defaultInstance;
}

class WifiGetConfigResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiGetConfigResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<WifiConfig>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiConfig', subBuilder: WifiConfig.create)
    ..hasRequiredFields = false
  ;

  WifiGetConfigResponse._() : super();
  factory WifiGetConfigResponse({
    WifiConfig? wifiConfig,
  }) {
    final _result = create();
    if (wifiConfig != null) {
      _result.wifiConfig = wifiConfig;
    }
    return _result;
  }
  factory WifiGetConfigResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetConfigResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetConfigResponse clone() => WifiGetConfigResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetConfigResponse copyWith(void Function(WifiGetConfigResponse) updates) => super.copyWith((message) => updates(message as WifiGetConfigResponse)) as WifiGetConfigResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiGetConfigResponse create() => WifiGetConfigResponse._();
  WifiGetConfigResponse createEmptyInstance() => create();
  static $pb.PbList<WifiGetConfigResponse> createRepeated() => $pb.PbList<WifiGetConfigResponse>();
  @$core.pragma('dart2js:noInline')
  static WifiGetConfigResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiGetConfigResponse>(create);
  static WifiGetConfigResponse? _defaultInstance;

  @$pb.TagNumber(1)
  WifiConfig get wifiConfig => $_getN(0);
  @$pb.TagNumber(1)
  set wifiConfig(WifiConfig v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasWifiConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearWifiConfig() => clearField(1);
  @$pb.TagNumber(1)
  WifiConfig ensureWifiConfig() => $_ensure(0);
}

class WifiSetConfigRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiSetConfigRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<WifiConfig>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiConfig', subBuilder: WifiConfig.create)
    ..hasRequiredFields = false
  ;

  WifiSetConfigRequest._() : super();
  factory WifiSetConfigRequest({
    WifiConfig? wifiConfig,
  }) {
    final _result = create();
    if (wifiConfig != null) {
      _result.wifiConfig = wifiConfig;
    }
    return _result;
  }
  factory WifiSetConfigRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSetConfigRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSetConfigRequest clone() => WifiSetConfigRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSetConfigRequest copyWith(void Function(WifiSetConfigRequest) updates) => super.copyWith((message) => updates(message as WifiSetConfigRequest)) as WifiSetConfigRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiSetConfigRequest create() => WifiSetConfigRequest._();
  WifiSetConfigRequest createEmptyInstance() => create();
  static $pb.PbList<WifiSetConfigRequest> createRepeated() => $pb.PbList<WifiSetConfigRequest>();
  @$core.pragma('dart2js:noInline')
  static WifiSetConfigRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiSetConfigRequest>(create);
  static WifiSetConfigRequest? _defaultInstance;

  @$pb.TagNumber(1)
  WifiConfig get wifiConfig => $_getN(0);
  @$pb.TagNumber(1)
  set wifiConfig(WifiConfig v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasWifiConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearWifiConfig() => clearField(1);
  @$pb.TagNumber(1)
  WifiConfig ensureWifiConfig() => $_ensure(0);
}

class WifiSetConfigResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiSetConfigResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<WifiConfig>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedWifiConfig', subBuilder: WifiConfig.create)
    ..hasRequiredFields = false
  ;

  WifiSetConfigResponse._() : super();
  factory WifiSetConfigResponse({
    WifiConfig? updatedWifiConfig,
  }) {
    final _result = create();
    if (updatedWifiConfig != null) {
      _result.updatedWifiConfig = updatedWifiConfig;
    }
    return _result;
  }
  factory WifiSetConfigResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSetConfigResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSetConfigResponse clone() => WifiSetConfigResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSetConfigResponse copyWith(void Function(WifiSetConfigResponse) updates) => super.copyWith((message) => updates(message as WifiSetConfigResponse)) as WifiSetConfigResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiSetConfigResponse create() => WifiSetConfigResponse._();
  WifiSetConfigResponse createEmptyInstance() => create();
  static $pb.PbList<WifiSetConfigResponse> createRepeated() => $pb.PbList<WifiSetConfigResponse>();
  @$core.pragma('dart2js:noInline')
  static WifiSetConfigResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiSetConfigResponse>(create);
  static WifiSetConfigResponse? _defaultInstance;

  @$pb.TagNumber(1)
  WifiConfig get updatedWifiConfig => $_getN(0);
  @$pb.TagNumber(1)
  set updatedWifiConfig(WifiConfig v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUpdatedWifiConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpdatedWifiConfig() => clearField(1);
  @$pb.TagNumber(1)
  WifiConfig ensureUpdatedWifiConfig() => $_ensure(0);
}

enum WifiConfig_BasicServiceSet_Auth {
  authOpen, 
  authWpa2, 
  authWpa3, 
  authWpa2Wpa3, 
  authRadius, 
  notSet
}

class WifiConfig_BasicServiceSet extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, WifiConfig_BasicServiceSet_Auth> _WifiConfig_BasicServiceSet_AuthByTag = {
    2001 : WifiConfig_BasicServiceSet_Auth.authOpen,
    2002 : WifiConfig_BasicServiceSet_Auth.authWpa2,
    2003 : WifiConfig_BasicServiceSet_Auth.authWpa3,
    2004 : WifiConfig_BasicServiceSet_Auth.authWpa2Wpa3,
    2005 : WifiConfig_BasicServiceSet_Auth.authRadius,
    0 : WifiConfig_BasicServiceSet_Auth.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiConfig.BasicServiceSet', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..oo(0, [2001, 2002, 2003, 2004, 2005])
    ..aOS(1003, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bssid')
    ..aOS(1005, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ssid')
    ..e<WifiConfig_Band>(1011, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'band', $pb.PbFieldType.OE, defaultOrMaker: WifiConfig_Band.RF_UNKNOWN, valueOf: WifiConfig_Band.valueOf, enumValues: WifiConfig_Band.values)
    ..aOB(1013, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disable')
    ..aOB(1015, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hidden')
    ..aOS(1017, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ifaceName')
    ..aOM<AuthOpen>(2001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authOpen', subBuilder: AuthOpen.create)
    ..aOM<AuthWpa2>(2002, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authWpa2', subBuilder: AuthWpa2.create)
    ..aOM<AuthWpa3>(2003, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authWpa3', subBuilder: AuthWpa3.create)
    ..aOM<AuthWpa2Wpa3>(2004, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authWpa2Wpa3', subBuilder: AuthWpa2Wpa3.create)
    ..aOM<AuthRadius>(2005, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authRadius', subBuilder: AuthRadius.create)
    ..hasRequiredFields = false
  ;

  WifiConfig_BasicServiceSet._() : super();
  factory WifiConfig_BasicServiceSet({
    $core.String? bssid,
    $core.String? ssid,
    WifiConfig_Band? band,
    $core.bool? disable,
    $core.bool? hidden,
    $core.String? ifaceName,
    AuthOpen? authOpen,
    AuthWpa2? authWpa2,
    AuthWpa3? authWpa3,
    AuthWpa2Wpa3? authWpa2Wpa3,
    AuthRadius? authRadius,
  }) {
    final _result = create();
    if (bssid != null) {
      _result.bssid = bssid;
    }
    if (ssid != null) {
      _result.ssid = ssid;
    }
    if (band != null) {
      _result.band = band;
    }
    if (disable != null) {
      _result.disable = disable;
    }
    if (hidden != null) {
      _result.hidden = hidden;
    }
    if (ifaceName != null) {
      _result.ifaceName = ifaceName;
    }
    if (authOpen != null) {
      _result.authOpen = authOpen;
    }
    if (authWpa2 != null) {
      _result.authWpa2 = authWpa2;
    }
    if (authWpa3 != null) {
      _result.authWpa3 = authWpa3;
    }
    if (authWpa2Wpa3 != null) {
      _result.authWpa2Wpa3 = authWpa2Wpa3;
    }
    if (authRadius != null) {
      _result.authRadius = authRadius;
    }
    return _result;
  }
  factory WifiConfig_BasicServiceSet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiConfig_BasicServiceSet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiConfig_BasicServiceSet clone() => WifiConfig_BasicServiceSet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiConfig_BasicServiceSet copyWith(void Function(WifiConfig_BasicServiceSet) updates) => super.copyWith((message) => updates(message as WifiConfig_BasicServiceSet)) as WifiConfig_BasicServiceSet; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiConfig_BasicServiceSet create() => WifiConfig_BasicServiceSet._();
  WifiConfig_BasicServiceSet createEmptyInstance() => create();
  static $pb.PbList<WifiConfig_BasicServiceSet> createRepeated() => $pb.PbList<WifiConfig_BasicServiceSet>();
  @$core.pragma('dart2js:noInline')
  static WifiConfig_BasicServiceSet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiConfig_BasicServiceSet>(create);
  static WifiConfig_BasicServiceSet? _defaultInstance;

  WifiConfig_BasicServiceSet_Auth whichAuth() => _WifiConfig_BasicServiceSet_AuthByTag[$_whichOneof(0)]!;
  void clearAuth() => clearField($_whichOneof(0));

  @$pb.TagNumber(1003)
  $core.String get bssid => $_getSZ(0);
  @$pb.TagNumber(1003)
  set bssid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1003)
  $core.bool hasBssid() => $_has(0);
  @$pb.TagNumber(1003)
  void clearBssid() => clearField(1003);

  @$pb.TagNumber(1005)
  $core.String get ssid => $_getSZ(1);
  @$pb.TagNumber(1005)
  set ssid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(1005)
  $core.bool hasSsid() => $_has(1);
  @$pb.TagNumber(1005)
  void clearSsid() => clearField(1005);

  @$pb.TagNumber(1011)
  WifiConfig_Band get band => $_getN(2);
  @$pb.TagNumber(1011)
  set band(WifiConfig_Band v) { setField(1011, v); }
  @$pb.TagNumber(1011)
  $core.bool hasBand() => $_has(2);
  @$pb.TagNumber(1011)
  void clearBand() => clearField(1011);

  @$pb.TagNumber(1013)
  $core.bool get disable => $_getBF(3);
  @$pb.TagNumber(1013)
  set disable($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(1013)
  $core.bool hasDisable() => $_has(3);
  @$pb.TagNumber(1013)
  void clearDisable() => clearField(1013);

  @$pb.TagNumber(1015)
  $core.bool get hidden => $_getBF(4);
  @$pb.TagNumber(1015)
  set hidden($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(1015)
  $core.bool hasHidden() => $_has(4);
  @$pb.TagNumber(1015)
  void clearHidden() => clearField(1015);

  @$pb.TagNumber(1017)
  $core.String get ifaceName => $_getSZ(5);
  @$pb.TagNumber(1017)
  set ifaceName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(1017)
  $core.bool hasIfaceName() => $_has(5);
  @$pb.TagNumber(1017)
  void clearIfaceName() => clearField(1017);

  @$pb.TagNumber(2001)
  AuthOpen get authOpen => $_getN(6);
  @$pb.TagNumber(2001)
  set authOpen(AuthOpen v) { setField(2001, v); }
  @$pb.TagNumber(2001)
  $core.bool hasAuthOpen() => $_has(6);
  @$pb.TagNumber(2001)
  void clearAuthOpen() => clearField(2001);
  @$pb.TagNumber(2001)
  AuthOpen ensureAuthOpen() => $_ensure(6);

  @$pb.TagNumber(2002)
  AuthWpa2 get authWpa2 => $_getN(7);
  @$pb.TagNumber(2002)
  set authWpa2(AuthWpa2 v) { setField(2002, v); }
  @$pb.TagNumber(2002)
  $core.bool hasAuthWpa2() => $_has(7);
  @$pb.TagNumber(2002)
  void clearAuthWpa2() => clearField(2002);
  @$pb.TagNumber(2002)
  AuthWpa2 ensureAuthWpa2() => $_ensure(7);

  @$pb.TagNumber(2003)
  AuthWpa3 get authWpa3 => $_getN(8);
  @$pb.TagNumber(2003)
  set authWpa3(AuthWpa3 v) { setField(2003, v); }
  @$pb.TagNumber(2003)
  $core.bool hasAuthWpa3() => $_has(8);
  @$pb.TagNumber(2003)
  void clearAuthWpa3() => clearField(2003);
  @$pb.TagNumber(2003)
  AuthWpa3 ensureAuthWpa3() => $_ensure(8);

  @$pb.TagNumber(2004)
  AuthWpa2Wpa3 get authWpa2Wpa3 => $_getN(9);
  @$pb.TagNumber(2004)
  set authWpa2Wpa3(AuthWpa2Wpa3 v) { setField(2004, v); }
  @$pb.TagNumber(2004)
  $core.bool hasAuthWpa2Wpa3() => $_has(9);
  @$pb.TagNumber(2004)
  void clearAuthWpa2Wpa3() => clearField(2004);
  @$pb.TagNumber(2004)
  AuthWpa2Wpa3 ensureAuthWpa2Wpa3() => $_ensure(9);

  @$pb.TagNumber(2005)
  AuthRadius get authRadius => $_getN(10);
  @$pb.TagNumber(2005)
  set authRadius(AuthRadius v) { setField(2005, v); }
  @$pb.TagNumber(2005)
  $core.bool hasAuthRadius() => $_has(10);
  @$pb.TagNumber(2005)
  void clearAuthRadius() => clearField(2005);
  @$pb.TagNumber(2005)
  AuthRadius ensureAuthRadius() => $_ensure(10);
}

class WifiConfig_Network extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiConfig.Network', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1003, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ipv4')
    ..pc<WifiConfig_BasicServiceSet>(1007, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'basicServiceSets', $pb.PbFieldType.PM, subBuilder: WifiConfig_BasicServiceSet.create)
    ..aOB(1008, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientIsolation')
    ..aOB(1009, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guest')
    ..aOS(1010, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'landing')
    ..aOS(1011, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'domain')
    ..a<$core.int>(1012, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dhcpv4Start', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  WifiConfig_Network._() : super();
  factory WifiConfig_Network({
    $core.String? ipv4,
    $core.Iterable<WifiConfig_BasicServiceSet>? basicServiceSets,
    $core.bool? clientIsolation,
    $core.bool? guest,
    $core.String? landing,
    $core.String? domain,
    $core.int? dhcpv4Start,
  }) {
    final _result = create();
    if (ipv4 != null) {
      _result.ipv4 = ipv4;
    }
    if (basicServiceSets != null) {
      _result.basicServiceSets.addAll(basicServiceSets);
    }
    if (clientIsolation != null) {
      _result.clientIsolation = clientIsolation;
    }
    if (guest != null) {
      _result.guest = guest;
    }
    if (landing != null) {
      _result.landing = landing;
    }
    if (domain != null) {
      _result.domain = domain;
    }
    if (dhcpv4Start != null) {
      _result.dhcpv4Start = dhcpv4Start;
    }
    return _result;
  }
  factory WifiConfig_Network.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiConfig_Network.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiConfig_Network clone() => WifiConfig_Network()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiConfig_Network copyWith(void Function(WifiConfig_Network) updates) => super.copyWith((message) => updates(message as WifiConfig_Network)) as WifiConfig_Network; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiConfig_Network create() => WifiConfig_Network._();
  WifiConfig_Network createEmptyInstance() => create();
  static $pb.PbList<WifiConfig_Network> createRepeated() => $pb.PbList<WifiConfig_Network>();
  @$core.pragma('dart2js:noInline')
  static WifiConfig_Network getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiConfig_Network>(create);
  static WifiConfig_Network? _defaultInstance;

  @$pb.TagNumber(1003)
  $core.String get ipv4 => $_getSZ(0);
  @$pb.TagNumber(1003)
  set ipv4($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1003)
  $core.bool hasIpv4() => $_has(0);
  @$pb.TagNumber(1003)
  void clearIpv4() => clearField(1003);

  @$pb.TagNumber(1007)
  $core.List<WifiConfig_BasicServiceSet> get basicServiceSets => $_getList(1);

  @$pb.TagNumber(1008)
  $core.bool get clientIsolation => $_getBF(2);
  @$pb.TagNumber(1008)
  set clientIsolation($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(1008)
  $core.bool hasClientIsolation() => $_has(2);
  @$pb.TagNumber(1008)
  void clearClientIsolation() => clearField(1008);

  @$pb.TagNumber(1009)
  $core.bool get guest => $_getBF(3);
  @$pb.TagNumber(1009)
  set guest($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(1009)
  $core.bool hasGuest() => $_has(3);
  @$pb.TagNumber(1009)
  void clearGuest() => clearField(1009);

  @$pb.TagNumber(1010)
  $core.String get landing => $_getSZ(4);
  @$pb.TagNumber(1010)
  set landing($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(1010)
  $core.bool hasLanding() => $_has(4);
  @$pb.TagNumber(1010)
  void clearLanding() => clearField(1010);

  @$pb.TagNumber(1011)
  $core.String get domain => $_getSZ(5);
  @$pb.TagNumber(1011)
  set domain($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(1011)
  $core.bool hasDomain() => $_has(5);
  @$pb.TagNumber(1011)
  void clearDomain() => clearField(1011);

  @$pb.TagNumber(1012)
  $core.int get dhcpv4Start => $_getIZ(6);
  @$pb.TagNumber(1012)
  set dhcpv4Start($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(1012)
  $core.bool hasDhcpv4Start() => $_has(6);
  @$pb.TagNumber(1012)
  void clearDhcpv4Start() => clearField(1012);
}

class WifiConfig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiConfig', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'networkName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'networkPassword')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countryCode')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lanIpv4')
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'setupComplete')
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version', $pb.PbFieldType.OU3)
    ..e<WifiConfig_Security>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiSecurity', $pb.PbFieldType.OE, defaultOrMaker: WifiConfig_Security.UNKNOWN, valueOf: WifiConfig_Security.valueOf, enumValues: WifiConfig_Security.values)
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'networkName5ghz', protoName: 'network_name_5ghz')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'macWan')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'macLan')
    ..a<$core.int>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channel2ghz', $pb.PbFieldType.OU3, protoName: 'channel_2ghz')
    ..a<$core.int>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channel5ghz', $pb.PbFieldType.OU3, protoName: 'channel_5ghz')
    ..pc<PublicKey>(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dynamicKeys', $pb.PbFieldType.PM, subBuilder: PublicKey.create)
    ..aOB(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isRepeater')
    ..a<$core.int>(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bootCount', $pb.PbFieldType.O3)
    ..pPS(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nameservers')
    ..aOB(31, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bypassMode')
    ..m<$core.String, MeshConfig>(33, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'meshConfigs', entryClassName: 'WifiConfig.MeshConfigsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: MeshConfig.create, packageName: const $pb.PackageName('SpaceX.API.Device'))
    ..aOB(34, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enableRemoteSsh')
    ..aInt64(35, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRemoteSshAccess')
    ..aOB(37, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyLanIpv4')
    ..aOB(39, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyDynamicKeys')
    ..aOB(42, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dfsEnabled')
    ..a<$fixnum.Int64>(43, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'incarnation', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<WifiConfig_WirelessMode>(44, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wirelessMode2ghz', $pb.PbFieldType.OE, protoName: 'wireless_mode_2ghz', defaultOrMaker: WifiConfig_WirelessMode.WIRELESS_MODE_DEFAULT, valueOf: WifiConfig_WirelessMode.valueOf, enumValues: WifiConfig_WirelessMode.values)
    ..e<WifiConfig_WirelessMode>(45, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wirelessMode5ghz', $pb.PbFieldType.OE, protoName: 'wireless_mode_5ghz', defaultOrMaker: WifiConfig_WirelessMode.WIRELESS_MODE_DEFAULT, valueOf: WifiConfig_WirelessMode.valueOf, enumValues: WifiConfig_WirelessMode.values)
    ..e<WifiConfig_HTBandwidth>(46, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'htBandwidth2ghz', $pb.PbFieldType.OE, protoName: 'ht_bandwidth_2ghz', defaultOrMaker: WifiConfig_HTBandwidth.HT_BANDWIDTH_DEFAULT, valueOf: WifiConfig_HTBandwidth.valueOf, enumValues: WifiConfig_HTBandwidth.values)
    ..e<WifiConfig_HTBandwidth>(47, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'htBandwidth5ghz', $pb.PbFieldType.OE, protoName: 'ht_bandwidth_5ghz', defaultOrMaker: WifiConfig_HTBandwidth.HT_BANDWIDTH_DEFAULT, valueOf: WifiConfig_HTBandwidth.valueOf, enumValues: WifiConfig_HTBandwidth.values)
    ..e<WifiConfig_VHTBandwidth>(48, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vhtBandwidth', $pb.PbFieldType.OE, defaultOrMaker: WifiConfig_VHTBandwidth.VHT_BANDWIDTH_DEFAULT, valueOf: WifiConfig_VHTBandwidth.valueOf, enumValues: WifiConfig_VHTBandwidth.values)
    ..aOB(49, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isAviation')
    ..aOB(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secureDns')
    ..aOB(51, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'apMode')
    ..aOB(52, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disableMeshOnboarding')
    ..aOB(53, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pinCountryCode')
    ..aOB(54, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'customPowerTable')
    ..aOB(55, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'usePublicServices')
    ..aOB(56, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disableAutomatedSpeedtests')
    ..a<$core.int>(57, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channel5ghzHigh', $pb.PbFieldType.OU3, protoName: 'channel_5ghz_high')
    ..e<WifiConfig_WirelessMode>(58, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wirelessMode5ghzHigh', $pb.PbFieldType.OE, protoName: 'wireless_mode_5ghz_high', defaultOrMaker: WifiConfig_WirelessMode.WIRELESS_MODE_DEFAULT, valueOf: WifiConfig_WirelessMode.valueOf, enumValues: WifiConfig_WirelessMode.values)
    ..e<WifiConfig_HTBandwidth>(59, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'htBandwidth5ghzHigh', $pb.PbFieldType.OE, protoName: 'ht_bandwidth_5ghz_high', defaultOrMaker: WifiConfig_HTBandwidth.HT_BANDWIDTH_DEFAULT, valueOf: WifiConfig_HTBandwidth.valueOf, enumValues: WifiConfig_HTBandwidth.values)
    ..e<WifiConfig_VHTBandwidth>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vhtBandwidth5ghzHigh', $pb.PbFieldType.OE, protoName: 'vht_bandwidth_5ghz_high', defaultOrMaker: WifiConfig_VHTBandwidth.VHT_BANDWIDTH_DEFAULT, valueOf: WifiConfig_VHTBandwidth.valueOf, enumValues: WifiConfig_VHTBandwidth.values)
    ..aOB(61, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enableUmbilicalVlan')
    ..pc<ClientName>(62, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientNames', $pb.PbFieldType.PM, subBuilder: ClientName.create)
    ..aOB(63, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outdoorMode')
    ..aOB(64, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disable2ghz', protoName: 'disable_2ghz')
    ..aOB(65, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disable5ghz', protoName: 'disable_5ghz')
    ..aOB(66, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disable5ghzHigh', protoName: 'disable_5ghz_high')
    ..aOB(67, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disableXMeshBackhaul')
    ..aOS(68, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'goldenBssid')
    ..e<IfaceType>(69, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'goldenIfaceType', $pb.PbFieldType.OE, defaultOrMaker: IfaceType.IFACE_TYPE_UNKNOWN, valueOf: IfaceType.valueOf, enumValues: IfaceType.values)
    ..e<TxPowerLevel>(70, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txPowerLevel2ghz', $pb.PbFieldType.OE, protoName: 'tx_power_level_2ghz', defaultOrMaker: TxPowerLevel.TX_POWER_LEVEL_100, valueOf: TxPowerLevel.valueOf, enumValues: TxPowerLevel.values)
    ..e<TxPowerLevel>(71, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txPowerLevel5ghz', $pb.PbFieldType.OE, protoName: 'tx_power_level_5ghz', defaultOrMaker: TxPowerLevel.TX_POWER_LEVEL_100, valueOf: TxPowerLevel.valueOf, enumValues: TxPowerLevel.values)
    ..e<TxPowerLevel>(72, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txPowerLevel5ghzHigh', $pb.PbFieldType.OE, protoName: 'tx_power_level_5ghz_high', defaultOrMaker: TxPowerLevel.TX_POWER_LEVEL_100, valueOf: TxPowerLevel.valueOf, enumValues: TxPowerLevel.values)
    ..aOB(1001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyNetworkName')
    ..aOB(1002, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyNetworkPassword')
    ..aOB(1004, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyWifiSecurity')
    ..aOB(1005, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyNetworkName5ghz', protoName: 'apply_network_name_5ghz')
    ..aOB(1010, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applySetupComplete')
    ..aOB(1013, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyChannel2ghz', protoName: 'apply_channel_2ghz')
    ..aOB(1014, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyChannel5ghz', protoName: 'apply_channel_5ghz')
    ..aOB(1016, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyChannel5ghzHigh', protoName: 'apply_channel_5ghz_high')
    ..aOB(1031, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyIsRepeater')
    ..aOB(1033, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyMeshConfigs')
    ..aOB(1054, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyNameservers')
    ..aOB(1055, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyBypassMode')
    ..aOB(1057, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyEnableRemoteSsh')
    ..aOB(1058, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyDfsEnabled')
    ..aOB(1059, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyWirelessMode2ghz', protoName: 'apply_wireless_mode_2ghz')
    ..aOB(1060, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyWirelessMode5ghz', protoName: 'apply_wireless_mode_5ghz')
    ..aOB(1061, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyHtBandwidth2ghz', protoName: 'apply_ht_bandwidth_2ghz')
    ..aOB(1062, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyHtBandwidth5ghz', protoName: 'apply_ht_bandwidth_5ghz')
    ..aOB(1063, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyVhtBandwidth')
    ..aOB(1064, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyIsAviation')
    ..aOB(1065, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applySecureDns')
    ..aOB(1066, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyApMode')
    ..aOB(1067, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyDisableMeshOnboarding')
    ..aOB(1068, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyUsePublicServices')
    ..aOB(1069, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyDisableAutomatedSpeedtests')
    ..aOB(1070, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyWirelessMode5ghzHigh', protoName: 'apply_wireless_mode_5ghz_high')
    ..aOB(1071, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyHtBandwidth5ghzHigh', protoName: 'apply_ht_bandwidth_5ghz_high')
    ..aOB(1072, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyVhtBandwidth5ghzHigh', protoName: 'apply_vht_bandwidth_5ghz_high')
    ..aOB(1073, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyEnableUmbilicalVlan')
    ..aOB(1074, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyClientNames')
    ..aOB(1075, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyOutdoorMode')
    ..aOB(1076, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyDisable2ghz', protoName: 'apply_disable_2ghz')
    ..aOB(1077, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyDisable5ghz', protoName: 'apply_disable_5ghz')
    ..aOB(1078, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyDisable5ghzHigh', protoName: 'apply_disable_5ghz_high')
    ..aOB(1079, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyDisableXMeshBackhaul')
    ..aOB(1080, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyGoldenBssid')
    ..aOB(1081, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyGoldenIfaceType')
    ..aOB(1082, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyTxPowerLevel2ghz', protoName: 'apply_tx_power_level_2ghz')
    ..aOB(1083, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyTxPowerLevel5ghz', protoName: 'apply_tx_power_level_5ghz')
    ..aOB(1084, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyTxPowerLevel5ghzHigh', protoName: 'apply_tx_power_level_5ghz_high')
    ..pc<WifiConfig_Network>(1100, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'networks', $pb.PbFieldType.PM, subBuilder: WifiConfig_Network.create)
    ..aOB(1101, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyNetworks')
    ..aOM<BootInfo>(3001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boot', subBuilder: BootInfo.create)
    ..m<$core.String, MeshConfig>(3033, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'meshConfigsUpdates', entryClassName: 'WifiConfig.MeshConfigsUpdatesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: MeshConfig.create, packageName: const $pb.PackageName('SpaceX.API.Device'))
    ..hasRequiredFields = false
  ;

  WifiConfig._() : super();
  factory WifiConfig({
  @$core.Deprecated('This field is deprecated.')
    $core.String? networkName,
  @$core.Deprecated('This field is deprecated.')
    $core.String? networkPassword,
    $core.String? countryCode,
  @$core.Deprecated('This field is deprecated.')
    $core.String? lanIpv4,
    $core.bool? setupComplete,
    $core.int? version,
  @$core.Deprecated('This field is deprecated.')
    WifiConfig_Security? wifiSecurity,
  @$core.Deprecated('This field is deprecated.')
    $core.String? networkName5ghz,
  @$core.Deprecated('This field is deprecated.')
    $core.String? macWan,
  @$core.Deprecated('This field is deprecated.')
    $core.String? macLan,
    $core.int? channel2ghz,
    $core.int? channel5ghz,
    $core.Iterable<PublicKey>? dynamicKeys,
    $core.bool? isRepeater,
    $core.int? bootCount,
    $core.Iterable<$core.String>? nameservers,
    $core.bool? bypassMode,
    $core.Map<$core.String, MeshConfig>? meshConfigs,
  @$core.Deprecated('This field is deprecated.')
    $core.bool? enableRemoteSsh,
  @$core.Deprecated('This field is deprecated.')
    $fixnum.Int64? lastRemoteSshAccess,
  @$core.Deprecated('This field is deprecated.')
    $core.bool? applyLanIpv4,
    $core.bool? applyDynamicKeys,
    $core.bool? dfsEnabled,
    $fixnum.Int64? incarnation,
    WifiConfig_WirelessMode? wirelessMode2ghz,
    WifiConfig_WirelessMode? wirelessMode5ghz,
    WifiConfig_HTBandwidth? htBandwidth2ghz,
    WifiConfig_HTBandwidth? htBandwidth5ghz,
    WifiConfig_VHTBandwidth? vhtBandwidth,
    $core.bool? isAviation,
    $core.bool? secureDns,
    $core.bool? apMode,
    $core.bool? disableMeshOnboarding,
    $core.bool? pinCountryCode,
    $core.bool? customPowerTable,
    $core.bool? usePublicServices,
    $core.bool? disableAutomatedSpeedtests,
    $core.int? channel5ghzHigh,
    WifiConfig_WirelessMode? wirelessMode5ghzHigh,
    WifiConfig_HTBandwidth? htBandwidth5ghzHigh,
    WifiConfig_VHTBandwidth? vhtBandwidth5ghzHigh,
    $core.bool? enableUmbilicalVlan,
    $core.Iterable<ClientName>? clientNames,
    $core.bool? outdoorMode,
    $core.bool? disable2ghz,
    $core.bool? disable5ghz,
    $core.bool? disable5ghzHigh,
    $core.bool? disableXMeshBackhaul,
  @$core.Deprecated('This field is deprecated.')
    $core.String? goldenBssid,
  @$core.Deprecated('This field is deprecated.')
    IfaceType? goldenIfaceType,
    TxPowerLevel? txPowerLevel2ghz,
    TxPowerLevel? txPowerLevel5ghz,
    TxPowerLevel? txPowerLevel5ghzHigh,
  @$core.Deprecated('This field is deprecated.')
    $core.bool? applyNetworkName,
  @$core.Deprecated('This field is deprecated.')
    $core.bool? applyNetworkPassword,
  @$core.Deprecated('This field is deprecated.')
    $core.bool? applyWifiSecurity,
  @$core.Deprecated('This field is deprecated.')
    $core.bool? applyNetworkName5ghz,
    $core.bool? applySetupComplete,
    $core.bool? applyChannel2ghz,
    $core.bool? applyChannel5ghz,
    $core.bool? applyChannel5ghzHigh,
    $core.bool? applyIsRepeater,
    $core.bool? applyMeshConfigs,
    $core.bool? applyNameservers,
    $core.bool? applyBypassMode,
  @$core.Deprecated('This field is deprecated.')
    $core.bool? applyEnableRemoteSsh,
    $core.bool? applyDfsEnabled,
    $core.bool? applyWirelessMode2ghz,
    $core.bool? applyWirelessMode5ghz,
    $core.bool? applyHtBandwidth2ghz,
    $core.bool? applyHtBandwidth5ghz,
    $core.bool? applyVhtBandwidth,
    $core.bool? applyIsAviation,
    $core.bool? applySecureDns,
    $core.bool? applyApMode,
    $core.bool? applyDisableMeshOnboarding,
    $core.bool? applyUsePublicServices,
    $core.bool? applyDisableAutomatedSpeedtests,
    $core.bool? applyWirelessMode5ghzHigh,
    $core.bool? applyHtBandwidth5ghzHigh,
    $core.bool? applyVhtBandwidth5ghzHigh,
    $core.bool? applyEnableUmbilicalVlan,
    $core.bool? applyClientNames,
    $core.bool? applyOutdoorMode,
    $core.bool? applyDisable2ghz,
    $core.bool? applyDisable5ghz,
    $core.bool? applyDisable5ghzHigh,
    $core.bool? applyDisableXMeshBackhaul,
  @$core.Deprecated('This field is deprecated.')
    $core.bool? applyGoldenBssid,
  @$core.Deprecated('This field is deprecated.')
    $core.bool? applyGoldenIfaceType,
    $core.bool? applyTxPowerLevel2ghz,
    $core.bool? applyTxPowerLevel5ghz,
    $core.bool? applyTxPowerLevel5ghzHigh,
    $core.Iterable<WifiConfig_Network>? networks,
    $core.bool? applyNetworks,
    BootInfo? boot,
    $core.Map<$core.String, MeshConfig>? meshConfigsUpdates,
  }) {
    final _result = create();
    if (networkName != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.networkName = networkName;
    }
    if (networkPassword != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.networkPassword = networkPassword;
    }
    if (countryCode != null) {
      _result.countryCode = countryCode;
    }
    if (lanIpv4 != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.lanIpv4 = lanIpv4;
    }
    if (setupComplete != null) {
      _result.setupComplete = setupComplete;
    }
    if (version != null) {
      _result.version = version;
    }
    if (wifiSecurity != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.wifiSecurity = wifiSecurity;
    }
    if (networkName5ghz != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.networkName5ghz = networkName5ghz;
    }
    if (macWan != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.macWan = macWan;
    }
    if (macLan != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.macLan = macLan;
    }
    if (channel2ghz != null) {
      _result.channel2ghz = channel2ghz;
    }
    if (channel5ghz != null) {
      _result.channel5ghz = channel5ghz;
    }
    if (dynamicKeys != null) {
      _result.dynamicKeys.addAll(dynamicKeys);
    }
    if (isRepeater != null) {
      _result.isRepeater = isRepeater;
    }
    if (bootCount != null) {
      _result.bootCount = bootCount;
    }
    if (nameservers != null) {
      _result.nameservers.addAll(nameservers);
    }
    if (bypassMode != null) {
      _result.bypassMode = bypassMode;
    }
    if (meshConfigs != null) {
      _result.meshConfigs.addAll(meshConfigs);
    }
    if (enableRemoteSsh != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.enableRemoteSsh = enableRemoteSsh;
    }
    if (lastRemoteSshAccess != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.lastRemoteSshAccess = lastRemoteSshAccess;
    }
    if (applyLanIpv4 != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.applyLanIpv4 = applyLanIpv4;
    }
    if (applyDynamicKeys != null) {
      _result.applyDynamicKeys = applyDynamicKeys;
    }
    if (dfsEnabled != null) {
      _result.dfsEnabled = dfsEnabled;
    }
    if (incarnation != null) {
      _result.incarnation = incarnation;
    }
    if (wirelessMode2ghz != null) {
      _result.wirelessMode2ghz = wirelessMode2ghz;
    }
    if (wirelessMode5ghz != null) {
      _result.wirelessMode5ghz = wirelessMode5ghz;
    }
    if (htBandwidth2ghz != null) {
      _result.htBandwidth2ghz = htBandwidth2ghz;
    }
    if (htBandwidth5ghz != null) {
      _result.htBandwidth5ghz = htBandwidth5ghz;
    }
    if (vhtBandwidth != null) {
      _result.vhtBandwidth = vhtBandwidth;
    }
    if (isAviation != null) {
      _result.isAviation = isAviation;
    }
    if (secureDns != null) {
      _result.secureDns = secureDns;
    }
    if (apMode != null) {
      _result.apMode = apMode;
    }
    if (disableMeshOnboarding != null) {
      _result.disableMeshOnboarding = disableMeshOnboarding;
    }
    if (pinCountryCode != null) {
      _result.pinCountryCode = pinCountryCode;
    }
    if (customPowerTable != null) {
      _result.customPowerTable = customPowerTable;
    }
    if (usePublicServices != null) {
      _result.usePublicServices = usePublicServices;
    }
    if (disableAutomatedSpeedtests != null) {
      _result.disableAutomatedSpeedtests = disableAutomatedSpeedtests;
    }
    if (channel5ghzHigh != null) {
      _result.channel5ghzHigh = channel5ghzHigh;
    }
    if (wirelessMode5ghzHigh != null) {
      _result.wirelessMode5ghzHigh = wirelessMode5ghzHigh;
    }
    if (htBandwidth5ghzHigh != null) {
      _result.htBandwidth5ghzHigh = htBandwidth5ghzHigh;
    }
    if (vhtBandwidth5ghzHigh != null) {
      _result.vhtBandwidth5ghzHigh = vhtBandwidth5ghzHigh;
    }
    if (enableUmbilicalVlan != null) {
      _result.enableUmbilicalVlan = enableUmbilicalVlan;
    }
    if (clientNames != null) {
      _result.clientNames.addAll(clientNames);
    }
    if (outdoorMode != null) {
      _result.outdoorMode = outdoorMode;
    }
    if (disable2ghz != null) {
      _result.disable2ghz = disable2ghz;
    }
    if (disable5ghz != null) {
      _result.disable5ghz = disable5ghz;
    }
    if (disable5ghzHigh != null) {
      _result.disable5ghzHigh = disable5ghzHigh;
    }
    if (disableXMeshBackhaul != null) {
      _result.disableXMeshBackhaul = disableXMeshBackhaul;
    }
    if (goldenBssid != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.goldenBssid = goldenBssid;
    }
    if (goldenIfaceType != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.goldenIfaceType = goldenIfaceType;
    }
    if (txPowerLevel2ghz != null) {
      _result.txPowerLevel2ghz = txPowerLevel2ghz;
    }
    if (txPowerLevel5ghz != null) {
      _result.txPowerLevel5ghz = txPowerLevel5ghz;
    }
    if (txPowerLevel5ghzHigh != null) {
      _result.txPowerLevel5ghzHigh = txPowerLevel5ghzHigh;
    }
    if (applyNetworkName != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.applyNetworkName = applyNetworkName;
    }
    if (applyNetworkPassword != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.applyNetworkPassword = applyNetworkPassword;
    }
    if (applyWifiSecurity != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.applyWifiSecurity = applyWifiSecurity;
    }
    if (applyNetworkName5ghz != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.applyNetworkName5ghz = applyNetworkName5ghz;
    }
    if (applySetupComplete != null) {
      _result.applySetupComplete = applySetupComplete;
    }
    if (applyChannel2ghz != null) {
      _result.applyChannel2ghz = applyChannel2ghz;
    }
    if (applyChannel5ghz != null) {
      _result.applyChannel5ghz = applyChannel5ghz;
    }
    if (applyChannel5ghzHigh != null) {
      _result.applyChannel5ghzHigh = applyChannel5ghzHigh;
    }
    if (applyIsRepeater != null) {
      _result.applyIsRepeater = applyIsRepeater;
    }
    if (applyMeshConfigs != null) {
      _result.applyMeshConfigs = applyMeshConfigs;
    }
    if (applyNameservers != null) {
      _result.applyNameservers = applyNameservers;
    }
    if (applyBypassMode != null) {
      _result.applyBypassMode = applyBypassMode;
    }
    if (applyEnableRemoteSsh != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.applyEnableRemoteSsh = applyEnableRemoteSsh;
    }
    if (applyDfsEnabled != null) {
      _result.applyDfsEnabled = applyDfsEnabled;
    }
    if (applyWirelessMode2ghz != null) {
      _result.applyWirelessMode2ghz = applyWirelessMode2ghz;
    }
    if (applyWirelessMode5ghz != null) {
      _result.applyWirelessMode5ghz = applyWirelessMode5ghz;
    }
    if (applyHtBandwidth2ghz != null) {
      _result.applyHtBandwidth2ghz = applyHtBandwidth2ghz;
    }
    if (applyHtBandwidth5ghz != null) {
      _result.applyHtBandwidth5ghz = applyHtBandwidth5ghz;
    }
    if (applyVhtBandwidth != null) {
      _result.applyVhtBandwidth = applyVhtBandwidth;
    }
    if (applyIsAviation != null) {
      _result.applyIsAviation = applyIsAviation;
    }
    if (applySecureDns != null) {
      _result.applySecureDns = applySecureDns;
    }
    if (applyApMode != null) {
      _result.applyApMode = applyApMode;
    }
    if (applyDisableMeshOnboarding != null) {
      _result.applyDisableMeshOnboarding = applyDisableMeshOnboarding;
    }
    if (applyUsePublicServices != null) {
      _result.applyUsePublicServices = applyUsePublicServices;
    }
    if (applyDisableAutomatedSpeedtests != null) {
      _result.applyDisableAutomatedSpeedtests = applyDisableAutomatedSpeedtests;
    }
    if (applyWirelessMode5ghzHigh != null) {
      _result.applyWirelessMode5ghzHigh = applyWirelessMode5ghzHigh;
    }
    if (applyHtBandwidth5ghzHigh != null) {
      _result.applyHtBandwidth5ghzHigh = applyHtBandwidth5ghzHigh;
    }
    if (applyVhtBandwidth5ghzHigh != null) {
      _result.applyVhtBandwidth5ghzHigh = applyVhtBandwidth5ghzHigh;
    }
    if (applyEnableUmbilicalVlan != null) {
      _result.applyEnableUmbilicalVlan = applyEnableUmbilicalVlan;
    }
    if (applyClientNames != null) {
      _result.applyClientNames = applyClientNames;
    }
    if (applyOutdoorMode != null) {
      _result.applyOutdoorMode = applyOutdoorMode;
    }
    if (applyDisable2ghz != null) {
      _result.applyDisable2ghz = applyDisable2ghz;
    }
    if (applyDisable5ghz != null) {
      _result.applyDisable5ghz = applyDisable5ghz;
    }
    if (applyDisable5ghzHigh != null) {
      _result.applyDisable5ghzHigh = applyDisable5ghzHigh;
    }
    if (applyDisableXMeshBackhaul != null) {
      _result.applyDisableXMeshBackhaul = applyDisableXMeshBackhaul;
    }
    if (applyGoldenBssid != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.applyGoldenBssid = applyGoldenBssid;
    }
    if (applyGoldenIfaceType != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.applyGoldenIfaceType = applyGoldenIfaceType;
    }
    if (applyTxPowerLevel2ghz != null) {
      _result.applyTxPowerLevel2ghz = applyTxPowerLevel2ghz;
    }
    if (applyTxPowerLevel5ghz != null) {
      _result.applyTxPowerLevel5ghz = applyTxPowerLevel5ghz;
    }
    if (applyTxPowerLevel5ghzHigh != null) {
      _result.applyTxPowerLevel5ghzHigh = applyTxPowerLevel5ghzHigh;
    }
    if (networks != null) {
      _result.networks.addAll(networks);
    }
    if (applyNetworks != null) {
      _result.applyNetworks = applyNetworks;
    }
    if (boot != null) {
      _result.boot = boot;
    }
    if (meshConfigsUpdates != null) {
      _result.meshConfigsUpdates.addAll(meshConfigsUpdates);
    }
    return _result;
  }
  factory WifiConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiConfig clone() => WifiConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiConfig copyWith(void Function(WifiConfig) updates) => super.copyWith((message) => updates(message as WifiConfig)) as WifiConfig; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiConfig create() => WifiConfig._();
  WifiConfig createEmptyInstance() => create();
  static $pb.PbList<WifiConfig> createRepeated() => $pb.PbList<WifiConfig>();
  @$core.pragma('dart2js:noInline')
  static WifiConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiConfig>(create);
  static WifiConfig? _defaultInstance;

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.String get networkName => $_getSZ(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  set networkName($core.String v) { $_setString(0, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.bool hasNetworkName() => $_has(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  void clearNetworkName() => clearField(1);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.String get networkPassword => $_getSZ(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  set networkPassword($core.String v) { $_setString(1, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool hasNetworkPassword() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  void clearNetworkPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get countryCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set countryCode($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCountryCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearCountryCode() => clearField(3);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.String get lanIpv4 => $_getSZ(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  set lanIpv4($core.String v) { $_setString(3, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.bool hasLanIpv4() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  void clearLanIpv4() => clearField(5);

  @$pb.TagNumber(7)
  $core.bool get setupComplete => $_getBF(4);
  @$pb.TagNumber(7)
  set setupComplete($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(7)
  $core.bool hasSetupComplete() => $_has(4);
  @$pb.TagNumber(7)
  void clearSetupComplete() => clearField(7);

  @$pb.TagNumber(9)
  $core.int get version => $_getIZ(5);
  @$pb.TagNumber(9)
  set version($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(9)
  $core.bool hasVersion() => $_has(5);
  @$pb.TagNumber(9)
  void clearVersion() => clearField(9);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  WifiConfig_Security get wifiSecurity => $_getN(6);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  set wifiSecurity(WifiConfig_Security v) { setField(10, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  $core.bool hasWifiSecurity() => $_has(6);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  void clearWifiSecurity() => clearField(10);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  $core.String get networkName5ghz => $_getSZ(7);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  set networkName5ghz($core.String v) { $_setString(7, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  $core.bool hasNetworkName5ghz() => $_has(7);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  void clearNetworkName5ghz() => clearField(11);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(12)
  $core.String get macWan => $_getSZ(8);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(12)
  set macWan($core.String v) { $_setString(8, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(12)
  $core.bool hasMacWan() => $_has(8);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(12)
  void clearMacWan() => clearField(12);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(13)
  $core.String get macLan => $_getSZ(9);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(13)
  set macLan($core.String v) { $_setString(9, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(13)
  $core.bool hasMacLan() => $_has(9);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(13)
  void clearMacLan() => clearField(13);

  @$pb.TagNumber(19)
  $core.int get channel2ghz => $_getIZ(10);
  @$pb.TagNumber(19)
  set channel2ghz($core.int v) { $_setUnsignedInt32(10, v); }
  @$pb.TagNumber(19)
  $core.bool hasChannel2ghz() => $_has(10);
  @$pb.TagNumber(19)
  void clearChannel2ghz() => clearField(19);

  @$pb.TagNumber(20)
  $core.int get channel5ghz => $_getIZ(11);
  @$pb.TagNumber(20)
  set channel5ghz($core.int v) { $_setUnsignedInt32(11, v); }
  @$pb.TagNumber(20)
  $core.bool hasChannel5ghz() => $_has(11);
  @$pb.TagNumber(20)
  void clearChannel5ghz() => clearField(20);

  @$pb.TagNumber(22)
  $core.List<PublicKey> get dynamicKeys => $_getList(12);

  @$pb.TagNumber(23)
  $core.bool get isRepeater => $_getBF(13);
  @$pb.TagNumber(23)
  set isRepeater($core.bool v) { $_setBool(13, v); }
  @$pb.TagNumber(23)
  $core.bool hasIsRepeater() => $_has(13);
  @$pb.TagNumber(23)
  void clearIsRepeater() => clearField(23);

  @$pb.TagNumber(26)
  $core.int get bootCount => $_getIZ(14);
  @$pb.TagNumber(26)
  set bootCount($core.int v) { $_setSignedInt32(14, v); }
  @$pb.TagNumber(26)
  $core.bool hasBootCount() => $_has(14);
  @$pb.TagNumber(26)
  void clearBootCount() => clearField(26);

  @$pb.TagNumber(30)
  $core.List<$core.String> get nameservers => $_getList(15);

  @$pb.TagNumber(31)
  $core.bool get bypassMode => $_getBF(16);
  @$pb.TagNumber(31)
  set bypassMode($core.bool v) { $_setBool(16, v); }
  @$pb.TagNumber(31)
  $core.bool hasBypassMode() => $_has(16);
  @$pb.TagNumber(31)
  void clearBypassMode() => clearField(31);

  @$pb.TagNumber(33)
  $core.Map<$core.String, MeshConfig> get meshConfigs => $_getMap(17);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(34)
  $core.bool get enableRemoteSsh => $_getBF(18);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(34)
  set enableRemoteSsh($core.bool v) { $_setBool(18, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(34)
  $core.bool hasEnableRemoteSsh() => $_has(18);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(34)
  void clearEnableRemoteSsh() => clearField(34);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(35)
  $fixnum.Int64 get lastRemoteSshAccess => $_getI64(19);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(35)
  set lastRemoteSshAccess($fixnum.Int64 v) { $_setInt64(19, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(35)
  $core.bool hasLastRemoteSshAccess() => $_has(19);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(35)
  void clearLastRemoteSshAccess() => clearField(35);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(37)
  $core.bool get applyLanIpv4 => $_getBF(20);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(37)
  set applyLanIpv4($core.bool v) { $_setBool(20, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(37)
  $core.bool hasApplyLanIpv4() => $_has(20);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(37)
  void clearApplyLanIpv4() => clearField(37);

  @$pb.TagNumber(39)
  $core.bool get applyDynamicKeys => $_getBF(21);
  @$pb.TagNumber(39)
  set applyDynamicKeys($core.bool v) { $_setBool(21, v); }
  @$pb.TagNumber(39)
  $core.bool hasApplyDynamicKeys() => $_has(21);
  @$pb.TagNumber(39)
  void clearApplyDynamicKeys() => clearField(39);

  @$pb.TagNumber(42)
  $core.bool get dfsEnabled => $_getBF(22);
  @$pb.TagNumber(42)
  set dfsEnabled($core.bool v) { $_setBool(22, v); }
  @$pb.TagNumber(42)
  $core.bool hasDfsEnabled() => $_has(22);
  @$pb.TagNumber(42)
  void clearDfsEnabled() => clearField(42);

  @$pb.TagNumber(43)
  $fixnum.Int64 get incarnation => $_getI64(23);
  @$pb.TagNumber(43)
  set incarnation($fixnum.Int64 v) { $_setInt64(23, v); }
  @$pb.TagNumber(43)
  $core.bool hasIncarnation() => $_has(23);
  @$pb.TagNumber(43)
  void clearIncarnation() => clearField(43);

  @$pb.TagNumber(44)
  WifiConfig_WirelessMode get wirelessMode2ghz => $_getN(24);
  @$pb.TagNumber(44)
  set wirelessMode2ghz(WifiConfig_WirelessMode v) { setField(44, v); }
  @$pb.TagNumber(44)
  $core.bool hasWirelessMode2ghz() => $_has(24);
  @$pb.TagNumber(44)
  void clearWirelessMode2ghz() => clearField(44);

  @$pb.TagNumber(45)
  WifiConfig_WirelessMode get wirelessMode5ghz => $_getN(25);
  @$pb.TagNumber(45)
  set wirelessMode5ghz(WifiConfig_WirelessMode v) { setField(45, v); }
  @$pb.TagNumber(45)
  $core.bool hasWirelessMode5ghz() => $_has(25);
  @$pb.TagNumber(45)
  void clearWirelessMode5ghz() => clearField(45);

  @$pb.TagNumber(46)
  WifiConfig_HTBandwidth get htBandwidth2ghz => $_getN(26);
  @$pb.TagNumber(46)
  set htBandwidth2ghz(WifiConfig_HTBandwidth v) { setField(46, v); }
  @$pb.TagNumber(46)
  $core.bool hasHtBandwidth2ghz() => $_has(26);
  @$pb.TagNumber(46)
  void clearHtBandwidth2ghz() => clearField(46);

  @$pb.TagNumber(47)
  WifiConfig_HTBandwidth get htBandwidth5ghz => $_getN(27);
  @$pb.TagNumber(47)
  set htBandwidth5ghz(WifiConfig_HTBandwidth v) { setField(47, v); }
  @$pb.TagNumber(47)
  $core.bool hasHtBandwidth5ghz() => $_has(27);
  @$pb.TagNumber(47)
  void clearHtBandwidth5ghz() => clearField(47);

  @$pb.TagNumber(48)
  WifiConfig_VHTBandwidth get vhtBandwidth => $_getN(28);
  @$pb.TagNumber(48)
  set vhtBandwidth(WifiConfig_VHTBandwidth v) { setField(48, v); }
  @$pb.TagNumber(48)
  $core.bool hasVhtBandwidth() => $_has(28);
  @$pb.TagNumber(48)
  void clearVhtBandwidth() => clearField(48);

  @$pb.TagNumber(49)
  $core.bool get isAviation => $_getBF(29);
  @$pb.TagNumber(49)
  set isAviation($core.bool v) { $_setBool(29, v); }
  @$pb.TagNumber(49)
  $core.bool hasIsAviation() => $_has(29);
  @$pb.TagNumber(49)
  void clearIsAviation() => clearField(49);

  @$pb.TagNumber(50)
  $core.bool get secureDns => $_getBF(30);
  @$pb.TagNumber(50)
  set secureDns($core.bool v) { $_setBool(30, v); }
  @$pb.TagNumber(50)
  $core.bool hasSecureDns() => $_has(30);
  @$pb.TagNumber(50)
  void clearSecureDns() => clearField(50);

  @$pb.TagNumber(51)
  $core.bool get apMode => $_getBF(31);
  @$pb.TagNumber(51)
  set apMode($core.bool v) { $_setBool(31, v); }
  @$pb.TagNumber(51)
  $core.bool hasApMode() => $_has(31);
  @$pb.TagNumber(51)
  void clearApMode() => clearField(51);

  @$pb.TagNumber(52)
  $core.bool get disableMeshOnboarding => $_getBF(32);
  @$pb.TagNumber(52)
  set disableMeshOnboarding($core.bool v) { $_setBool(32, v); }
  @$pb.TagNumber(52)
  $core.bool hasDisableMeshOnboarding() => $_has(32);
  @$pb.TagNumber(52)
  void clearDisableMeshOnboarding() => clearField(52);

  @$pb.TagNumber(53)
  $core.bool get pinCountryCode => $_getBF(33);
  @$pb.TagNumber(53)
  set pinCountryCode($core.bool v) { $_setBool(33, v); }
  @$pb.TagNumber(53)
  $core.bool hasPinCountryCode() => $_has(33);
  @$pb.TagNumber(53)
  void clearPinCountryCode() => clearField(53);

  @$pb.TagNumber(54)
  $core.bool get customPowerTable => $_getBF(34);
  @$pb.TagNumber(54)
  set customPowerTable($core.bool v) { $_setBool(34, v); }
  @$pb.TagNumber(54)
  $core.bool hasCustomPowerTable() => $_has(34);
  @$pb.TagNumber(54)
  void clearCustomPowerTable() => clearField(54);

  @$pb.TagNumber(55)
  $core.bool get usePublicServices => $_getBF(35);
  @$pb.TagNumber(55)
  set usePublicServices($core.bool v) { $_setBool(35, v); }
  @$pb.TagNumber(55)
  $core.bool hasUsePublicServices() => $_has(35);
  @$pb.TagNumber(55)
  void clearUsePublicServices() => clearField(55);

  @$pb.TagNumber(56)
  $core.bool get disableAutomatedSpeedtests => $_getBF(36);
  @$pb.TagNumber(56)
  set disableAutomatedSpeedtests($core.bool v) { $_setBool(36, v); }
  @$pb.TagNumber(56)
  $core.bool hasDisableAutomatedSpeedtests() => $_has(36);
  @$pb.TagNumber(56)
  void clearDisableAutomatedSpeedtests() => clearField(56);

  @$pb.TagNumber(57)
  $core.int get channel5ghzHigh => $_getIZ(37);
  @$pb.TagNumber(57)
  set channel5ghzHigh($core.int v) { $_setUnsignedInt32(37, v); }
  @$pb.TagNumber(57)
  $core.bool hasChannel5ghzHigh() => $_has(37);
  @$pb.TagNumber(57)
  void clearChannel5ghzHigh() => clearField(57);

  @$pb.TagNumber(58)
  WifiConfig_WirelessMode get wirelessMode5ghzHigh => $_getN(38);
  @$pb.TagNumber(58)
  set wirelessMode5ghzHigh(WifiConfig_WirelessMode v) { setField(58, v); }
  @$pb.TagNumber(58)
  $core.bool hasWirelessMode5ghzHigh() => $_has(38);
  @$pb.TagNumber(58)
  void clearWirelessMode5ghzHigh() => clearField(58);

  @$pb.TagNumber(59)
  WifiConfig_HTBandwidth get htBandwidth5ghzHigh => $_getN(39);
  @$pb.TagNumber(59)
  set htBandwidth5ghzHigh(WifiConfig_HTBandwidth v) { setField(59, v); }
  @$pb.TagNumber(59)
  $core.bool hasHtBandwidth5ghzHigh() => $_has(39);
  @$pb.TagNumber(59)
  void clearHtBandwidth5ghzHigh() => clearField(59);

  @$pb.TagNumber(60)
  WifiConfig_VHTBandwidth get vhtBandwidth5ghzHigh => $_getN(40);
  @$pb.TagNumber(60)
  set vhtBandwidth5ghzHigh(WifiConfig_VHTBandwidth v) { setField(60, v); }
  @$pb.TagNumber(60)
  $core.bool hasVhtBandwidth5ghzHigh() => $_has(40);
  @$pb.TagNumber(60)
  void clearVhtBandwidth5ghzHigh() => clearField(60);

  @$pb.TagNumber(61)
  $core.bool get enableUmbilicalVlan => $_getBF(41);
  @$pb.TagNumber(61)
  set enableUmbilicalVlan($core.bool v) { $_setBool(41, v); }
  @$pb.TagNumber(61)
  $core.bool hasEnableUmbilicalVlan() => $_has(41);
  @$pb.TagNumber(61)
  void clearEnableUmbilicalVlan() => clearField(61);

  @$pb.TagNumber(62)
  $core.List<ClientName> get clientNames => $_getList(42);

  @$pb.TagNumber(63)
  $core.bool get outdoorMode => $_getBF(43);
  @$pb.TagNumber(63)
  set outdoorMode($core.bool v) { $_setBool(43, v); }
  @$pb.TagNumber(63)
  $core.bool hasOutdoorMode() => $_has(43);
  @$pb.TagNumber(63)
  void clearOutdoorMode() => clearField(63);

  @$pb.TagNumber(64)
  $core.bool get disable2ghz => $_getBF(44);
  @$pb.TagNumber(64)
  set disable2ghz($core.bool v) { $_setBool(44, v); }
  @$pb.TagNumber(64)
  $core.bool hasDisable2ghz() => $_has(44);
  @$pb.TagNumber(64)
  void clearDisable2ghz() => clearField(64);

  @$pb.TagNumber(65)
  $core.bool get disable5ghz => $_getBF(45);
  @$pb.TagNumber(65)
  set disable5ghz($core.bool v) { $_setBool(45, v); }
  @$pb.TagNumber(65)
  $core.bool hasDisable5ghz() => $_has(45);
  @$pb.TagNumber(65)
  void clearDisable5ghz() => clearField(65);

  @$pb.TagNumber(66)
  $core.bool get disable5ghzHigh => $_getBF(46);
  @$pb.TagNumber(66)
  set disable5ghzHigh($core.bool v) { $_setBool(46, v); }
  @$pb.TagNumber(66)
  $core.bool hasDisable5ghzHigh() => $_has(46);
  @$pb.TagNumber(66)
  void clearDisable5ghzHigh() => clearField(66);

  @$pb.TagNumber(67)
  $core.bool get disableXMeshBackhaul => $_getBF(47);
  @$pb.TagNumber(67)
  set disableXMeshBackhaul($core.bool v) { $_setBool(47, v); }
  @$pb.TagNumber(67)
  $core.bool hasDisableXMeshBackhaul() => $_has(47);
  @$pb.TagNumber(67)
  void clearDisableXMeshBackhaul() => clearField(67);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(68)
  $core.String get goldenBssid => $_getSZ(48);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(68)
  set goldenBssid($core.String v) { $_setString(48, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(68)
  $core.bool hasGoldenBssid() => $_has(48);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(68)
  void clearGoldenBssid() => clearField(68);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(69)
  IfaceType get goldenIfaceType => $_getN(49);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(69)
  set goldenIfaceType(IfaceType v) { setField(69, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(69)
  $core.bool hasGoldenIfaceType() => $_has(49);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(69)
  void clearGoldenIfaceType() => clearField(69);

  @$pb.TagNumber(70)
  TxPowerLevel get txPowerLevel2ghz => $_getN(50);
  @$pb.TagNumber(70)
  set txPowerLevel2ghz(TxPowerLevel v) { setField(70, v); }
  @$pb.TagNumber(70)
  $core.bool hasTxPowerLevel2ghz() => $_has(50);
  @$pb.TagNumber(70)
  void clearTxPowerLevel2ghz() => clearField(70);

  @$pb.TagNumber(71)
  TxPowerLevel get txPowerLevel5ghz => $_getN(51);
  @$pb.TagNumber(71)
  set txPowerLevel5ghz(TxPowerLevel v) { setField(71, v); }
  @$pb.TagNumber(71)
  $core.bool hasTxPowerLevel5ghz() => $_has(51);
  @$pb.TagNumber(71)
  void clearTxPowerLevel5ghz() => clearField(71);

  @$pb.TagNumber(72)
  TxPowerLevel get txPowerLevel5ghzHigh => $_getN(52);
  @$pb.TagNumber(72)
  set txPowerLevel5ghzHigh(TxPowerLevel v) { setField(72, v); }
  @$pb.TagNumber(72)
  $core.bool hasTxPowerLevel5ghzHigh() => $_has(52);
  @$pb.TagNumber(72)
  void clearTxPowerLevel5ghzHigh() => clearField(72);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1001)
  $core.bool get applyNetworkName => $_getBF(53);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1001)
  set applyNetworkName($core.bool v) { $_setBool(53, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1001)
  $core.bool hasApplyNetworkName() => $_has(53);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1001)
  void clearApplyNetworkName() => clearField(1001);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1002)
  $core.bool get applyNetworkPassword => $_getBF(54);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1002)
  set applyNetworkPassword($core.bool v) { $_setBool(54, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1002)
  $core.bool hasApplyNetworkPassword() => $_has(54);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1002)
  void clearApplyNetworkPassword() => clearField(1002);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1004)
  $core.bool get applyWifiSecurity => $_getBF(55);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1004)
  set applyWifiSecurity($core.bool v) { $_setBool(55, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1004)
  $core.bool hasApplyWifiSecurity() => $_has(55);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1004)
  void clearApplyWifiSecurity() => clearField(1004);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1005)
  $core.bool get applyNetworkName5ghz => $_getBF(56);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1005)
  set applyNetworkName5ghz($core.bool v) { $_setBool(56, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1005)
  $core.bool hasApplyNetworkName5ghz() => $_has(56);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1005)
  void clearApplyNetworkName5ghz() => clearField(1005);

  @$pb.TagNumber(1010)
  $core.bool get applySetupComplete => $_getBF(57);
  @$pb.TagNumber(1010)
  set applySetupComplete($core.bool v) { $_setBool(57, v); }
  @$pb.TagNumber(1010)
  $core.bool hasApplySetupComplete() => $_has(57);
  @$pb.TagNumber(1010)
  void clearApplySetupComplete() => clearField(1010);

  @$pb.TagNumber(1013)
  $core.bool get applyChannel2ghz => $_getBF(58);
  @$pb.TagNumber(1013)
  set applyChannel2ghz($core.bool v) { $_setBool(58, v); }
  @$pb.TagNumber(1013)
  $core.bool hasApplyChannel2ghz() => $_has(58);
  @$pb.TagNumber(1013)
  void clearApplyChannel2ghz() => clearField(1013);

  @$pb.TagNumber(1014)
  $core.bool get applyChannel5ghz => $_getBF(59);
  @$pb.TagNumber(1014)
  set applyChannel5ghz($core.bool v) { $_setBool(59, v); }
  @$pb.TagNumber(1014)
  $core.bool hasApplyChannel5ghz() => $_has(59);
  @$pb.TagNumber(1014)
  void clearApplyChannel5ghz() => clearField(1014);

  @$pb.TagNumber(1016)
  $core.bool get applyChannel5ghzHigh => $_getBF(60);
  @$pb.TagNumber(1016)
  set applyChannel5ghzHigh($core.bool v) { $_setBool(60, v); }
  @$pb.TagNumber(1016)
  $core.bool hasApplyChannel5ghzHigh() => $_has(60);
  @$pb.TagNumber(1016)
  void clearApplyChannel5ghzHigh() => clearField(1016);

  @$pb.TagNumber(1031)
  $core.bool get applyIsRepeater => $_getBF(61);
  @$pb.TagNumber(1031)
  set applyIsRepeater($core.bool v) { $_setBool(61, v); }
  @$pb.TagNumber(1031)
  $core.bool hasApplyIsRepeater() => $_has(61);
  @$pb.TagNumber(1031)
  void clearApplyIsRepeater() => clearField(1031);

  @$pb.TagNumber(1033)
  $core.bool get applyMeshConfigs => $_getBF(62);
  @$pb.TagNumber(1033)
  set applyMeshConfigs($core.bool v) { $_setBool(62, v); }
  @$pb.TagNumber(1033)
  $core.bool hasApplyMeshConfigs() => $_has(62);
  @$pb.TagNumber(1033)
  void clearApplyMeshConfigs() => clearField(1033);

  @$pb.TagNumber(1054)
  $core.bool get applyNameservers => $_getBF(63);
  @$pb.TagNumber(1054)
  set applyNameservers($core.bool v) { $_setBool(63, v); }
  @$pb.TagNumber(1054)
  $core.bool hasApplyNameservers() => $_has(63);
  @$pb.TagNumber(1054)
  void clearApplyNameservers() => clearField(1054);

  @$pb.TagNumber(1055)
  $core.bool get applyBypassMode => $_getBF(64);
  @$pb.TagNumber(1055)
  set applyBypassMode($core.bool v) { $_setBool(64, v); }
  @$pb.TagNumber(1055)
  $core.bool hasApplyBypassMode() => $_has(64);
  @$pb.TagNumber(1055)
  void clearApplyBypassMode() => clearField(1055);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1057)
  $core.bool get applyEnableRemoteSsh => $_getBF(65);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1057)
  set applyEnableRemoteSsh($core.bool v) { $_setBool(65, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1057)
  $core.bool hasApplyEnableRemoteSsh() => $_has(65);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1057)
  void clearApplyEnableRemoteSsh() => clearField(1057);

  @$pb.TagNumber(1058)
  $core.bool get applyDfsEnabled => $_getBF(66);
  @$pb.TagNumber(1058)
  set applyDfsEnabled($core.bool v) { $_setBool(66, v); }
  @$pb.TagNumber(1058)
  $core.bool hasApplyDfsEnabled() => $_has(66);
  @$pb.TagNumber(1058)
  void clearApplyDfsEnabled() => clearField(1058);

  @$pb.TagNumber(1059)
  $core.bool get applyWirelessMode2ghz => $_getBF(67);
  @$pb.TagNumber(1059)
  set applyWirelessMode2ghz($core.bool v) { $_setBool(67, v); }
  @$pb.TagNumber(1059)
  $core.bool hasApplyWirelessMode2ghz() => $_has(67);
  @$pb.TagNumber(1059)
  void clearApplyWirelessMode2ghz() => clearField(1059);

  @$pb.TagNumber(1060)
  $core.bool get applyWirelessMode5ghz => $_getBF(68);
  @$pb.TagNumber(1060)
  set applyWirelessMode5ghz($core.bool v) { $_setBool(68, v); }
  @$pb.TagNumber(1060)
  $core.bool hasApplyWirelessMode5ghz() => $_has(68);
  @$pb.TagNumber(1060)
  void clearApplyWirelessMode5ghz() => clearField(1060);

  @$pb.TagNumber(1061)
  $core.bool get applyHtBandwidth2ghz => $_getBF(69);
  @$pb.TagNumber(1061)
  set applyHtBandwidth2ghz($core.bool v) { $_setBool(69, v); }
  @$pb.TagNumber(1061)
  $core.bool hasApplyHtBandwidth2ghz() => $_has(69);
  @$pb.TagNumber(1061)
  void clearApplyHtBandwidth2ghz() => clearField(1061);

  @$pb.TagNumber(1062)
  $core.bool get applyHtBandwidth5ghz => $_getBF(70);
  @$pb.TagNumber(1062)
  set applyHtBandwidth5ghz($core.bool v) { $_setBool(70, v); }
  @$pb.TagNumber(1062)
  $core.bool hasApplyHtBandwidth5ghz() => $_has(70);
  @$pb.TagNumber(1062)
  void clearApplyHtBandwidth5ghz() => clearField(1062);

  @$pb.TagNumber(1063)
  $core.bool get applyVhtBandwidth => $_getBF(71);
  @$pb.TagNumber(1063)
  set applyVhtBandwidth($core.bool v) { $_setBool(71, v); }
  @$pb.TagNumber(1063)
  $core.bool hasApplyVhtBandwidth() => $_has(71);
  @$pb.TagNumber(1063)
  void clearApplyVhtBandwidth() => clearField(1063);

  @$pb.TagNumber(1064)
  $core.bool get applyIsAviation => $_getBF(72);
  @$pb.TagNumber(1064)
  set applyIsAviation($core.bool v) { $_setBool(72, v); }
  @$pb.TagNumber(1064)
  $core.bool hasApplyIsAviation() => $_has(72);
  @$pb.TagNumber(1064)
  void clearApplyIsAviation() => clearField(1064);

  @$pb.TagNumber(1065)
  $core.bool get applySecureDns => $_getBF(73);
  @$pb.TagNumber(1065)
  set applySecureDns($core.bool v) { $_setBool(73, v); }
  @$pb.TagNumber(1065)
  $core.bool hasApplySecureDns() => $_has(73);
  @$pb.TagNumber(1065)
  void clearApplySecureDns() => clearField(1065);

  @$pb.TagNumber(1066)
  $core.bool get applyApMode => $_getBF(74);
  @$pb.TagNumber(1066)
  set applyApMode($core.bool v) { $_setBool(74, v); }
  @$pb.TagNumber(1066)
  $core.bool hasApplyApMode() => $_has(74);
  @$pb.TagNumber(1066)
  void clearApplyApMode() => clearField(1066);

  @$pb.TagNumber(1067)
  $core.bool get applyDisableMeshOnboarding => $_getBF(75);
  @$pb.TagNumber(1067)
  set applyDisableMeshOnboarding($core.bool v) { $_setBool(75, v); }
  @$pb.TagNumber(1067)
  $core.bool hasApplyDisableMeshOnboarding() => $_has(75);
  @$pb.TagNumber(1067)
  void clearApplyDisableMeshOnboarding() => clearField(1067);

  @$pb.TagNumber(1068)
  $core.bool get applyUsePublicServices => $_getBF(76);
  @$pb.TagNumber(1068)
  set applyUsePublicServices($core.bool v) { $_setBool(76, v); }
  @$pb.TagNumber(1068)
  $core.bool hasApplyUsePublicServices() => $_has(76);
  @$pb.TagNumber(1068)
  void clearApplyUsePublicServices() => clearField(1068);

  @$pb.TagNumber(1069)
  $core.bool get applyDisableAutomatedSpeedtests => $_getBF(77);
  @$pb.TagNumber(1069)
  set applyDisableAutomatedSpeedtests($core.bool v) { $_setBool(77, v); }
  @$pb.TagNumber(1069)
  $core.bool hasApplyDisableAutomatedSpeedtests() => $_has(77);
  @$pb.TagNumber(1069)
  void clearApplyDisableAutomatedSpeedtests() => clearField(1069);

  @$pb.TagNumber(1070)
  $core.bool get applyWirelessMode5ghzHigh => $_getBF(78);
  @$pb.TagNumber(1070)
  set applyWirelessMode5ghzHigh($core.bool v) { $_setBool(78, v); }
  @$pb.TagNumber(1070)
  $core.bool hasApplyWirelessMode5ghzHigh() => $_has(78);
  @$pb.TagNumber(1070)
  void clearApplyWirelessMode5ghzHigh() => clearField(1070);

  @$pb.TagNumber(1071)
  $core.bool get applyHtBandwidth5ghzHigh => $_getBF(79);
  @$pb.TagNumber(1071)
  set applyHtBandwidth5ghzHigh($core.bool v) { $_setBool(79, v); }
  @$pb.TagNumber(1071)
  $core.bool hasApplyHtBandwidth5ghzHigh() => $_has(79);
  @$pb.TagNumber(1071)
  void clearApplyHtBandwidth5ghzHigh() => clearField(1071);

  @$pb.TagNumber(1072)
  $core.bool get applyVhtBandwidth5ghzHigh => $_getBF(80);
  @$pb.TagNumber(1072)
  set applyVhtBandwidth5ghzHigh($core.bool v) { $_setBool(80, v); }
  @$pb.TagNumber(1072)
  $core.bool hasApplyVhtBandwidth5ghzHigh() => $_has(80);
  @$pb.TagNumber(1072)
  void clearApplyVhtBandwidth5ghzHigh() => clearField(1072);

  @$pb.TagNumber(1073)
  $core.bool get applyEnableUmbilicalVlan => $_getBF(81);
  @$pb.TagNumber(1073)
  set applyEnableUmbilicalVlan($core.bool v) { $_setBool(81, v); }
  @$pb.TagNumber(1073)
  $core.bool hasApplyEnableUmbilicalVlan() => $_has(81);
  @$pb.TagNumber(1073)
  void clearApplyEnableUmbilicalVlan() => clearField(1073);

  @$pb.TagNumber(1074)
  $core.bool get applyClientNames => $_getBF(82);
  @$pb.TagNumber(1074)
  set applyClientNames($core.bool v) { $_setBool(82, v); }
  @$pb.TagNumber(1074)
  $core.bool hasApplyClientNames() => $_has(82);
  @$pb.TagNumber(1074)
  void clearApplyClientNames() => clearField(1074);

  @$pb.TagNumber(1075)
  $core.bool get applyOutdoorMode => $_getBF(83);
  @$pb.TagNumber(1075)
  set applyOutdoorMode($core.bool v) { $_setBool(83, v); }
  @$pb.TagNumber(1075)
  $core.bool hasApplyOutdoorMode() => $_has(83);
  @$pb.TagNumber(1075)
  void clearApplyOutdoorMode() => clearField(1075);

  @$pb.TagNumber(1076)
  $core.bool get applyDisable2ghz => $_getBF(84);
  @$pb.TagNumber(1076)
  set applyDisable2ghz($core.bool v) { $_setBool(84, v); }
  @$pb.TagNumber(1076)
  $core.bool hasApplyDisable2ghz() => $_has(84);
  @$pb.TagNumber(1076)
  void clearApplyDisable2ghz() => clearField(1076);

  @$pb.TagNumber(1077)
  $core.bool get applyDisable5ghz => $_getBF(85);
  @$pb.TagNumber(1077)
  set applyDisable5ghz($core.bool v) { $_setBool(85, v); }
  @$pb.TagNumber(1077)
  $core.bool hasApplyDisable5ghz() => $_has(85);
  @$pb.TagNumber(1077)
  void clearApplyDisable5ghz() => clearField(1077);

  @$pb.TagNumber(1078)
  $core.bool get applyDisable5ghzHigh => $_getBF(86);
  @$pb.TagNumber(1078)
  set applyDisable5ghzHigh($core.bool v) { $_setBool(86, v); }
  @$pb.TagNumber(1078)
  $core.bool hasApplyDisable5ghzHigh() => $_has(86);
  @$pb.TagNumber(1078)
  void clearApplyDisable5ghzHigh() => clearField(1078);

  @$pb.TagNumber(1079)
  $core.bool get applyDisableXMeshBackhaul => $_getBF(87);
  @$pb.TagNumber(1079)
  set applyDisableXMeshBackhaul($core.bool v) { $_setBool(87, v); }
  @$pb.TagNumber(1079)
  $core.bool hasApplyDisableXMeshBackhaul() => $_has(87);
  @$pb.TagNumber(1079)
  void clearApplyDisableXMeshBackhaul() => clearField(1079);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1080)
  $core.bool get applyGoldenBssid => $_getBF(88);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1080)
  set applyGoldenBssid($core.bool v) { $_setBool(88, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1080)
  $core.bool hasApplyGoldenBssid() => $_has(88);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1080)
  void clearApplyGoldenBssid() => clearField(1080);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1081)
  $core.bool get applyGoldenIfaceType => $_getBF(89);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1081)
  set applyGoldenIfaceType($core.bool v) { $_setBool(89, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1081)
  $core.bool hasApplyGoldenIfaceType() => $_has(89);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1081)
  void clearApplyGoldenIfaceType() => clearField(1081);

  @$pb.TagNumber(1082)
  $core.bool get applyTxPowerLevel2ghz => $_getBF(90);
  @$pb.TagNumber(1082)
  set applyTxPowerLevel2ghz($core.bool v) { $_setBool(90, v); }
  @$pb.TagNumber(1082)
  $core.bool hasApplyTxPowerLevel2ghz() => $_has(90);
  @$pb.TagNumber(1082)
  void clearApplyTxPowerLevel2ghz() => clearField(1082);

  @$pb.TagNumber(1083)
  $core.bool get applyTxPowerLevel5ghz => $_getBF(91);
  @$pb.TagNumber(1083)
  set applyTxPowerLevel5ghz($core.bool v) { $_setBool(91, v); }
  @$pb.TagNumber(1083)
  $core.bool hasApplyTxPowerLevel5ghz() => $_has(91);
  @$pb.TagNumber(1083)
  void clearApplyTxPowerLevel5ghz() => clearField(1083);

  @$pb.TagNumber(1084)
  $core.bool get applyTxPowerLevel5ghzHigh => $_getBF(92);
  @$pb.TagNumber(1084)
  set applyTxPowerLevel5ghzHigh($core.bool v) { $_setBool(92, v); }
  @$pb.TagNumber(1084)
  $core.bool hasApplyTxPowerLevel5ghzHigh() => $_has(92);
  @$pb.TagNumber(1084)
  void clearApplyTxPowerLevel5ghzHigh() => clearField(1084);

  @$pb.TagNumber(1100)
  $core.List<WifiConfig_Network> get networks => $_getList(93);

  @$pb.TagNumber(1101)
  $core.bool get applyNetworks => $_getBF(94);
  @$pb.TagNumber(1101)
  set applyNetworks($core.bool v) { $_setBool(94, v); }
  @$pb.TagNumber(1101)
  $core.bool hasApplyNetworks() => $_has(94);
  @$pb.TagNumber(1101)
  void clearApplyNetworks() => clearField(1101);

  @$pb.TagNumber(3001)
  BootInfo get boot => $_getN(95);
  @$pb.TagNumber(3001)
  set boot(BootInfo v) { setField(3001, v); }
  @$pb.TagNumber(3001)
  $core.bool hasBoot() => $_has(95);
  @$pb.TagNumber(3001)
  void clearBoot() => clearField(3001);
  @$pb.TagNumber(3001)
  BootInfo ensureBoot() => $_ensure(95);

  @$pb.TagNumber(3033)
  $core.Map<$core.String, MeshConfig> get meshConfigsUpdates => $_getMap(96);
}

class PublicKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PublicKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..pc<Capability>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'capabilities', $pb.PbFieldType.KE, valueOf: Capability.valueOf, enumValues: Capability.values, defaultEnumValue: Capability.READ)
    ..hasRequiredFields = false
  ;

  PublicKey._() : super();
  factory PublicKey({
    $core.String? key,
    $core.Iterable<Capability>? capabilities,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (capabilities != null) {
      _result.capabilities.addAll(capabilities);
    }
    return _result;
  }
  factory PublicKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublicKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PublicKey clone() => PublicKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PublicKey copyWith(void Function(PublicKey) updates) => super.copyWith((message) => updates(message as PublicKey)) as PublicKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PublicKey create() => PublicKey._();
  PublicKey createEmptyInstance() => create();
  static $pb.PbList<PublicKey> createRepeated() => $pb.PbList<PublicKey>();
  @$core.pragma('dart2js:noInline')
  static PublicKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PublicKey>(create);
  static PublicKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Capability> get capabilities => $_getList(1);
}

class ClientName extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientName', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'macAddress')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'givenName')
    ..hasRequiredFields = false
  ;

  ClientName._() : super();
  factory ClientName({
    $core.String? macAddress,
    $core.String? givenName,
  }) {
    final _result = create();
    if (macAddress != null) {
      _result.macAddress = macAddress;
    }
    if (givenName != null) {
      _result.givenName = givenName;
    }
    return _result;
  }
  factory ClientName.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientName.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientName clone() => ClientName()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientName copyWith(void Function(ClientName) updates) => super.copyWith((message) => updates(message as ClientName)) as ClientName; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientName create() => ClientName._();
  ClientName createEmptyInstance() => create();
  static $pb.PbList<ClientName> createRepeated() => $pb.PbList<ClientName>();
  @$core.pragma('dart2js:noInline')
  static ClientName getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientName>(create);
  static ClientName? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get macAddress => $_getSZ(0);
  @$pb.TagNumber(1)
  set macAddress($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMacAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearMacAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get givenName => $_getSZ(1);
  @$pb.TagNumber(2)
  set givenName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGivenName() => $_has(1);
  @$pb.TagNumber(2)
  void clearGivenName() => clearField(2);
}

class MeshConfig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MeshConfig', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'displayName')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyDisplayName')
    ..e<MeshAuth>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'auth', $pb.PbFieldType.OE, defaultOrMaker: MeshAuth.MESH_AUTH_UNKNOWN, valueOf: MeshAuth.valueOf, enumValues: MeshAuth.values)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyAuth')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastConnected')
    ..a<$fixnum.Int64>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'incarnation', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  MeshConfig._() : super();
  factory MeshConfig({
    $core.String? displayName,
    $core.bool? applyDisplayName,
    MeshAuth? auth,
    $core.bool? applyAuth,
    $fixnum.Int64? lastConnected,
    $fixnum.Int64? incarnation,
  }) {
    final _result = create();
    if (displayName != null) {
      _result.displayName = displayName;
    }
    if (applyDisplayName != null) {
      _result.applyDisplayName = applyDisplayName;
    }
    if (auth != null) {
      _result.auth = auth;
    }
    if (applyAuth != null) {
      _result.applyAuth = applyAuth;
    }
    if (lastConnected != null) {
      _result.lastConnected = lastConnected;
    }
    if (incarnation != null) {
      _result.incarnation = incarnation;
    }
    return _result;
  }
  factory MeshConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MeshConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MeshConfig clone() => MeshConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MeshConfig copyWith(void Function(MeshConfig) updates) => super.copyWith((message) => updates(message as MeshConfig)) as MeshConfig; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MeshConfig create() => MeshConfig._();
  MeshConfig createEmptyInstance() => create();
  static $pb.PbList<MeshConfig> createRepeated() => $pb.PbList<MeshConfig>();
  @$core.pragma('dart2js:noInline')
  static MeshConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MeshConfig>(create);
  static MeshConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get displayName => $_getSZ(0);
  @$pb.TagNumber(1)
  set displayName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDisplayName() => $_has(0);
  @$pb.TagNumber(1)
  void clearDisplayName() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get applyDisplayName => $_getBF(1);
  @$pb.TagNumber(2)
  set applyDisplayName($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasApplyDisplayName() => $_has(1);
  @$pb.TagNumber(2)
  void clearApplyDisplayName() => clearField(2);

  @$pb.TagNumber(3)
  MeshAuth get auth => $_getN(2);
  @$pb.TagNumber(3)
  set auth(MeshAuth v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAuth() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuth() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get applyAuth => $_getBF(3);
  @$pb.TagNumber(4)
  set applyAuth($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasApplyAuth() => $_has(3);
  @$pb.TagNumber(4)
  void clearApplyAuth() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get lastConnected => $_getI64(4);
  @$pb.TagNumber(5)
  set lastConnected($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLastConnected() => $_has(4);
  @$pb.TagNumber(5)
  void clearLastConnected() => clearField(5);

  @$pb.TagNumber(7)
  $fixnum.Int64 get incarnation => $_getI64(5);
  @$pb.TagNumber(7)
  set incarnation($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasIncarnation() => $_has(5);
  @$pb.TagNumber(7)
  void clearIncarnation() => clearField(7);
}

class AuthOpen extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthOpen', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  AuthOpen._() : super();
  factory AuthOpen() => create();
  factory AuthOpen.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthOpen.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthOpen clone() => AuthOpen()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthOpen copyWith(void Function(AuthOpen) updates) => super.copyWith((message) => updates(message as AuthOpen)) as AuthOpen; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthOpen create() => AuthOpen._();
  AuthOpen createEmptyInstance() => create();
  static $pb.PbList<AuthOpen> createRepeated() => $pb.PbList<AuthOpen>();
  @$core.pragma('dart2js:noInline')
  static AuthOpen getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthOpen>(create);
  static AuthOpen? _defaultInstance;
}

class AuthWpa2 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthWpa2', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

  AuthWpa2._() : super();
  factory AuthWpa2({
    $core.String? password,
  }) {
    final _result = create();
    if (password != null) {
      _result.password = password;
    }
    return _result;
  }
  factory AuthWpa2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthWpa2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthWpa2 clone() => AuthWpa2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthWpa2 copyWith(void Function(AuthWpa2) updates) => super.copyWith((message) => updates(message as AuthWpa2)) as AuthWpa2; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthWpa2 create() => AuthWpa2._();
  AuthWpa2 createEmptyInstance() => create();
  static $pb.PbList<AuthWpa2> createRepeated() => $pb.PbList<AuthWpa2>();
  @$core.pragma('dart2js:noInline')
  static AuthWpa2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthWpa2>(create);
  static AuthWpa2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get password => $_getSZ(0);
  @$pb.TagNumber(1)
  set password($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPassword() => $_has(0);
  @$pb.TagNumber(1)
  void clearPassword() => clearField(1);
}

class AuthWpa3 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthWpa3', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

  AuthWpa3._() : super();
  factory AuthWpa3({
    $core.String? password,
  }) {
    final _result = create();
    if (password != null) {
      _result.password = password;
    }
    return _result;
  }
  factory AuthWpa3.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthWpa3.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthWpa3 clone() => AuthWpa3()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthWpa3 copyWith(void Function(AuthWpa3) updates) => super.copyWith((message) => updates(message as AuthWpa3)) as AuthWpa3; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthWpa3 create() => AuthWpa3._();
  AuthWpa3 createEmptyInstance() => create();
  static $pb.PbList<AuthWpa3> createRepeated() => $pb.PbList<AuthWpa3>();
  @$core.pragma('dart2js:noInline')
  static AuthWpa3 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthWpa3>(create);
  static AuthWpa3? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get password => $_getSZ(0);
  @$pb.TagNumber(1)
  set password($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPassword() => $_has(0);
  @$pb.TagNumber(1)
  void clearPassword() => clearField(1);
}

class AuthWpa2Wpa3 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthWpa2Wpa3', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

  AuthWpa2Wpa3._() : super();
  factory AuthWpa2Wpa3({
    $core.String? password,
  }) {
    final _result = create();
    if (password != null) {
      _result.password = password;
    }
    return _result;
  }
  factory AuthWpa2Wpa3.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthWpa2Wpa3.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthWpa2Wpa3 clone() => AuthWpa2Wpa3()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthWpa2Wpa3 copyWith(void Function(AuthWpa2Wpa3) updates) => super.copyWith((message) => updates(message as AuthWpa2Wpa3)) as AuthWpa2Wpa3; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthWpa2Wpa3 create() => AuthWpa2Wpa3._();
  AuthWpa2Wpa3 createEmptyInstance() => create();
  static $pb.PbList<AuthWpa2Wpa3> createRepeated() => $pb.PbList<AuthWpa2Wpa3>();
  @$core.pragma('dart2js:noInline')
  static AuthWpa2Wpa3 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthWpa2Wpa3>(create);
  static AuthWpa2Wpa3? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get password => $_getSZ(0);
  @$pb.TagNumber(1)
  set password($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPassword() => $_has(0);
  @$pb.TagNumber(1)
  void clearPassword() => clearField(1);
}

class AuthRadius extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthRadius', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'server')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverCa')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverCaBase64', protoName: 'server_ca_base_64')
    ..hasRequiredFields = false
  ;

  AuthRadius._() : super();
  factory AuthRadius({
    $core.String? server,
    $core.String? password,
  @$core.Deprecated('This field is deprecated.')
    $core.String? serverCa,
    $core.String? serverCaBase64,
  }) {
    final _result = create();
    if (server != null) {
      _result.server = server;
    }
    if (password != null) {
      _result.password = password;
    }
    if (serverCa != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.serverCa = serverCa;
    }
    if (serverCaBase64 != null) {
      _result.serverCaBase64 = serverCaBase64;
    }
    return _result;
  }
  factory AuthRadius.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthRadius.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthRadius clone() => AuthRadius()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthRadius copyWith(void Function(AuthRadius) updates) => super.copyWith((message) => updates(message as AuthRadius)) as AuthRadius; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthRadius create() => AuthRadius._();
  AuthRadius createEmptyInstance() => create();
  static $pb.PbList<AuthRadius> createRepeated() => $pb.PbList<AuthRadius>();
  @$core.pragma('dart2js:noInline')
  static AuthRadius getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthRadius>(create);
  static AuthRadius? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get server => $_getSZ(0);
  @$pb.TagNumber(1)
  set server($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasServer() => $_has(0);
  @$pb.TagNumber(1)
  void clearServer() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.String get serverCa => $_getSZ(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  set serverCa($core.String v) { $_setString(2, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.bool hasServerCa() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  void clearServerCa() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get serverCaBase64 => $_getSZ(3);
  @$pb.TagNumber(4)
  set serverCaBase64($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasServerCaBase64() => $_has(3);
  @$pb.TagNumber(4)
  void clearServerCaBase64() => clearField(4);
}

class WifiGetClientsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiGetClientsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  WifiGetClientsRequest._() : super();
  factory WifiGetClientsRequest() => create();
  factory WifiGetClientsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetClientsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetClientsRequest clone() => WifiGetClientsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetClientsRequest copyWith(void Function(WifiGetClientsRequest) updates) => super.copyWith((message) => updates(message as WifiGetClientsRequest)) as WifiGetClientsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiGetClientsRequest create() => WifiGetClientsRequest._();
  WifiGetClientsRequest createEmptyInstance() => create();
  static $pb.PbList<WifiGetClientsRequest> createRepeated() => $pb.PbList<WifiGetClientsRequest>();
  @$core.pragma('dart2js:noInline')
  static WifiGetClientsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiGetClientsRequest>(create);
  static WifiGetClientsRequest? _defaultInstance;
}

class WifiGetClientsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiGetClientsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..pc<WifiClient>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clients', $pb.PbFieldType.PM, subBuilder: WifiClient.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hasClientIndex')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientIndex', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  WifiGetClientsResponse._() : super();
  factory WifiGetClientsResponse({
    $core.Iterable<WifiClient>? clients,
    $core.bool? hasClientIndex,
    $core.int? clientIndex_3,
  }) {
    final _result = create();
    if (clients != null) {
      _result.clients.addAll(clients);
    }
    if (hasClientIndex != null) {
      _result.hasClientIndex = hasClientIndex;
    }
    if (clientIndex_3 != null) {
      _result.clientIndex_3 = clientIndex_3;
    }
    return _result;
  }
  factory WifiGetClientsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetClientsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetClientsResponse clone() => WifiGetClientsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetClientsResponse copyWith(void Function(WifiGetClientsResponse) updates) => super.copyWith((message) => updates(message as WifiGetClientsResponse)) as WifiGetClientsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiGetClientsResponse create() => WifiGetClientsResponse._();
  WifiGetClientsResponse createEmptyInstance() => create();
  static $pb.PbList<WifiGetClientsResponse> createRepeated() => $pb.PbList<WifiGetClientsResponse>();
  @$core.pragma('dart2js:noInline')
  static WifiGetClientsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiGetClientsResponse>(create);
  static WifiGetClientsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<WifiClient> get clients => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get hasClientIndex => $_getBF(1);
  @$pb.TagNumber(2)
  set hasClientIndex($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHasClientIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearHasClientIndex() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get clientIndex_3 => $_getIZ(2);
  @$pb.TagNumber(3)
  set clientIndex_3($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasClientIndex_3() => $_has(2);
  @$pb.TagNumber(3)
  void clearClientIndex_3() => clearField(3);
}

class GetPersistentStatsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPersistentStatsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetPersistentStatsRequest._() : super();
  factory GetPersistentStatsRequest() => create();
  factory GetPersistentStatsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPersistentStatsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPersistentStatsRequest clone() => GetPersistentStatsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPersistentStatsRequest copyWith(void Function(GetPersistentStatsRequest) updates) => super.copyWith((message) => updates(message as GetPersistentStatsRequest)) as GetPersistentStatsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPersistentStatsRequest create() => GetPersistentStatsRequest._();
  GetPersistentStatsRequest createEmptyInstance() => create();
  static $pb.PbList<GetPersistentStatsRequest> createRepeated() => $pb.PbList<GetPersistentStatsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPersistentStatsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPersistentStatsRequest>(create);
  static GetPersistentStatsRequest? _defaultInstance;
}

class WifiGetPersistentStatsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiGetPersistentStatsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<WifiPersistentStats>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stats', subBuilder: WifiPersistentStats.create)
    ..hasRequiredFields = false
  ;

  WifiGetPersistentStatsResponse._() : super();
  factory WifiGetPersistentStatsResponse({
    WifiPersistentStats? stats,
  }) {
    final _result = create();
    if (stats != null) {
      _result.stats = stats;
    }
    return _result;
  }
  factory WifiGetPersistentStatsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetPersistentStatsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetPersistentStatsResponse clone() => WifiGetPersistentStatsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetPersistentStatsResponse copyWith(void Function(WifiGetPersistentStatsResponse) updates) => super.copyWith((message) => updates(message as WifiGetPersistentStatsResponse)) as WifiGetPersistentStatsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiGetPersistentStatsResponse create() => WifiGetPersistentStatsResponse._();
  WifiGetPersistentStatsResponse createEmptyInstance() => create();
  static $pb.PbList<WifiGetPersistentStatsResponse> createRepeated() => $pb.PbList<WifiGetPersistentStatsResponse>();
  @$core.pragma('dart2js:noInline')
  static WifiGetPersistentStatsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiGetPersistentStatsResponse>(create);
  static WifiGetPersistentStatsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  WifiPersistentStats get stats => $_getN(0);
  @$pb.TagNumber(1)
  set stats(WifiPersistentStats v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStats() => $_has(0);
  @$pb.TagNumber(1)
  void clearStats() => clearField(1);
  @$pb.TagNumber(1)
  WifiPersistentStats ensureStats() => $_ensure(0);
}

class WifiPersistentStats_Event extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiPersistentStats.Event', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count', $pb.PbFieldType.OU3)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastOccurredTimestamp')
    ..hasRequiredFields = false
  ;

  WifiPersistentStats_Event._() : super();
  factory WifiPersistentStats_Event({
    $core.int? count,
    $fixnum.Int64? lastOccurredTimestamp,
  }) {
    final _result = create();
    if (count != null) {
      _result.count = count;
    }
    if (lastOccurredTimestamp != null) {
      _result.lastOccurredTimestamp = lastOccurredTimestamp;
    }
    return _result;
  }
  factory WifiPersistentStats_Event.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiPersistentStats_Event.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiPersistentStats_Event clone() => WifiPersistentStats_Event()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiPersistentStats_Event copyWith(void Function(WifiPersistentStats_Event) updates) => super.copyWith((message) => updates(message as WifiPersistentStats_Event)) as WifiPersistentStats_Event; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiPersistentStats_Event create() => WifiPersistentStats_Event._();
  WifiPersistentStats_Event createEmptyInstance() => create();
  static $pb.PbList<WifiPersistentStats_Event> createRepeated() => $pb.PbList<WifiPersistentStats_Event>();
  @$core.pragma('dart2js:noInline')
  static WifiPersistentStats_Event getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiPersistentStats_Event>(create);
  static WifiPersistentStats_Event? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get count => $_getIZ(0);
  @$pb.TagNumber(1)
  set count($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get lastOccurredTimestamp => $_getI64(1);
  @$pb.TagNumber(2)
  set lastOccurredTimestamp($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastOccurredTimestamp() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastOccurredTimestamp() => clearField(2);
}

class WifiPersistentStats extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiPersistentStats', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<WifiPersistentStats_Event>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'factoryResetButton', subBuilder: WifiPersistentStats_Event.create)
    ..aOM<WifiPersistentStats_Event>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'factoryResetPlugUnplug', subBuilder: WifiPersistentStats_Event.create)
    ..aOM<WifiPersistentStats_Event>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'factoryResetCommand', subBuilder: WifiPersistentStats_Event.create)
    ..aOM<WifiPersistentStats_Event>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'factoryResetFailedLoadWifiConfig', subBuilder: WifiPersistentStats_Event.create)
    ..aOM<WifiPersistentStats_Event>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rebootFromSoftwareUpdate', subBuilder: WifiPersistentStats_Event.create)
    ..hasRequiredFields = false
  ;

  WifiPersistentStats._() : super();
  factory WifiPersistentStats({
    WifiPersistentStats_Event? factoryResetButton,
    WifiPersistentStats_Event? factoryResetPlugUnplug,
    WifiPersistentStats_Event? factoryResetCommand,
    WifiPersistentStats_Event? factoryResetFailedLoadWifiConfig,
    WifiPersistentStats_Event? rebootFromSoftwareUpdate,
  }) {
    final _result = create();
    if (factoryResetButton != null) {
      _result.factoryResetButton = factoryResetButton;
    }
    if (factoryResetPlugUnplug != null) {
      _result.factoryResetPlugUnplug = factoryResetPlugUnplug;
    }
    if (factoryResetCommand != null) {
      _result.factoryResetCommand = factoryResetCommand;
    }
    if (factoryResetFailedLoadWifiConfig != null) {
      _result.factoryResetFailedLoadWifiConfig = factoryResetFailedLoadWifiConfig;
    }
    if (rebootFromSoftwareUpdate != null) {
      _result.rebootFromSoftwareUpdate = rebootFromSoftwareUpdate;
    }
    return _result;
  }
  factory WifiPersistentStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiPersistentStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiPersistentStats clone() => WifiPersistentStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiPersistentStats copyWith(void Function(WifiPersistentStats) updates) => super.copyWith((message) => updates(message as WifiPersistentStats)) as WifiPersistentStats; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiPersistentStats create() => WifiPersistentStats._();
  WifiPersistentStats createEmptyInstance() => create();
  static $pb.PbList<WifiPersistentStats> createRepeated() => $pb.PbList<WifiPersistentStats>();
  @$core.pragma('dart2js:noInline')
  static WifiPersistentStats getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiPersistentStats>(create);
  static WifiPersistentStats? _defaultInstance;

  @$pb.TagNumber(1)
  WifiPersistentStats_Event get factoryResetButton => $_getN(0);
  @$pb.TagNumber(1)
  set factoryResetButton(WifiPersistentStats_Event v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFactoryResetButton() => $_has(0);
  @$pb.TagNumber(1)
  void clearFactoryResetButton() => clearField(1);
  @$pb.TagNumber(1)
  WifiPersistentStats_Event ensureFactoryResetButton() => $_ensure(0);

  @$pb.TagNumber(2)
  WifiPersistentStats_Event get factoryResetPlugUnplug => $_getN(1);
  @$pb.TagNumber(2)
  set factoryResetPlugUnplug(WifiPersistentStats_Event v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFactoryResetPlugUnplug() => $_has(1);
  @$pb.TagNumber(2)
  void clearFactoryResetPlugUnplug() => clearField(2);
  @$pb.TagNumber(2)
  WifiPersistentStats_Event ensureFactoryResetPlugUnplug() => $_ensure(1);

  @$pb.TagNumber(3)
  WifiPersistentStats_Event get factoryResetCommand => $_getN(2);
  @$pb.TagNumber(3)
  set factoryResetCommand(WifiPersistentStats_Event v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFactoryResetCommand() => $_has(2);
  @$pb.TagNumber(3)
  void clearFactoryResetCommand() => clearField(3);
  @$pb.TagNumber(3)
  WifiPersistentStats_Event ensureFactoryResetCommand() => $_ensure(2);

  @$pb.TagNumber(4)
  WifiPersistentStats_Event get factoryResetFailedLoadWifiConfig => $_getN(3);
  @$pb.TagNumber(4)
  set factoryResetFailedLoadWifiConfig(WifiPersistentStats_Event v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasFactoryResetFailedLoadWifiConfig() => $_has(3);
  @$pb.TagNumber(4)
  void clearFactoryResetFailedLoadWifiConfig() => clearField(4);
  @$pb.TagNumber(4)
  WifiPersistentStats_Event ensureFactoryResetFailedLoadWifiConfig() => $_ensure(3);

  @$pb.TagNumber(5)
  WifiPersistentStats_Event get rebootFromSoftwareUpdate => $_getN(4);
  @$pb.TagNumber(5)
  set rebootFromSoftwareUpdate(WifiPersistentStats_Event v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasRebootFromSoftwareUpdate() => $_has(4);
  @$pb.TagNumber(5)
  void clearRebootFromSoftwareUpdate() => clearField(5);
  @$pb.TagNumber(5)
  WifiPersistentStats_Event ensureRebootFromSoftwareUpdate() => $_ensure(4);
}

class WifiGetDiagnosticsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiGetDiagnosticsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  WifiGetDiagnosticsRequest._() : super();
  factory WifiGetDiagnosticsRequest() => create();
  factory WifiGetDiagnosticsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetDiagnosticsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetDiagnosticsRequest clone() => WifiGetDiagnosticsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetDiagnosticsRequest copyWith(void Function(WifiGetDiagnosticsRequest) updates) => super.copyWith((message) => updates(message as WifiGetDiagnosticsRequest)) as WifiGetDiagnosticsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiGetDiagnosticsRequest create() => WifiGetDiagnosticsRequest._();
  WifiGetDiagnosticsRequest createEmptyInstance() => create();
  static $pb.PbList<WifiGetDiagnosticsRequest> createRepeated() => $pb.PbList<WifiGetDiagnosticsRequest>();
  @$core.pragma('dart2js:noInline')
  static WifiGetDiagnosticsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiGetDiagnosticsRequest>(create);
  static WifiGetDiagnosticsRequest? _defaultInstance;
}

class WifiGetDiagnosticsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiGetDiagnosticsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<WifiScanResults>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'networkScan', subBuilder: WifiScanResults.create)
    ..pc<WifiNetwork>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiNetworks', $pb.PbFieldType.PM, subBuilder: WifiNetwork.create)
    ..hasRequiredFields = false
  ;

  WifiGetDiagnosticsResponse._() : super();
  factory WifiGetDiagnosticsResponse({
    WifiScanResults? networkScan,
    $core.Iterable<WifiNetwork>? wifiNetworks,
  }) {
    final _result = create();
    if (networkScan != null) {
      _result.networkScan = networkScan;
    }
    if (wifiNetworks != null) {
      _result.wifiNetworks.addAll(wifiNetworks);
    }
    return _result;
  }
  factory WifiGetDiagnosticsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetDiagnosticsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetDiagnosticsResponse clone() => WifiGetDiagnosticsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetDiagnosticsResponse copyWith(void Function(WifiGetDiagnosticsResponse) updates) => super.copyWith((message) => updates(message as WifiGetDiagnosticsResponse)) as WifiGetDiagnosticsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiGetDiagnosticsResponse create() => WifiGetDiagnosticsResponse._();
  WifiGetDiagnosticsResponse createEmptyInstance() => create();
  static $pb.PbList<WifiGetDiagnosticsResponse> createRepeated() => $pb.PbList<WifiGetDiagnosticsResponse>();
  @$core.pragma('dart2js:noInline')
  static WifiGetDiagnosticsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiGetDiagnosticsResponse>(create);
  static WifiGetDiagnosticsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  WifiScanResults get networkScan => $_getN(0);
  @$pb.TagNumber(1)
  set networkScan(WifiScanResults v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNetworkScan() => $_has(0);
  @$pb.TagNumber(1)
  void clearNetworkScan() => clearField(1);
  @$pb.TagNumber(1)
  WifiScanResults ensureNetworkScan() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<WifiNetwork> get wifiNetworks => $_getList(1);
}

class WifiNetwork extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiNetwork', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..e<WifiNetwork_Band>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'band', $pb.PbFieldType.OE, defaultOrMaker: WifiNetwork_Band.WIFI_UNKNOWN, valueOf: WifiNetwork_Band.valueOf, enumValues: WifiNetwork_Band.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ssid')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channel', $pb.PbFieldType.OU3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'encryptionTypeStr')
    ..hasRequiredFields = false
  ;

  WifiNetwork._() : super();
  factory WifiNetwork({
    WifiNetwork_Band? band,
    $core.String? ssid,
    $core.int? channel,
    $core.String? encryptionTypeStr,
  }) {
    final _result = create();
    if (band != null) {
      _result.band = band;
    }
    if (ssid != null) {
      _result.ssid = ssid;
    }
    if (channel != null) {
      _result.channel = channel;
    }
    if (encryptionTypeStr != null) {
      _result.encryptionTypeStr = encryptionTypeStr;
    }
    return _result;
  }
  factory WifiNetwork.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiNetwork.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiNetwork clone() => WifiNetwork()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiNetwork copyWith(void Function(WifiNetwork) updates) => super.copyWith((message) => updates(message as WifiNetwork)) as WifiNetwork; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiNetwork create() => WifiNetwork._();
  WifiNetwork createEmptyInstance() => create();
  static $pb.PbList<WifiNetwork> createRepeated() => $pb.PbList<WifiNetwork>();
  @$core.pragma('dart2js:noInline')
  static WifiNetwork getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiNetwork>(create);
  static WifiNetwork? _defaultInstance;

  @$pb.TagNumber(1)
  WifiNetwork_Band get band => $_getN(0);
  @$pb.TagNumber(1)
  set band(WifiNetwork_Band v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBand() => $_has(0);
  @$pb.TagNumber(1)
  void clearBand() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get ssid => $_getSZ(1);
  @$pb.TagNumber(2)
  set ssid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSsid() => $_has(1);
  @$pb.TagNumber(2)
  void clearSsid() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get channel => $_getIZ(2);
  @$pb.TagNumber(3)
  set channel($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasChannel() => $_has(2);
  @$pb.TagNumber(3)
  void clearChannel() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get encryptionTypeStr => $_getSZ(3);
  @$pb.TagNumber(4)
  set encryptionTypeStr($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEncryptionTypeStr() => $_has(3);
  @$pb.TagNumber(4)
  void clearEncryptionTypeStr() => clearField(4);
}

class WifiScanResults_Network extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiScanResults.Network', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..e<WifiScanResults_Network_Source>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'source', $pb.PbFieldType.OE, defaultOrMaker: WifiScanResults_Network_Source.UNKNOWN, valueOf: WifiScanResults_Network_Source.valueOf, enumValues: WifiScanResults_Network_Source.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ssid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bssid')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'frequencyGhz')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channel', $pb.PbFieldType.O3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signalLevelDbm', $pb.PbFieldType.O3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'noiseLevelDbm', $pb.PbFieldType.O3)
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hasEncryptionKey')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phyModeStr')
    ..hasRequiredFields = false
  ;

  WifiScanResults_Network._() : super();
  factory WifiScanResults_Network({
    WifiScanResults_Network_Source? source,
    $core.String? ssid,
    $core.String? bssid,
    $core.String? frequencyGhz,
    $core.int? channel,
    $core.int? signalLevelDbm,
    $core.int? noiseLevelDbm,
    $core.bool? hasEncryptionKey,
    $core.String? phyModeStr,
  }) {
    final _result = create();
    if (source != null) {
      _result.source = source;
    }
    if (ssid != null) {
      _result.ssid = ssid;
    }
    if (bssid != null) {
      _result.bssid = bssid;
    }
    if (frequencyGhz != null) {
      _result.frequencyGhz = frequencyGhz;
    }
    if (channel != null) {
      _result.channel = channel;
    }
    if (signalLevelDbm != null) {
      _result.signalLevelDbm = signalLevelDbm;
    }
    if (noiseLevelDbm != null) {
      _result.noiseLevelDbm = noiseLevelDbm;
    }
    if (hasEncryptionKey != null) {
      _result.hasEncryptionKey = hasEncryptionKey;
    }
    if (phyModeStr != null) {
      _result.phyModeStr = phyModeStr;
    }
    return _result;
  }
  factory WifiScanResults_Network.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiScanResults_Network.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiScanResults_Network clone() => WifiScanResults_Network()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiScanResults_Network copyWith(void Function(WifiScanResults_Network) updates) => super.copyWith((message) => updates(message as WifiScanResults_Network)) as WifiScanResults_Network; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiScanResults_Network create() => WifiScanResults_Network._();
  WifiScanResults_Network createEmptyInstance() => create();
  static $pb.PbList<WifiScanResults_Network> createRepeated() => $pb.PbList<WifiScanResults_Network>();
  @$core.pragma('dart2js:noInline')
  static WifiScanResults_Network getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiScanResults_Network>(create);
  static WifiScanResults_Network? _defaultInstance;

  @$pb.TagNumber(1)
  WifiScanResults_Network_Source get source => $_getN(0);
  @$pb.TagNumber(1)
  set source(WifiScanResults_Network_Source v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSource() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get ssid => $_getSZ(1);
  @$pb.TagNumber(2)
  set ssid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSsid() => $_has(1);
  @$pb.TagNumber(2)
  void clearSsid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get bssid => $_getSZ(2);
  @$pb.TagNumber(3)
  set bssid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBssid() => $_has(2);
  @$pb.TagNumber(3)
  void clearBssid() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get frequencyGhz => $_getSZ(3);
  @$pb.TagNumber(4)
  set frequencyGhz($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFrequencyGhz() => $_has(3);
  @$pb.TagNumber(4)
  void clearFrequencyGhz() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get channel => $_getIZ(4);
  @$pb.TagNumber(5)
  set channel($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasChannel() => $_has(4);
  @$pb.TagNumber(5)
  void clearChannel() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get signalLevelDbm => $_getIZ(5);
  @$pb.TagNumber(6)
  set signalLevelDbm($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSignalLevelDbm() => $_has(5);
  @$pb.TagNumber(6)
  void clearSignalLevelDbm() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get noiseLevelDbm => $_getIZ(6);
  @$pb.TagNumber(7)
  set noiseLevelDbm($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasNoiseLevelDbm() => $_has(6);
  @$pb.TagNumber(7)
  void clearNoiseLevelDbm() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get hasEncryptionKey => $_getBF(7);
  @$pb.TagNumber(8)
  set hasEncryptionKey($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasHasEncryptionKey() => $_has(7);
  @$pb.TagNumber(8)
  void clearHasEncryptionKey() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get phyModeStr => $_getSZ(8);
  @$pb.TagNumber(9)
  set phyModeStr($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasPhyModeStr() => $_has(8);
  @$pb.TagNumber(9)
  void clearPhyModeStr() => clearField(9);
}

class WifiScanResults extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiScanResults', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..pc<WifiScanResults_Network>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'networks', $pb.PbFieldType.PM, subBuilder: WifiScanResults_Network.create)
    ..hasRequiredFields = false
  ;

  WifiScanResults._() : super();
  factory WifiScanResults({
    $core.Iterable<WifiScanResults_Network>? networks,
  }) {
    final _result = create();
    if (networks != null) {
      _result.networks.addAll(networks);
    }
    return _result;
  }
  factory WifiScanResults.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiScanResults.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiScanResults clone() => WifiScanResults()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiScanResults copyWith(void Function(WifiScanResults) updates) => super.copyWith((message) => updates(message as WifiScanResults)) as WifiScanResults; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiScanResults create() => WifiScanResults._();
  WifiScanResults createEmptyInstance() => create();
  static $pb.PbList<WifiScanResults> createRepeated() => $pb.PbList<WifiScanResults>();
  @$core.pragma('dart2js:noInline')
  static WifiScanResults getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiScanResults>(create);
  static WifiScanResults? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<WifiScanResults_Network> get networks => $_getList(0);
}

class TransceiverGetStatusRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransceiverGetStatusRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  TransceiverGetStatusRequest._() : super();
  factory TransceiverGetStatusRequest() => create();
  factory TransceiverGetStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransceiverGetStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransceiverGetStatusRequest clone() => TransceiverGetStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransceiverGetStatusRequest copyWith(void Function(TransceiverGetStatusRequest) updates) => super.copyWith((message) => updates(message as TransceiverGetStatusRequest)) as TransceiverGetStatusRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransceiverGetStatusRequest create() => TransceiverGetStatusRequest._();
  TransceiverGetStatusRequest createEmptyInstance() => create();
  static $pb.PbList<TransceiverGetStatusRequest> createRepeated() => $pb.PbList<TransceiverGetStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static TransceiverGetStatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransceiverGetStatusRequest>(create);
  static TransceiverGetStatusRequest? _defaultInstance;
}

class TransceiverGetStatusResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransceiverGetStatusResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..e<TransceiverModulatorState>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modState', $pb.PbFieldType.OE, defaultOrMaker: TransceiverModulatorState.MODSTATE_UNKNOWN, valueOf: TransceiverModulatorState.valueOf, enumValues: TransceiverModulatorState.values)
    ..e<TransceiverModulatorState>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'demodState', $pb.PbFieldType.OE, defaultOrMaker: TransceiverModulatorState.MODSTATE_UNKNOWN, valueOf: TransceiverModulatorState.valueOf, enumValues: TransceiverModulatorState.values)
    ..e<TransceiverTxRxState>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txState', $pb.PbFieldType.OE, defaultOrMaker: TransceiverTxRxState.TXRX_UNKNOWN, valueOf: TransceiverTxRxState.valueOf, enumValues: TransceiverTxRxState.values)
    ..e<TransceiverTxRxState>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rxState', $pb.PbFieldType.OE, defaultOrMaker: TransceiverTxRxState.TXRX_UNKNOWN, valueOf: TransceiverTxRxState.valueOf, enumValues: TransceiverTxRxState.values)
    ..e<DishState>(1006, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: DishState.UNKNOWN, valueOf: DishState.valueOf, enumValues: DishState.values)
    ..aOM<TransceiverFaults>(1007, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'faults', subBuilder: TransceiverFaults.create)
    ..e<TransceiverTransmitBlankingState>(1008, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transmitBlankingState', $pb.PbFieldType.OE, defaultOrMaker: TransceiverTransmitBlankingState.TB_UNKNOWN, valueOf: TransceiverTransmitBlankingState.valueOf, enumValues: TransceiverTransmitBlankingState.values)
    ..a<$core.double>(1009, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modemAsicTemp', $pb.PbFieldType.OF)
    ..a<$core.double>(1010, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txIfTemp', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  TransceiverGetStatusResponse._() : super();
  factory TransceiverGetStatusResponse({
    TransceiverModulatorState? modState,
    TransceiverModulatorState? demodState,
    TransceiverTxRxState? txState,
    TransceiverTxRxState? rxState,
    DishState? state,
    TransceiverFaults? faults,
    TransceiverTransmitBlankingState? transmitBlankingState,
    $core.double? modemAsicTemp,
    $core.double? txIfTemp,
  }) {
    final _result = create();
    if (modState != null) {
      _result.modState = modState;
    }
    if (demodState != null) {
      _result.demodState = demodState;
    }
    if (txState != null) {
      _result.txState = txState;
    }
    if (rxState != null) {
      _result.rxState = rxState;
    }
    if (state != null) {
      _result.state = state;
    }
    if (faults != null) {
      _result.faults = faults;
    }
    if (transmitBlankingState != null) {
      _result.transmitBlankingState = transmitBlankingState;
    }
    if (modemAsicTemp != null) {
      _result.modemAsicTemp = modemAsicTemp;
    }
    if (txIfTemp != null) {
      _result.txIfTemp = txIfTemp;
    }
    return _result;
  }
  factory TransceiverGetStatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransceiverGetStatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransceiverGetStatusResponse clone() => TransceiverGetStatusResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransceiverGetStatusResponse copyWith(void Function(TransceiverGetStatusResponse) updates) => super.copyWith((message) => updates(message as TransceiverGetStatusResponse)) as TransceiverGetStatusResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransceiverGetStatusResponse create() => TransceiverGetStatusResponse._();
  TransceiverGetStatusResponse createEmptyInstance() => create();
  static $pb.PbList<TransceiverGetStatusResponse> createRepeated() => $pb.PbList<TransceiverGetStatusResponse>();
  @$core.pragma('dart2js:noInline')
  static TransceiverGetStatusResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransceiverGetStatusResponse>(create);
  static TransceiverGetStatusResponse? _defaultInstance;

  @$pb.TagNumber(1)
  TransceiverModulatorState get modState => $_getN(0);
  @$pb.TagNumber(1)
  set modState(TransceiverModulatorState v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasModState() => $_has(0);
  @$pb.TagNumber(1)
  void clearModState() => clearField(1);

  @$pb.TagNumber(2)
  TransceiverModulatorState get demodState => $_getN(1);
  @$pb.TagNumber(2)
  set demodState(TransceiverModulatorState v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDemodState() => $_has(1);
  @$pb.TagNumber(2)
  void clearDemodState() => clearField(2);

  @$pb.TagNumber(3)
  TransceiverTxRxState get txState => $_getN(2);
  @$pb.TagNumber(3)
  set txState(TransceiverTxRxState v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTxState() => $_has(2);
  @$pb.TagNumber(3)
  void clearTxState() => clearField(3);

  @$pb.TagNumber(4)
  TransceiverTxRxState get rxState => $_getN(3);
  @$pb.TagNumber(4)
  set rxState(TransceiverTxRxState v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRxState() => $_has(3);
  @$pb.TagNumber(4)
  void clearRxState() => clearField(4);

  @$pb.TagNumber(1006)
  DishState get state => $_getN(4);
  @$pb.TagNumber(1006)
  set state(DishState v) { setField(1006, v); }
  @$pb.TagNumber(1006)
  $core.bool hasState() => $_has(4);
  @$pb.TagNumber(1006)
  void clearState() => clearField(1006);

  @$pb.TagNumber(1007)
  TransceiverFaults get faults => $_getN(5);
  @$pb.TagNumber(1007)
  set faults(TransceiverFaults v) { setField(1007, v); }
  @$pb.TagNumber(1007)
  $core.bool hasFaults() => $_has(5);
  @$pb.TagNumber(1007)
  void clearFaults() => clearField(1007);
  @$pb.TagNumber(1007)
  TransceiverFaults ensureFaults() => $_ensure(5);

  @$pb.TagNumber(1008)
  TransceiverTransmitBlankingState get transmitBlankingState => $_getN(6);
  @$pb.TagNumber(1008)
  set transmitBlankingState(TransceiverTransmitBlankingState v) { setField(1008, v); }
  @$pb.TagNumber(1008)
  $core.bool hasTransmitBlankingState() => $_has(6);
  @$pb.TagNumber(1008)
  void clearTransmitBlankingState() => clearField(1008);

  @$pb.TagNumber(1009)
  $core.double get modemAsicTemp => $_getN(7);
  @$pb.TagNumber(1009)
  set modemAsicTemp($core.double v) { $_setFloat(7, v); }
  @$pb.TagNumber(1009)
  $core.bool hasModemAsicTemp() => $_has(7);
  @$pb.TagNumber(1009)
  void clearModemAsicTemp() => clearField(1009);

  @$pb.TagNumber(1010)
  $core.double get txIfTemp => $_getN(8);
  @$pb.TagNumber(1010)
  set txIfTemp($core.double v) { $_setFloat(8, v); }
  @$pb.TagNumber(1010)
  $core.bool hasTxIfTemp() => $_has(8);
  @$pb.TagNumber(1010)
  void clearTxIfTemp() => clearField(1010);
}

class TransceiverFaults extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransceiverFaults', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'overTempModemAsicFault')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'overTempPcbaFault')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dcVoltageFault')
    ..hasRequiredFields = false
  ;

  TransceiverFaults._() : super();
  factory TransceiverFaults({
    $core.bool? overTempModemAsicFault,
    $core.bool? overTempPcbaFault,
    $core.bool? dcVoltageFault,
  }) {
    final _result = create();
    if (overTempModemAsicFault != null) {
      _result.overTempModemAsicFault = overTempModemAsicFault;
    }
    if (overTempPcbaFault != null) {
      _result.overTempPcbaFault = overTempPcbaFault;
    }
    if (dcVoltageFault != null) {
      _result.dcVoltageFault = dcVoltageFault;
    }
    return _result;
  }
  factory TransceiverFaults.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransceiverFaults.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransceiverFaults clone() => TransceiverFaults()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransceiverFaults copyWith(void Function(TransceiverFaults) updates) => super.copyWith((message) => updates(message as TransceiverFaults)) as TransceiverFaults; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransceiverFaults create() => TransceiverFaults._();
  TransceiverFaults createEmptyInstance() => create();
  static $pb.PbList<TransceiverFaults> createRepeated() => $pb.PbList<TransceiverFaults>();
  @$core.pragma('dart2js:noInline')
  static TransceiverFaults getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransceiverFaults>(create);
  static TransceiverFaults? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get overTempModemAsicFault => $_getBF(0);
  @$pb.TagNumber(1)
  set overTempModemAsicFault($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOverTempModemAsicFault() => $_has(0);
  @$pb.TagNumber(1)
  void clearOverTempModemAsicFault() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get overTempPcbaFault => $_getBF(1);
  @$pb.TagNumber(2)
  set overTempPcbaFault($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOverTempPcbaFault() => $_has(1);
  @$pb.TagNumber(2)
  void clearOverTempPcbaFault() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get dcVoltageFault => $_getBF(2);
  @$pb.TagNumber(3)
  set dcVoltageFault($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDcVoltageFault() => $_has(2);
  @$pb.TagNumber(3)
  void clearDcVoltageFault() => clearField(3);
}

class TransceiverGetTelemetryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransceiverGetTelemetryRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  TransceiverGetTelemetryRequest._() : super();
  factory TransceiverGetTelemetryRequest() => create();
  factory TransceiverGetTelemetryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransceiverGetTelemetryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransceiverGetTelemetryRequest clone() => TransceiverGetTelemetryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransceiverGetTelemetryRequest copyWith(void Function(TransceiverGetTelemetryRequest) updates) => super.copyWith((message) => updates(message as TransceiverGetTelemetryRequest)) as TransceiverGetTelemetryRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransceiverGetTelemetryRequest create() => TransceiverGetTelemetryRequest._();
  TransceiverGetTelemetryRequest createEmptyInstance() => create();
  static $pb.PbList<TransceiverGetTelemetryRequest> createRepeated() => $pb.PbList<TransceiverGetTelemetryRequest>();
  @$core.pragma('dart2js:noInline')
  static TransceiverGetTelemetryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransceiverGetTelemetryRequest>(create);
  static TransceiverGetTelemetryRequest? _defaultInstance;
}

class TransceiverGetTelemetryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransceiverGetTelemetryResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.int>(1001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'antennaPointingMode', $pb.PbFieldType.OU3)
    ..a<$core.double>(1002, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'antennaPitch', $pb.PbFieldType.OF)
    ..a<$core.double>(1003, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'antennaRoll', $pb.PbFieldType.OF)
    ..a<$core.double>(1004, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'antennaRxTheta', $pb.PbFieldType.OF)
    ..a<$core.double>(1005, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'antennaTrueHeading', $pb.PbFieldType.OF)
    ..a<$core.int>(1006, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rxChannel', $pb.PbFieldType.OU3)
    ..a<$core.int>(1007, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'currentCellId', $pb.PbFieldType.OU3)
    ..a<$core.double>(1008, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secondsUntilSlotEnd', $pb.PbFieldType.OF)
    ..a<$core.double>(1009, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wbRssiPeakMagDb', $pb.PbFieldType.OF)
    ..a<$core.double>(1010, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'popPingDropRate', $pb.PbFieldType.OF)
    ..a<$core.double>(1011, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'snrDb', $pb.PbFieldType.OF)
    ..a<$core.double>(1012, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'l1SnrAvgDb', $pb.PbFieldType.OF)
    ..a<$core.double>(1013, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'l1SnrMinDb', $pb.PbFieldType.OF)
    ..a<$core.double>(1014, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'l1SnrMaxDb', $pb.PbFieldType.OF)
    ..a<$core.int>(1015, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lmacSatelliteId', $pb.PbFieldType.OU3)
    ..a<$core.int>(1016, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'targetSatelliteId', $pb.PbFieldType.OU3)
    ..a<$core.int>(1017, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'grantMcs', $pb.PbFieldType.OU3)
    ..a<$core.double>(1018, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'grantSymbolsAvg', $pb.PbFieldType.OF)
    ..a<$core.int>(1019, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dedGrant', $pb.PbFieldType.OU3)
    ..a<$core.int>(1020, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mobilityProactiveSlotChange', $pb.PbFieldType.OU3)
    ..a<$core.int>(1021, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mobilityReactiveSlotChange', $pb.PbFieldType.OU3)
    ..a<$core.int>(1022, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rfpTotalSynFailed', $pb.PbFieldType.OU3)
    ..a<$core.int>(1023, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numOutOfSeq', $pb.PbFieldType.OU3)
    ..a<$core.int>(1024, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numUlmapDrop', $pb.PbFieldType.OU3)
    ..a<$core.double>(1025, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'currentSecondsOfSchedule', $pb.PbFieldType.OF)
    ..a<$core.int>(1026, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sendLabelSwitchToGroundFailedCalls', $pb.PbFieldType.OU3)
    ..a<$core.double>(1027, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'emaVelocityX', $pb.PbFieldType.OD)
    ..a<$core.double>(1028, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'emaVelocityY', $pb.PbFieldType.OD)
    ..a<$core.double>(1029, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'emaVelocityZ', $pb.PbFieldType.OD)
    ..a<$core.double>(1030, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ceRssiDb', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  TransceiverGetTelemetryResponse._() : super();
  factory TransceiverGetTelemetryResponse({
    $core.int? antennaPointingMode,
    $core.double? antennaPitch,
    $core.double? antennaRoll,
    $core.double? antennaRxTheta,
    $core.double? antennaTrueHeading,
    $core.int? rxChannel,
    $core.int? currentCellId,
    $core.double? secondsUntilSlotEnd,
    $core.double? wbRssiPeakMagDb,
    $core.double? popPingDropRate,
    $core.double? snrDb,
    $core.double? l1SnrAvgDb,
    $core.double? l1SnrMinDb,
    $core.double? l1SnrMaxDb,
    $core.int? lmacSatelliteId,
    $core.int? targetSatelliteId,
    $core.int? grantMcs,
    $core.double? grantSymbolsAvg,
    $core.int? dedGrant,
    $core.int? mobilityProactiveSlotChange,
    $core.int? mobilityReactiveSlotChange,
    $core.int? rfpTotalSynFailed,
    $core.int? numOutOfSeq,
    $core.int? numUlmapDrop,
    $core.double? currentSecondsOfSchedule,
    $core.int? sendLabelSwitchToGroundFailedCalls,
    $core.double? emaVelocityX,
    $core.double? emaVelocityY,
    $core.double? emaVelocityZ,
    $core.double? ceRssiDb,
  }) {
    final _result = create();
    if (antennaPointingMode != null) {
      _result.antennaPointingMode = antennaPointingMode;
    }
    if (antennaPitch != null) {
      _result.antennaPitch = antennaPitch;
    }
    if (antennaRoll != null) {
      _result.antennaRoll = antennaRoll;
    }
    if (antennaRxTheta != null) {
      _result.antennaRxTheta = antennaRxTheta;
    }
    if (antennaTrueHeading != null) {
      _result.antennaTrueHeading = antennaTrueHeading;
    }
    if (rxChannel != null) {
      _result.rxChannel = rxChannel;
    }
    if (currentCellId != null) {
      _result.currentCellId = currentCellId;
    }
    if (secondsUntilSlotEnd != null) {
      _result.secondsUntilSlotEnd = secondsUntilSlotEnd;
    }
    if (wbRssiPeakMagDb != null) {
      _result.wbRssiPeakMagDb = wbRssiPeakMagDb;
    }
    if (popPingDropRate != null) {
      _result.popPingDropRate = popPingDropRate;
    }
    if (snrDb != null) {
      _result.snrDb = snrDb;
    }
    if (l1SnrAvgDb != null) {
      _result.l1SnrAvgDb = l1SnrAvgDb;
    }
    if (l1SnrMinDb != null) {
      _result.l1SnrMinDb = l1SnrMinDb;
    }
    if (l1SnrMaxDb != null) {
      _result.l1SnrMaxDb = l1SnrMaxDb;
    }
    if (lmacSatelliteId != null) {
      _result.lmacSatelliteId = lmacSatelliteId;
    }
    if (targetSatelliteId != null) {
      _result.targetSatelliteId = targetSatelliteId;
    }
    if (grantMcs != null) {
      _result.grantMcs = grantMcs;
    }
    if (grantSymbolsAvg != null) {
      _result.grantSymbolsAvg = grantSymbolsAvg;
    }
    if (dedGrant != null) {
      _result.dedGrant = dedGrant;
    }
    if (mobilityProactiveSlotChange != null) {
      _result.mobilityProactiveSlotChange = mobilityProactiveSlotChange;
    }
    if (mobilityReactiveSlotChange != null) {
      _result.mobilityReactiveSlotChange = mobilityReactiveSlotChange;
    }
    if (rfpTotalSynFailed != null) {
      _result.rfpTotalSynFailed = rfpTotalSynFailed;
    }
    if (numOutOfSeq != null) {
      _result.numOutOfSeq = numOutOfSeq;
    }
    if (numUlmapDrop != null) {
      _result.numUlmapDrop = numUlmapDrop;
    }
    if (currentSecondsOfSchedule != null) {
      _result.currentSecondsOfSchedule = currentSecondsOfSchedule;
    }
    if (sendLabelSwitchToGroundFailedCalls != null) {
      _result.sendLabelSwitchToGroundFailedCalls = sendLabelSwitchToGroundFailedCalls;
    }
    if (emaVelocityX != null) {
      _result.emaVelocityX = emaVelocityX;
    }
    if (emaVelocityY != null) {
      _result.emaVelocityY = emaVelocityY;
    }
    if (emaVelocityZ != null) {
      _result.emaVelocityZ = emaVelocityZ;
    }
    if (ceRssiDb != null) {
      _result.ceRssiDb = ceRssiDb;
    }
    return _result;
  }
  factory TransceiverGetTelemetryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransceiverGetTelemetryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransceiverGetTelemetryResponse clone() => TransceiverGetTelemetryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransceiverGetTelemetryResponse copyWith(void Function(TransceiverGetTelemetryResponse) updates) => super.copyWith((message) => updates(message as TransceiverGetTelemetryResponse)) as TransceiverGetTelemetryResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransceiverGetTelemetryResponse create() => TransceiverGetTelemetryResponse._();
  TransceiverGetTelemetryResponse createEmptyInstance() => create();
  static $pb.PbList<TransceiverGetTelemetryResponse> createRepeated() => $pb.PbList<TransceiverGetTelemetryResponse>();
  @$core.pragma('dart2js:noInline')
  static TransceiverGetTelemetryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransceiverGetTelemetryResponse>(create);
  static TransceiverGetTelemetryResponse? _defaultInstance;

  @$pb.TagNumber(1001)
  $core.int get antennaPointingMode => $_getIZ(0);
  @$pb.TagNumber(1001)
  set antennaPointingMode($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1001)
  $core.bool hasAntennaPointingMode() => $_has(0);
  @$pb.TagNumber(1001)
  void clearAntennaPointingMode() => clearField(1001);

  @$pb.TagNumber(1002)
  $core.double get antennaPitch => $_getN(1);
  @$pb.TagNumber(1002)
  set antennaPitch($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(1002)
  $core.bool hasAntennaPitch() => $_has(1);
  @$pb.TagNumber(1002)
  void clearAntennaPitch() => clearField(1002);

  @$pb.TagNumber(1003)
  $core.double get antennaRoll => $_getN(2);
  @$pb.TagNumber(1003)
  set antennaRoll($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(1003)
  $core.bool hasAntennaRoll() => $_has(2);
  @$pb.TagNumber(1003)
  void clearAntennaRoll() => clearField(1003);

  @$pb.TagNumber(1004)
  $core.double get antennaRxTheta => $_getN(3);
  @$pb.TagNumber(1004)
  set antennaRxTheta($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(1004)
  $core.bool hasAntennaRxTheta() => $_has(3);
  @$pb.TagNumber(1004)
  void clearAntennaRxTheta() => clearField(1004);

  @$pb.TagNumber(1005)
  $core.double get antennaTrueHeading => $_getN(4);
  @$pb.TagNumber(1005)
  set antennaTrueHeading($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(1005)
  $core.bool hasAntennaTrueHeading() => $_has(4);
  @$pb.TagNumber(1005)
  void clearAntennaTrueHeading() => clearField(1005);

  @$pb.TagNumber(1006)
  $core.int get rxChannel => $_getIZ(5);
  @$pb.TagNumber(1006)
  set rxChannel($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(1006)
  $core.bool hasRxChannel() => $_has(5);
  @$pb.TagNumber(1006)
  void clearRxChannel() => clearField(1006);

  @$pb.TagNumber(1007)
  $core.int get currentCellId => $_getIZ(6);
  @$pb.TagNumber(1007)
  set currentCellId($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(1007)
  $core.bool hasCurrentCellId() => $_has(6);
  @$pb.TagNumber(1007)
  void clearCurrentCellId() => clearField(1007);

  @$pb.TagNumber(1008)
  $core.double get secondsUntilSlotEnd => $_getN(7);
  @$pb.TagNumber(1008)
  set secondsUntilSlotEnd($core.double v) { $_setFloat(7, v); }
  @$pb.TagNumber(1008)
  $core.bool hasSecondsUntilSlotEnd() => $_has(7);
  @$pb.TagNumber(1008)
  void clearSecondsUntilSlotEnd() => clearField(1008);

  @$pb.TagNumber(1009)
  $core.double get wbRssiPeakMagDb => $_getN(8);
  @$pb.TagNumber(1009)
  set wbRssiPeakMagDb($core.double v) { $_setFloat(8, v); }
  @$pb.TagNumber(1009)
  $core.bool hasWbRssiPeakMagDb() => $_has(8);
  @$pb.TagNumber(1009)
  void clearWbRssiPeakMagDb() => clearField(1009);

  @$pb.TagNumber(1010)
  $core.double get popPingDropRate => $_getN(9);
  @$pb.TagNumber(1010)
  set popPingDropRate($core.double v) { $_setFloat(9, v); }
  @$pb.TagNumber(1010)
  $core.bool hasPopPingDropRate() => $_has(9);
  @$pb.TagNumber(1010)
  void clearPopPingDropRate() => clearField(1010);

  @$pb.TagNumber(1011)
  $core.double get snrDb => $_getN(10);
  @$pb.TagNumber(1011)
  set snrDb($core.double v) { $_setFloat(10, v); }
  @$pb.TagNumber(1011)
  $core.bool hasSnrDb() => $_has(10);
  @$pb.TagNumber(1011)
  void clearSnrDb() => clearField(1011);

  @$pb.TagNumber(1012)
  $core.double get l1SnrAvgDb => $_getN(11);
  @$pb.TagNumber(1012)
  set l1SnrAvgDb($core.double v) { $_setFloat(11, v); }
  @$pb.TagNumber(1012)
  $core.bool hasL1SnrAvgDb() => $_has(11);
  @$pb.TagNumber(1012)
  void clearL1SnrAvgDb() => clearField(1012);

  @$pb.TagNumber(1013)
  $core.double get l1SnrMinDb => $_getN(12);
  @$pb.TagNumber(1013)
  set l1SnrMinDb($core.double v) { $_setFloat(12, v); }
  @$pb.TagNumber(1013)
  $core.bool hasL1SnrMinDb() => $_has(12);
  @$pb.TagNumber(1013)
  void clearL1SnrMinDb() => clearField(1013);

  @$pb.TagNumber(1014)
  $core.double get l1SnrMaxDb => $_getN(13);
  @$pb.TagNumber(1014)
  set l1SnrMaxDb($core.double v) { $_setFloat(13, v); }
  @$pb.TagNumber(1014)
  $core.bool hasL1SnrMaxDb() => $_has(13);
  @$pb.TagNumber(1014)
  void clearL1SnrMaxDb() => clearField(1014);

  @$pb.TagNumber(1015)
  $core.int get lmacSatelliteId => $_getIZ(14);
  @$pb.TagNumber(1015)
  set lmacSatelliteId($core.int v) { $_setUnsignedInt32(14, v); }
  @$pb.TagNumber(1015)
  $core.bool hasLmacSatelliteId() => $_has(14);
  @$pb.TagNumber(1015)
  void clearLmacSatelliteId() => clearField(1015);

  @$pb.TagNumber(1016)
  $core.int get targetSatelliteId => $_getIZ(15);
  @$pb.TagNumber(1016)
  set targetSatelliteId($core.int v) { $_setUnsignedInt32(15, v); }
  @$pb.TagNumber(1016)
  $core.bool hasTargetSatelliteId() => $_has(15);
  @$pb.TagNumber(1016)
  void clearTargetSatelliteId() => clearField(1016);

  @$pb.TagNumber(1017)
  $core.int get grantMcs => $_getIZ(16);
  @$pb.TagNumber(1017)
  set grantMcs($core.int v) { $_setUnsignedInt32(16, v); }
  @$pb.TagNumber(1017)
  $core.bool hasGrantMcs() => $_has(16);
  @$pb.TagNumber(1017)
  void clearGrantMcs() => clearField(1017);

  @$pb.TagNumber(1018)
  $core.double get grantSymbolsAvg => $_getN(17);
  @$pb.TagNumber(1018)
  set grantSymbolsAvg($core.double v) { $_setFloat(17, v); }
  @$pb.TagNumber(1018)
  $core.bool hasGrantSymbolsAvg() => $_has(17);
  @$pb.TagNumber(1018)
  void clearGrantSymbolsAvg() => clearField(1018);

  @$pb.TagNumber(1019)
  $core.int get dedGrant => $_getIZ(18);
  @$pb.TagNumber(1019)
  set dedGrant($core.int v) { $_setUnsignedInt32(18, v); }
  @$pb.TagNumber(1019)
  $core.bool hasDedGrant() => $_has(18);
  @$pb.TagNumber(1019)
  void clearDedGrant() => clearField(1019);

  @$pb.TagNumber(1020)
  $core.int get mobilityProactiveSlotChange => $_getIZ(19);
  @$pb.TagNumber(1020)
  set mobilityProactiveSlotChange($core.int v) { $_setUnsignedInt32(19, v); }
  @$pb.TagNumber(1020)
  $core.bool hasMobilityProactiveSlotChange() => $_has(19);
  @$pb.TagNumber(1020)
  void clearMobilityProactiveSlotChange() => clearField(1020);

  @$pb.TagNumber(1021)
  $core.int get mobilityReactiveSlotChange => $_getIZ(20);
  @$pb.TagNumber(1021)
  set mobilityReactiveSlotChange($core.int v) { $_setUnsignedInt32(20, v); }
  @$pb.TagNumber(1021)
  $core.bool hasMobilityReactiveSlotChange() => $_has(20);
  @$pb.TagNumber(1021)
  void clearMobilityReactiveSlotChange() => clearField(1021);

  @$pb.TagNumber(1022)
  $core.int get rfpTotalSynFailed => $_getIZ(21);
  @$pb.TagNumber(1022)
  set rfpTotalSynFailed($core.int v) { $_setUnsignedInt32(21, v); }
  @$pb.TagNumber(1022)
  $core.bool hasRfpTotalSynFailed() => $_has(21);
  @$pb.TagNumber(1022)
  void clearRfpTotalSynFailed() => clearField(1022);

  @$pb.TagNumber(1023)
  $core.int get numOutOfSeq => $_getIZ(22);
  @$pb.TagNumber(1023)
  set numOutOfSeq($core.int v) { $_setUnsignedInt32(22, v); }
  @$pb.TagNumber(1023)
  $core.bool hasNumOutOfSeq() => $_has(22);
  @$pb.TagNumber(1023)
  void clearNumOutOfSeq() => clearField(1023);

  @$pb.TagNumber(1024)
  $core.int get numUlmapDrop => $_getIZ(23);
  @$pb.TagNumber(1024)
  set numUlmapDrop($core.int v) { $_setUnsignedInt32(23, v); }
  @$pb.TagNumber(1024)
  $core.bool hasNumUlmapDrop() => $_has(23);
  @$pb.TagNumber(1024)
  void clearNumUlmapDrop() => clearField(1024);

  @$pb.TagNumber(1025)
  $core.double get currentSecondsOfSchedule => $_getN(24);
  @$pb.TagNumber(1025)
  set currentSecondsOfSchedule($core.double v) { $_setFloat(24, v); }
  @$pb.TagNumber(1025)
  $core.bool hasCurrentSecondsOfSchedule() => $_has(24);
  @$pb.TagNumber(1025)
  void clearCurrentSecondsOfSchedule() => clearField(1025);

  @$pb.TagNumber(1026)
  $core.int get sendLabelSwitchToGroundFailedCalls => $_getIZ(25);
  @$pb.TagNumber(1026)
  set sendLabelSwitchToGroundFailedCalls($core.int v) { $_setUnsignedInt32(25, v); }
  @$pb.TagNumber(1026)
  $core.bool hasSendLabelSwitchToGroundFailedCalls() => $_has(25);
  @$pb.TagNumber(1026)
  void clearSendLabelSwitchToGroundFailedCalls() => clearField(1026);

  @$pb.TagNumber(1027)
  $core.double get emaVelocityX => $_getN(26);
  @$pb.TagNumber(1027)
  set emaVelocityX($core.double v) { $_setDouble(26, v); }
  @$pb.TagNumber(1027)
  $core.bool hasEmaVelocityX() => $_has(26);
  @$pb.TagNumber(1027)
  void clearEmaVelocityX() => clearField(1027);

  @$pb.TagNumber(1028)
  $core.double get emaVelocityY => $_getN(27);
  @$pb.TagNumber(1028)
  set emaVelocityY($core.double v) { $_setDouble(27, v); }
  @$pb.TagNumber(1028)
  $core.bool hasEmaVelocityY() => $_has(27);
  @$pb.TagNumber(1028)
  void clearEmaVelocityY() => clearField(1028);

  @$pb.TagNumber(1029)
  $core.double get emaVelocityZ => $_getN(28);
  @$pb.TagNumber(1029)
  set emaVelocityZ($core.double v) { $_setDouble(28, v); }
  @$pb.TagNumber(1029)
  $core.bool hasEmaVelocityZ() => $_has(28);
  @$pb.TagNumber(1029)
  void clearEmaVelocityZ() => clearField(1029);

  @$pb.TagNumber(1030)
  $core.double get ceRssiDb => $_getN(29);
  @$pb.TagNumber(1030)
  set ceRssiDb($core.double v) { $_setFloat(29, v); }
  @$pb.TagNumber(1030)
  $core.bool hasCeRssiDb() => $_has(29);
  @$pb.TagNumber(1030)
  void clearCeRssiDb() => clearField(1030);
}

class DishGetObstructionMapRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishGetObstructionMapRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DishGetObstructionMapRequest._() : super();
  factory DishGetObstructionMapRequest() => create();
  factory DishGetObstructionMapRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishGetObstructionMapRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishGetObstructionMapRequest clone() => DishGetObstructionMapRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishGetObstructionMapRequest copyWith(void Function(DishGetObstructionMapRequest) updates) => super.copyWith((message) => updates(message as DishGetObstructionMapRequest)) as DishGetObstructionMapRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DishGetObstructionMapRequest create() => DishGetObstructionMapRequest._();
  DishGetObstructionMapRequest createEmptyInstance() => create();
  static $pb.PbList<DishGetObstructionMapRequest> createRepeated() => $pb.PbList<DishGetObstructionMapRequest>();
  @$core.pragma('dart2js:noInline')
  static DishGetObstructionMapRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishGetObstructionMapRequest>(create);
  static DishGetObstructionMapRequest? _defaultInstance;
}

class DishGetObstructionMapResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishGetObstructionMapResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numRows', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numCols', $pb.PbFieldType.OU3)
    ..p<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'snr', $pb.PbFieldType.KF)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minElevationDeg', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  DishGetObstructionMapResponse._() : super();
  factory DishGetObstructionMapResponse({
    $core.int? numRows,
    $core.int? numCols,
    $core.Iterable<$core.double>? snr,
    $core.double? minElevationDeg,
  }) {
    final _result = create();
    if (numRows != null) {
      _result.numRows = numRows;
    }
    if (numCols != null) {
      _result.numCols = numCols;
    }
    if (snr != null) {
      _result.snr.addAll(snr);
    }
    if (minElevationDeg != null) {
      _result.minElevationDeg = minElevationDeg;
    }
    return _result;
  }
  factory DishGetObstructionMapResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishGetObstructionMapResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishGetObstructionMapResponse clone() => DishGetObstructionMapResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishGetObstructionMapResponse copyWith(void Function(DishGetObstructionMapResponse) updates) => super.copyWith((message) => updates(message as DishGetObstructionMapResponse)) as DishGetObstructionMapResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DishGetObstructionMapResponse create() => DishGetObstructionMapResponse._();
  DishGetObstructionMapResponse createEmptyInstance() => create();
  static $pb.PbList<DishGetObstructionMapResponse> createRepeated() => $pb.PbList<DishGetObstructionMapResponse>();
  @$core.pragma('dart2js:noInline')
  static DishGetObstructionMapResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishGetObstructionMapResponse>(create);
  static DishGetObstructionMapResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get numRows => $_getIZ(0);
  @$pb.TagNumber(1)
  set numRows($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNumRows() => $_has(0);
  @$pb.TagNumber(1)
  void clearNumRows() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get numCols => $_getIZ(1);
  @$pb.TagNumber(2)
  set numCols($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNumCols() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumCols() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.double> get snr => $_getList(2);

  @$pb.TagNumber(4)
  $core.double get minElevationDeg => $_getN(3);
  @$pb.TagNumber(4)
  set minElevationDeg($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMinElevationDeg() => $_has(3);
  @$pb.TagNumber(4)
  void clearMinElevationDeg() => clearField(4);
}

