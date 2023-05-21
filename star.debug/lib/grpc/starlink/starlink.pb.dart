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

export 'starlink.pbenum.dart';

enum Request_Request {
  getStatus, 
  getDeviceInfo, 
  notSet
}

class Request extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Request_Request> _Request_RequestByTag = {
    1004 : Request_Request.getStatus,
    1008 : Request_Request.getDeviceInfo,
    0 : Request_Request.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..oo(0, [1004, 1008])
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'targetId')
    ..a<$fixnum.Int64>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'epochId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<GetStatusRequest>(1004, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getStatus', subBuilder: GetStatusRequest.create)
    ..aOM<GetDeviceInfoRequest>(1008, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getDeviceInfo', subBuilder: GetDeviceInfoRequest.create)
    ..hasRequiredFields = false
  ;

  Request._() : super();
  factory Request({
    $fixnum.Int64? id,
    $core.String? targetId,
    $fixnum.Int64? epochId,
    GetStatusRequest? getStatus,
    GetDeviceInfoRequest? getDeviceInfo,
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
    if (getStatus != null) {
      _result.getStatus = getStatus;
    }
    if (getDeviceInfo != null) {
      _result.getDeviceInfo = getDeviceInfo;
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

  @$pb.TagNumber(1004)
  GetStatusRequest get getStatus => $_getN(3);
  @$pb.TagNumber(1004)
  set getStatus(GetStatusRequest v) { setField(1004, v); }
  @$pb.TagNumber(1004)
  $core.bool hasGetStatus() => $_has(3);
  @$pb.TagNumber(1004)
  void clearGetStatus() => clearField(1004);
  @$pb.TagNumber(1004)
  GetStatusRequest ensureGetStatus() => $_ensure(3);

  @$pb.TagNumber(1008)
  GetDeviceInfoRequest get getDeviceInfo => $_getN(4);
  @$pb.TagNumber(1008)
  set getDeviceInfo(GetDeviceInfoRequest v) { setField(1008, v); }
  @$pb.TagNumber(1008)
  $core.bool hasGetDeviceInfo() => $_has(4);
  @$pb.TagNumber(1008)
  void clearGetDeviceInfo() => clearField(1008);
  @$pb.TagNumber(1008)
  GetDeviceInfoRequest ensureGetDeviceInfo() => $_ensure(4);
}

enum Response_Response {
  getDeviceInfo, 
  dishGetStatus, 
  notSet
}

class Response extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Response_Response> _Response_ResponseByTag = {
    1004 : Response_Response.getDeviceInfo,
    2004 : Response_Response.dishGetStatus,
    0 : Response_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..oo(0, [1004, 2004])
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$1.Status>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', subBuilder: $1.Status.create)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'apiVersion', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<GetDeviceInfoResponse>(1004, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getDeviceInfo', subBuilder: GetDeviceInfoResponse.create)
    ..aOM<DishGetStatusResponse>(2004, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishGetStatus', subBuilder: DishGetStatusResponse.create)
    ..hasRequiredFields = false
  ;

  Response._() : super();
  factory Response({
    $fixnum.Int64? id,
    $1.Status? status,
    $fixnum.Int64? apiVersion,
    GetDeviceInfoResponse? getDeviceInfo,
    DishGetStatusResponse? dishGetStatus,
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
    if (getDeviceInfo != null) {
      _result.getDeviceInfo = getDeviceInfo;
    }
    if (dishGetStatus != null) {
      _result.dishGetStatus = dishGetStatus;
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

  @$pb.TagNumber(1004)
  GetDeviceInfoResponse get getDeviceInfo => $_getN(3);
  @$pb.TagNumber(1004)
  set getDeviceInfo(GetDeviceInfoResponse v) { setField(1004, v); }
  @$pb.TagNumber(1004)
  $core.bool hasGetDeviceInfo() => $_has(3);
  @$pb.TagNumber(1004)
  void clearGetDeviceInfo() => clearField(1004);
  @$pb.TagNumber(1004)
  GetDeviceInfoResponse ensureGetDeviceInfo() => $_ensure(3);

  @$pb.TagNumber(2004)
  DishGetStatusResponse get dishGetStatus => $_getN(4);
  @$pb.TagNumber(2004)
  set dishGetStatus(DishGetStatusResponse v) { setField(2004, v); }
  @$pb.TagNumber(2004)
  $core.bool hasDishGetStatus() => $_has(4);
  @$pb.TagNumber(2004)
  void clearDishGetStatus() => clearField(2004);
  @$pb.TagNumber(2004)
  DishGetStatusResponse ensureDishGetStatus() => $_ensure(4);
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

  @$pb.TagNumber(2000)
  DishConfig get config => $_getN(22);
  @$pb.TagNumber(2000)
  set config(DishConfig v) { setField(2000, v); }
  @$pb.TagNumber(2000)
  $core.bool hasConfig() => $_has(22);
  @$pb.TagNumber(2000)
  void clearConfig() => clearField(2000);
  @$pb.TagNumber(2000)
  DishConfig ensureConfig() => $_ensure(22);
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

