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

/// SpaceX.API.Telemetron.Public.Integrations.RateLimitReason is an enum:
class RateLimitReason extends $pb.ProtobufEnum {
  static const RateLimitReason UNKNOWN =
      RateLimitReason._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const RateLimitReason NO_LIMIT =
      RateLimitReason._(1, _omitEnumNames ? '' : 'NO_LIMIT');
  static const RateLimitReason POLICY_LIMIT =
      RateLimitReason._(2, _omitEnumNames ? '' : 'POLICY_LIMIT');
  static const RateLimitReason USER_CUSTOM_LIMIT =
      RateLimitReason._(3, _omitEnumNames ? '' : 'USER_CUSTOM_LIMIT');
  static const RateLimitReason OVERAGE_LIMIT =
      RateLimitReason._(5, _omitEnumNames ? '' : 'OVERAGE_LIMIT');
  static const RateLimitReason LOW_SPEED_POLICY_LIMIT =
      RateLimitReason._(6, _omitEnumNames ? '' : 'LOW_SPEED_POLICY_LIMIT');

  static const $core.List<RateLimitReason> values = <RateLimitReason>[
    UNKNOWN,
    NO_LIMIT,
    POLICY_LIMIT,
    USER_CUSTOM_LIMIT,
    OVERAGE_LIMIT,
    LOW_SPEED_POLICY_LIMIT,
  ];

  static final $core.List<RateLimitReason?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 6);
  static RateLimitReason? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const RateLimitReason._(super.value, super.name);
}

class UserPowerSource_AutoEnum extends $pb.ProtobufEnum {
  static const UserPowerSource_AutoEnum unknown =
      UserPowerSource_AutoEnum._(0, _omitEnumNames ? '' : 'unknown');
  static const UserPowerSource_AutoEnum usbc =
      UserPowerSource_AutoEnum._(1, _omitEnumNames ? '' : 'usbc');
  static const UserPowerSource_AutoEnum battery =
      UserPowerSource_AutoEnum._(2, _omitEnumNames ? '' : 'battery');
  static const UserPowerSource_AutoEnum usbc_and_battery =
      UserPowerSource_AutoEnum._(3, _omitEnumNames ? '' : 'usbc_and_battery');

  static const $core.List<UserPowerSource_AutoEnum> values =
      <UserPowerSource_AutoEnum>[
    unknown,
    usbc,
    battery,
    usbc_and_battery,
  ];

  static final $core.List<UserPowerSource_AutoEnum?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static UserPowerSource_AutoEnum? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const UserPowerSource_AutoEnum._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
