///
//  Generated code. Do not modify.
//  source: network.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class UtDisablementCode extends $pb.ProtobufEnum {
  static const UtDisablementCode UNKNOWN_STATE = UtDisablementCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN_STATE');
  static const UtDisablementCode OKAY = UtDisablementCode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OKAY');
  static const UtDisablementCode NO_ACTIVE_ACCOUNT = UtDisablementCode._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NO_ACTIVE_ACCOUNT');
  static const UtDisablementCode TOO_FAR_FROM_SERVICE_ADDRESS = UtDisablementCode._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TOO_FAR_FROM_SERVICE_ADDRESS');
  static const UtDisablementCode IN_OCEAN = UtDisablementCode._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IN_OCEAN');
  static const UtDisablementCode INVALID_COUNTRY = UtDisablementCode._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INVALID_COUNTRY');

  static const $core.List<UtDisablementCode> values = <UtDisablementCode> [
    UNKNOWN_STATE,
    OKAY,
    NO_ACTIVE_ACCOUNT,
    TOO_FAR_FROM_SERVICE_ADDRESS,
    IN_OCEAN,
    INVALID_COUNTRY,
  ];

  static final $core.Map<$core.int, UtDisablementCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UtDisablementCode? valueOf($core.int value) => _byValue[value];

  const UtDisablementCode._($core.int v, $core.String n) : super(v, n);
}

