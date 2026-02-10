// This is a generated file - do not edit.
//
// Generated from network.proto.

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

@$core.Deprecated('Use utDisablementCodeDescriptor instead')
const UtDisablementCode$json = {
  '1': 'UtDisablementCode',
  '2': [
    {'1': 'UNKNOWN_STATE', '2': 0},
    {'1': 'OKAY', '2': 1},
    {'1': 'NO_ACTIVE_ACCOUNT', '2': 2},
    {'1': 'TOO_FAR_FROM_SERVICE_ADDRESS', '2': 3},
    {'1': 'IN_OCEAN', '2': 4},
    {'1': 'BLOCKED_COUNTRY', '2': 6},
    {'1': 'DATA_OVERAGE_SANDBOX_POLICY', '2': 7},
    {'1': 'CELL_IS_DISABLED', '2': 8},
    {'1': 'ROAM_RESTRICTED', '2': 10},
    {'1': 'UNKNOWN_LOCATION', '2': 11},
    {'1': 'ACCOUNT_DISABLED', '2': 12},
    {'1': 'UNSUPPORTED_VERSION', '2': 13},
    {'1': 'MOVING_TOO_FAST_FOR_POLICY', '2': 14},
    {'1': 'UNDER_AVIATION_FLYOVER_LIMITS', '2': 15},
    {'1': 'BLOCKED_AREA', '2': 16},
  ],
  '4': [
    {'1': 5, '2': 5},
    {'1': 9, '2': 9},
  ],
  '5': ['INVALID_COUNTRY', 'UNLICENSED_COUNTRY'],
};

/// Descriptor for `UtDisablementCode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List utDisablementCodeDescriptor = $convert.base64Decode(
    'ChFVdERpc2FibGVtZW50Q29kZRIRCg1VTktOT1dOX1NUQVRFEAASCAoET0tBWRABEhUKEU5PX0'
    'FDVElWRV9BQ0NPVU5UEAISIAocVE9PX0ZBUl9GUk9NX1NFUlZJQ0VfQUREUkVTUxADEgwKCElO'
    'X09DRUFOEAQSEwoPQkxPQ0tFRF9DT1VOVFJZEAYSHwobREFUQV9PVkVSQUdFX1NBTkRCT1hfUE'
    '9MSUNZEAcSFAoQQ0VMTF9JU19ESVNBQkxFRBAIEhMKD1JPQU1fUkVTVFJJQ1RFRBAKEhQKEFVO'
    'S05PV05fTE9DQVRJT04QCxIUChBBQ0NPVU5UX0RJU0FCTEVEEAwSFwoTVU5TVVBQT1JURURfVk'
    'VSU0lPThANEh4KGk1PVklOR19UT09fRkFTVF9GT1JfUE9MSUNZEA4SIQodVU5ERVJfQVZJQVRJ'
    'T05fRkxZT1ZFUl9MSU1JVFMQDxIQCgxCTE9DS0VEX0FSRUEQECIECAUQBSIECAkQCSoPSU5WQU'
    'xJRF9DT1VOVFJZKhJVTkxJQ0VOU0VEX0NPVU5UUlk=');
