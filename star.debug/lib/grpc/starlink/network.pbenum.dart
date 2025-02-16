//
//  Generated code. Do not modify.
//  source: network.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// SpaceX.API.Satellites.Network.UtDisablementCode is an enum:
class UtDisablementCode extends $pb.ProtobufEnum {
  static const UtDisablementCode UNKNOWN_STATE = UtDisablementCode._(0, _omitEnumNames ? '' : 'UNKNOWN_STATE');
  static const UtDisablementCode OKAY = UtDisablementCode._(1, _omitEnumNames ? '' : 'OKAY');
  static const UtDisablementCode NO_ACTIVE_ACCOUNT = UtDisablementCode._(2, _omitEnumNames ? '' : 'NO_ACTIVE_ACCOUNT');
  static const UtDisablementCode TOO_FAR_FROM_SERVICE_ADDRESS = UtDisablementCode._(3, _omitEnumNames ? '' : 'TOO_FAR_FROM_SERVICE_ADDRESS');
  static const UtDisablementCode IN_OCEAN = UtDisablementCode._(4, _omitEnumNames ? '' : 'IN_OCEAN');
  static const UtDisablementCode BLOCKED_COUNTRY = UtDisablementCode._(6, _omitEnumNames ? '' : 'BLOCKED_COUNTRY');
  static const UtDisablementCode DATA_OVERAGE_SANDBOX_POLICY = UtDisablementCode._(7, _omitEnumNames ? '' : 'DATA_OVERAGE_SANDBOX_POLICY');
  static const UtDisablementCode CELL_IS_DISABLED = UtDisablementCode._(8, _omitEnumNames ? '' : 'CELL_IS_DISABLED');
  static const UtDisablementCode ROAM_RESTRICTED = UtDisablementCode._(10, _omitEnumNames ? '' : 'ROAM_RESTRICTED');
  static const UtDisablementCode UNKNOWN_LOCATION = UtDisablementCode._(11, _omitEnumNames ? '' : 'UNKNOWN_LOCATION');
  static const UtDisablementCode ACCOUNT_DISABLED = UtDisablementCode._(12, _omitEnumNames ? '' : 'ACCOUNT_DISABLED');
  static const UtDisablementCode UNSUPPORTED_VERSION = UtDisablementCode._(13, _omitEnumNames ? '' : 'UNSUPPORTED_VERSION');

  static const $core.List<UtDisablementCode> values = <UtDisablementCode> [
    UNKNOWN_STATE,
    OKAY,
    NO_ACTIVE_ACCOUNT,
    TOO_FAR_FROM_SERVICE_ADDRESS,
    IN_OCEAN,
    BLOCKED_COUNTRY,
    DATA_OVERAGE_SANDBOX_POLICY,
    CELL_IS_DISABLED,
    ROAM_RESTRICTED,
    UNKNOWN_LOCATION,
    ACCOUNT_DISABLED,
    UNSUPPORTED_VERSION,
  ];

  static final $core.Map<$core.int, UtDisablementCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UtDisablementCode? valueOf($core.int value) => _byValue[value];

  const UtDisablementCode._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
