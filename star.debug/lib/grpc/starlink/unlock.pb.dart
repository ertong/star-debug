// This is a generated file - do not edit.
//
// Generated from unlock.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// SpaceX.API.Device.Services.Unlock.StartUnlockRequest is a message:
class StartUnlockRequest extends $pb.GeneratedMessage {
  factory StartUnlockRequest() => create();

  StartUnlockRequest._();

  factory StartUnlockRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StartUnlockRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StartUnlockRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'SpaceX.API.Device.Services.Unlock'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StartUnlockRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StartUnlockRequest copyWith(void Function(StartUnlockRequest) updates) =>
      super.copyWith((message) => updates(message as StartUnlockRequest))
          as StartUnlockRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StartUnlockRequest create() => StartUnlockRequest._();
  @$core.override
  StartUnlockRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StartUnlockRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StartUnlockRequest>(create);
  static StartUnlockRequest? _defaultInstance;
}

/// SpaceX.API.Device.Services.Unlock.FinishUnlockRequest is a message:
class FinishUnlockRequest extends $pb.GeneratedMessage {
  factory FinishUnlockRequest({
    $core.List<$core.int>? challenge,
    $core.List<$core.int>? signature,
  }) {
    final result = create();
    if (challenge != null) result.challenge = challenge;
    if (signature != null) result.signature = signature;
    return result;
  }

  FinishUnlockRequest._();

  factory FinishUnlockRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FinishUnlockRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FinishUnlockRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'SpaceX.API.Device.Services.Unlock'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'challenge', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'signature', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FinishUnlockRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FinishUnlockRequest copyWith(void Function(FinishUnlockRequest) updates) =>
      super.copyWith((message) => updates(message as FinishUnlockRequest))
          as FinishUnlockRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FinishUnlockRequest create() => FinishUnlockRequest._();
  @$core.override
  FinishUnlockRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FinishUnlockRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FinishUnlockRequest>(create);
  static FinishUnlockRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get challenge => $_getN(0);
  @$pb.TagNumber(1)
  set challenge($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasChallenge() => $_has(0);
  @$pb.TagNumber(1)
  void clearChallenge() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get signature => $_getN(1);
  @$pb.TagNumber(2)
  set signature($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignature() => $_clearField(2);
}

/// SpaceX.API.Device.Services.Unlock.StartUnlockResponse is a message:
class StartUnlockResponse extends $pb.GeneratedMessage {
  factory StartUnlockResponse({
    $core.String? deviceId,
    $core.List<$core.int>? nonce,
    $core.List<$core.int>? signSpki,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (nonce != null) result.nonce = nonce;
    if (signSpki != null) result.signSpki = signSpki;
    return result;
  }

  StartUnlockResponse._();

  factory StartUnlockResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StartUnlockResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StartUnlockResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'SpaceX.API.Device.Services.Unlock'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'deviceId')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'nonce', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'signSpki', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StartUnlockResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StartUnlockResponse copyWith(void Function(StartUnlockResponse) updates) =>
      super.copyWith((message) => updates(message as StartUnlockResponse))
          as StartUnlockResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StartUnlockResponse create() => StartUnlockResponse._();
  @$core.override
  StartUnlockResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StartUnlockResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StartUnlockResponse>(create);
  static StartUnlockResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get nonce => $_getN(1);
  @$pb.TagNumber(2)
  set nonce($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNonce() => $_has(1);
  @$pb.TagNumber(2)
  void clearNonce() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get signSpki => $_getN(2);
  @$pb.TagNumber(3)
  set signSpki($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSignSpki() => $_has(2);
  @$pb.TagNumber(3)
  void clearSignSpki() => $_clearField(3);
}

/// SpaceX.API.Device.Services.Unlock.FinishUnlockResponse is a message:
class FinishUnlockResponse extends $pb.GeneratedMessage {
  factory FinishUnlockResponse({
    $core.int? status,
  }) {
    final result = create();
    if (status != null) result.status = status;
    return result;
  }

  FinishUnlockResponse._();

  factory FinishUnlockResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FinishUnlockResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FinishUnlockResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'SpaceX.API.Device.Services.Unlock'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'status', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FinishUnlockResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FinishUnlockResponse copyWith(void Function(FinishUnlockResponse) updates) =>
      super.copyWith((message) => updates(message as FinishUnlockResponse))
          as FinishUnlockResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FinishUnlockResponse create() => FinishUnlockResponse._();
  @$core.override
  FinishUnlockResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FinishUnlockResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FinishUnlockResponse>(create);
  static FinishUnlockResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get status => $_getIZ(0);
  @$pb.TagNumber(1)
  set status($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
