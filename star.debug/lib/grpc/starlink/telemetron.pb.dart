// This is a generated file - do not edit.
//
// Generated from telemetron.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'telemetron.pbenum.dart';

/// SpaceX.API.Telemetron.Public.Integrations.UserPowerSource is a message:
class UserPowerSource extends $pb.GeneratedMessage {
  factory UserPowerSource() => create();

  UserPowerSource._();

  factory UserPowerSource.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserPowerSource.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserPowerSource',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'SpaceX.API.Telemetron.Public.Integrations'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserPowerSource clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserPowerSource copyWith(void Function(UserPowerSource) updates) =>
      super.copyWith((message) => updates(message as UserPowerSource))
          as UserPowerSource;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserPowerSource create() => UserPowerSource._();
  @$core.override
  UserPowerSource createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserPowerSource getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserPowerSource>(create);
  static UserPowerSource? _defaultInstance;
}

const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
