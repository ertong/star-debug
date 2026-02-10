// This is a generated file - do not edit.
//
// Generated from telemetron.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use rateLimitReasonDescriptor instead')
const RateLimitReason$json = {
  '1': 'RateLimitReason',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'NO_LIMIT', '2': 1},
    {'1': 'POLICY_LIMIT', '2': 2},
    {'1': 'USER_CUSTOM_LIMIT', '2': 3},
    {'1': 'OVERAGE_LIMIT', '2': 5},
  ],
  '4': [
    {'1': 4, '2': 4},
  ],
  '5': ['HIGH_HOURLY_AVG_LIMIT'],
};

/// Descriptor for `RateLimitReason`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List rateLimitReasonDescriptor = $convert.base64Decode(
    'Cg9SYXRlTGltaXRSZWFzb24SCwoHVU5LTk9XThAAEgwKCE5PX0xJTUlUEAESEAoMUE9MSUNZX0'
    'xJTUlUEAISFQoRVVNFUl9DVVNUT01fTElNSVQQAxIRCg1PVkVSQUdFX0xJTUlUEAUiBAgEEAQq'
    'FUhJR0hfSE9VUkxZX0FWR19MSU1JVA==');
