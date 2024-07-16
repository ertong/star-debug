//
//  Generated code. Do not modify.
//  source: starlink.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use capabilityDescriptor instead')
const Capability$json = {
  '1': 'Capability',
  '2': [
    {'1': 'READ', '2': 0},
    {'1': 'WRITE', '2': 1},
    {'1': 'DEBUG', '2': 2},
    {'1': 'ADMIN', '2': 3},
    {'1': 'SETUP', '2': 4},
    {'1': 'SET_SKU', '2': 5},
    {'1': 'REFRESH', '2': 6},
    {'1': 'READ_PRIVATE', '2': 7},
    {'1': 'FUSE', '2': 8},
    {'1': 'RESET', '2': 9},
    {'1': 'TEST', '2': 10},
    {'1': 'WRITE_PERSISTENT', '2': 11},
    {'1': 'SSH', '2': 12},
    {'1': 'READ_INTERNAL', '2': 13},
    {'1': 'LOCAL', '2': 14},
    {'1': 'GUEST', '2': 15},
  ],
};

/// Descriptor for `Capability`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List capabilityDescriptor = $convert.base64Decode(
    'CgpDYXBhYmlsaXR5EggKBFJFQUQQABIJCgVXUklURRABEgkKBURFQlVHEAISCQoFQURNSU4QAx'
    'IJCgVTRVRVUBAEEgsKB1NFVF9TS1UQBRILCgdSRUZSRVNIEAYSEAoMUkVBRF9QUklWQVRFEAcS'
    'CAoERlVTRRAIEgkKBVJFU0VUEAkSCAoEVEVTVBAKEhQKEFdSSVRFX1BFUlNJU1RFTlQQCxIHCg'
    'NTU0gQDBIRCg1SRUFEX0lOVEVSTkFMEA0SCQoFTE9DQUwQDhIJCgVHVUVTVBAP');

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'NO_USER', '2': 0},
    {'1': 'GOD', '2': 1},
    {'1': 'LAN', '2': 2},
    {'1': 'CLOUD', '2': 3},
    {'1': 'FACTORY', '2': 4},
    {'1': 'ROUTER', '2': 5},
    {'1': 'GUEST_LAN', '2': 6},
    {'1': 'SENSITIVE_COMMANDING', '2': 7},
    {'1': 'LAN_TLS', '2': 8},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEgsKB05PX1VTRVIQABIHCgNHT0QQARIHCgNMQU4QAhIJCgVDTE9VRBADEgsKB0ZBQ1'
    'RPUlkQBBIKCgZST1VURVIQBRINCglHVUVTVF9MQU4QBhIYChRTRU5TSVRJVkVfQ09NTUFORElO'
    'RxAHEgsKB0xBTl9UTFMQCA==');

@$core.Deprecated('Use positionSourceDescriptor instead')
const PositionSource$json = {
  '1': 'PositionSource',
  '2': [
    {'1': 'AUTO', '2': 0},
    {'1': 'NONE', '2': 1},
    {'1': 'UT_INFO', '2': 2},
    {'1': 'EXTERNAL', '2': 3},
    {'1': 'GPS', '2': 4},
    {'1': 'STARLINK', '2': 5},
    {'1': 'GNC_GPS', '2': 6},
    {'1': 'GNC_PNT', '2': 7},
    {'1': 'GNC_FUSED', '2': 8},
    {'1': 'GNC_RAW', '2': 9},
  ],
};

/// Descriptor for `PositionSource`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List positionSourceDescriptor = $convert.base64Decode(
    'Cg5Qb3NpdGlvblNvdXJjZRIICgRBVVRPEAASCAoETk9ORRABEgsKB1VUX0lORk8QAhIMCghFWF'
    'RFUk5BTBADEgcKA0dQUxAEEgwKCFNUQVJMSU5LEAUSCwoHR05DX0dQUxAGEgsKB0dOQ19QTlQQ'
    'BxINCglHTkNfRlVTRUQQCBILCgdHTkNfUkFXEAk=');

@$core.Deprecated('Use meshAuthDescriptor instead')
const MeshAuth$json = {
  '1': 'MeshAuth',
  '2': [
    {'1': 'MESH_AUTH_UNKNOWN', '2': 0},
    {'1': 'MESH_AUTH_NEW', '2': 1},
    {'1': 'MESH_AUTH_TRUSTED', '2': 2},
    {'1': 'MESH_AUTH_UNTRUSTED', '2': 3},
  ],
};

/// Descriptor for `MeshAuth`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List meshAuthDescriptor = $convert.base64Decode(
    'CghNZXNoQXV0aBIVChFNRVNIX0FVVEhfVU5LTk9XThAAEhEKDU1FU0hfQVVUSF9ORVcQARIVCh'
    'FNRVNIX0FVVEhfVFJVU1RFRBACEhcKE01FU0hfQVVUSF9VTlRSVVNURUQQAw==');

@$core.Deprecated('Use ifaceTypeDescriptor instead')
const IfaceType$json = {
  '1': 'IfaceType',
  '2': [
    {'1': 'IFACE_TYPE_UNKNOWN', '2': 0},
    {'1': 'IFACE_TYPE_ETH', '2': 1},
    {'1': 'IFACE_TYPE_RF_2GHZ', '2': 2},
    {'1': 'IFACE_TYPE_RF_5GHZ', '2': 5},
    {'1': 'IFACE_TYPE_RF_5GHZ_HIGH', '2': 6},
  ],
};

/// Descriptor for `IfaceType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List ifaceTypeDescriptor = $convert.base64Decode(
    'CglJZmFjZVR5cGUSFgoSSUZBQ0VfVFlQRV9VTktOT1dOEAASEgoOSUZBQ0VfVFlQRV9FVEgQAR'
    'IWChJJRkFDRV9UWVBFX1JGXzJHSFoQAhIWChJJRkFDRV9UWVBFX1JGXzVHSFoQBRIbChdJRkFD'
    'RV9UWVBFX1JGXzVHSFpfSElHSBAG');

@$core.Deprecated('Use txPowerLevelDescriptor instead')
const TxPowerLevel$json = {
  '1': 'TxPowerLevel',
  '2': [
    {'1': 'TX_POWER_LEVEL_100', '2': 0},
    {'1': 'TX_POWER_LEVEL_80', '2': 1},
    {'1': 'TX_POWER_LEVEL_50', '2': 2},
    {'1': 'TX_POWER_LEVEL_25', '2': 3},
    {'1': 'TX_POWER_LEVEL_12', '2': 4},
    {'1': 'TX_POWER_LEVEL_6', '2': 5},
  ],
};

/// Descriptor for `TxPowerLevel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List txPowerLevelDescriptor = $convert.base64Decode(
    'CgxUeFBvd2VyTGV2ZWwSFgoSVFhfUE9XRVJfTEVWRUxfMTAwEAASFQoRVFhfUE9XRVJfTEVWRU'
    'xfODAQARIVChFUWF9QT1dFUl9MRVZFTF81MBACEhUKEVRYX1BPV0VSX0xFVkVMXzI1EAMSFQoR'
    'VFhfUE9XRVJfTEVWRUxfMTIQBBIUChBUWF9QT1dFUl9MRVZFTF82EAU=');

@$core.Deprecated('Use bootReasonDescriptor instead')
const BootReason$json = {
  '1': 'BootReason',
  '2': [
    {'1': 'BOOT_REASON_UNKNOWN', '2': 0},
    {'1': 'FORGOTTEN', '2': 1},
    {'1': 'POWER_CYCLE', '2': 2},
    {'1': 'COMMAND', '2': 3},
    {'1': 'SOFTWARE_UPDATE', '2': 4},
    {'1': 'CONFIG_UPDATE', '2': 5},
    {'1': 'UPTIME_FDIR', '2': 6},
    {'1': 'REPEATER_FDIR', '2': 7},
    {'1': 'AVIATION_ETH_WAN_FDIR', '2': 8},
    {'1': 'KERNEL_PANIC', '2': 9},
    {'1': 'MCU_BRINGUP_FAILED_FDIR', '2': 11},
    {'1': 'AVIATION_OUTAGE_FDIR', '2': 12},
    {'1': 'SOFTWARE_WATCHDOG', '2': 13},
    {'1': 'INTENTIONAL_KERNEL_PANIC', '2': 14},
  ],
  '4': [
    {'1': 10, '2': 10},
  ],
  '5': ['AVIATION_5M_OUTAGE_FDIR'],
};

/// Descriptor for `BootReason`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List bootReasonDescriptor = $convert.base64Decode(
    'CgpCb290UmVhc29uEhcKE0JPT1RfUkVBU09OX1VOS05PV04QABINCglGT1JHT1RURU4QARIPCg'
    'tQT1dFUl9DWUNMRRACEgsKB0NPTU1BTkQQAxITCg9TT0ZUV0FSRV9VUERBVEUQBBIRCg1DT05G'
    'SUdfVVBEQVRFEAUSDwoLVVBUSU1FX0ZESVIQBhIRCg1SRVBFQVRFUl9GRElSEAcSGQoVQVZJQV'
    'RJT05fRVRIX1dBTl9GRElSEAgSEAoMS0VSTkVMX1BBTklDEAkSGwoXTUNVX0JSSU5HVVBfRkFJ'
    'TEVEX0ZESVIQCxIYChRBVklBVElPTl9PVVRBR0VfRkRJUhAMEhUKEVNPRlRXQVJFX1dBVENIRE'
    '9HEA0SHAoYSU5URU5USU9OQUxfS0VSTkVMX1BBTklDEA4iBAgKEAoqF0FWSUFUSU9OXzVNX09V'
    'VEFHRV9GRElS');

@$core.Deprecated('Use cakePriorityQueueParameterDescriptor instead')
const CakePriorityQueueParameter$json = {
  '1': 'CakePriorityQueueParameter',
  '2': [
    {'1': 'DIFFSERV3', '2': 0},
    {'1': 'DIFFSERV4', '2': 1},
    {'1': 'PRECEDENCE', '2': 2},
    {'1': 'BEST_EFFORT', '2': 3},
  ],
};

/// Descriptor for `CakePriorityQueueParameter`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List cakePriorityQueueParameterDescriptor = $convert.base64Decode(
    'ChpDYWtlUHJpb3JpdHlRdWV1ZVBhcmFtZXRlchINCglESUZGU0VSVjMQABINCglESUZGU0VSVj'
    'QQARIOCgpQUkVDRURFTkNFEAISDwoLQkVTVF9FRkZPUlQQAw==');

@$core.Deprecated('Use cakeAckFilterDescriptor instead')
const CakeAckFilter$json = {
  '1': 'CakeAckFilter',
  '2': [
    {'1': 'NO_ACK_FILTER', '2': 0},
    {'1': 'ACK_FILTER', '2': 1},
    {'1': 'ACK_FILTER_AGGRESSIVE', '2': 2},
  ],
};

/// Descriptor for `CakeAckFilter`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List cakeAckFilterDescriptor = $convert.base64Decode(
    'Cg1DYWtlQWNrRmlsdGVyEhEKDU5PX0FDS19GSUxURVIQABIOCgpBQ0tfRklMVEVSEAESGQoVQU'
    'NLX0ZJTFRFUl9BR0dSRVNTSVZFEAI=');

@$core.Deprecated('Use protocolDescriptor instead')
const Protocol$json = {
  '1': 'Protocol',
  '2': [
    {'1': 'TCP', '2': 0},
    {'1': 'UDP', '2': 1},
    {'1': 'TLS', '2': 2},
    {'1': 'DTLS', '2': 3},
  ],
};

/// Descriptor for `Protocol`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List protocolDescriptor = $convert.base64Decode(
    'CghQcm90b2NvbBIHCgNUQ1AQABIHCgNVRFAQARIHCgNUTFMQAhIICgREVExTEAM=');

@$core.Deprecated('Use speedtestErrorDescriptor instead')
const SpeedtestError$json = {
  '1': 'SpeedtestError',
  '2': [
    {'1': 'SPEEDTEST_ERROR_NONE', '2': 0},
    {'1': 'SPEEDTEST_ERROR_UNKNOWN', '2': 1},
    {'1': 'SPEEDTEST_ERROR_TOKEN', '2': 2},
    {'1': 'SPEEDTEST_ERROR_API', '2': 3},
    {'1': 'SPEEDTEST_ERROR_NO_RESULT', '2': 4},
    {'1': 'SPEEDTEST_ERROR_OFFLINE', '2': 5},
  ],
};

/// Descriptor for `SpeedtestError`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List speedtestErrorDescriptor = $convert.base64Decode(
    'Cg5TcGVlZHRlc3RFcnJvchIYChRTUEVFRFRFU1RfRVJST1JfTk9ORRAAEhsKF1NQRUVEVEVTVF'
    '9FUlJPUl9VTktOT1dOEAESGQoVU1BFRURURVNUX0VSUk9SX1RPS0VOEAISFwoTU1BFRURURVNU'
    'X0VSUk9SX0FQSRADEh0KGVNQRUVEVEVTVF9FUlJPUl9OT19SRVNVTFQQBBIbChdTUEVFRFRFU1'
    'RfRVJST1JfT0ZGTElORRAF');

@$core.Deprecated('Use userMobilityClassDescriptor instead')
const UserMobilityClass$json = {
  '1': 'UserMobilityClass',
  '2': [
    {'1': 'STATIONARY', '2': 0},
    {'1': 'NOMADIC', '2': 1},
    {'1': 'MOBILE', '2': 2},
  ],
};

/// Descriptor for `UserMobilityClass`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List userMobilityClassDescriptor = $convert.base64Decode(
    'ChFVc2VyTW9iaWxpdHlDbGFzcxIOCgpTVEFUSU9OQVJZEAASCwoHTk9NQURJQxABEgoKBk1PQk'
    'lMRRAC');

@$core.Deprecated('Use userClassOfServiceDescriptor instead')
const UserClassOfService$json = {
  '1': 'UserClassOfService',
  '2': [
    {'1': 'UNKNOWN_USER_CLASS_OF_SERVICE', '2': 0},
    {'1': 'CONSUMER', '2': 1},
    {'1': 'BUSINESS', '2': 2},
    {'1': 'BUSINESS_PLUS', '2': 3},
    {'1': 'COMMERCIAL_AVIATION', '2': 4},
  ],
};

/// Descriptor for `UserClassOfService`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List userClassOfServiceDescriptor = $convert.base64Decode(
    'ChJVc2VyQ2xhc3NPZlNlcnZpY2USIQodVU5LTk9XTl9VU0VSX0NMQVNTX09GX1NFUlZJQ0UQAB'
    'IMCghDT05TVU1FUhABEgwKCEJVU0lORVNTEAISEQoNQlVTSU5FU1NfUExVUxADEhcKE0NPTU1F'
    'UkNJQUxfQVZJQVRJT04QBA==');

@$core.Deprecated('Use softwareUpdateStateDescriptor instead')
const SoftwareUpdateState$json = {
  '1': 'SoftwareUpdateState',
  '2': [
    {'1': 'SOFTWARE_UPDATE_STATE_UNKNOWN', '2': 0},
    {'1': 'IDLE', '2': 1},
    {'1': 'FETCHING', '2': 2},
    {'1': 'PRE_CHECK', '2': 3},
    {'1': 'WRITING', '2': 4},
    {'1': 'POST_CHECK', '2': 5},
    {'1': 'REBOOT_REQUIRED', '2': 6},
    {'1': 'DISABLED', '2': 7},
    {'1': 'FAULTED', '2': 8},
  ],
};

/// Descriptor for `SoftwareUpdateState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List softwareUpdateStateDescriptor = $convert.base64Decode(
    'ChNTb2Z0d2FyZVVwZGF0ZVN0YXRlEiEKHVNPRlRXQVJFX1VQREFURV9TVEFURV9VTktOT1dOEA'
    'ASCAoESURMRRABEgwKCEZFVENISU5HEAISDQoJUFJFX0NIRUNLEAMSCwoHV1JJVElORxAEEg4K'
    'ClBPU1RfQ0hFQ0sQBRITCg9SRUJPT1RfUkVRVUlSRUQQBhIMCghESVNBQkxFRBAHEgsKB0ZBVU'
    'xURUQQCA==');

@$core.Deprecated('Use hasActuatorsDescriptor instead')
const HasActuators$json = {
  '1': 'HasActuators',
  '2': [
    {'1': 'HAS_ACTUATORS_UNKNOWN', '2': 0},
    {'1': 'HAS_ACTUATORS_YES', '2': 1},
    {'1': 'HAS_ACTUATORS_NO', '2': 2},
  ],
};

/// Descriptor for `HasActuators`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List hasActuatorsDescriptor = $convert.base64Decode(
    'CgxIYXNBY3R1YXRvcnMSGQoVSEFTX0FDVFVBVE9SU19VTktOT1dOEAASFQoRSEFTX0FDVFVBVE'
    '9SU19ZRVMQARIUChBIQVNfQUNUVUFUT1JTX05PEAI=');

@$core.Deprecated('Use actuatorStateDescriptor instead')
const ActuatorState$json = {
  '1': 'ActuatorState',
  '2': [
    {'1': 'ACTUATOR_STATE_IDLE', '2': 0},
    {'1': 'ACTUATOR_STATE_FULL_TILT', '2': 1},
    {'1': 'ACTUATOR_STATE_ROTATE', '2': 2},
    {'1': 'ACTUATOR_STATE_TILT', '2': 3},
    {'1': 'ACTUATOR_STATE_UNWRAP_POSITIVE', '2': 4},
    {'1': 'ACTUATOR_STATE_UNWRAP_NEGATIVE', '2': 5},
    {'1': 'ACTUATOR_STATE_TILT_TO_STOWED', '2': 6},
    {'1': 'ACTUATOR_STATE_FAULTED', '2': 7},
    {'1': 'ACTUATOR_STATE_WAIT_TIL_STATIC', '2': 8},
    {'1': 'ACTUATOR_STATE_DRIVE_TO_MOBILE_POSITION', '2': 9},
    {'1': 'ACTUATOR_STATE_MOBILE_WAIT', '2': 10},
  ],
};

/// Descriptor for `ActuatorState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List actuatorStateDescriptor = $convert.base64Decode(
    'Cg1BY3R1YXRvclN0YXRlEhcKE0FDVFVBVE9SX1NUQVRFX0lETEUQABIcChhBQ1RVQVRPUl9TVE'
    'FURV9GVUxMX1RJTFQQARIZChVBQ1RVQVRPUl9TVEFURV9ST1RBVEUQAhIXChNBQ1RVQVRPUl9T'
    'VEFURV9USUxUEAMSIgoeQUNUVUFUT1JfU1RBVEVfVU5XUkFQX1BPU0lUSVZFEAQSIgoeQUNUVU'
    'FUT1JfU1RBVEVfVU5XUkFQX05FR0FUSVZFEAUSIQodQUNUVUFUT1JfU1RBVEVfVElMVF9UT19T'
    'VE9XRUQQBhIaChZBQ1RVQVRPUl9TVEFURV9GQVVMVEVEEAcSIgoeQUNUVUFUT1JfU1RBVEVfV0'
    'FJVF9USUxfU1RBVElDEAgSKwonQUNUVUFUT1JfU1RBVEVfRFJJVkVfVE9fTU9CSUxFX1BPU0lU'
    'SU9OEAkSHgoaQUNUVUFUT1JfU1RBVEVfTU9CSUxFX1dBSVQQCg==');

@$core.Deprecated('Use attitudeEstimationStateDescriptor instead')
const AttitudeEstimationState$json = {
  '1': 'AttitudeEstimationState',
  '2': [
    {'1': 'FILTER_RESET', '2': 0},
    {'1': 'FILTER_UNCONVERGED', '2': 1},
    {'1': 'FILTER_CONVERGED', '2': 2},
    {'1': 'FILTER_FAULTED', '2': 3},
    {'1': 'FILTER_INVALID', '2': 4},
  ],
};

/// Descriptor for `AttitudeEstimationState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List attitudeEstimationStateDescriptor = $convert.base64Decode(
    'ChdBdHRpdHVkZUVzdGltYXRpb25TdGF0ZRIQCgxGSUxURVJfUkVTRVQQABIWChJGSUxURVJfVU'
    '5DT05WRVJHRUQQARIUChBGSUxURVJfQ09OVkVSR0VEEAISEgoORklMVEVSX0ZBVUxURUQQAxIS'
    'Cg5GSUxURVJfSU5WQUxJRBAE');

@$core.Deprecated('Use poeStateDescriptor instead')
const PoeState$json = {
  '1': 'PoeState',
  '2': [
    {'1': 'POE_STATE_DISABLED', '2': 0},
    {'1': 'POE_STATE_NEGOTIATING', '2': 1},
    {'1': 'POE_STATE_ON_RAMPUP', '2': 2},
    {'1': 'POE_STATE_ON', '2': 3},
    {'1': 'POE_STATE_WATER_DETECT_RAMPUP', '2': 4},
    {'1': 'POE_STATE_WATER_DETECT', '2': 5},
  ],
};

/// Descriptor for `PoeState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List poeStateDescriptor = $convert.base64Decode(
    'CghQb2VTdGF0ZRIWChJQT0VfU1RBVEVfRElTQUJMRUQQABIZChVQT0VfU1RBVEVfTkVHT1RJQV'
    'RJTkcQARIXChNQT0VfU1RBVEVfT05fUkFNUFVQEAISEAoMUE9FX1NUQVRFX09OEAMSIQodUE9F'
    'X1NUQVRFX1dBVEVSX0RFVEVDVF9SQU1QVVAQBBIaChZQT0VfU1RBVEVfV0FURVJfREVURUNUEA'
    'U=');

@$core.Deprecated('Use wifiSoftwareUpdateStateDescriptor instead')
const WifiSoftwareUpdateState$json = {
  '1': 'WifiSoftwareUpdateState',
  '2': [
    {'1': 'NOT_RUN', '2': 0},
    {'1': 'GETTING_TARGET_VERSION', '2': 1},
    {'1': 'DOWNLOADING_UPDATE_IMAGE', '2': 2},
    {'1': 'FLASHING', '2': 3},
    {'1': 'NO_UPDATE_REQUIRED', '2': 4},
    {'1': 'REBOOT_PENDING', '2': 5},
    {'1': 'GETTING_TARGET_VERSION_FAILED', '2': 6},
    {'1': 'GETTING_TARGET_VERSION_EXHAUSTED', '2': 7},
    {'1': 'NO_VALID_ARTIFACT', '2': 8},
    {'1': 'ILLEGAL_ARTIFACT', '2': 9},
    {'1': 'DOWNLOADING_UPDATE_IMAGE_FAILED', '2': 10},
    {'1': 'DOWNLOADING_UPDATE_IMAGE_EXHAUSTED', '2': 11},
    {'1': 'FLASHING_FAILED', '2': 12},
  ],
};

/// Descriptor for `WifiSoftwareUpdateState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List wifiSoftwareUpdateStateDescriptor = $convert.base64Decode(
    'ChdXaWZpU29mdHdhcmVVcGRhdGVTdGF0ZRILCgdOT1RfUlVOEAASGgoWR0VUVElOR19UQVJHRV'
    'RfVkVSU0lPThABEhwKGERPV05MT0FESU5HX1VQREFURV9JTUFHRRACEgwKCEZMQVNISU5HEAMS'
    'FgoSTk9fVVBEQVRFX1JFUVVJUkVEEAQSEgoOUkVCT09UX1BFTkRJTkcQBRIhCh1HRVRUSU5HX1'
    'RBUkdFVF9WRVJTSU9OX0ZBSUxFRBAGEiQKIEdFVFRJTkdfVEFSR0VUX1ZFUlNJT05fRVhIQVVT'
    'VEVEEAcSFQoRTk9fVkFMSURfQVJUSUZBQ1QQCBIUChBJTExFR0FMX0FSVElGQUNUEAkSIwofRE'
    '9XTkxPQURJTkdfVVBEQVRFX0lNQUdFX0ZBSUxFRBAKEiYKIkRPV05MT0FESU5HX1VQREFURV9J'
    'TUFHRV9FWEhBVVNURUQQCxITCg9GTEFTSElOR19GQUlMRUQQDA==');

@$core.Deprecated('Use wifiSetupRequirementStateDescriptor instead')
const WifiSetupRequirementState$json = {
  '1': 'WifiSetupRequirementState',
  '2': [
    {'1': 'NOT_REQUIRED', '2': 0},
    {'1': 'REQUIRED_COUNTDOWN', '2': 1},
    {'1': 'REQUIRED_PAUSED', '2': 2},
    {'1': 'REQUIRED_COMPLETE', '2': 3},
  ],
};

/// Descriptor for `WifiSetupRequirementState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List wifiSetupRequirementStateDescriptor = $convert.base64Decode(
    'ChlXaWZpU2V0dXBSZXF1aXJlbWVudFN0YXRlEhAKDE5PVF9SRVFVSVJFRBAAEhYKElJFUVVJUk'
    'VEX0NPVU5URE9XThABEhMKD1JFUVVJUkVEX1BBVVNFRBACEhUKEVJFUVVJUkVEX0NPTVBMRVRF'
    'EAM=');

@$core.Deprecated('Use wifiSecurityDescriptor instead')
const WifiSecurity$json = {
  '1': 'WifiSecurity',
  '2': [
    {'1': 'WIFI_SECURITY_UNKNOWN', '2': 0},
    {'1': 'OPEN', '2': 1},
    {'1': 'WPA2', '2': 2},
    {'1': 'WPA3', '2': 3},
    {'1': 'WPA2WPA3', '2': 4},
  ],
};

/// Descriptor for `WifiSecurity`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List wifiSecurityDescriptor = $convert.base64Decode(
    'CgxXaWZpU2VjdXJpdHkSGQoVV0lGSV9TRUNVUklUWV9VTktOT1dOEAASCAoET1BFThABEggKBF'
    'dQQTIQAhIICgRXUEEzEAMSDAoIV1BBMldQQTMQBA==');

@$core.Deprecated('Use wifiModeDescriptor instead')
const WifiMode$json = {
  '1': 'WifiMode',
  '2': [
    {'1': 'WIFI_MODE_DEFAULT', '2': 0},
    {'1': 'A_ONLY', '2': 1},
    {'1': 'B_ONLY', '2': 2},
    {'1': 'G_ONLY', '2': 3},
    {'1': 'N_ONLY', '2': 4},
    {'1': 'B_G_MIXED', '2': 5},
    {'1': 'A_N_MIXED', '2': 6},
    {'1': 'G_N_MIXED', '2': 7},
    {'1': 'B_G_N_MIXED', '2': 8},
    {'1': 'A_AN_AC_MIXED', '2': 9},
    {'1': 'AN_AC_MIXED', '2': 10},
    {'1': 'B_G_N_AX_MIXED', '2': 11},
    {'1': 'A_AN_AC_AX_MIXED', '2': 12},
    {'1': 'A_N_AC_MIXED', '2': 13},
    {'1': 'A_N_AC_AX_MIXED', '2': 14},
  ],
};

/// Descriptor for `WifiMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List wifiModeDescriptor = $convert.base64Decode(
    'CghXaWZpTW9kZRIVChFXSUZJX01PREVfREVGQVVMVBAAEgoKBkFfT05MWRABEgoKBkJfT05MWR'
    'ACEgoKBkdfT05MWRADEgoKBk5fT05MWRAEEg0KCUJfR19NSVhFRBAFEg0KCUFfTl9NSVhFRBAG'
    'Eg0KCUdfTl9NSVhFRBAHEg8KC0JfR19OX01JWEVEEAgSEQoNQV9BTl9BQ19NSVhFRBAJEg8KC0'
    'FOX0FDX01JWEVEEAoSEgoOQl9HX05fQVhfTUlYRUQQCxIUChBBX0FOX0FDX0FYX01JWEVEEAwS'
    'EAoMQV9OX0FDX01JWEVEEA0SEwoPQV9OX0FDX0FYX01JWEVEEA4=');

@$core.Deprecated('Use transceiverModulatorStateDescriptor instead')
const TransceiverModulatorState$json = {
  '1': 'TransceiverModulatorState',
  '2': [
    {'1': 'MODSTATE_UNKNOWN', '2': 0},
    {'1': 'MODSTATE_ENABLED', '2': 1},
    {'1': 'MODSTATE_DISABLED', '2': 2},
  ],
};

/// Descriptor for `TransceiverModulatorState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List transceiverModulatorStateDescriptor = $convert.base64Decode(
    'ChlUcmFuc2NlaXZlck1vZHVsYXRvclN0YXRlEhQKEE1PRFNUQVRFX1VOS05PV04QABIUChBNT0'
    'RTVEFURV9FTkFCTEVEEAESFQoRTU9EU1RBVEVfRElTQUJMRUQQAg==');

@$core.Deprecated('Use transceiverTxRxStateDescriptor instead')
const TransceiverTxRxState$json = {
  '1': 'TransceiverTxRxState',
  '2': [
    {'1': 'TXRX_UNKNOWN', '2': 0},
    {'1': 'TXRX_ENABLED', '2': 1},
    {'1': 'TXRX_DISABLED', '2': 2},
  ],
};

/// Descriptor for `TransceiverTxRxState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List transceiverTxRxStateDescriptor = $convert.base64Decode(
    'ChRUcmFuc2NlaXZlclR4UnhTdGF0ZRIQCgxUWFJYX1VOS05PV04QABIQCgxUWFJYX0VOQUJMRU'
    'QQARIRCg1UWFJYX0RJU0FCTEVEEAI=');

@$core.Deprecated('Use dishStateDescriptor instead')
const DishState$json = {
  '1': 'DishState',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'CONNECTED', '2': 1},
    {'1': 'SEARCHING', '2': 2},
    {'1': 'BOOTING', '2': 3},
  ],
};

/// Descriptor for `DishState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List dishStateDescriptor = $convert.base64Decode(
    'CglEaXNoU3RhdGUSCwoHVU5LTk9XThAAEg0KCUNPTk5FQ1RFRBABEg0KCVNFQVJDSElORxACEg'
    'sKB0JPT1RJTkcQAw==');

@$core.Deprecated('Use transceiverTransmitBlankingStateDescriptor instead')
const TransceiverTransmitBlankingState$json = {
  '1': 'TransceiverTransmitBlankingState',
  '2': [
    {'1': 'TB_UNKNOWN', '2': 0},
    {'1': 'TB_ENABLED', '2': 1},
    {'1': 'TB_DISABLED', '2': 2},
  ],
};

/// Descriptor for `TransceiverTransmitBlankingState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List transceiverTransmitBlankingStateDescriptor = $convert.base64Decode(
    'CiBUcmFuc2NlaXZlclRyYW5zbWl0QmxhbmtpbmdTdGF0ZRIOCgpUQl9VTktOT1dOEAASDgoKVE'
    'JfRU5BQkxFRBABEg8KC1RCX0RJU0FCTEVEEAI=');

@$core.Deprecated('Use requestDescriptor instead')
const Request$json = {
  '1': 'Request',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'target_id', '3': 13, '4': 1, '5': 9, '10': 'targetId'},
    {'1': 'epoch_id', '3': 14, '4': 1, '5': 4, '10': 'epochId'},
    {'1': 'signed_request', '3': 15, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SignedData', '9': 0, '10': 'signedRequest'},
    {'1': 'reboot', '3': 1001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.RebootRequest', '9': 0, '10': 'reboot'},
    {'1': 'speed_test', '3': 1003, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SpeedTestRequest', '9': 0, '10': 'speedTest'},
    {'1': 'get_status', '3': 1004, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetStatusRequest', '9': 0, '10': 'getStatus'},
    {'1': 'authenticate', '3': 1005, '4': 1, '5': 11, '6': '.SpaceX.API.Device.AuthenticateRequest', '9': 0, '10': 'authenticate'},
    {'1': 'get_next_id', '3': 1006, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetNextIdRequest', '9': 0, '10': 'getNextId'},
    {'1': 'get_history', '3': 1007, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetHistoryRequest', '9': 0, '10': 'getHistory'},
    {'1': 'get_device_info', '3': 1008, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetDeviceInfoRequest', '9': 0, '10': 'getDeviceInfo'},
    {'1': 'get_ping', '3': 1009, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetPingRequest', '9': 0, '10': 'getPing'},
    {'1': 'set_trusted_keys', '3': 1010, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SetTrustedKeysRequest', '9': 0, '10': 'setTrustedKeys'},
    {'1': 'factory_reset', '3': 1011, '4': 1, '5': 11, '6': '.SpaceX.API.Device.FactoryResetRequest', '9': 0, '10': 'factoryReset'},
    {'1': 'get_log', '3': 1012, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetLogRequest', '9': 0, '10': 'getLog'},
    {'1': 'set_sku', '3': 1013, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SetSkuRequest', '9': 0, '10': 'setSku'},
    {'1': 'update', '3': 1014, '4': 1, '5': 11, '6': '.SpaceX.API.Device.UpdateRequest', '9': 0, '10': 'update'},
    {'1': 'get_network_interfaces', '3': 1015, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetNetworkInterfacesRequest', '9': 0, '10': 'getNetworkInterfaces'},
    {'1': 'ping_host', '3': 1016, '4': 1, '5': 11, '6': '.SpaceX.API.Device.PingHostRequest', '9': 0, '10': 'pingHost'},
    {'1': 'get_location', '3': 1017, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetLocationRequest', '9': 0, '10': 'getLocation'},
    {'1': 'get_heap_dump', '3': 1019, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetHeapDumpRequest', '9': 0, '10': 'getHeapDump'},
    {'1': 'restart_control', '3': 1020, '4': 1, '5': 11, '6': '.SpaceX.API.Device.RestartControlRequest', '9': 0, '10': 'restartControl'},
    {'1': 'fuse', '3': 1021, '4': 1, '5': 11, '6': '.SpaceX.API.Device.FuseRequest', '9': 0, '10': 'fuse'},
    {'1': 'get_persistent_stats', '3': 1022, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetPersistentStatsRequest', '9': 0, '10': 'getPersistentStats'},
    {'1': 'get_connections', '3': 1023, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetConnectionsRequest', '9': 0, '10': 'getConnections'},
    {'1': 'start_speedtest', '3': 1027, '4': 1, '5': 11, '6': '.SpaceX.API.Device.StartSpeedtestRequest', '9': 0, '10': 'startSpeedtest'},
    {'1': 'get_speedtest_status', '3': 1028, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetSpeedtestStatusRequest', '9': 0, '10': 'getSpeedtestStatus'},
    {'1': 'report_client_speedtest', '3': 1029, '4': 1, '5': 11, '6': '.SpaceX.API.Device.ReportClientSpeedtestRequest', '9': 0, '10': 'reportClientSpeedtest'},
    {
      '1': 'initiate_remote_ssh',
      '3': 1030,
      '4': 1,
      '5': 11,
      '6': '.SpaceX.API.Device.InitiateRemoteSshRequest',
      '8': {'3': true},
      '9': 0,
      '10': 'initiateRemoteSsh',
    },
    {'1': 'self_test', '3': 1031, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SelfTestRequest', '9': 0, '10': 'selfTest'},
    {'1': 'set_test_mode', '3': 1032, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SetTestModeRequest', '9': 0, '10': 'setTestMode'},
    {'1': 'software_update', '3': 1033, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SoftwareUpdateRequest', '9': 0, '10': 'softwareUpdate'},
    {'1': 'enable_debug_telem', '3': 1034, '4': 1, '5': 11, '6': '.SpaceX.API.Device.EnableDebugTelemRequest', '9': 0, '10': 'enableDebugTelem'},
    {'1': 'iq_capture', '3': 1035, '4': 1, '5': 11, '6': '.SpaceX.API.Device.IQCaptureRequest', '9': 0, '10': 'iqCapture'},
    {'1': 'get_radio_stats', '3': 1036, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetRadioStatsRequest', '9': 0, '10': 'getRadioStats'},
    {'1': 'time', '3': 1037, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetTimeRequest', '9': 0, '10': 'time'},
    {'1': 'run_iperf_server', '3': 1038, '4': 1, '5': 11, '6': '.SpaceX.API.Device.RunIperfServerRequest', '9': 0, '10': 'runIperfServer'},
    {'1': 'tcp_connectivity_test', '3': 1039, '4': 1, '5': 11, '6': '.SpaceX.API.Device.TcpConnectivityTestRequest', '9': 0, '10': 'tcpConnectivityTest'},
    {'1': 'udp_connectivity_test', '3': 1040, '4': 1, '5': 11, '6': '.SpaceX.API.Device.UdpConnectivityTestRequest', '9': 0, '10': 'udpConnectivityTest'},
    {'1': 'sensitive_request', '3': 1078, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SignedData', '9': 0, '10': 'sensitiveRequest'},
    {'1': 'dish_stow', '3': 2002, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishStowRequest', '9': 0, '10': 'dishStow'},
    {'1': 'dish_get_context', '3': 2003, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetContextRequest', '9': 0, '10': 'dishGetContext'},
    {'1': 'dish_set_emc', '3': 2007, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishSetEmcRequest', '9': 0, '10': 'dishSetEmc'},
    {'1': 'dish_get_obstruction_map', '3': 2008, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetObstructionMapRequest', '9': 0, '10': 'dishGetObstructionMap'},
    {'1': 'dish_get_emc', '3': 2009, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetEmcRequest', '9': 0, '10': 'dishGetEmc'},
    {'1': 'dish_set_config', '3': 2010, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishSetConfigRequest', '9': 0, '10': 'dishSetConfig'},
    {'1': 'dish_get_config', '3': 2011, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetConfigRequest', '9': 0, '10': 'dishGetConfig'},
    {'1': 'start_dish_self_test', '3': 2012, '4': 1, '5': 11, '6': '.SpaceX.API.Device.StartDishSelfTestRequest', '9': 0, '10': 'startDishSelfTest'},
    {'1': 'dish_power_save', '3': 2013, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishPowerSaveRequest', '9': 0, '10': 'dishPowerSave'},
    {'1': 'dish_inhibit_gps', '3': 2014, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishInhibitGpsRequest', '9': 0, '10': 'dishInhibitGps'},
    {'1': 'dish_get_data', '3': 2015, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetDataRequest', '9': 0, '10': 'dishGetData'},
    {'1': 'dish_clear_obstruction_map', '3': 2017, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishClearObstructionMapRequest', '9': 0, '10': 'dishClearObstructionMap'},
    {'1': 'dish_set_max_power_test_mode', '3': 2018, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishSetMaxPowerTestModeRequest', '9': 0, '10': 'dishSetMaxPowerTestMode'},
    {'1': 'dish_activate_rssi_scan', '3': 2019, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishActivateRssiScanRequest', '9': 0, '10': 'dishActivateRssiScan'},
    {'1': 'dish_get_rssi_scan_result', '3': 2020, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetRssiScanResultRequest', '9': 0, '10': 'dishGetRssiScanResult'},
    {'1': 'dish_factory_reset', '3': 2021, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishFactoryResetRequest', '9': 0, '10': 'dishFactoryReset'},
    {'1': 'reset_button', '3': 2022, '4': 1, '5': 11, '6': '.SpaceX.API.Device.ResetButtonRequest', '9': 0, '10': 'resetButton'},
    {'1': 'wifi_set_config', '3': 3001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSetConfigRequest', '9': 0, '10': 'wifiSetConfig'},
    {'1': 'wifi_get_clients', '3': 3002, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetClientsRequest', '9': 0, '10': 'wifiGetClients'},
    {'1': 'wifi_setup', '3': 3003, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSetupRequest', '9': 0, '10': 'wifiSetup'},
    {'1': 'wifi_get_ping_metrics', '3': 3007, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetPingMetricsRequest', '9': 0, '10': 'wifiGetPingMetrics'},
    {'1': 'wifi_get_config', '3': 3009, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetConfigRequest', '9': 0, '10': 'wifiGetConfig'},
    {'1': 'wifi_set_mesh_device_trust', '3': 3012, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSetMeshDeviceTrustRequest', '9': 0, '10': 'wifiSetMeshDeviceTrust'},
    {
      '1': 'wifi_set_mesh_config',
      '3': 3013,
      '4': 1,
      '5': 11,
      '6': '.SpaceX.API.Device.WifiSetMeshConfigRequest',
      '8': {'3': true},
      '9': 0,
      '10': 'wifiSetMeshConfig',
    },
    {'1': 'wifi_get_client_history', '3': 3015, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetClientHistoryRequest', '9': 0, '10': 'wifiGetClientHistory'},
    {'1': 'wifi_set_aviation_conformed', '3': 3016, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSetAviationConformedRequest', '9': 0, '10': 'wifiSetAviationConformed'},
    {'1': 'wifi_set_client_given_name', '3': 3017, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSetClientGivenNameRequest', '9': 0, '10': 'wifiSetClientGivenName'},
    {'1': 'wifi_self_test', '3': 3018, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSelfTestRequest', '9': 0, '10': 'wifiSelfTest'},
    {'1': 'wifi_calibration_mode', '3': 3019, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiCalibrationModeRequest', '9': 0, '10': 'wifiCalibrationMode'},
    {'1': 'wifi_guest_info', '3': 3020, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGuestInfoRequest', '9': 0, '10': 'wifiGuestInfo'},
    {'1': 'wifi_rf_test', '3': 3021, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiRfTestRequest', '9': 0, '10': 'wifiRfTest'},
    {'1': 'wifi_get_firewall', '3': 3024, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetFirewallRequest', '9': 0, '10': 'wifiGetFirewall'},
    {'1': 'wifi_toggle_poe_negotiation', '3': 3025, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiTogglePoeNegotiationRequest', '9': 0, '10': 'wifiTogglePoeNegotiation'},
    {'1': 'wifi_factory_test_command', '3': 3026, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiFactoryTestCommandRequest', '9': 0, '10': 'wifiFactoryTestCommand'},
    {'1': 'wifi_start_local_telem_proxy', '3': 3027, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiStartLocalTelemProxyRequest', '9': 0, '10': 'wifiStartLocalTelemProxy'},
    {'1': 'wifi_run_self_test', '3': 3028, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiRunSelfTestRequest', '9': 0, '10': 'wifiRunSelfTest'},
    {'1': 'wifi_backhaul_stats', '3': 3029, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiBackhaulStatsRequest', '9': 0, '10': 'wifiBackhaulStats'},
    {'1': 'wifi_toggle_umbilical_mode', '3': 3030, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiToggleUmbilicalModeRequest', '9': 0, '10': 'wifiToggleUmbilicalMode'},
    {'1': 'transceiver_if_loopback_test', '3': 4001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.TransceiverIFLoopbackTestRequest', '9': 0, '10': 'transceiverIfLoopbackTest'},
    {'1': 'transceiver_get_status', '3': 4003, '4': 1, '5': 11, '6': '.SpaceX.API.Device.TransceiverGetStatusRequest', '9': 0, '10': 'transceiverGetStatus'},
    {'1': 'transceiver_get_telemetry', '3': 4004, '4': 1, '5': 11, '6': '.SpaceX.API.Device.TransceiverGetTelemetryRequest', '9': 0, '10': 'transceiverGetTelemetry'},
    {'1': 'get_diagnostics', '3': 6000, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetDiagnosticsRequest', '9': 0, '10': 'getDiagnostics'},
  ],
  '8': [
    {'1': 'request'},
  ],
  '9': [
    {'1': 1018, '2': 1019},
    {'1': 1025, '2': 1026},
    {'1': 1026, '2': 1027},
    {'1': 2016, '2': 2017},
    {'1': 3011, '2': 3012},
    {'1': 3014, '2': 3015},
    {'1': 3202, '2': 3203},
  ],
};

/// Descriptor for `Request`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestDescriptor = $convert.base64Decode(
    'CgdSZXF1ZXN0Eg4KAmlkGAEgASgEUgJpZBIbCgl0YXJnZXRfaWQYDSABKAlSCHRhcmdldElkEh'
    'kKCGVwb2NoX2lkGA4gASgEUgdlcG9jaElkEkYKDnNpZ25lZF9yZXF1ZXN0GA8gASgLMh0uU3Bh'
    'Y2VYLkFQSS5EZXZpY2UuU2lnbmVkRGF0YUgAUg1zaWduZWRSZXF1ZXN0EjsKBnJlYm9vdBjpBy'
    'ABKAsyIC5TcGFjZVguQVBJLkRldmljZS5SZWJvb3RSZXF1ZXN0SABSBnJlYm9vdBJFCgpzcGVl'
    'ZF90ZXN0GOsHIAEoCzIjLlNwYWNlWC5BUEkuRGV2aWNlLlNwZWVkVGVzdFJlcXVlc3RIAFIJc3'
    'BlZWRUZXN0EkUKCmdldF9zdGF0dXMY7AcgASgLMiMuU3BhY2VYLkFQSS5EZXZpY2UuR2V0U3Rh'
    'dHVzUmVxdWVzdEgAUglnZXRTdGF0dXMSTQoMYXV0aGVudGljYXRlGO0HIAEoCzImLlNwYWNlWC'
    '5BUEkuRGV2aWNlLkF1dGhlbnRpY2F0ZVJlcXVlc3RIAFIMYXV0aGVudGljYXRlEkYKC2dldF9u'
    'ZXh0X2lkGO4HIAEoCzIjLlNwYWNlWC5BUEkuRGV2aWNlLkdldE5leHRJZFJlcXVlc3RIAFIJZ2'
    'V0TmV4dElkEkgKC2dldF9oaXN0b3J5GO8HIAEoCzIkLlNwYWNlWC5BUEkuRGV2aWNlLkdldEhp'
    'c3RvcnlSZXF1ZXN0SABSCmdldEhpc3RvcnkSUgoPZ2V0X2RldmljZV9pbmZvGPAHIAEoCzInLl'
    'NwYWNlWC5BUEkuRGV2aWNlLkdldERldmljZUluZm9SZXF1ZXN0SABSDWdldERldmljZUluZm8S'
    'PwoIZ2V0X3BpbmcY8QcgASgLMiEuU3BhY2VYLkFQSS5EZXZpY2UuR2V0UGluZ1JlcXVlc3RIAF'
    'IHZ2V0UGluZxJVChBzZXRfdHJ1c3RlZF9rZXlzGPIHIAEoCzIoLlNwYWNlWC5BUEkuRGV2aWNl'
    'LlNldFRydXN0ZWRLZXlzUmVxdWVzdEgAUg5zZXRUcnVzdGVkS2V5cxJOCg1mYWN0b3J5X3Jlc2'
    'V0GPMHIAEoCzImLlNwYWNlWC5BUEkuRGV2aWNlLkZhY3RvcnlSZXNldFJlcXVlc3RIAFIMZmFj'
    'dG9yeVJlc2V0EjwKB2dldF9sb2cY9AcgASgLMiAuU3BhY2VYLkFQSS5EZXZpY2UuR2V0TG9nUm'
    'VxdWVzdEgAUgZnZXRMb2cSPAoHc2V0X3NrdRj1ByABKAsyIC5TcGFjZVguQVBJLkRldmljZS5T'
    'ZXRTa3VSZXF1ZXN0SABSBnNldFNrdRI7CgZ1cGRhdGUY9gcgASgLMiAuU3BhY2VYLkFQSS5EZX'
    'ZpY2UuVXBkYXRlUmVxdWVzdEgAUgZ1cGRhdGUSZwoWZ2V0X25ldHdvcmtfaW50ZXJmYWNlcxj3'
    'ByABKAsyLi5TcGFjZVguQVBJLkRldmljZS5HZXROZXR3b3JrSW50ZXJmYWNlc1JlcXVlc3RIAF'
    'IUZ2V0TmV0d29ya0ludGVyZmFjZXMSQgoJcGluZ19ob3N0GPgHIAEoCzIiLlNwYWNlWC5BUEku'
    'RGV2aWNlLlBpbmdIb3N0UmVxdWVzdEgAUghwaW5nSG9zdBJLCgxnZXRfbG9jYXRpb24Y+QcgAS'
    'gLMiUuU3BhY2VYLkFQSS5EZXZpY2UuR2V0TG9jYXRpb25SZXF1ZXN0SABSC2dldExvY2F0aW9u'
    'EkwKDWdldF9oZWFwX2R1bXAY+wcgASgLMiUuU3BhY2VYLkFQSS5EZXZpY2UuR2V0SGVhcER1bX'
    'BSZXF1ZXN0SABSC2dldEhlYXBEdW1wElQKD3Jlc3RhcnRfY29udHJvbBj8ByABKAsyKC5TcGFj'
    'ZVguQVBJLkRldmljZS5SZXN0YXJ0Q29udHJvbFJlcXVlc3RIAFIOcmVzdGFydENvbnRyb2wSNQ'
    'oEZnVzZRj9ByABKAsyHi5TcGFjZVguQVBJLkRldmljZS5GdXNlUmVxdWVzdEgAUgRmdXNlEmEK'
    'FGdldF9wZXJzaXN0ZW50X3N0YXRzGP4HIAEoCzIsLlNwYWNlWC5BUEkuRGV2aWNlLkdldFBlcn'
    'Npc3RlbnRTdGF0c1JlcXVlc3RIAFISZ2V0UGVyc2lzdGVudFN0YXRzElQKD2dldF9jb25uZWN0'
    'aW9ucxj/ByABKAsyKC5TcGFjZVguQVBJLkRldmljZS5HZXRDb25uZWN0aW9uc1JlcXVlc3RIAF'
    'IOZ2V0Q29ubmVjdGlvbnMSVAoPc3RhcnRfc3BlZWR0ZXN0GIMIIAEoCzIoLlNwYWNlWC5BUEku'
    'RGV2aWNlLlN0YXJ0U3BlZWR0ZXN0UmVxdWVzdEgAUg5zdGFydFNwZWVkdGVzdBJhChRnZXRfc3'
    'BlZWR0ZXN0X3N0YXR1cxiECCABKAsyLC5TcGFjZVguQVBJLkRldmljZS5HZXRTcGVlZHRlc3RT'
    'dGF0dXNSZXF1ZXN0SABSEmdldFNwZWVkdGVzdFN0YXR1cxJqChdyZXBvcnRfY2xpZW50X3NwZW'
    'VkdGVzdBiFCCABKAsyLy5TcGFjZVguQVBJLkRldmljZS5SZXBvcnRDbGllbnRTcGVlZHRlc3RS'
    'ZXF1ZXN0SABSFXJlcG9ydENsaWVudFNwZWVkdGVzdBJiChNpbml0aWF0ZV9yZW1vdGVfc3NoGI'
    'YIIAEoCzIrLlNwYWNlWC5BUEkuRGV2aWNlLkluaXRpYXRlUmVtb3RlU3NoUmVxdWVzdEICGAFI'
    'AFIRaW5pdGlhdGVSZW1vdGVTc2gSQgoJc2VsZl90ZXN0GIcIIAEoCzIiLlNwYWNlWC5BUEkuRG'
    'V2aWNlLlNlbGZUZXN0UmVxdWVzdEgAUghzZWxmVGVzdBJMCg1zZXRfdGVzdF9tb2RlGIgIIAEo'
    'CzIlLlNwYWNlWC5BUEkuRGV2aWNlLlNldFRlc3RNb2RlUmVxdWVzdEgAUgtzZXRUZXN0TW9kZR'
    'JUCg9zb2Z0d2FyZV91cGRhdGUYiQggASgLMiguU3BhY2VYLkFQSS5EZXZpY2UuU29mdHdhcmVV'
    'cGRhdGVSZXF1ZXN0SABSDnNvZnR3YXJlVXBkYXRlElsKEmVuYWJsZV9kZWJ1Z190ZWxlbRiKCC'
    'ABKAsyKi5TcGFjZVguQVBJLkRldmljZS5FbmFibGVEZWJ1Z1RlbGVtUmVxdWVzdEgAUhBlbmFi'
    'bGVEZWJ1Z1RlbGVtEkUKCmlxX2NhcHR1cmUYiwggASgLMiMuU3BhY2VYLkFQSS5EZXZpY2UuSV'
    'FDYXB0dXJlUmVxdWVzdEgAUglpcUNhcHR1cmUSUgoPZ2V0X3JhZGlvX3N0YXRzGIwIIAEoCzIn'
    'LlNwYWNlWC5BUEkuRGV2aWNlLkdldFJhZGlvU3RhdHNSZXF1ZXN0SABSDWdldFJhZGlvU3RhdH'
    'MSOAoEdGltZRiNCCABKAsyIS5TcGFjZVguQVBJLkRldmljZS5HZXRUaW1lUmVxdWVzdEgAUgR0'
    'aW1lElUKEHJ1bl9pcGVyZl9zZXJ2ZXIYjgggASgLMiguU3BhY2VYLkFQSS5EZXZpY2UuUnVuSX'
    'BlcmZTZXJ2ZXJSZXF1ZXN0SABSDnJ1bklwZXJmU2VydmVyEmQKFXRjcF9jb25uZWN0aXZpdHlf'
    'dGVzdBiPCCABKAsyLS5TcGFjZVguQVBJLkRldmljZS5UY3BDb25uZWN0aXZpdHlUZXN0UmVxdW'
    'VzdEgAUhN0Y3BDb25uZWN0aXZpdHlUZXN0EmQKFXVkcF9jb25uZWN0aXZpdHlfdGVzdBiQCCAB'
    'KAsyLS5TcGFjZVguQVBJLkRldmljZS5VZHBDb25uZWN0aXZpdHlUZXN0UmVxdWVzdEgAUhN1ZH'
    'BDb25uZWN0aXZpdHlUZXN0Ek0KEXNlbnNpdGl2ZV9yZXF1ZXN0GLYIIAEoCzIdLlNwYWNlWC5B'
    'UEkuRGV2aWNlLlNpZ25lZERhdGFIAFIQc2Vuc2l0aXZlUmVxdWVzdBJCCglkaXNoX3N0b3cY0g'
    '8gASgLMiIuU3BhY2VYLkFQSS5EZXZpY2UuRGlzaFN0b3dSZXF1ZXN0SABSCGRpc2hTdG93ElUK'
    'EGRpc2hfZ2V0X2NvbnRleHQY0w8gASgLMiguU3BhY2VYLkFQSS5EZXZpY2UuRGlzaEdldENvbn'
    'RleHRSZXF1ZXN0SABSDmRpc2hHZXRDb250ZXh0EkkKDGRpc2hfc2V0X2VtYxjXDyABKAsyJC5T'
    'cGFjZVguQVBJLkRldmljZS5EaXNoU2V0RW1jUmVxdWVzdEgAUgpkaXNoU2V0RW1jEmsKGGRpc2'
    'hfZ2V0X29ic3RydWN0aW9uX21hcBjYDyABKAsyLy5TcGFjZVguQVBJLkRldmljZS5EaXNoR2V0'
    'T2JzdHJ1Y3Rpb25NYXBSZXF1ZXN0SABSFWRpc2hHZXRPYnN0cnVjdGlvbk1hcBJJCgxkaXNoX2'
    'dldF9lbWMY2Q8gASgLMiQuU3BhY2VYLkFQSS5EZXZpY2UuRGlzaEdldEVtY1JlcXVlc3RIAFIK'
    'ZGlzaEdldEVtYxJSCg9kaXNoX3NldF9jb25maWcY2g8gASgLMicuU3BhY2VYLkFQSS5EZXZpY2'
    'UuRGlzaFNldENvbmZpZ1JlcXVlc3RIAFINZGlzaFNldENvbmZpZxJSCg9kaXNoX2dldF9jb25m'
    'aWcY2w8gASgLMicuU3BhY2VYLkFQSS5EZXZpY2UuRGlzaEdldENvbmZpZ1JlcXVlc3RIAFINZG'
    'lzaEdldENvbmZpZxJfChRzdGFydF9kaXNoX3NlbGZfdGVzdBjcDyABKAsyKy5TcGFjZVguQVBJ'
    'LkRldmljZS5TdGFydERpc2hTZWxmVGVzdFJlcXVlc3RIAFIRc3RhcnREaXNoU2VsZlRlc3QSUg'
    'oPZGlzaF9wb3dlcl9zYXZlGN0PIAEoCzInLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hQb3dlclNh'
    'dmVSZXF1ZXN0SABSDWRpc2hQb3dlclNhdmUSVQoQZGlzaF9pbmhpYml0X2dwcxjeDyABKAsyKC'
    '5TcGFjZVguQVBJLkRldmljZS5EaXNoSW5oaWJpdEdwc1JlcXVlc3RIAFIOZGlzaEluaGliaXRH'
    'cHMSTAoNZGlzaF9nZXRfZGF0YRjfDyABKAsyJS5TcGFjZVguQVBJLkRldmljZS5EaXNoR2V0RG'
    'F0YVJlcXVlc3RIAFILZGlzaEdldERhdGEScQoaZGlzaF9jbGVhcl9vYnN0cnVjdGlvbl9tYXAY'
    '4Q8gASgLMjEuU3BhY2VYLkFQSS5EZXZpY2UuRGlzaENsZWFyT2JzdHJ1Y3Rpb25NYXBSZXF1ZX'
    'N0SABSF2Rpc2hDbGVhck9ic3RydWN0aW9uTWFwEnMKHGRpc2hfc2V0X21heF9wb3dlcl90ZXN0'
    'X21vZGUY4g8gASgLMjEuU3BhY2VYLkFQSS5EZXZpY2UuRGlzaFNldE1heFBvd2VyVGVzdE1vZG'
    'VSZXF1ZXN0SABSF2Rpc2hTZXRNYXhQb3dlclRlc3RNb2RlEmgKF2Rpc2hfYWN0aXZhdGVfcnNz'
    'aV9zY2FuGOMPIAEoCzIuLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hBY3RpdmF0ZVJzc2lTY2FuUm'
    'VxdWVzdEgAUhRkaXNoQWN0aXZhdGVSc3NpU2NhbhJsChlkaXNoX2dldF9yc3NpX3NjYW5fcmVz'
    'dWx0GOQPIAEoCzIvLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hHZXRSc3NpU2NhblJlc3VsdFJlcX'
    'Vlc3RIAFIVZGlzaEdldFJzc2lTY2FuUmVzdWx0ElsKEmRpc2hfZmFjdG9yeV9yZXNldBjlDyAB'
    'KAsyKi5TcGFjZVguQVBJLkRldmljZS5EaXNoRmFjdG9yeVJlc2V0UmVxdWVzdEgAUhBkaXNoRm'
    'FjdG9yeVJlc2V0EksKDHJlc2V0X2J1dHRvbhjmDyABKAsyJS5TcGFjZVguQVBJLkRldmljZS5S'
    'ZXNldEJ1dHRvblJlcXVlc3RIAFILcmVzZXRCdXR0b24SUgoPd2lmaV9zZXRfY29uZmlnGLkXIA'
    'EoCzInLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlTZXRDb25maWdSZXF1ZXN0SABSDXdpZmlTZXRD'
    'b25maWcSVQoQd2lmaV9nZXRfY2xpZW50cxi6FyABKAsyKC5TcGFjZVguQVBJLkRldmljZS5XaW'
    'ZpR2V0Q2xpZW50c1JlcXVlc3RIAFIOd2lmaUdldENsaWVudHMSRQoKd2lmaV9zZXR1cBi7FyAB'
    'KAsyIy5TcGFjZVguQVBJLkRldmljZS5XaWZpU2V0dXBSZXF1ZXN0SABSCXdpZmlTZXR1cBJiCh'
    'V3aWZpX2dldF9waW5nX21ldHJpY3MYvxcgASgLMiwuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUdl'
    'dFBpbmdNZXRyaWNzUmVxdWVzdEgAUhJ3aWZpR2V0UGluZ01ldHJpY3MSUgoPd2lmaV9nZXRfY2'
    '9uZmlnGMEXIAEoCzInLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlHZXRDb25maWdSZXF1ZXN0SABS'
    'DXdpZmlHZXRDb25maWcSbwoad2lmaV9zZXRfbWVzaF9kZXZpY2VfdHJ1c3QYxBcgASgLMjAuU3'
    'BhY2VYLkFQSS5EZXZpY2UuV2lmaVNldE1lc2hEZXZpY2VUcnVzdFJlcXVlc3RIAFIWd2lmaVNl'
    'dE1lc2hEZXZpY2VUcnVzdBJjChR3aWZpX3NldF9tZXNoX2NvbmZpZxjFFyABKAsyKy5TcGFjZV'
    'guQVBJLkRldmljZS5XaWZpU2V0TWVzaENvbmZpZ1JlcXVlc3RCAhgBSABSEXdpZmlTZXRNZXNo'
    'Q29uZmlnEmgKF3dpZmlfZ2V0X2NsaWVudF9oaXN0b3J5GMcXIAEoCzIuLlNwYWNlWC5BUEkuRG'
    'V2aWNlLldpZmlHZXRDbGllbnRIaXN0b3J5UmVxdWVzdEgAUhR3aWZpR2V0Q2xpZW50SGlzdG9y'
    'eRJ0Cht3aWZpX3NldF9hdmlhdGlvbl9jb25mb3JtZWQYyBcgASgLMjIuU3BhY2VYLkFQSS5EZX'
    'ZpY2UuV2lmaVNldEF2aWF0aW9uQ29uZm9ybWVkUmVxdWVzdEgAUhh3aWZpU2V0QXZpYXRpb25D'
    'b25mb3JtZWQSbwoad2lmaV9zZXRfY2xpZW50X2dpdmVuX25hbWUYyRcgASgLMjAuU3BhY2VYLk'
    'FQSS5EZXZpY2UuV2lmaVNldENsaWVudEdpdmVuTmFtZVJlcXVlc3RIAFIWd2lmaVNldENsaWVu'
    'dEdpdmVuTmFtZRJPCg53aWZpX3NlbGZfdGVzdBjKFyABKAsyJi5TcGFjZVguQVBJLkRldmljZS'
    '5XaWZpU2VsZlRlc3RSZXF1ZXN0SABSDHdpZmlTZWxmVGVzdBJkChV3aWZpX2NhbGlicmF0aW9u'
    'X21vZGUYyxcgASgLMi0uU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUNhbGlicmF0aW9uTW9kZVJlcX'
    'Vlc3RIAFITd2lmaUNhbGlicmF0aW9uTW9kZRJSCg93aWZpX2d1ZXN0X2luZm8YzBcgASgLMicu'
    'U3BhY2VYLkFQSS5EZXZpY2UuV2lmaUd1ZXN0SW5mb1JlcXVlc3RIAFINd2lmaUd1ZXN0SW5mbx'
    'JJCgx3aWZpX3JmX3Rlc3QYzRcgASgLMiQuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaVJmVGVzdFJl'
    'cXVlc3RIAFIKd2lmaVJmVGVzdBJYChF3aWZpX2dldF9maXJld2FsbBjQFyABKAsyKS5TcGFjZV'
    'guQVBJLkRldmljZS5XaWZpR2V0RmlyZXdhbGxSZXF1ZXN0SABSD3dpZmlHZXRGaXJld2FsbBJ0'
    'Cht3aWZpX3RvZ2dsZV9wb2VfbmVnb3RpYXRpb24Y0RcgASgLMjIuU3BhY2VYLkFQSS5EZXZpY2'
    'UuV2lmaVRvZ2dsZVBvZU5lZ290aWF0aW9uUmVxdWVzdEgAUhh3aWZpVG9nZ2xlUG9lTmVnb3Rp'
    'YXRpb24SbgoZd2lmaV9mYWN0b3J5X3Rlc3RfY29tbWFuZBjSFyABKAsyMC5TcGFjZVguQVBJLk'
    'RldmljZS5XaWZpRmFjdG9yeVRlc3RDb21tYW5kUmVxdWVzdEgAUhZ3aWZpRmFjdG9yeVRlc3RD'
    'b21tYW5kEnUKHHdpZmlfc3RhcnRfbG9jYWxfdGVsZW1fcHJveHkY0xcgASgLMjIuU3BhY2VYLk'
    'FQSS5EZXZpY2UuV2lmaVN0YXJ0TG9jYWxUZWxlbVByb3h5UmVxdWVzdEgAUhh3aWZpU3RhcnRM'
    'b2NhbFRlbGVtUHJveHkSWQoSd2lmaV9ydW5fc2VsZl90ZXN0GNQXIAEoCzIpLlNwYWNlWC5BUE'
    'kuRGV2aWNlLldpZmlSdW5TZWxmVGVzdFJlcXVlc3RIAFIPd2lmaVJ1blNlbGZUZXN0El4KE3dp'
    'ZmlfYmFja2hhdWxfc3RhdHMY1RcgASgLMisuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUJhY2toYX'
    'VsU3RhdHNSZXF1ZXN0SABSEXdpZmlCYWNraGF1bFN0YXRzEnEKGndpZmlfdG9nZ2xlX3VtYmls'
    'aWNhbF9tb2RlGNYXIAEoCzIxLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlUb2dnbGVVbWJpbGljYW'
    'xNb2RlUmVxdWVzdEgAUhd3aWZpVG9nZ2xlVW1iaWxpY2FsTW9kZRJ3Chx0cmFuc2NlaXZlcl9p'
    'Zl9sb29wYmFja190ZXN0GKEfIAEoCzIzLlNwYWNlWC5BUEkuRGV2aWNlLlRyYW5zY2VpdmVySU'
    'ZMb29wYmFja1Rlc3RSZXF1ZXN0SABSGXRyYW5zY2VpdmVySWZMb29wYmFja1Rlc3QSZwoWdHJh'
    'bnNjZWl2ZXJfZ2V0X3N0YXR1cxijHyABKAsyLi5TcGFjZVguQVBJLkRldmljZS5UcmFuc2NlaX'
    'ZlckdldFN0YXR1c1JlcXVlc3RIAFIUdHJhbnNjZWl2ZXJHZXRTdGF0dXMScAoZdHJhbnNjZWl2'
    'ZXJfZ2V0X3RlbGVtZXRyeRikHyABKAsyMS5TcGFjZVguQVBJLkRldmljZS5UcmFuc2NlaXZlck'
    'dldFRlbGVtZXRyeVJlcXVlc3RIAFIXdHJhbnNjZWl2ZXJHZXRUZWxlbWV0cnkSVAoPZ2V0X2Rp'
    'YWdub3N0aWNzGPAuIAEoCzIoLlNwYWNlWC5BUEkuRGV2aWNlLkdldERpYWdub3N0aWNzUmVxdW'
    'VzdEgAUg5nZXREaWFnbm9zdGljc0IJCgdyZXF1ZXN0SgYI+gcQ+wdKBgiBCBCCCEoGCIIIEIMI'
    'SgYI4A8Q4Q9KBgjDFxDEF0oGCMYXEMcXSgYIghkQgxk=');

@$core.Deprecated('Use signedDataDescriptor instead')
const SignedData$json = {
  '1': 'SignedData',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
    {'1': 'signature', '3': 2, '4': 1, '5': 12, '10': 'signature'},
  ],
};

/// Descriptor for `SignedData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signedDataDescriptor = $convert.base64Decode(
    'CgpTaWduZWREYXRhEhIKBGRhdGEYASABKAxSBGRhdGESHAoJc2lnbmF0dXJlGAIgASgMUglzaW'
    'duYXR1cmU=');

@$core.Deprecated('Use rebootRequestDescriptor instead')
const RebootRequest$json = {
  '1': 'RebootRequest',
};

/// Descriptor for `RebootRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rebootRequestDescriptor = $convert.base64Decode(
    'Cg1SZWJvb3RSZXF1ZXN0');

@$core.Deprecated('Use speedTestRequestDescriptor instead')
const SpeedTestRequest$json = {
  '1': 'SpeedTestRequest',
  '2': [
    {'1': 'client_speedtest', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SpeedTestStats', '10': 'clientSpeedtest'},
    {'1': 'client_rssi', '3': 2, '4': 1, '5': 2, '10': 'clientRssi'},
    {'1': 'client_platform', '3': 3, '4': 1, '5': 11, '6': '.SpaceX.API.Device.ClientPlatform', '10': 'clientPlatform'},
    {'1': 'id', '3': 4, '4': 1, '5': 13, '10': 'id'},
  ],
};

/// Descriptor for `SpeedTestRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List speedTestRequestDescriptor = $convert.base64Decode(
    'ChBTcGVlZFRlc3RSZXF1ZXN0EkwKEGNsaWVudF9zcGVlZHRlc3QYASABKAsyIS5TcGFjZVguQV'
    'BJLkRldmljZS5TcGVlZFRlc3RTdGF0c1IPY2xpZW50U3BlZWR0ZXN0Eh8KC2NsaWVudF9yc3Np'
    'GAIgASgCUgpjbGllbnRSc3NpEkoKD2NsaWVudF9wbGF0Zm9ybRgDIAEoCzIhLlNwYWNlWC5BUE'
    'kuRGV2aWNlLkNsaWVudFBsYXRmb3JtUg5jbGllbnRQbGF0Zm9ybRIOCgJpZBgEIAEoDVICaWQ=');

@$core.Deprecated('Use speedTestStatsDescriptor instead')
const SpeedTestStats$json = {
  '1': 'SpeedTestStats',
  '2': [
    {'1': 'upload_mbps', '3': 1, '4': 1, '5': 2, '10': 'uploadMbps'},
    {'1': 'download_mbps', '3': 2, '4': 1, '5': 2, '10': 'downloadMbps'},
    {
      '1': 'latency_ms',
      '3': 3,
      '4': 1,
      '5': 2,
      '8': {'3': true},
      '10': 'latencyMs',
    },
    {
      '1': 'start_time',
      '3': 4,
      '4': 1,
      '5': 4,
      '8': {'3': true},
      '10': 'startTime',
    },
    {'1': 'upload_start_time', '3': 5, '4': 1, '5': 3, '10': 'uploadStartTime'},
    {'1': 'download_start_time', '3': 6, '4': 1, '5': 3, '10': 'downloadStartTime'},
    {'1': 'target', '3': 7, '4': 1, '5': 14, '6': '.SpaceX.API.Device.SpeedTestStats.Target', '10': 'target'},
    {'1': 'tcp_streams', '3': 8, '4': 1, '5': 13, '10': 'tcpStreams'},
  ],
  '4': [SpeedTestStats_Target$json],
};

@$core.Deprecated('Use speedTestStatsDescriptor instead')
const SpeedTestStats_Target$json = {
  '1': 'Target',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'FASTCOM', '2': 1},
    {'1': 'CLOUDFLARE', '2': 2},
  ],
};

/// Descriptor for `SpeedTestStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List speedTestStatsDescriptor = $convert.base64Decode(
    'Cg5TcGVlZFRlc3RTdGF0cxIfCgt1cGxvYWRfbWJwcxgBIAEoAlIKdXBsb2FkTWJwcxIjCg1kb3'
    'dubG9hZF9tYnBzGAIgASgCUgxkb3dubG9hZE1icHMSIQoKbGF0ZW5jeV9tcxgDIAEoAkICGAFS'
    'CWxhdGVuY3lNcxIhCgpzdGFydF90aW1lGAQgASgEQgIYAVIJc3RhcnRUaW1lEioKEXVwbG9hZF'
    '9zdGFydF90aW1lGAUgASgDUg91cGxvYWRTdGFydFRpbWUSLgoTZG93bmxvYWRfc3RhcnRfdGlt'
    'ZRgGIAEoA1IRZG93bmxvYWRTdGFydFRpbWUSQAoGdGFyZ2V0GAcgASgOMiguU3BhY2VYLkFQSS'
    '5EZXZpY2UuU3BlZWRUZXN0U3RhdHMuVGFyZ2V0UgZ0YXJnZXQSHwoLdGNwX3N0cmVhbXMYCCAB'
    'KA1SCnRjcFN0cmVhbXMiMgoGVGFyZ2V0EgsKB1VOS05PV04QABILCgdGQVNUQ09NEAESDgoKQ0'
    'xPVURGTEFSRRAC');

@$core.Deprecated('Use clientPlatformDescriptor instead')
const ClientPlatform$json = {
  '1': 'ClientPlatform',
  '2': [
    {'1': 'platform', '3': 1, '4': 1, '5': 14, '6': '.SpaceX.API.Device.ClientPlatform.Platform', '10': 'platform'},
    {'1': 'major_version', '3': 2, '4': 1, '5': 2, '10': 'majorVersion'},
    {'1': 'minor_version', '3': 3, '4': 1, '5': 2, '10': 'minorVersion'},
  ],
  '4': [ClientPlatform_Platform$json],
};

@$core.Deprecated('Use clientPlatformDescriptor instead')
const ClientPlatform_Platform$json = {
  '1': 'Platform',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'IOS', '2': 1},
    {'1': 'ANDROID', '2': 2},
    {'1': 'WEB', '2': 3},
  ],
};

/// Descriptor for `ClientPlatform`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientPlatformDescriptor = $convert.base64Decode(
    'Cg5DbGllbnRQbGF0Zm9ybRJGCghwbGF0Zm9ybRgBIAEoDjIqLlNwYWNlWC5BUEkuRGV2aWNlLk'
    'NsaWVudFBsYXRmb3JtLlBsYXRmb3JtUghwbGF0Zm9ybRIjCg1tYWpvcl92ZXJzaW9uGAIgASgC'
    'UgxtYWpvclZlcnNpb24SIwoNbWlub3JfdmVyc2lvbhgDIAEoAlIMbWlub3JWZXJzaW9uIjYKCF'
    'BsYXRmb3JtEgsKB1VOS05PV04QABIHCgNJT1MQARILCgdBTkRST0lEEAISBwoDV0VCEAM=');

@$core.Deprecated('Use getStatusRequestDescriptor instead')
const GetStatusRequest$json = {
  '1': 'GetStatusRequest',
};

/// Descriptor for `GetStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStatusRequestDescriptor = $convert.base64Decode(
    'ChBHZXRTdGF0dXNSZXF1ZXN0');

@$core.Deprecated('Use authenticateRequestDescriptor instead')
const AuthenticateRequest$json = {
  '1': 'AuthenticateRequest',
  '2': [
    {'1': 'challenge', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SignedData', '10': 'challenge'},
  ],
};

/// Descriptor for `AuthenticateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authenticateRequestDescriptor = $convert.base64Decode(
    'ChNBdXRoZW50aWNhdGVSZXF1ZXN0EjsKCWNoYWxsZW5nZRgBIAEoCzIdLlNwYWNlWC5BUEkuRG'
    'V2aWNlLlNpZ25lZERhdGFSCWNoYWxsZW5nZQ==');

@$core.Deprecated('Use getNextIdRequestDescriptor instead')
const GetNextIdRequest$json = {
  '1': 'GetNextIdRequest',
};

/// Descriptor for `GetNextIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNextIdRequestDescriptor = $convert.base64Decode(
    'ChBHZXROZXh0SWRSZXF1ZXN0');

@$core.Deprecated('Use getHistoryRequestDescriptor instead')
const GetHistoryRequest$json = {
  '1': 'GetHistoryRequest',
};

/// Descriptor for `GetHistoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getHistoryRequestDescriptor = $convert.base64Decode(
    'ChFHZXRIaXN0b3J5UmVxdWVzdA==');

@$core.Deprecated('Use getDeviceInfoRequestDescriptor instead')
const GetDeviceInfoRequest$json = {
  '1': 'GetDeviceInfoRequest',
};

/// Descriptor for `GetDeviceInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDeviceInfoRequestDescriptor = $convert.base64Decode(
    'ChRHZXREZXZpY2VJbmZvUmVxdWVzdA==');

@$core.Deprecated('Use getPingRequestDescriptor instead')
const GetPingRequest$json = {
  '1': 'GetPingRequest',
};

/// Descriptor for `GetPingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPingRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRQaW5nUmVxdWVzdA==');

@$core.Deprecated('Use setTrustedKeysRequestDescriptor instead')
const SetTrustedKeysRequest$json = {
  '1': 'SetTrustedKeysRequest',
  '2': [
    {'1': 'keys', '3': 1, '4': 3, '5': 11, '6': '.SpaceX.API.Device.PublicKey', '10': 'keys'},
  ],
};

/// Descriptor for `SetTrustedKeysRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setTrustedKeysRequestDescriptor = $convert.base64Decode(
    'ChVTZXRUcnVzdGVkS2V5c1JlcXVlc3QSMAoEa2V5cxgBIAMoCzIcLlNwYWNlWC5BUEkuRGV2aW'
    'NlLlB1YmxpY0tleVIEa2V5cw==');

@$core.Deprecated('Use publicKeyDescriptor instead')
const PublicKey$json = {
  '1': 'PublicKey',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'capabilities',
      '3': 2,
      '4': 3,
      '5': 14,
      '6': '.SpaceX.API.Device.Capability',
      '8': {'3': true},
      '10': 'capabilities',
    },
    {'1': 'user', '3': 3, '4': 1, '5': 14, '6': '.SpaceX.API.Device.User', '10': 'user'},
  ],
};

/// Descriptor for `PublicKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List publicKeyDescriptor = $convert.base64Decode(
    'CglQdWJsaWNLZXkSEAoDa2V5GAEgASgJUgNrZXkSRQoMY2FwYWJpbGl0aWVzGAIgAygOMh0uU3'
    'BhY2VYLkFQSS5EZXZpY2UuQ2FwYWJpbGl0eUICGAFSDGNhcGFiaWxpdGllcxIrCgR1c2VyGAMg'
    'ASgOMhcuU3BhY2VYLkFQSS5EZXZpY2UuVXNlclIEdXNlcg==');

@$core.Deprecated('Use factoryResetRequestDescriptor instead')
const FactoryResetRequest$json = {
  '1': 'FactoryResetRequest',
};

/// Descriptor for `FactoryResetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List factoryResetRequestDescriptor = $convert.base64Decode(
    'ChNGYWN0b3J5UmVzZXRSZXF1ZXN0');

@$core.Deprecated('Use getLogRequestDescriptor instead')
const GetLogRequest$json = {
  '1': 'GetLogRequest',
};

/// Descriptor for `GetLogRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLogRequestDescriptor = $convert.base64Decode(
    'Cg1HZXRMb2dSZXF1ZXN0');

@$core.Deprecated('Use setSkuRequestDescriptor instead')
const SetSkuRequest$json = {
  '1': 'SetSkuRequest',
  '2': [
    {'1': 'sku', '3': 1, '4': 1, '5': 9, '10': 'sku'},
    {'1': 'country_code', '3': 2, '4': 1, '5': 9, '10': 'countryCode'},
    {'1': 'apply_country_code', '3': 4, '4': 1, '5': 8, '10': 'applyCountryCode'},
    {'1': 'pin_country_code', '3': 5, '4': 1, '5': 8, '10': 'pinCountryCode'},
    {'1': 'custom_power_table', '3': 6, '4': 1, '5': 8, '10': 'customPowerTable'},
  ],
};

/// Descriptor for `SetSkuRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setSkuRequestDescriptor = $convert.base64Decode(
    'Cg1TZXRTa3VSZXF1ZXN0EhAKA3NrdRgBIAEoCVIDc2t1EiEKDGNvdW50cnlfY29kZRgCIAEoCV'
    'ILY291bnRyeUNvZGUSLAoSYXBwbHlfY291bnRyeV9jb2RlGAQgASgIUhBhcHBseUNvdW50cnlD'
    'b2RlEigKEHBpbl9jb3VudHJ5X2NvZGUYBSABKAhSDnBpbkNvdW50cnlDb2RlEiwKEmN1c3RvbV'
    '9wb3dlcl90YWJsZRgGIAEoCFIQY3VzdG9tUG93ZXJUYWJsZQ==');

@$core.Deprecated('Use updateRequestDescriptor instead')
const UpdateRequest$json = {
  '1': 'UpdateRequest',
};

/// Descriptor for `UpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateRequestDescriptor = $convert.base64Decode(
    'Cg1VcGRhdGVSZXF1ZXN0');

@$core.Deprecated('Use getNetworkInterfacesRequestDescriptor instead')
const GetNetworkInterfacesRequest$json = {
  '1': 'GetNetworkInterfacesRequest',
};

/// Descriptor for `GetNetworkInterfacesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNetworkInterfacesRequestDescriptor = $convert.base64Decode(
    'ChtHZXROZXR3b3JrSW50ZXJmYWNlc1JlcXVlc3Q=');

@$core.Deprecated('Use pingHostRequestDescriptor instead')
const PingHostRequest$json = {
  '1': 'PingHostRequest',
  '2': [
    {'1': 'address', '3': 3, '4': 1, '5': 9, '10': 'address'},
    {'1': 'size', '3': 4, '4': 1, '5': 13, '10': 'size'},
  ],
};

/// Descriptor for `PingHostRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingHostRequestDescriptor = $convert.base64Decode(
    'Cg9QaW5nSG9zdFJlcXVlc3QSGAoHYWRkcmVzcxgDIAEoCVIHYWRkcmVzcxISCgRzaXplGAQgAS'
    'gNUgRzaXpl');

@$core.Deprecated('Use getLocationRequestDescriptor instead')
const GetLocationRequest$json = {
  '1': 'GetLocationRequest',
  '2': [
    {'1': 'source', '3': 1, '4': 1, '5': 14, '6': '.SpaceX.API.Device.PositionSource', '10': 'source'},
  ],
};

/// Descriptor for `GetLocationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLocationRequestDescriptor = $convert.base64Decode(
    'ChJHZXRMb2NhdGlvblJlcXVlc3QSOQoGc291cmNlGAEgASgOMiEuU3BhY2VYLkFQSS5EZXZpY2'
    'UuUG9zaXRpb25Tb3VyY2VSBnNvdXJjZQ==');

@$core.Deprecated('Use getHeapDumpRequestDescriptor instead')
const GetHeapDumpRequest$json = {
  '1': 'GetHeapDumpRequest',
};

/// Descriptor for `GetHeapDumpRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getHeapDumpRequestDescriptor = $convert.base64Decode(
    'ChJHZXRIZWFwRHVtcFJlcXVlc3Q=');

@$core.Deprecated('Use restartControlRequestDescriptor instead')
const RestartControlRequest$json = {
  '1': 'RestartControlRequest',
};

/// Descriptor for `RestartControlRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List restartControlRequestDescriptor = $convert.base64Decode(
    'ChVSZXN0YXJ0Q29udHJvbFJlcXVlc3Q=');

@$core.Deprecated('Use fuseRequestDescriptor instead')
const FuseRequest$json = {
  '1': 'FuseRequest',
  '2': [
    {'1': 'prevent_reboot', '3': 1, '4': 1, '5': 8, '10': 'preventReboot'},
  ],
};

/// Descriptor for `FuseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fuseRequestDescriptor = $convert.base64Decode(
    'CgtGdXNlUmVxdWVzdBIlCg5wcmV2ZW50X3JlYm9vdBgBIAEoCFINcHJldmVudFJlYm9vdA==');

@$core.Deprecated('Use getPersistentStatsRequestDescriptor instead')
const GetPersistentStatsRequest$json = {
  '1': 'GetPersistentStatsRequest',
};

/// Descriptor for `GetPersistentStatsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPersistentStatsRequestDescriptor = $convert.base64Decode(
    'ChlHZXRQZXJzaXN0ZW50U3RhdHNSZXF1ZXN0');

@$core.Deprecated('Use getConnectionsRequestDescriptor instead')
const GetConnectionsRequest$json = {
  '1': 'GetConnectionsRequest',
};

/// Descriptor for `GetConnectionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getConnectionsRequestDescriptor = $convert.base64Decode(
    'ChVHZXRDb25uZWN0aW9uc1JlcXVlc3Q=');

@$core.Deprecated('Use startSpeedtestRequestDescriptor instead')
const StartSpeedtestRequest$json = {
  '1': 'StartSpeedtestRequest',
};

/// Descriptor for `StartSpeedtestRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startSpeedtestRequestDescriptor = $convert.base64Decode(
    'ChVTdGFydFNwZWVkdGVzdFJlcXVlc3Q=');

@$core.Deprecated('Use getSpeedtestStatusRequestDescriptor instead')
const GetSpeedtestStatusRequest$json = {
  '1': 'GetSpeedtestStatusRequest',
};

/// Descriptor for `GetSpeedtestStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSpeedtestStatusRequestDescriptor = $convert.base64Decode(
    'ChlHZXRTcGVlZHRlc3RTdGF0dXNSZXF1ZXN0');

@$core.Deprecated('Use reportClientSpeedtestRequestDescriptor instead')
const ReportClientSpeedtestRequest$json = {
  '1': 'ReportClientSpeedtestRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    {'1': 'client_speedtest', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SpeedTestStats', '10': 'clientSpeedtest'},
    {'1': 'client_rssi', '3': 3, '4': 1, '5': 2, '10': 'clientRssi'},
    {'1': 'client_platform', '3': 4, '4': 1, '5': 11, '6': '.SpaceX.API.Device.ClientPlatform', '10': 'clientPlatform'},
    {'1': 'wifi_speedtest', '3': 5, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SpeedTestStats', '10': 'wifiSpeedtest'},
    {'1': 'app_version', '3': 6, '4': 1, '5': 9, '10': 'appVersion'},
    {'1': 'app_build', '3': 7, '4': 1, '5': 13, '10': 'appBuild'},
  ],
};

/// Descriptor for `ReportClientSpeedtestRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportClientSpeedtestRequestDescriptor = $convert.base64Decode(
    'ChxSZXBvcnRDbGllbnRTcGVlZHRlc3RSZXF1ZXN0Eg4KAmlkGAEgASgNUgJpZBJMChBjbGllbn'
    'Rfc3BlZWR0ZXN0GAIgASgLMiEuU3BhY2VYLkFQSS5EZXZpY2UuU3BlZWRUZXN0U3RhdHNSD2Ns'
    'aWVudFNwZWVkdGVzdBIfCgtjbGllbnRfcnNzaRgDIAEoAlIKY2xpZW50UnNzaRJKCg9jbGllbn'
    'RfcGxhdGZvcm0YBCABKAsyIS5TcGFjZVguQVBJLkRldmljZS5DbGllbnRQbGF0Zm9ybVIOY2xp'
    'ZW50UGxhdGZvcm0SSAoOd2lmaV9zcGVlZHRlc3QYBSABKAsyIS5TcGFjZVguQVBJLkRldmljZS'
    '5TcGVlZFRlc3RTdGF0c1INd2lmaVNwZWVkdGVzdBIfCgthcHBfdmVyc2lvbhgGIAEoCVIKYXBw'
    'VmVyc2lvbhIbCglhcHBfYnVpbGQYByABKA1SCGFwcEJ1aWxk');

@$core.Deprecated('Use initiateRemoteSshRequestDescriptor instead')
const InitiateRemoteSshRequest$json = {
  '1': 'InitiateRemoteSshRequest',
};

/// Descriptor for `InitiateRemoteSshRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List initiateRemoteSshRequestDescriptor = $convert.base64Decode(
    'ChhJbml0aWF0ZVJlbW90ZVNzaFJlcXVlc3Q=');

@$core.Deprecated('Use selfTestRequestDescriptor instead')
const SelfTestRequest$json = {
  '1': 'SelfTestRequest',
  '2': [
    {'1': 'detailed', '3': 1, '4': 1, '5': 8, '10': 'detailed'},
  ],
};

/// Descriptor for `SelfTestRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List selfTestRequestDescriptor = $convert.base64Decode(
    'Cg9TZWxmVGVzdFJlcXVlc3QSGgoIZGV0YWlsZWQYASABKAhSCGRldGFpbGVk');

@$core.Deprecated('Use setTestModeRequestDescriptor instead')
const SetTestModeRequest$json = {
  '1': 'SetTestModeRequest',
  '2': [
    {'1': 'rf_mode', '3': 1, '4': 1, '5': 14, '6': '.SpaceX.API.Device.SetTestModeRequest.RfMode', '10': 'rfMode'},
    {'1': 'disable_loss_of_comm_fdir', '3': 1001, '4': 1, '5': 8, '10': 'disableLossOfCommFdir'},
    {'1': 'enable_rules_override', '3': 1002, '4': 1, '5': 8, '10': 'enableRulesOverride'},
  ],
  '4': [SetTestModeRequest_RfMode$json],
};

@$core.Deprecated('Use setTestModeRequestDescriptor instead')
const SetTestModeRequest_RfMode$json = {
  '1': 'RfMode',
  '2': [
    {'1': 'RX', '2': 0},
    {'1': 'IDLE', '2': 1},
    {'1': 'TX', '2': 2},
    {'1': 'CAL', '2': 3},
    {'1': 'USER', '2': 4},
    {'1': 'NORMAL', '2': 420},
  ],
};

/// Descriptor for `SetTestModeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setTestModeRequestDescriptor = $convert.base64Decode(
    'ChJTZXRUZXN0TW9kZVJlcXVlc3QSRQoHcmZfbW9kZRgBIAEoDjIsLlNwYWNlWC5BUEkuRGV2aW'
    'NlLlNldFRlc3RNb2RlUmVxdWVzdC5SZk1vZGVSBnJmTW9kZRI5ChlkaXNhYmxlX2xvc3Nfb2Zf'
    'Y29tbV9mZGlyGOkHIAEoCFIVZGlzYWJsZUxvc3NPZkNvbW1GZGlyEjMKFWVuYWJsZV9ydWxlc1'
    '9vdmVycmlkZRjqByABKAhSE2VuYWJsZVJ1bGVzT3ZlcnJpZGUiQgoGUmZNb2RlEgYKAlJYEAAS'
    'CAoESURMRRABEgYKAlRYEAISBwoDQ0FMEAMSCAoEVVNFUhAEEgsKBk5PUk1BTBCkAw==');

@$core.Deprecated('Use softwareUpdateRequestDescriptor instead')
const SoftwareUpdateRequest$json = {
  '1': 'SoftwareUpdateRequest',
  '2': [
    {'1': 'stream_id', '3': 1, '4': 1, '5': 4, '10': 'streamId'},
    {'1': 'data', '3': 2, '4': 1, '5': 12, '10': 'data'},
    {'1': 'open', '3': 3, '4': 1, '5': 8, '10': 'open'},
    {'1': 'close', '3': 4, '4': 1, '5': 8, '10': 'close'},
  ],
};

/// Descriptor for `SoftwareUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List softwareUpdateRequestDescriptor = $convert.base64Decode(
    'ChVTb2Z0d2FyZVVwZGF0ZVJlcXVlc3QSGwoJc3RyZWFtX2lkGAEgASgEUghzdHJlYW1JZBISCg'
    'RkYXRhGAIgASgMUgRkYXRhEhIKBG9wZW4YAyABKAhSBG9wZW4SFAoFY2xvc2UYBCABKAhSBWNs'
    'b3Nl');

@$core.Deprecated('Use enableDebugTelemRequestDescriptor instead')
const EnableDebugTelemRequest$json = {
  '1': 'EnableDebugTelemRequest',
  '2': [
    {'1': 'duration_m', '3': 1, '4': 1, '5': 13, '10': 'durationM'},
  ],
};

/// Descriptor for `EnableDebugTelemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enableDebugTelemRequestDescriptor = $convert.base64Decode(
    'ChdFbmFibGVEZWJ1Z1RlbGVtUmVxdWVzdBIdCgpkdXJhdGlvbl9tGAEgASgNUglkdXJhdGlvbk'
    '0=');

@$core.Deprecated('Use iQCaptureRequestDescriptor instead')
const IQCaptureRequest$json = {
  '1': 'IQCaptureRequest',
};

/// Descriptor for `IQCaptureRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iQCaptureRequestDescriptor = $convert.base64Decode(
    'ChBJUUNhcHR1cmVSZXF1ZXN0');

@$core.Deprecated('Use getRadioStatsRequestDescriptor instead')
const GetRadioStatsRequest$json = {
  '1': 'GetRadioStatsRequest',
};

/// Descriptor for `GetRadioStatsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRadioStatsRequestDescriptor = $convert.base64Decode(
    'ChRHZXRSYWRpb1N0YXRzUmVxdWVzdA==');

@$core.Deprecated('Use getTimeRequestDescriptor instead')
const GetTimeRequest$json = {
  '1': 'GetTimeRequest',
};

/// Descriptor for `GetTimeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTimeRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRUaW1lUmVxdWVzdA==');

@$core.Deprecated('Use runIperfServerRequestDescriptor instead')
const RunIperfServerRequest$json = {
  '1': 'RunIperfServerRequest',
  '2': [
    {'1': 'duration_s', '3': 1, '4': 1, '5': 13, '10': 'durationS'},
  ],
};

/// Descriptor for `RunIperfServerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runIperfServerRequestDescriptor = $convert.base64Decode(
    'ChVSdW5JcGVyZlNlcnZlclJlcXVlc3QSHQoKZHVyYXRpb25fcxgBIAEoDVIJZHVyYXRpb25T');

@$core.Deprecated('Use tcpConnectivityTestRequestDescriptor instead')
const TcpConnectivityTestRequest$json = {
  '1': 'TcpConnectivityTestRequest',
  '2': [
    {'1': 'target', '3': 1, '4': 1, '5': 9, '10': 'target'},
    {'1': 'port', '3': 2, '4': 1, '5': 13, '10': 'port'},
  ],
};

/// Descriptor for `TcpConnectivityTestRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tcpConnectivityTestRequestDescriptor = $convert.base64Decode(
    'ChpUY3BDb25uZWN0aXZpdHlUZXN0UmVxdWVzdBIWCgZ0YXJnZXQYASABKAlSBnRhcmdldBISCg'
    'Rwb3J0GAIgASgNUgRwb3J0');

@$core.Deprecated('Use udpConnectivityTestRequestDescriptor instead')
const UdpConnectivityTestRequest$json = {
  '1': 'UdpConnectivityTestRequest',
  '2': [
    {'1': 'target', '3': 1, '4': 1, '5': 9, '10': 'target'},
    {'1': 'port', '3': 2, '4': 1, '5': 13, '10': 'port'},
    {'1': 'probe_data', '3': 3, '4': 1, '5': 14, '6': '.SpaceX.API.Device.UdpConnectivityTestRequest.UDPProbeDataType', '10': 'probeData'},
  ],
  '4': [UdpConnectivityTestRequest_UDPProbeDataType$json],
};

@$core.Deprecated('Use udpConnectivityTestRequestDescriptor instead')
const UdpConnectivityTestRequest_UDPProbeDataType$json = {
  '1': 'UDPProbeDataType',
  '2': [
    {'1': 'EMPTY', '2': 0},
    {'1': 'DNS_STATUS_REQUEST', '2': 1},
    {'1': 'DTLS_CLIENT_HELLO', '2': 2},
    {'1': 'DNS_VERSION_BIND_REQ', '2': 3},
    {'1': 'RPC_CHECK', '2': 4},
    {'1': 'DNS_SD', '2': 5},
    {'1': 'SNMP_V1_PUBLIC', '2': 6},
    {'1': 'SNMP_V3_GET_REQUEST', '2': 7},
    {'1': 'NTP_MESSAGE', '2': 8},
    {'1': 'XDMCP', '2': 9},
    {'1': 'KERBEROS', '2': 10},
    {'1': 'SIP_OPTIONS', '2': 11},
    {'1': 'LDAP_SEARCH_REQ', '2': 12},
    {'1': 'MEMCACHED_STATS', '2': 13},
    {'1': 'OPENVPN', '2': 14},
    {'1': 'CIFS_NS_UC', '2': 15},
    {'1': 'TFTP_GET', '2': 16},
    {'1': 'DHCP_INFORM', '2': 17},
    {'1': 'QUIC', '2': 18},
    {'1': 'RIPV1', '2': 19},
    {'1': 'NFS_PROC_NULL', '2': 20},
    {'1': 'COAP_REQUEST', '2': 21},
  ],
};

/// Descriptor for `UdpConnectivityTestRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List udpConnectivityTestRequestDescriptor = $convert.base64Decode(
    'ChpVZHBDb25uZWN0aXZpdHlUZXN0UmVxdWVzdBIWCgZ0YXJnZXQYASABKAlSBnRhcmdldBISCg'
    'Rwb3J0GAIgASgNUgRwb3J0El0KCnByb2JlX2RhdGEYAyABKA4yPi5TcGFjZVguQVBJLkRldmlj'
    'ZS5VZHBDb25uZWN0aXZpdHlUZXN0UmVxdWVzdC5VRFBQcm9iZURhdGFUeXBlUglwcm9iZURhdG'
    'EiiQMKEFVEUFByb2JlRGF0YVR5cGUSCQoFRU1QVFkQABIWChJETlNfU1RBVFVTX1JFUVVFU1QQ'
    'ARIVChFEVExTX0NMSUVOVF9IRUxMTxACEhgKFEROU19WRVJTSU9OX0JJTkRfUkVREAMSDQoJUl'
    'BDX0NIRUNLEAQSCgoGRE5TX1NEEAUSEgoOU05NUF9WMV9QVUJMSUMQBhIXChNTTk1QX1YzX0dF'
    'VF9SRVFVRVNUEAcSDwoLTlRQX01FU1NBR0UQCBIJCgVYRE1DUBAJEgwKCEtFUkJFUk9TEAoSDw'
    'oLU0lQX09QVElPTlMQCxITCg9MREFQX1NFQVJDSF9SRVEQDBITCg9NRU1DQUNIRURfU1RBVFMQ'
    'DRILCgdPUEVOVlBOEA4SDgoKQ0lGU19OU19VQxAPEgwKCFRGVFBfR0VUEBASDwoLREhDUF9JTk'
    'ZPUk0QERIICgRRVUlDEBISCQoFUklQVjEQExIRCg1ORlNfUFJPQ19OVUxMEBQSEAoMQ09BUF9S'
    'RVFVRVNUEBU=');

@$core.Deprecated('Use dishStowRequestDescriptor instead')
const DishStowRequest$json = {
  '1': 'DishStowRequest',
  '2': [
    {'1': 'unstow', '3': 1, '4': 1, '5': 8, '10': 'unstow'},
  ],
};

/// Descriptor for `DishStowRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishStowRequestDescriptor = $convert.base64Decode(
    'Cg9EaXNoU3Rvd1JlcXVlc3QSFgoGdW5zdG93GAEgASgIUgZ1bnN0b3c=');

@$core.Deprecated('Use dishGetContextRequestDescriptor instead')
const DishGetContextRequest$json = {
  '1': 'DishGetContextRequest',
};

/// Descriptor for `DishGetContextRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGetContextRequestDescriptor = $convert.base64Decode(
    'ChVEaXNoR2V0Q29udGV4dFJlcXVlc3Q=');

@$core.Deprecated('Use dishSetEmcRequestDescriptor instead')
const DishSetEmcRequest$json = {
  '1': 'DishSetEmcRequest',
  '2': [
    {'1': 'theta', '3': 1, '4': 1, '5': 1, '10': 'theta'},
    {'1': 'phi', '3': 2, '4': 1, '5': 1, '10': 'phi'},
    {'1': 'rx_chan', '3': 3, '4': 1, '5': 13, '10': 'rxChan'},
    {'1': 'tx_chan', '3': 4, '4': 1, '5': 13, '10': 'txChan'},
    {'1': 'modulation', '3': 5, '4': 1, '5': 13, '10': 'modulation'},
    {'1': 'desired_tilt_angle', '3': 7, '4': 1, '5': 1, '10': 'desiredTiltAngle'},
    {'1': 'chan_override', '3': 8, '4': 1, '5': 8, '10': 'chanOverride'},
    {'1': 'theta_enabled', '3': 9, '4': 1, '5': 8, '10': 'thetaEnabled'},
    {'1': 'phi_enabled', '3': 10, '4': 1, '5': 8, '10': 'phiEnabled'},
    {'1': 'idle', '3': 11, '4': 1, '5': 8, '10': 'idle'},
    {'1': 'fast_switching', '3': 12, '4': 1, '5': 8, '10': 'fastSwitching'},
    {'1': 'sky_search', '3': 13, '4': 1, '5': 8, '10': 'skySearch'},
    {'1': 'force_pll_unlock', '3': 14, '4': 1, '5': 8, '10': 'forcePllUnlock'},
    {'1': 'force_eirp_failure', '3': 15, '4': 1, '5': 8, '10': 'forceEirpFailure'},
    {'1': 'snow_active_override', '3': 16, '4': 1, '5': 8, '10': 'snowActiveOverride'},
    {'1': 'manual_tilting', '3': 18, '4': 1, '5': 8, '10': 'manualTilting'},
    {'1': 'tilt_to_stowed', '3': 19, '4': 1, '5': 8, '10': 'tiltToStowed'},
    {'1': 'reboot', '3': 20, '4': 1, '5': 8, '10': 'reboot'},
    {'1': 'continuous_motor_test', '3': 21, '4': 1, '5': 8, '10': 'continuousMotorTest'},
    {'1': 'distance_override_meters', '3': 22, '4': 1, '5': 1, '10': 'distanceOverrideMeters'},
    {'1': 'amplitude_taper_override', '3': 23, '4': 1, '5': 13, '10': 'amplitudeTaperOverride'},
    {'1': 'country_code_override', '3': 24, '4': 1, '5': 13, '10': 'countryCodeOverride'},
    {'1': 'tx_duty_cycle_override', '3': 25, '4': 1, '5': 5, '10': 'txDutyCycleOverride'},
    {'1': 'rx_duty_cycle_override', '3': 26, '4': 1, '5': 5, '10': 'rxDutyCycleOverride'},
    {'1': 'eirp_legal_limit_dbw_override', '3': 27, '4': 1, '5': 1, '10': 'eirpLegalLimitDbwOverride'},
    {'1': 'eirp_adjustment_db', '3': 28, '4': 1, '5': 1, '10': 'eirpAdjustmentDb'},
  ],
};

/// Descriptor for `DishSetEmcRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishSetEmcRequestDescriptor = $convert.base64Decode(
    'ChFEaXNoU2V0RW1jUmVxdWVzdBIUCgV0aGV0YRgBIAEoAVIFdGhldGESEAoDcGhpGAIgASgBUg'
    'NwaGkSFwoHcnhfY2hhbhgDIAEoDVIGcnhDaGFuEhcKB3R4X2NoYW4YBCABKA1SBnR4Q2hhbhIe'
    'Cgptb2R1bGF0aW9uGAUgASgNUgptb2R1bGF0aW9uEiwKEmRlc2lyZWRfdGlsdF9hbmdsZRgHIA'
    'EoAVIQZGVzaXJlZFRpbHRBbmdsZRIjCg1jaGFuX292ZXJyaWRlGAggASgIUgxjaGFuT3ZlcnJp'
    'ZGUSIwoNdGhldGFfZW5hYmxlZBgJIAEoCFIMdGhldGFFbmFibGVkEh8KC3BoaV9lbmFibGVkGA'
    'ogASgIUgpwaGlFbmFibGVkEhIKBGlkbGUYCyABKAhSBGlkbGUSJQoOZmFzdF9zd2l0Y2hpbmcY'
    'DCABKAhSDWZhc3RTd2l0Y2hpbmcSHQoKc2t5X3NlYXJjaBgNIAEoCFIJc2t5U2VhcmNoEigKEG'
    'ZvcmNlX3BsbF91bmxvY2sYDiABKAhSDmZvcmNlUGxsVW5sb2NrEiwKEmZvcmNlX2VpcnBfZmFp'
    'bHVyZRgPIAEoCFIQZm9yY2VFaXJwRmFpbHVyZRIwChRzbm93X2FjdGl2ZV9vdmVycmlkZRgQIA'
    'EoCFISc25vd0FjdGl2ZU92ZXJyaWRlEiUKDm1hbnVhbF90aWx0aW5nGBIgASgIUg1tYW51YWxU'
    'aWx0aW5nEiQKDnRpbHRfdG9fc3Rvd2VkGBMgASgIUgx0aWx0VG9TdG93ZWQSFgoGcmVib290GB'
    'QgASgIUgZyZWJvb3QSMgoVY29udGludW91c19tb3Rvcl90ZXN0GBUgASgIUhNjb250aW51b3Vz'
    'TW90b3JUZXN0EjgKGGRpc3RhbmNlX292ZXJyaWRlX21ldGVycxgWIAEoAVIWZGlzdGFuY2VPdm'
    'VycmlkZU1ldGVycxI4ChhhbXBsaXR1ZGVfdGFwZXJfb3ZlcnJpZGUYFyABKA1SFmFtcGxpdHVk'
    'ZVRhcGVyT3ZlcnJpZGUSMgoVY291bnRyeV9jb2RlX292ZXJyaWRlGBggASgNUhNjb3VudHJ5Q2'
    '9kZU92ZXJyaWRlEjMKFnR4X2R1dHlfY3ljbGVfb3ZlcnJpZGUYGSABKAVSE3R4RHV0eUN5Y2xl'
    'T3ZlcnJpZGUSMwoWcnhfZHV0eV9jeWNsZV9vdmVycmlkZRgaIAEoBVITcnhEdXR5Q3ljbGVPdm'
    'VycmlkZRJACh1laXJwX2xlZ2FsX2xpbWl0X2Rid19vdmVycmlkZRgbIAEoAVIZZWlycExlZ2Fs'
    'TGltaXREYndPdmVycmlkZRIsChJlaXJwX2FkanVzdG1lbnRfZGIYHCABKAFSEGVpcnBBZGp1c3'
    'RtZW50RGI=');

@$core.Deprecated('Use dishGetObstructionMapRequestDescriptor instead')
const DishGetObstructionMapRequest$json = {
  '1': 'DishGetObstructionMapRequest',
};

/// Descriptor for `DishGetObstructionMapRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGetObstructionMapRequestDescriptor = $convert.base64Decode(
    'ChxEaXNoR2V0T2JzdHJ1Y3Rpb25NYXBSZXF1ZXN0');

@$core.Deprecated('Use dishGetEmcRequestDescriptor instead')
const DishGetEmcRequest$json = {
  '1': 'DishGetEmcRequest',
};

/// Descriptor for `DishGetEmcRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGetEmcRequestDescriptor = $convert.base64Decode(
    'ChFEaXNoR2V0RW1jUmVxdWVzdA==');

@$core.Deprecated('Use dishSetConfigRequestDescriptor instead')
const DishSetConfigRequest$json = {
  '1': 'DishSetConfigRequest',
  '2': [
    {'1': 'dish_config', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishConfig', '10': 'dishConfig'},
  ],
};

/// Descriptor for `DishSetConfigRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishSetConfigRequestDescriptor = $convert.base64Decode(
    'ChREaXNoU2V0Q29uZmlnUmVxdWVzdBI+CgtkaXNoX2NvbmZpZxgBIAEoCzIdLlNwYWNlWC5BUE'
    'kuRGV2aWNlLkRpc2hDb25maWdSCmRpc2hDb25maWc=');

@$core.Deprecated('Use dishConfigDescriptor instead')
const DishConfig$json = {
  '1': 'DishConfig',
  '2': [
    {'1': 'snow_melt_mode', '3': 1, '4': 1, '5': 14, '6': '.SpaceX.API.Device.DishConfig.SnowMeltMode', '10': 'snowMeltMode'},
    {'1': 'location_request_mode', '3': 2, '4': 1, '5': 14, '6': '.SpaceX.API.Device.DishConfig.LocationRequestMode', '10': 'locationRequestMode'},
    {'1': 'level_dish_mode', '3': 3, '4': 1, '5': 14, '6': '.SpaceX.API.Device.DishConfig.LevelDishMode', '10': 'levelDishMode'},
    {'1': 'power_save_start_minutes', '3': 4, '4': 1, '5': 13, '10': 'powerSaveStartMinutes'},
    {'1': 'power_save_duration_minutes', '3': 5, '4': 1, '5': 13, '10': 'powerSaveDurationMinutes'},
    {'1': 'power_save_mode', '3': 6, '4': 1, '5': 8, '10': 'powerSaveMode'},
    {'1': 'swupdate_three_day_deferral_enabled', '3': 7, '4': 1, '5': 8, '10': 'swupdateThreeDayDeferralEnabled'},
    {'1': 'apply_snow_melt_mode', '3': 1001, '4': 1, '5': 8, '10': 'applySnowMeltMode'},
    {'1': 'apply_location_request_mode', '3': 2001, '4': 1, '5': 8, '10': 'applyLocationRequestMode'},
    {'1': 'apply_level_dish_mode', '3': 3001, '4': 1, '5': 8, '10': 'applyLevelDishMode'},
    {'1': 'apply_power_save_start_minutes', '3': 4001, '4': 1, '5': 8, '10': 'applyPowerSaveStartMinutes'},
    {'1': 'apply_power_save_duration_minutes', '3': 5001, '4': 1, '5': 8, '10': 'applyPowerSaveDurationMinutes'},
    {'1': 'apply_power_save_mode', '3': 6001, '4': 1, '5': 8, '10': 'applyPowerSaveMode'},
    {'1': 'apply_swupdate_three_day_deferral_enabled', '3': 7001, '4': 1, '5': 8, '10': 'applySwupdateThreeDayDeferralEnabled'},
  ],
  '4': [DishConfig_LevelDishMode$json, DishConfig_LocationRequestMode$json, DishConfig_SnowMeltMode$json],
};

@$core.Deprecated('Use dishConfigDescriptor instead')
const DishConfig_LevelDishMode$json = {
  '1': 'LevelDishMode',
  '2': [
    {'1': 'TILT_LIKE_NORMAL', '2': 0},
    {'1': 'FORCE_LEVEL', '2': 1},
  ],
};

@$core.Deprecated('Use dishConfigDescriptor instead')
const DishConfig_LocationRequestMode$json = {
  '1': 'LocationRequestMode',
  '2': [
    {'1': 'NONE', '2': 0},
    {'1': 'LOCAL', '2': 1},
  ],
};

@$core.Deprecated('Use dishConfigDescriptor instead')
const DishConfig_SnowMeltMode$json = {
  '1': 'SnowMeltMode',
  '2': [
    {'1': 'AUTO', '2': 0},
    {'1': 'ALWAYS_ON', '2': 1},
    {'1': 'ALWAYS_OFF', '2': 2},
  ],
};

/// Descriptor for `DishConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishConfigDescriptor = $convert.base64Decode(
    'CgpEaXNoQ29uZmlnElAKDnNub3dfbWVsdF9tb2RlGAEgASgOMiouU3BhY2VYLkFQSS5EZXZpY2'
    'UuRGlzaENvbmZpZy5Tbm93TWVsdE1vZGVSDHNub3dNZWx0TW9kZRJlChVsb2NhdGlvbl9yZXF1'
    'ZXN0X21vZGUYAiABKA4yMS5TcGFjZVguQVBJLkRldmljZS5EaXNoQ29uZmlnLkxvY2F0aW9uUm'
    'VxdWVzdE1vZGVSE2xvY2F0aW9uUmVxdWVzdE1vZGUSUwoPbGV2ZWxfZGlzaF9tb2RlGAMgASgO'
    'MisuU3BhY2VYLkFQSS5EZXZpY2UuRGlzaENvbmZpZy5MZXZlbERpc2hNb2RlUg1sZXZlbERpc2'
    'hNb2RlEjcKGHBvd2VyX3NhdmVfc3RhcnRfbWludXRlcxgEIAEoDVIVcG93ZXJTYXZlU3RhcnRN'
    'aW51dGVzEj0KG3Bvd2VyX3NhdmVfZHVyYXRpb25fbWludXRlcxgFIAEoDVIYcG93ZXJTYXZlRH'
    'VyYXRpb25NaW51dGVzEiYKD3Bvd2VyX3NhdmVfbW9kZRgGIAEoCFINcG93ZXJTYXZlTW9kZRJM'
    'CiNzd3VwZGF0ZV90aHJlZV9kYXlfZGVmZXJyYWxfZW5hYmxlZBgHIAEoCFIfc3d1cGRhdGVUaH'
    'JlZURheURlZmVycmFsRW5hYmxlZBIwChRhcHBseV9zbm93X21lbHRfbW9kZRjpByABKAhSEWFw'
    'cGx5U25vd01lbHRNb2RlEj4KG2FwcGx5X2xvY2F0aW9uX3JlcXVlc3RfbW9kZRjRDyABKAhSGG'
    'FwcGx5TG9jYXRpb25SZXF1ZXN0TW9kZRIyChVhcHBseV9sZXZlbF9kaXNoX21vZGUYuRcgASgI'
    'UhJhcHBseUxldmVsRGlzaE1vZGUSQwoeYXBwbHlfcG93ZXJfc2F2ZV9zdGFydF9taW51dGVzGK'
    'EfIAEoCFIaYXBwbHlQb3dlclNhdmVTdGFydE1pbnV0ZXMSSQohYXBwbHlfcG93ZXJfc2F2ZV9k'
    'dXJhdGlvbl9taW51dGVzGIknIAEoCFIdYXBwbHlQb3dlclNhdmVEdXJhdGlvbk1pbnV0ZXMSMg'
    'oVYXBwbHlfcG93ZXJfc2F2ZV9tb2RlGPEuIAEoCFISYXBwbHlQb3dlclNhdmVNb2RlElgKKWFw'
    'cGx5X3N3dXBkYXRlX3RocmVlX2RheV9kZWZlcnJhbF9lbmFibGVkGNk2IAEoCFIkYXBwbHlTd3'
    'VwZGF0ZVRocmVlRGF5RGVmZXJyYWxFbmFibGVkIjYKDUxldmVsRGlzaE1vZGUSFAoQVElMVF9M'
    'SUtFX05PUk1BTBAAEg8KC0ZPUkNFX0xFVkVMEAEiKgoTTG9jYXRpb25SZXF1ZXN0TW9kZRIICg'
    'ROT05FEAASCQoFTE9DQUwQASI3CgxTbm93TWVsdE1vZGUSCAoEQVVUTxAAEg0KCUFMV0FZU19P'
    'ThABEg4KCkFMV0FZU19PRkYQAg==');

@$core.Deprecated('Use dishGetConfigRequestDescriptor instead')
const DishGetConfigRequest$json = {
  '1': 'DishGetConfigRequest',
};

/// Descriptor for `DishGetConfigRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGetConfigRequestDescriptor = $convert.base64Decode(
    'ChREaXNoR2V0Q29uZmlnUmVxdWVzdA==');

@$core.Deprecated('Use startDishSelfTestRequestDescriptor instead')
const StartDishSelfTestRequest$json = {
  '1': 'StartDishSelfTestRequest',
};

/// Descriptor for `StartDishSelfTestRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startDishSelfTestRequestDescriptor = $convert.base64Decode(
    'ChhTdGFydERpc2hTZWxmVGVzdFJlcXVlc3Q=');

@$core.Deprecated('Use dishPowerSaveRequestDescriptor instead')
const DishPowerSaveRequest$json = {
  '1': 'DishPowerSaveRequest',
  '2': [
    {'1': 'power_save_start_minutes', '3': 1, '4': 1, '5': 13, '10': 'powerSaveStartMinutes'},
    {'1': 'power_save_duration_minutes', '3': 2, '4': 1, '5': 13, '10': 'powerSaveDurationMinutes'},
    {'1': 'enable_power_save', '3': 3, '4': 1, '5': 8, '10': 'enablePowerSave'},
  ],
};

/// Descriptor for `DishPowerSaveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishPowerSaveRequestDescriptor = $convert.base64Decode(
    'ChREaXNoUG93ZXJTYXZlUmVxdWVzdBI3Chhwb3dlcl9zYXZlX3N0YXJ0X21pbnV0ZXMYASABKA'
    '1SFXBvd2VyU2F2ZVN0YXJ0TWludXRlcxI9Chtwb3dlcl9zYXZlX2R1cmF0aW9uX21pbnV0ZXMY'
    'AiABKA1SGHBvd2VyU2F2ZUR1cmF0aW9uTWludXRlcxIqChFlbmFibGVfcG93ZXJfc2F2ZRgDIA'
    'EoCFIPZW5hYmxlUG93ZXJTYXZl');

@$core.Deprecated('Use dishInhibitGpsRequestDescriptor instead')
const DishInhibitGpsRequest$json = {
  '1': 'DishInhibitGpsRequest',
  '2': [
    {'1': 'inhibit_gps', '3': 1, '4': 1, '5': 8, '10': 'inhibitGps'},
  ],
};

/// Descriptor for `DishInhibitGpsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishInhibitGpsRequestDescriptor = $convert.base64Decode(
    'ChVEaXNoSW5oaWJpdEdwc1JlcXVlc3QSHwoLaW5oaWJpdF9ncHMYASABKAhSCmluaGliaXRHcH'
    'M=');

@$core.Deprecated('Use dishGetDataRequestDescriptor instead')
const DishGetDataRequest$json = {
  '1': 'DishGetDataRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

/// Descriptor for `DishGetDataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGetDataRequestDescriptor = $convert.base64Decode(
    'ChJEaXNoR2V0RGF0YVJlcXVlc3QSDgoCaWQYASABKA1SAmlk');

@$core.Deprecated('Use dishClearObstructionMapRequestDescriptor instead')
const DishClearObstructionMapRequest$json = {
  '1': 'DishClearObstructionMapRequest',
};

/// Descriptor for `DishClearObstructionMapRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishClearObstructionMapRequestDescriptor = $convert.base64Decode(
    'Ch5EaXNoQ2xlYXJPYnN0cnVjdGlvbk1hcFJlcXVlc3Q=');

@$core.Deprecated('Use dishSetMaxPowerTestModeRequestDescriptor instead')
const DishSetMaxPowerTestModeRequest$json = {
  '1': 'DishSetMaxPowerTestModeRequest',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
  ],
};

/// Descriptor for `DishSetMaxPowerTestModeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishSetMaxPowerTestModeRequestDescriptor = $convert.base64Decode(
    'Ch5EaXNoU2V0TWF4UG93ZXJUZXN0TW9kZVJlcXVlc3QSGAoHZW5hYmxlZBgBIAEoCFIHZW5hYm'
    'xlZA==');

@$core.Deprecated('Use dishActivateRssiScanRequestDescriptor instead')
const DishActivateRssiScanRequest$json = {
  '1': 'DishActivateRssiScanRequest',
  '2': [
    {'1': 'scan_query', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishActivateRssiScan', '10': 'scanQuery'},
  ],
};

/// Descriptor for `DishActivateRssiScanRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishActivateRssiScanRequestDescriptor = $convert.base64Decode(
    'ChtEaXNoQWN0aXZhdGVSc3NpU2NhblJlcXVlc3QSRgoKc2Nhbl9xdWVyeRgBIAEoCzInLlNwYW'
    'NlWC5BUEkuRGV2aWNlLkRpc2hBY3RpdmF0ZVJzc2lTY2FuUglzY2FuUXVlcnk=');

@$core.Deprecated('Use dishActivateRssiScanDescriptor instead')
const DishActivateRssiScan$json = {
  '1': 'DishActivateRssiScan',
  '2': [
    {'1': 'channel', '3': 1, '4': 1, '5': 13, '10': 'channel'},
  ],
};

/// Descriptor for `DishActivateRssiScan`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishActivateRssiScanDescriptor = $convert.base64Decode(
    'ChREaXNoQWN0aXZhdGVSc3NpU2NhbhIYCgdjaGFubmVsGAEgASgNUgdjaGFubmVs');

@$core.Deprecated('Use dishGetRssiScanResultRequestDescriptor instead')
const DishGetRssiScanResultRequest$json = {
  '1': 'DishGetRssiScanResultRequest',
};

/// Descriptor for `DishGetRssiScanResultRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGetRssiScanResultRequestDescriptor = $convert.base64Decode(
    'ChxEaXNoR2V0UnNzaVNjYW5SZXN1bHRSZXF1ZXN0');

@$core.Deprecated('Use dishFactoryResetRequestDescriptor instead')
const DishFactoryResetRequest$json = {
  '1': 'DishFactoryResetRequest',
};

/// Descriptor for `DishFactoryResetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishFactoryResetRequestDescriptor = $convert.base64Decode(
    'ChdEaXNoRmFjdG9yeVJlc2V0UmVxdWVzdA==');

@$core.Deprecated('Use resetButtonRequestDescriptor instead')
const ResetButtonRequest$json = {
  '1': 'ResetButtonRequest',
  '2': [
    {'1': 'pressed', '3': 1, '4': 1, '5': 8, '10': 'pressed'},
  ],
};

/// Descriptor for `ResetButtonRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resetButtonRequestDescriptor = $convert.base64Decode(
    'ChJSZXNldEJ1dHRvblJlcXVlc3QSGAoHcHJlc3NlZBgBIAEoCFIHcHJlc3NlZA==');

@$core.Deprecated('Use wifiSetConfigRequestDescriptor instead')
const WifiSetConfigRequest$json = {
  '1': 'WifiSetConfigRequest',
  '2': [
    {'1': 'wifi_config', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiConfig', '10': 'wifiConfig'},
  ],
};

/// Descriptor for `WifiSetConfigRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSetConfigRequestDescriptor = $convert.base64Decode(
    'ChRXaWZpU2V0Q29uZmlnUmVxdWVzdBI+Cgt3aWZpX2NvbmZpZxgBIAEoCzIdLlNwYWNlWC5BUE'
    'kuRGV2aWNlLldpZmlDb25maWdSCndpZmlDb25maWc=');

@$core.Deprecated('Use wifiConfigDescriptor instead')
const WifiConfig$json = {
  '1': 'WifiConfig',
  '2': [
    {'1': 'country_code', '3': 3, '4': 1, '5': 9, '10': 'countryCode'},
    {'1': 'setup_complete', '3': 7, '4': 1, '5': 8, '10': 'setupComplete'},
    {'1': 'version', '3': 9, '4': 1, '5': 13, '10': 'version'},
    {'1': 'mac_wan', '3': 12, '4': 1, '5': 9, '10': 'macWan'},
    {'1': 'mac_lan', '3': 13, '4': 1, '5': 9, '10': 'macLan'},
    {'1': 'channel_2ghz', '3': 19, '4': 1, '5': 13, '10': 'channel2ghz'},
    {'1': 'channel_5ghz', '3': 20, '4': 1, '5': 13, '10': 'channel5ghz'},
    {'1': 'dynamic_keys', '3': 22, '4': 3, '5': 11, '6': '.SpaceX.API.Device.PublicKey', '10': 'dynamicKeys'},
    {'1': 'is_repeater', '3': 23, '4': 1, '5': 8, '10': 'isRepeater'},
    {'1': 'boot_count', '3': 26, '4': 1, '5': 5, '10': 'bootCount'},
    {'1': 'nameservers', '3': 30, '4': 3, '5': 9, '10': 'nameservers'},
    {'1': 'bypass_mode', '3': 31, '4': 1, '5': 8, '10': 'bypassMode'},
    {'1': 'mesh_configs', '3': 33, '4': 3, '5': 11, '6': '.SpaceX.API.Device.WifiConfig.MeshConfigsEntry', '10': 'meshConfigs'},
    {'1': 'apply_dynamic_keys', '3': 39, '4': 1, '5': 8, '10': 'applyDynamicKeys'},
    {'1': 'dfs_enabled', '3': 42, '4': 1, '5': 8, '10': 'dfsEnabled'},
    {'1': 'incarnation', '3': 43, '4': 1, '5': 4, '10': 'incarnation'},
    {'1': 'wireless_mode_2ghz', '3': 44, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiConfig.WirelessMode', '10': 'wirelessMode2ghz'},
    {'1': 'wireless_mode_5ghz', '3': 45, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiConfig.WirelessMode', '10': 'wirelessMode5ghz'},
    {'1': 'ht_bandwidth_2ghz', '3': 46, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiConfig.HTBandwidth', '10': 'htBandwidth2ghz'},
    {'1': 'ht_bandwidth_5ghz', '3': 47, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiConfig.HTBandwidth', '10': 'htBandwidth5ghz'},
    {'1': 'vht_bandwidth', '3': 48, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiConfig.VHTBandwidth', '10': 'vhtBandwidth'},
    {'1': 'is_aviation', '3': 49, '4': 1, '5': 8, '10': 'isAviation'},
    {'1': 'secure_dns', '3': 50, '4': 1, '5': 8, '10': 'secureDns'},
    {'1': 'ap_mode', '3': 51, '4': 1, '5': 8, '10': 'apMode'},
    {'1': 'disable_mesh_onboarding', '3': 52, '4': 1, '5': 8, '10': 'disableMeshOnboarding'},
    {'1': 'pin_country_code', '3': 53, '4': 1, '5': 8, '10': 'pinCountryCode'},
    {'1': 'custom_power_table', '3': 54, '4': 1, '5': 8, '10': 'customPowerTable'},
    {'1': 'use_public_services', '3': 55, '4': 1, '5': 8, '10': 'usePublicServices'},
    {'1': 'disable_automated_speedtests', '3': 56, '4': 1, '5': 8, '10': 'disableAutomatedSpeedtests'},
    {'1': 'channel_5ghz_high', '3': 57, '4': 1, '5': 13, '10': 'channel5ghzHigh'},
    {'1': 'wireless_mode_5ghz_high', '3': 58, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiConfig.WirelessMode', '10': 'wirelessMode5ghzHigh'},
    {'1': 'ht_bandwidth_5ghz_high', '3': 59, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiConfig.HTBandwidth', '10': 'htBandwidth5ghzHigh'},
    {'1': 'vht_bandwidth_5ghz_high', '3': 60, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiConfig.VHTBandwidth', '10': 'vhtBandwidth5ghzHigh'},
    {'1': 'enable_umbilical_vlan', '3': 61, '4': 1, '5': 8, '10': 'enableUmbilicalVlan'},
    {
      '1': 'client_names',
      '3': 62,
      '4': 3,
      '5': 11,
      '6': '.SpaceX.API.Device.ClientName',
      '8': {'3': true},
      '10': 'clientNames',
    },
    {'1': 'outdoor_mode', '3': 63, '4': 1, '5': 8, '10': 'outdoorMode'},
    {'1': 'disable_2ghz', '3': 64, '4': 1, '5': 8, '10': 'disable2ghz'},
    {'1': 'disable_5ghz', '3': 65, '4': 1, '5': 8, '10': 'disable5ghz'},
    {'1': 'disable_5ghz_high', '3': 66, '4': 1, '5': 8, '10': 'disable5ghzHigh'},
    {'1': 'disable_x_mesh_backhaul', '3': 67, '4': 1, '5': 8, '10': 'disableXMeshBackhaul'},
    {
      '1': 'golden_bssid',
      '3': 68,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '10': 'goldenBssid',
    },
    {
      '1': 'golden_iface_type',
      '3': 69,
      '4': 1,
      '5': 14,
      '6': '.SpaceX.API.Device.IfaceType',
      '8': {'3': true},
      '10': 'goldenIfaceType',
    },
    {'1': 'tx_power_level_2ghz', '3': 70, '4': 1, '5': 14, '6': '.SpaceX.API.Device.TxPowerLevel', '10': 'txPowerLevel2ghz'},
    {'1': 'tx_power_level_5ghz', '3': 71, '4': 1, '5': 14, '6': '.SpaceX.API.Device.TxPowerLevel', '10': 'txPowerLevel5ghz'},
    {'1': 'tx_power_level_5ghz_high', '3': 72, '4': 1, '5': 14, '6': '.SpaceX.API.Device.TxPowerLevel', '10': 'txPowerLevel5ghzHigh'},
    {'1': 'disable_pending_update_reboot', '3': 73, '4': 1, '5': 8, '10': 'disablePendingUpdateReboot'},
    {'1': 'client_configs', '3': 74, '4': 3, '5': 11, '6': '.SpaceX.API.Device.ClientConfig', '10': 'clientConfigs'},
    {'1': 'disable_set_wifi_config_from_controller', '3': 75, '4': 1, '5': 8, '10': 'disableSetWifiConfigFromController'},
    {'1': 'client_key', '3': 76, '4': 1, '5': 12, '10': 'clientKey'},
    {'1': 'wan_host_dscp_mark', '3': 77, '4': 1, '5': 5, '10': 'wanHostDscpMark'},
    {'1': 'tag', '3': 78, '4': 1, '5': 13, '10': 'tag'},
    {'1': 'debug_pop_pings', '3': 79, '4': 1, '5': 8, '10': 'debugPopPings'},
    {'1': 'client_tester', '3': 80, '4': 1, '5': 8, '10': 'clientTester'},
    {'1': 'apply_setup_complete', '3': 1010, '4': 1, '5': 8, '10': 'applySetupComplete'},
    {'1': 'apply_channel_2ghz', '3': 1013, '4': 1, '5': 8, '10': 'applyChannel2ghz'},
    {'1': 'apply_channel_5ghz', '3': 1014, '4': 1, '5': 8, '10': 'applyChannel5ghz'},
    {'1': 'apply_channel_5ghz_high', '3': 1016, '4': 1, '5': 8, '10': 'applyChannel5ghzHigh'},
    {'1': 'apply_is_repeater', '3': 1031, '4': 1, '5': 8, '10': 'applyIsRepeater'},
    {'1': 'apply_mesh_configs', '3': 1033, '4': 1, '5': 8, '10': 'applyMeshConfigs'},
    {'1': 'apply_nameservers', '3': 1054, '4': 1, '5': 8, '10': 'applyNameservers'},
    {'1': 'apply_bypass_mode', '3': 1055, '4': 1, '5': 8, '10': 'applyBypassMode'},
    {'1': 'apply_dfs_enabled', '3': 1058, '4': 1, '5': 8, '10': 'applyDfsEnabled'},
    {'1': 'apply_wireless_mode_2ghz', '3': 1059, '4': 1, '5': 8, '10': 'applyWirelessMode2ghz'},
    {'1': 'apply_wireless_mode_5ghz', '3': 1060, '4': 1, '5': 8, '10': 'applyWirelessMode5ghz'},
    {'1': 'apply_ht_bandwidth_2ghz', '3': 1061, '4': 1, '5': 8, '10': 'applyHtBandwidth2ghz'},
    {'1': 'apply_ht_bandwidth_5ghz', '3': 1062, '4': 1, '5': 8, '10': 'applyHtBandwidth5ghz'},
    {'1': 'apply_vht_bandwidth', '3': 1063, '4': 1, '5': 8, '10': 'applyVhtBandwidth'},
    {'1': 'apply_is_aviation', '3': 1064, '4': 1, '5': 8, '10': 'applyIsAviation'},
    {'1': 'apply_secure_dns', '3': 1065, '4': 1, '5': 8, '10': 'applySecureDns'},
    {'1': 'apply_ap_mode', '3': 1066, '4': 1, '5': 8, '10': 'applyApMode'},
    {'1': 'apply_disable_mesh_onboarding', '3': 1067, '4': 1, '5': 8, '10': 'applyDisableMeshOnboarding'},
    {'1': 'apply_use_public_services', '3': 1068, '4': 1, '5': 8, '10': 'applyUsePublicServices'},
    {'1': 'apply_disable_automated_speedtests', '3': 1069, '4': 1, '5': 8, '10': 'applyDisableAutomatedSpeedtests'},
    {'1': 'apply_wireless_mode_5ghz_high', '3': 1070, '4': 1, '5': 8, '10': 'applyWirelessMode5ghzHigh'},
    {'1': 'apply_ht_bandwidth_5ghz_high', '3': 1071, '4': 1, '5': 8, '10': 'applyHtBandwidth5ghzHigh'},
    {'1': 'apply_vht_bandwidth_5ghz_high', '3': 1072, '4': 1, '5': 8, '10': 'applyVhtBandwidth5ghzHigh'},
    {'1': 'apply_enable_umbilical_vlan', '3': 1073, '4': 1, '5': 8, '10': 'applyEnableUmbilicalVlan'},
    {
      '1': 'apply_client_names',
      '3': 1074,
      '4': 1,
      '5': 8,
      '8': {'3': true},
      '10': 'applyClientNames',
    },
    {'1': 'apply_outdoor_mode', '3': 1075, '4': 1, '5': 8, '10': 'applyOutdoorMode'},
    {'1': 'apply_disable_2ghz', '3': 1076, '4': 1, '5': 8, '10': 'applyDisable2ghz'},
    {'1': 'apply_disable_5ghz', '3': 1077, '4': 1, '5': 8, '10': 'applyDisable5ghz'},
    {'1': 'apply_disable_5ghz_high', '3': 1078, '4': 1, '5': 8, '10': 'applyDisable5ghzHigh'},
    {'1': 'apply_disable_x_mesh_backhaul', '3': 1079, '4': 1, '5': 8, '10': 'applyDisableXMeshBackhaul'},
    {
      '1': 'apply_golden_bssid',
      '3': 1080,
      '4': 1,
      '5': 8,
      '8': {'3': true},
      '10': 'applyGoldenBssid',
    },
    {
      '1': 'apply_golden_iface_type',
      '3': 1081,
      '4': 1,
      '5': 8,
      '8': {'3': true},
      '10': 'applyGoldenIfaceType',
    },
    {'1': 'apply_tx_power_level_2ghz', '3': 1082, '4': 1, '5': 8, '10': 'applyTxPowerLevel2ghz'},
    {'1': 'apply_tx_power_level_5ghz', '3': 1083, '4': 1, '5': 8, '10': 'applyTxPowerLevel5ghz'},
    {'1': 'apply_tx_power_level_5ghz_high', '3': 1084, '4': 1, '5': 8, '10': 'applyTxPowerLevel5ghzHigh'},
    {'1': 'apply_country_code', '3': 1085, '4': 1, '5': 8, '10': 'applyCountryCode'},
    {'1': 'apply_pin_country_code', '3': 1086, '4': 1, '5': 8, '10': 'applyPinCountryCode'},
    {'1': 'apply_custom_power_table', '3': 1087, '4': 1, '5': 8, '10': 'applyCustomPowerTable'},
    {'1': 'apply_disable_pending_update_reboot', '3': 1088, '4': 1, '5': 8, '10': 'applyDisablePendingUpdateReboot'},
    {'1': 'apply_client_configs', '3': 1089, '4': 1, '5': 8, '10': 'applyClientConfigs'},
    {'1': 'apply_disable_set_wifi_config_from_controller', '3': 1090, '4': 1, '5': 8, '10': 'applyDisableSetWifiConfigFromController'},
    {'1': 'apply_client_key', '3': 1091, '4': 1, '5': 8, '10': 'applyClientKey'},
    {'1': 'apply_wan_traffic_control', '3': 1092, '4': 1, '5': 8, '10': 'applyWanTrafficControl'},
    {'1': 'apply_wan_host_dscp_mark', '3': 1093, '4': 1, '5': 8, '10': 'applyWanHostDscpMark'},
    {'1': 'apply_debug_pop_pings', '3': 1095, '4': 1, '5': 8, '10': 'applyDebugPopPings'},
    {'1': 'apply_client_tester', '3': 1096, '4': 1, '5': 8, '10': 'applyClientTester'},
    {'1': 'networks', '3': 1100, '4': 3, '5': 11, '6': '.SpaceX.API.Device.WifiConfig.Network', '10': 'networks'},
    {'1': 'apply_networks', '3': 1101, '4': 1, '5': 8, '10': 'applyNetworks'},
    {'1': 'boot', '3': 3001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.BootInfo', '10': 'boot'},
    {'1': 'mesh_configs_updates', '3': 3033, '4': 3, '5': 11, '6': '.SpaceX.API.Device.WifiConfig.MeshConfigsUpdatesEntry', '10': 'meshConfigsUpdates'},
    {'1': 'wan_no_traffic_control', '3': 4001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.NoTrafficControl', '9': 0, '10': 'wanNoTrafficControl'},
    {'1': 'wan_ack_suppression', '3': 4002, '4': 1, '5': 11, '6': '.SpaceX.API.Device.AckSuppression', '9': 0, '10': 'wanAckSuppression'},
    {'1': 'wan_cake_rate_limit', '3': 4003, '4': 1, '5': 11, '6': '.SpaceX.API.Device.CakeRateLimit', '9': 0, '10': 'wanCakeRateLimit'},
  ],
  '3': [WifiConfig_MeshConfigsEntry$json, WifiConfig_MeshConfigsUpdatesEntry$json, WifiConfig_BasicServiceSet$json, WifiConfig_Network$json],
  '4': [WifiConfig_Band$json, WifiConfig_HTBandwidth$json, WifiConfig_Security$json, WifiConfig_VHTBandwidth$json, WifiConfig_WirelessMode$json],
  '8': [
    {'1': 'wan_traffic_control'},
  ],
  '9': [
    {'1': 1, '2': 2},
    {'1': 2, '2': 3},
    {'1': 4, '2': 5},
    {'1': 5, '2': 6},
    {'1': 6, '2': 7},
    {'1': 8, '2': 9},
    {'1': 10, '2': 11},
    {'1': 11, '2': 12},
    {'1': 14, '2': 15},
    {'1': 15, '2': 16},
    {'1': 16, '2': 17},
    {'1': 17, '2': 18},
    {'1': 18, '2': 19},
    {'1': 21, '2': 22},
    {'1': 24, '2': 25},
    {'1': 25, '2': 26},
    {'1': 27, '2': 28},
    {'1': 28, '2': 29},
    {'1': 29, '2': 30},
    {'1': 32, '2': 33},
    {'1': 34, '2': 35},
    {'1': 35, '2': 36},
    {'1': 36, '2': 37},
    {'1': 37, '2': 38},
    {'1': 38, '2': 39},
    {'1': 40, '2': 41},
    {'1': 41, '2': 42},
    {'1': 1001, '2': 1002},
    {'1': 1002, '2': 1003},
    {'1': 1003, '2': 1004},
    {'1': 1004, '2': 1005},
    {'1': 1005, '2': 1006},
    {'1': 1006, '2': 1007},
    {'1': 1007, '2': 1008},
    {'1': 1008, '2': 1009},
    {'1': 1009, '2': 1010},
    {'1': 1011, '2': 1012},
    {'1': 1012, '2': 1013},
    {'1': 1015, '2': 1016},
    {'1': 1021, '2': 1022},
    {'1': 1041, '2': 1042},
    {'1': 1051, '2': 1052},
    {'1': 1052, '2': 1053},
    {'1': 1053, '2': 1054},
    {'1': 1056, '2': 1057},
    {'1': 1057, '2': 1058},
    {'1': 2001, '2': 2002},
    {'1': 2002, '2': 2003},
    {'1': 2003, '2': 2004},
    {'1': 2004, '2': 2005},
    {'1': 2005, '2': 2006},
    {'1': 2006, '2': 2007},
    {'1': 2007, '2': 2008},
    {'1': 2008, '2': 2009},
  ],
  '10': ['apply_enable_remote_ssh', 'apply_lan_ipv4', 'apply_network_name', 'apply_network_name_5ghz', 'apply_network_password', 'apply_wifi_security', 'enable_remote_ssh', 'lan_ipv4', 'last_remote_ssh_access', 'network_name', 'network_name_5ghz', 'network_password', 'wifi_security'],
};

@$core.Deprecated('Use wifiConfigDescriptor instead')
const WifiConfig_MeshConfigsEntry$json = {
  '1': 'MeshConfigsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.MeshConfig', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use wifiConfigDescriptor instead')
const WifiConfig_MeshConfigsUpdatesEntry$json = {
  '1': 'MeshConfigsUpdatesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.MeshConfig', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use wifiConfigDescriptor instead')
const WifiConfig_BasicServiceSet$json = {
  '1': 'BasicServiceSet',
  '2': [
    {'1': 'bssid', '3': 1003, '4': 1, '5': 9, '10': 'bssid'},
    {'1': 'ssid', '3': 1005, '4': 1, '5': 9, '10': 'ssid'},
    {'1': 'band', '3': 1011, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiConfig.Band', '10': 'band'},
    {'1': 'disable', '3': 1013, '4': 1, '5': 8, '10': 'disable'},
    {'1': 'hidden', '3': 1015, '4': 1, '5': 8, '10': 'hidden'},
    {'1': 'iface_name', '3': 1017, '4': 1, '5': 9, '10': 'ifaceName'},
    {'1': 'auth_open', '3': 2001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.AuthOpen', '9': 0, '10': 'authOpen'},
    {'1': 'auth_wpa2', '3': 2002, '4': 1, '5': 11, '6': '.SpaceX.API.Device.AuthWpa2', '9': 0, '10': 'authWpa2'},
    {'1': 'auth_wpa3', '3': 2003, '4': 1, '5': 11, '6': '.SpaceX.API.Device.AuthWpa3', '9': 0, '10': 'authWpa3'},
    {'1': 'auth_wpa2_wpa3', '3': 2004, '4': 1, '5': 11, '6': '.SpaceX.API.Device.AuthWpa2Wpa3', '9': 0, '10': 'authWpa2Wpa3'},
    {'1': 'auth_radius', '3': 2005, '4': 1, '5': 11, '6': '.SpaceX.API.Device.AuthRadius', '9': 0, '10': 'authRadius'},
  ],
  '8': [
    {'1': 'auth'},
  ],
  '9': [
    {'1': 1000, '2': 1001},
    {'1': 1001, '2': 1002},
    {'1': 1002, '2': 1003},
    {'1': 1004, '2': 1005},
    {'1': 1006, '2': 1007},
    {'1': 1012, '2': 1013},
    {'1': 1014, '2': 1015},
    {'1': 1016, '2': 1017},
    {'1': 2000, '2': 2001},
  ],
};

@$core.Deprecated('Use wifiConfigDescriptor instead')
const WifiConfig_Network$json = {
  '1': 'Network',
  '2': [
    {'1': 'ipv4', '3': 1003, '4': 1, '5': 9, '10': 'ipv4'},
    {'1': 'basic_service_sets', '3': 1007, '4': 3, '5': 11, '6': '.SpaceX.API.Device.WifiConfig.BasicServiceSet', '10': 'basicServiceSets'},
    {'1': 'client_isolation', '3': 1008, '4': 1, '5': 8, '10': 'clientIsolation'},
    {'1': 'guest', '3': 1009, '4': 1, '5': 8, '10': 'guest'},
    {'1': 'landing', '3': 1010, '4': 1, '5': 9, '10': 'landing'},
    {'1': 'domain', '3': 1011, '4': 1, '5': 9, '10': 'domain'},
    {'1': 'dhcpv4_start', '3': 1012, '4': 1, '5': 13, '10': 'dhcpv4Start'},
    {'1': 'internal', '3': 1013, '4': 1, '5': 8, '10': 'internal'},
    {'1': 'vlan', '3': 1014, '4': 1, '5': 13, '10': 'vlan'},
    {'1': 'dhcp_disabled', '3': 1015, '4': 1, '5': 8, '10': 'dhcpDisabled'},
    {'1': 'dhcpv4_lease_duration_s', '3': 1016, '4': 1, '5': 13, '10': 'dhcpv4LeaseDurationS'},
    {'1': 'landing_page_v2', '3': 1017, '4': 1, '5': 8, '10': 'landingPageV2'},
  ],
  '9': [
    {'1': 1000, '2': 1001},
    {'1': 1001, '2': 1002},
    {'1': 1002, '2': 1003},
    {'1': 1004, '2': 1005},
    {'1': 1005, '2': 1006},
    {'1': 1006, '2': 1007},
  ],
};

@$core.Deprecated('Use wifiConfigDescriptor instead')
const WifiConfig_Band$json = {
  '1': 'Band',
  '2': [
    {'1': 'RF_UNKNOWN', '2': 0},
    {'1': 'RF_2GHZ', '2': 2},
    {'1': 'RF_5GHZ', '2': 5},
    {'1': 'RF_5GHZ_HIGH', '2': 6},
  ],
};

@$core.Deprecated('Use wifiConfigDescriptor instead')
const WifiConfig_HTBandwidth$json = {
  '1': 'HTBandwidth',
  '2': [
    {'1': 'HT_BANDWIDTH_DEFAULT', '2': 0},
    {'1': 'HT_BANDWIDTH_20_MHZ', '2': 1},
    {'1': 'HT_BANDWIDTH_20_OR_40_MHZ', '2': 2},
  ],
};

@$core.Deprecated('Use wifiConfigDescriptor instead')
const WifiConfig_Security$json = {
  '1': 'Security',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'WPA2', '2': 1},
    {'1': 'WPA3', '2': 2},
    {'1': 'WPA2WPA3', '2': 3},
  ],
};

@$core.Deprecated('Use wifiConfigDescriptor instead')
const WifiConfig_VHTBandwidth$json = {
  '1': 'VHTBandwidth',
  '2': [
    {'1': 'VHT_BANDWIDTH_DEFAULT', '2': 0},
    {'1': 'VHT_BANDWIDTH_DISABLED', '2': 1},
    {'1': 'VHT_BANDWIDTH_80_MHZ', '2': 2},
    {'1': 'VHT_BANDWIDTH_160_MHZ', '2': 3},
    {'1': 'VHT_BANDWIDTH_80_PLUS_80_MHZ', '2': 4},
  ],
};

@$core.Deprecated('Use wifiConfigDescriptor instead')
const WifiConfig_WirelessMode$json = {
  '1': 'WirelessMode',
  '2': [
    {'1': 'WIRELESS_MODE_DEFAULT', '2': 0},
    {'1': 'A_ONLY', '2': 1},
    {'1': 'B_ONLY', '2': 2},
    {'1': 'G_ONLY', '2': 3},
    {'1': 'N_ONLY', '2': 4},
    {'1': 'B_G_MIXED', '2': 5},
    {'1': 'A_N_MIXED', '2': 6},
    {'1': 'G_N_MIXED', '2': 7},
    {'1': 'B_G_N_MIXED', '2': 8},
    {'1': 'A_AN_AC_MIXED', '2': 9},
    {'1': 'AN_AC_MIXED', '2': 10},
    {'1': 'B_G_N_AX_MIXED', '2': 11},
    {'1': 'A_AN_AC_AX_MIXED', '2': 12},
  ],
};

/// Descriptor for `WifiConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiConfigDescriptor = $convert.base64Decode(
    'CgpXaWZpQ29uZmlnEiEKDGNvdW50cnlfY29kZRgDIAEoCVILY291bnRyeUNvZGUSJQoOc2V0dX'
    'BfY29tcGxldGUYByABKAhSDXNldHVwQ29tcGxldGUSGAoHdmVyc2lvbhgJIAEoDVIHdmVyc2lv'
    'bhIXCgdtYWNfd2FuGAwgASgJUgZtYWNXYW4SFwoHbWFjX2xhbhgNIAEoCVIGbWFjTGFuEiEKDG'
    'NoYW5uZWxfMmdoehgTIAEoDVILY2hhbm5lbDJnaHoSIQoMY2hhbm5lbF81Z2h6GBQgASgNUgtj'
    'aGFubmVsNWdoehI/CgxkeW5hbWljX2tleXMYFiADKAsyHC5TcGFjZVguQVBJLkRldmljZS5QdW'
    'JsaWNLZXlSC2R5bmFtaWNLZXlzEh8KC2lzX3JlcGVhdGVyGBcgASgIUgppc1JlcGVhdGVyEh0K'
    'CmJvb3RfY291bnQYGiABKAVSCWJvb3RDb3VudBIgCgtuYW1lc2VydmVycxgeIAMoCVILbmFtZX'
    'NlcnZlcnMSHwoLYnlwYXNzX21vZGUYHyABKAhSCmJ5cGFzc01vZGUSUQoMbWVzaF9jb25maWdz'
    'GCEgAygLMi4uU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUNvbmZpZy5NZXNoQ29uZmlnc0VudHJ5Ug'
    'ttZXNoQ29uZmlncxIsChJhcHBseV9keW5hbWljX2tleXMYJyABKAhSEGFwcGx5RHluYW1pY0tl'
    'eXMSHwoLZGZzX2VuYWJsZWQYKiABKAhSCmRmc0VuYWJsZWQSIAoLaW5jYXJuYXRpb24YKyABKA'
    'RSC2luY2FybmF0aW9uElgKEndpcmVsZXNzX21vZGVfMmdoehgsIAEoDjIqLlNwYWNlWC5BUEku'
    'RGV2aWNlLldpZmlDb25maWcuV2lyZWxlc3NNb2RlUhB3aXJlbGVzc01vZGUyZ2h6ElgKEndpcm'
    'VsZXNzX21vZGVfNWdoehgtIAEoDjIqLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlDb25maWcuV2ly'
    'ZWxlc3NNb2RlUhB3aXJlbGVzc01vZGU1Z2h6ElUKEWh0X2JhbmR3aWR0aF8yZ2h6GC4gASgOMi'
    'kuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUNvbmZpZy5IVEJhbmR3aWR0aFIPaHRCYW5kd2lkdGgy'
    'Z2h6ElUKEWh0X2JhbmR3aWR0aF81Z2h6GC8gASgOMikuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaU'
    'NvbmZpZy5IVEJhbmR3aWR0aFIPaHRCYW5kd2lkdGg1Z2h6Ek8KDXZodF9iYW5kd2lkdGgYMCAB'
    'KA4yKi5TcGFjZVguQVBJLkRldmljZS5XaWZpQ29uZmlnLlZIVEJhbmR3aWR0aFIMdmh0QmFuZH'
    'dpZHRoEh8KC2lzX2F2aWF0aW9uGDEgASgIUgppc0F2aWF0aW9uEh0KCnNlY3VyZV9kbnMYMiAB'
    'KAhSCXNlY3VyZURucxIXCgdhcF9tb2RlGDMgASgIUgZhcE1vZGUSNgoXZGlzYWJsZV9tZXNoX2'
    '9uYm9hcmRpbmcYNCABKAhSFWRpc2FibGVNZXNoT25ib2FyZGluZxIoChBwaW5fY291bnRyeV9j'
    'b2RlGDUgASgIUg5waW5Db3VudHJ5Q29kZRIsChJjdXN0b21fcG93ZXJfdGFibGUYNiABKAhSEG'
    'N1c3RvbVBvd2VyVGFibGUSLgoTdXNlX3B1YmxpY19zZXJ2aWNlcxg3IAEoCFIRdXNlUHVibGlj'
    'U2VydmljZXMSQAocZGlzYWJsZV9hdXRvbWF0ZWRfc3BlZWR0ZXN0cxg4IAEoCFIaZGlzYWJsZU'
    'F1dG9tYXRlZFNwZWVkdGVzdHMSKgoRY2hhbm5lbF81Z2h6X2hpZ2gYOSABKA1SD2NoYW5uZWw1'
    'Z2h6SGlnaBJhChd3aXJlbGVzc19tb2RlXzVnaHpfaGlnaBg6IAEoDjIqLlNwYWNlWC5BUEkuRG'
    'V2aWNlLldpZmlDb25maWcuV2lyZWxlc3NNb2RlUhR3aXJlbGVzc01vZGU1Z2h6SGlnaBJeChZo'
    'dF9iYW5kd2lkdGhfNWdoel9oaWdoGDsgASgOMikuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUNvbm'
    'ZpZy5IVEJhbmR3aWR0aFITaHRCYW5kd2lkdGg1Z2h6SGlnaBJhChd2aHRfYmFuZHdpZHRoXzVn'
    'aHpfaGlnaBg8IAEoDjIqLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlDb25maWcuVkhUQmFuZHdpZH'
    'RoUhR2aHRCYW5kd2lkdGg1Z2h6SGlnaBIyChVlbmFibGVfdW1iaWxpY2FsX3ZsYW4YPSABKAhS'
    'E2VuYWJsZVVtYmlsaWNhbFZsYW4SRAoMY2xpZW50X25hbWVzGD4gAygLMh0uU3BhY2VYLkFQSS'
    '5EZXZpY2UuQ2xpZW50TmFtZUICGAFSC2NsaWVudE5hbWVzEiEKDG91dGRvb3JfbW9kZRg/IAEo'
    'CFILb3V0ZG9vck1vZGUSIQoMZGlzYWJsZV8yZ2h6GEAgASgIUgtkaXNhYmxlMmdoehIhCgxkaX'
    'NhYmxlXzVnaHoYQSABKAhSC2Rpc2FibGU1Z2h6EioKEWRpc2FibGVfNWdoel9oaWdoGEIgASgI'
    'Ug9kaXNhYmxlNWdoekhpZ2gSNQoXZGlzYWJsZV94X21lc2hfYmFja2hhdWwYQyABKAhSFGRpc2'
    'FibGVYTWVzaEJhY2toYXVsEiUKDGdvbGRlbl9ic3NpZBhEIAEoCUICGAFSC2dvbGRlbkJzc2lk'
    'EkwKEWdvbGRlbl9pZmFjZV90eXBlGEUgASgOMhwuU3BhY2VYLkFQSS5EZXZpY2UuSWZhY2VUeX'
    'BlQgIYAVIPZ29sZGVuSWZhY2VUeXBlEk4KE3R4X3Bvd2VyX2xldmVsXzJnaHoYRiABKA4yHy5T'
    'cGFjZVguQVBJLkRldmljZS5UeFBvd2VyTGV2ZWxSEHR4UG93ZXJMZXZlbDJnaHoSTgoTdHhfcG'
    '93ZXJfbGV2ZWxfNWdoehhHIAEoDjIfLlNwYWNlWC5BUEkuRGV2aWNlLlR4UG93ZXJMZXZlbFIQ'
    'dHhQb3dlckxldmVsNWdoehJXChh0eF9wb3dlcl9sZXZlbF81Z2h6X2hpZ2gYSCABKA4yHy5TcG'
    'FjZVguQVBJLkRldmljZS5UeFBvd2VyTGV2ZWxSFHR4UG93ZXJMZXZlbDVnaHpIaWdoEkEKHWRp'
    'c2FibGVfcGVuZGluZ191cGRhdGVfcmVib290GEkgASgIUhpkaXNhYmxlUGVuZGluZ1VwZGF0ZV'
    'JlYm9vdBJGCg5jbGllbnRfY29uZmlncxhKIAMoCzIfLlNwYWNlWC5BUEkuRGV2aWNlLkNsaWVu'
    'dENvbmZpZ1INY2xpZW50Q29uZmlncxJTCidkaXNhYmxlX3NldF93aWZpX2NvbmZpZ19mcm9tX2'
    'NvbnRyb2xsZXIYSyABKAhSImRpc2FibGVTZXRXaWZpQ29uZmlnRnJvbUNvbnRyb2xsZXISHQoK'
    'Y2xpZW50X2tleRhMIAEoDFIJY2xpZW50S2V5EisKEndhbl9ob3N0X2RzY3BfbWFyaxhNIAEoBV'
    'IPd2FuSG9zdERzY3BNYXJrEhAKA3RhZxhOIAEoDVIDdGFnEiYKD2RlYnVnX3BvcF9waW5ncxhP'
    'IAEoCFINZGVidWdQb3BQaW5ncxIjCg1jbGllbnRfdGVzdGVyGFAgASgIUgxjbGllbnRUZXN0ZX'
    'ISMQoUYXBwbHlfc2V0dXBfY29tcGxldGUY8gcgASgIUhJhcHBseVNldHVwQ29tcGxldGUSLQoS'
    'YXBwbHlfY2hhbm5lbF8yZ2h6GPUHIAEoCFIQYXBwbHlDaGFubmVsMmdoehItChJhcHBseV9jaG'
    'FubmVsXzVnaHoY9gcgASgIUhBhcHBseUNoYW5uZWw1Z2h6EjYKF2FwcGx5X2NoYW5uZWxfNWdo'
    'el9oaWdoGPgHIAEoCFIUYXBwbHlDaGFubmVsNWdoekhpZ2gSKwoRYXBwbHlfaXNfcmVwZWF0ZX'
    'IYhwggASgIUg9hcHBseUlzUmVwZWF0ZXISLQoSYXBwbHlfbWVzaF9jb25maWdzGIkIIAEoCFIQ'
    'YXBwbHlNZXNoQ29uZmlncxIsChFhcHBseV9uYW1lc2VydmVycxieCCABKAhSEGFwcGx5TmFtZX'
    'NlcnZlcnMSKwoRYXBwbHlfYnlwYXNzX21vZGUYnwggASgIUg9hcHBseUJ5cGFzc01vZGUSKwoR'
    'YXBwbHlfZGZzX2VuYWJsZWQYogggASgIUg9hcHBseURmc0VuYWJsZWQSOAoYYXBwbHlfd2lyZW'
    'xlc3NfbW9kZV8yZ2h6GKMIIAEoCFIVYXBwbHlXaXJlbGVzc01vZGUyZ2h6EjgKGGFwcGx5X3dp'
    'cmVsZXNzX21vZGVfNWdoehikCCABKAhSFWFwcGx5V2lyZWxlc3NNb2RlNWdoehI2ChdhcHBseV'
    '9odF9iYW5kd2lkdGhfMmdoehilCCABKAhSFGFwcGx5SHRCYW5kd2lkdGgyZ2h6EjYKF2FwcGx5'
    'X2h0X2JhbmR3aWR0aF81Z2h6GKYIIAEoCFIUYXBwbHlIdEJhbmR3aWR0aDVnaHoSLwoTYXBwbH'
    'lfdmh0X2JhbmR3aWR0aBinCCABKAhSEWFwcGx5Vmh0QmFuZHdpZHRoEisKEWFwcGx5X2lzX2F2'
    'aWF0aW9uGKgIIAEoCFIPYXBwbHlJc0F2aWF0aW9uEikKEGFwcGx5X3NlY3VyZV9kbnMYqQggAS'
    'gIUg5hcHBseVNlY3VyZURucxIjCg1hcHBseV9hcF9tb2RlGKoIIAEoCFILYXBwbHlBcE1vZGUS'
    'QgodYXBwbHlfZGlzYWJsZV9tZXNoX29uYm9hcmRpbmcYqwggASgIUhphcHBseURpc2FibGVNZX'
    'NoT25ib2FyZGluZxI6ChlhcHBseV91c2VfcHVibGljX3NlcnZpY2VzGKwIIAEoCFIWYXBwbHlV'
    'c2VQdWJsaWNTZXJ2aWNlcxJMCiJhcHBseV9kaXNhYmxlX2F1dG9tYXRlZF9zcGVlZHRlc3RzGK'
    '0IIAEoCFIfYXBwbHlEaXNhYmxlQXV0b21hdGVkU3BlZWR0ZXN0cxJBCh1hcHBseV93aXJlbGVz'
    'c19tb2RlXzVnaHpfaGlnaBiuCCABKAhSGWFwcGx5V2lyZWxlc3NNb2RlNWdoekhpZ2gSPwocYX'
    'BwbHlfaHRfYmFuZHdpZHRoXzVnaHpfaGlnaBivCCABKAhSGGFwcGx5SHRCYW5kd2lkdGg1Z2h6'
    'SGlnaBJBCh1hcHBseV92aHRfYmFuZHdpZHRoXzVnaHpfaGlnaBiwCCABKAhSGWFwcGx5Vmh0Qm'
    'FuZHdpZHRoNWdoekhpZ2gSPgobYXBwbHlfZW5hYmxlX3VtYmlsaWNhbF92bGFuGLEIIAEoCFIY'
    'YXBwbHlFbmFibGVVbWJpbGljYWxWbGFuEjEKEmFwcGx5X2NsaWVudF9uYW1lcxiyCCABKAhCAh'
    'gBUhBhcHBseUNsaWVudE5hbWVzEi0KEmFwcGx5X291dGRvb3JfbW9kZRizCCABKAhSEGFwcGx5'
    'T3V0ZG9vck1vZGUSLQoSYXBwbHlfZGlzYWJsZV8yZ2h6GLQIIAEoCFIQYXBwbHlEaXNhYmxlMm'
    'doehItChJhcHBseV9kaXNhYmxlXzVnaHoYtQggASgIUhBhcHBseURpc2FibGU1Z2h6EjYKF2Fw'
    'cGx5X2Rpc2FibGVfNWdoel9oaWdoGLYIIAEoCFIUYXBwbHlEaXNhYmxlNWdoekhpZ2gSQQodYX'
    'BwbHlfZGlzYWJsZV94X21lc2hfYmFja2hhdWwYtwggASgIUhlhcHBseURpc2FibGVYTWVzaEJh'
    'Y2toYXVsEjEKEmFwcGx5X2dvbGRlbl9ic3NpZBi4CCABKAhCAhgBUhBhcHBseUdvbGRlbkJzc2'
    'lkEjoKF2FwcGx5X2dvbGRlbl9pZmFjZV90eXBlGLkIIAEoCEICGAFSFGFwcGx5R29sZGVuSWZh'
    'Y2VUeXBlEjkKGWFwcGx5X3R4X3Bvd2VyX2xldmVsXzJnaHoYugggASgIUhVhcHBseVR4UG93ZX'
    'JMZXZlbDJnaHoSOQoZYXBwbHlfdHhfcG93ZXJfbGV2ZWxfNWdoehi7CCABKAhSFWFwcGx5VHhQ'
    'b3dlckxldmVsNWdoehJCCh5hcHBseV90eF9wb3dlcl9sZXZlbF81Z2h6X2hpZ2gYvAggASgIUh'
    'lhcHBseVR4UG93ZXJMZXZlbDVnaHpIaWdoEi0KEmFwcGx5X2NvdW50cnlfY29kZRi9CCABKAhS'
    'EGFwcGx5Q291bnRyeUNvZGUSNAoWYXBwbHlfcGluX2NvdW50cnlfY29kZRi+CCABKAhSE2FwcG'
    'x5UGluQ291bnRyeUNvZGUSOAoYYXBwbHlfY3VzdG9tX3Bvd2VyX3RhYmxlGL8IIAEoCFIVYXBw'
    'bHlDdXN0b21Qb3dlclRhYmxlEk0KI2FwcGx5X2Rpc2FibGVfcGVuZGluZ191cGRhdGVfcmVib2'
    '90GMAIIAEoCFIfYXBwbHlEaXNhYmxlUGVuZGluZ1VwZGF0ZVJlYm9vdBIxChRhcHBseV9jbGll'
    'bnRfY29uZmlncxjBCCABKAhSEmFwcGx5Q2xpZW50Q29uZmlncxJfCi1hcHBseV9kaXNhYmxlX3'
    'NldF93aWZpX2NvbmZpZ19mcm9tX2NvbnRyb2xsZXIYwgggASgIUidhcHBseURpc2FibGVTZXRX'
    'aWZpQ29uZmlnRnJvbUNvbnRyb2xsZXISKQoQYXBwbHlfY2xpZW50X2tleRjDCCABKAhSDmFwcG'
    'x5Q2xpZW50S2V5EjoKGWFwcGx5X3dhbl90cmFmZmljX2NvbnRyb2wYxAggASgIUhZhcHBseVdh'
    'blRyYWZmaWNDb250cm9sEjcKGGFwcGx5X3dhbl9ob3N0X2RzY3BfbWFyaxjFCCABKAhSFGFwcG'
    'x5V2FuSG9zdERzY3BNYXJrEjIKFWFwcGx5X2RlYnVnX3BvcF9waW5ncxjHCCABKAhSEmFwcGx5'
    'RGVidWdQb3BQaW5ncxIvChNhcHBseV9jbGllbnRfdGVzdGVyGMgIIAEoCFIRYXBwbHlDbGllbn'
    'RUZXN0ZXISQgoIbmV0d29ya3MYzAggAygLMiUuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUNvbmZp'
    'Zy5OZXR3b3JrUghuZXR3b3JrcxImCg5hcHBseV9uZXR3b3JrcxjNCCABKAhSDWFwcGx5TmV0d2'
    '9ya3MSMAoEYm9vdBi5FyABKAsyGy5TcGFjZVguQVBJLkRldmljZS5Cb290SW5mb1IEYm9vdBJo'
    'ChRtZXNoX2NvbmZpZ3NfdXBkYXRlcxjZFyADKAsyNS5TcGFjZVguQVBJLkRldmljZS5XaWZpQ2'
    '9uZmlnLk1lc2hDb25maWdzVXBkYXRlc0VudHJ5UhJtZXNoQ29uZmlnc1VwZGF0ZXMSWwoWd2Fu'
    'X25vX3RyYWZmaWNfY29udHJvbBihHyABKAsyIy5TcGFjZVguQVBJLkRldmljZS5Ob1RyYWZmaW'
    'NDb250cm9sSABSE3dhbk5vVHJhZmZpY0NvbnRyb2wSVAoTd2FuX2Fja19zdXBwcmVzc2lvbhii'
    'HyABKAsyIS5TcGFjZVguQVBJLkRldmljZS5BY2tTdXBwcmVzc2lvbkgAUhF3YW5BY2tTdXBwcm'
    'Vzc2lvbhJSChN3YW5fY2FrZV9yYXRlX2xpbWl0GKMfIAEoCzIgLlNwYWNlWC5BUEkuRGV2aWNl'
    'LkNha2VSYXRlTGltaXRIAFIQd2FuQ2FrZVJhdGVMaW1pdBpdChBNZXNoQ29uZmlnc0VudHJ5Eh'
    'AKA2tleRgBIAEoCVIDa2V5EjMKBXZhbHVlGAIgASgLMh0uU3BhY2VYLkFQSS5EZXZpY2UuTWVz'
    'aENvbmZpZ1IFdmFsdWU6AjgBGmQKF01lc2hDb25maWdzVXBkYXRlc0VudHJ5EhAKA2tleRgBIA'
    'EoCVIDa2V5EjMKBXZhbHVlGAIgASgLMh0uU3BhY2VYLkFQSS5EZXZpY2UuTWVzaENvbmZpZ1IF'
    'dmFsdWU6AjgBGt4ECg9CYXNpY1NlcnZpY2VTZXQSFQoFYnNzaWQY6wcgASgJUgVic3NpZBITCg'
    'Rzc2lkGO0HIAEoCVIEc3NpZBI3CgRiYW5kGPMHIAEoDjIiLlNwYWNlWC5BUEkuRGV2aWNlLldp'
    'ZmlDb25maWcuQmFuZFIEYmFuZBIZCgdkaXNhYmxlGPUHIAEoCFIHZGlzYWJsZRIXCgZoaWRkZW'
    '4Y9wcgASgIUgZoaWRkZW4SHgoKaWZhY2VfbmFtZRj5ByABKAlSCWlmYWNlTmFtZRI7CglhdXRo'
    'X29wZW4Y0Q8gASgLMhsuU3BhY2VYLkFQSS5EZXZpY2UuQXV0aE9wZW5IAFIIYXV0aE9wZW4SOw'
    'oJYXV0aF93cGEyGNIPIAEoCzIbLlNwYWNlWC5BUEkuRGV2aWNlLkF1dGhXcGEySABSCGF1dGhX'
    'cGEyEjsKCWF1dGhfd3BhMxjTDyABKAsyGy5TcGFjZVguQVBJLkRldmljZS5BdXRoV3BhM0gAUg'
    'hhdXRoV3BhMxJICg5hdXRoX3dwYTJfd3BhMxjUDyABKAsyHy5TcGFjZVguQVBJLkRldmljZS5B'
    'dXRoV3BhMldwYTNIAFIMYXV0aFdwYTJXcGEzEkEKC2F1dGhfcmFkaXVzGNUPIAEoCzIdLlNwYW'
    'NlWC5BUEkuRGV2aWNlLkF1dGhSYWRpdXNIAFIKYXV0aFJhZGl1c0IGCgRhdXRoSgYI6AcQ6QdK'
    'BgjpBxDqB0oGCOoHEOsHSgYI7AcQ7QdKBgjuBxDvB0oGCPQHEPUHSgYI9gcQ9wdKBgj4BxD5B0'
    'oGCNAPENEPGoAECgdOZXR3b3JrEhMKBGlwdjQY6wcgASgJUgRpcHY0ElwKEmJhc2ljX3NlcnZp'
    'Y2Vfc2V0cxjvByADKAsyLS5TcGFjZVguQVBJLkRldmljZS5XaWZpQ29uZmlnLkJhc2ljU2Vydm'
    'ljZVNldFIQYmFzaWNTZXJ2aWNlU2V0cxIqChBjbGllbnRfaXNvbGF0aW9uGPAHIAEoCFIPY2xp'
    'ZW50SXNvbGF0aW9uEhUKBWd1ZXN0GPEHIAEoCFIFZ3Vlc3QSGQoHbGFuZGluZxjyByABKAlSB2'
    'xhbmRpbmcSFwoGZG9tYWluGPMHIAEoCVIGZG9tYWluEiIKDGRoY3B2NF9zdGFydBj0ByABKA1S'
    'C2RoY3B2NFN0YXJ0EhsKCGludGVybmFsGPUHIAEoCFIIaW50ZXJuYWwSEwoEdmxhbhj2ByABKA'
    '1SBHZsYW4SJAoNZGhjcF9kaXNhYmxlZBj3ByABKAhSDGRoY3BEaXNhYmxlZBI2ChdkaGNwdjRf'
    'bGVhc2VfZHVyYXRpb25fcxj4ByABKA1SFGRoY3B2NExlYXNlRHVyYXRpb25TEicKD2xhbmRpbm'
    'dfcGFnZV92Mhj5ByABKAhSDWxhbmRpbmdQYWdlVjJKBgjoBxDpB0oGCOkHEOoHSgYI6gcQ6wdK'
    'BgjsBxDtB0oGCO0HEO4HSgYI7gcQ7wciQgoEQmFuZBIOCgpSRl9VTktOT1dOEAASCwoHUkZfMk'
    'dIWhACEgsKB1JGXzVHSFoQBRIQCgxSRl81R0haX0hJR0gQBiJfCgtIVEJhbmR3aWR0aBIYChRI'
    'VF9CQU5EV0lEVEhfREVGQVVMVBAAEhcKE0hUX0JBTkRXSURUSF8yMF9NSFoQARIdChlIVF9CQU'
    '5EV0lEVEhfMjBfT1JfNDBfTUhaEAIiOQoIU2VjdXJpdHkSCwoHVU5LTk9XThAAEggKBFdQQTIQ'
    'ARIICgRXUEEzEAISDAoIV1BBMldQQTMQAyKcAQoMVkhUQmFuZHdpZHRoEhkKFVZIVF9CQU5EV0'
    'lEVEhfREVGQVVMVBAAEhoKFlZIVF9CQU5EV0lEVEhfRElTQUJMRUQQARIYChRWSFRfQkFORFdJ'
    'RFRIXzgwX01IWhACEhkKFVZIVF9CQU5EV0lEVEhfMTYwX01IWhADEiAKHFZIVF9CQU5EV0lEVE'
    'hfODBfUExVU184MF9NSFoQBCLlAQoMV2lyZWxlc3NNb2RlEhkKFVdJUkVMRVNTX01PREVfREVG'
    'QVVMVBAAEgoKBkFfT05MWRABEgoKBkJfT05MWRACEgoKBkdfT05MWRADEgoKBk5fT05MWRAEEg'
    '0KCUJfR19NSVhFRBAFEg0KCUFfTl9NSVhFRBAGEg0KCUdfTl9NSVhFRBAHEg8KC0JfR19OX01J'
    'WEVEEAgSEQoNQV9BTl9BQ19NSVhFRBAJEg8KC0FOX0FDX01JWEVEEAoSEgoOQl9HX05fQVhfTU'
    'lYRUQQCxIUChBBX0FOX0FDX0FYX01JWEVEEAxCFQoTd2FuX3RyYWZmaWNfY29udHJvbEoECAEQ'
    'AkoECAIQA0oECAQQBUoECAUQBkoECAYQB0oECAgQCUoECAoQC0oECAsQDEoECA4QD0oECA8QEE'
    'oECBAQEUoECBEQEkoECBIQE0oECBUQFkoECBgQGUoECBkQGkoECBsQHEoECBwQHUoECB0QHkoE'
    'CCAQIUoECCIQI0oECCMQJEoECCQQJUoECCUQJkoECCYQJ0oECCgQKUoECCkQKkoGCOkHEOoHSg'
    'YI6gcQ6wdKBgjrBxDsB0oGCOwHEO0HSgYI7QcQ7gdKBgjuBxDvB0oGCO8HEPAHSgYI8AcQ8QdK'
    'BgjxBxDyB0oGCPMHEPQHSgYI9AcQ9QdKBgj3BxD4B0oGCP0HEP4HSgYIkQgQkghKBgibCBCcCE'
    'oGCJwIEJ0ISgYInQgQnghKBgigCBChCEoGCKEIEKIISgYI0Q8Q0g9KBgjSDxDTD0oGCNMPENQP'
    'SgYI1A8Q1Q9KBgjVDxDWD0oGCNYPENcPSgYI1w8Q2A9KBgjYDxDZD1IXYXBwbHlfZW5hYmxlX3'
    'JlbW90ZV9zc2hSDmFwcGx5X2xhbl9pcHY0UhJhcHBseV9uZXR3b3JrX25hbWVSF2FwcGx5X25l'
    'dHdvcmtfbmFtZV81Z2h6UhZhcHBseV9uZXR3b3JrX3Bhc3N3b3JkUhNhcHBseV93aWZpX3NlY3'
    'VyaXR5UhFlbmFibGVfcmVtb3RlX3NzaFIIbGFuX2lwdjRSFmxhc3RfcmVtb3RlX3NzaF9hY2Nl'
    'c3NSDG5ldHdvcmtfbmFtZVIRbmV0d29ya19uYW1lXzVnaHpSEG5ldHdvcmtfcGFzc3dvcmRSDX'
    'dpZmlfc2VjdXJpdHk=');

@$core.Deprecated('Use meshConfigDescriptor instead')
const MeshConfig$json = {
  '1': 'MeshConfig',
  '2': [
    {'1': 'display_name', '3': 1, '4': 1, '5': 9, '10': 'displayName'},
    {'1': 'apply_display_name', '3': 2, '4': 1, '5': 8, '10': 'applyDisplayName'},
    {'1': 'auth', '3': 3, '4': 1, '5': 14, '6': '.SpaceX.API.Device.MeshAuth', '10': 'auth'},
    {'1': 'apply_auth', '3': 4, '4': 1, '5': 8, '10': 'applyAuth'},
    {'1': 'last_connected', '3': 5, '4': 1, '5': 3, '10': 'lastConnected'},
    {'1': 'incarnation', '3': 7, '4': 1, '5': 4, '10': 'incarnation'},
    {'1': 'hardware_version', '3': 9, '4': 1, '5': 9, '10': 'hardwareVersion'},
    {'1': 'supports_5ghz_high', '3': 10, '4': 1, '5': 8, '10': 'supports5ghzHigh'},
  ],
  '9': [
    {'1': 6, '2': 7},
    {'1': 8, '2': 9},
  ],
};

/// Descriptor for `MeshConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List meshConfigDescriptor = $convert.base64Decode(
    'CgpNZXNoQ29uZmlnEiEKDGRpc3BsYXlfbmFtZRgBIAEoCVILZGlzcGxheU5hbWUSLAoSYXBwbH'
    'lfZGlzcGxheV9uYW1lGAIgASgIUhBhcHBseURpc3BsYXlOYW1lEi8KBGF1dGgYAyABKA4yGy5T'
    'cGFjZVguQVBJLkRldmljZS5NZXNoQXV0aFIEYXV0aBIdCgphcHBseV9hdXRoGAQgASgIUglhcH'
    'BseUF1dGgSJQoObGFzdF9jb25uZWN0ZWQYBSABKANSDWxhc3RDb25uZWN0ZWQSIAoLaW5jYXJu'
    'YXRpb24YByABKARSC2luY2FybmF0aW9uEikKEGhhcmR3YXJlX3ZlcnNpb24YCSABKAlSD2hhcm'
    'R3YXJlVmVyc2lvbhIsChJzdXBwb3J0c181Z2h6X2hpZ2gYCiABKAhSEHN1cHBvcnRzNWdoekhp'
    'Z2hKBAgGEAdKBAgIEAk=');

@$core.Deprecated('Use clientNameDescriptor instead')
const ClientName$json = {
  '1': 'ClientName',
  '2': [
    {'1': 'mac_address', '3': 1, '4': 1, '5': 9, '10': 'macAddress'},
    {'1': 'given_name', '3': 2, '4': 1, '5': 9, '10': 'givenName'},
  ],
};

/// Descriptor for `ClientName`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientNameDescriptor = $convert.base64Decode(
    'CgpDbGllbnROYW1lEh8KC21hY19hZGRyZXNzGAEgASgJUgptYWNBZGRyZXNzEh0KCmdpdmVuX2'
    '5hbWUYAiABKAlSCWdpdmVuTmFtZQ==');

@$core.Deprecated('Use clientConfigDescriptor instead')
const ClientConfig$json = {
  '1': 'ClientConfig',
  '2': [
    {'1': 'client_id', '3': 1, '4': 1, '5': 13, '10': 'clientId'},
    {'1': 'mac_address', '3': 2, '4': 1, '5': 9, '10': 'macAddress'},
    {'1': 'given_name', '3': 3, '4': 1, '5': 9, '10': 'givenName'},
    {'1': 'weekly_block_schedules', '3': 5, '4': 3, '5': 11, '6': '.SpaceX.API.Device.WeeklyBlockSchedule', '10': 'weeklyBlockSchedules'},
    {'1': 'group_id', '3': 6, '4': 1, '5': 9, '10': 'groupId'},
  ],
  '9': [
    {'1': 4, '2': 5},
  ],
  '10': ['weekly_block_schedule'],
};

/// Descriptor for `ClientConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientConfigDescriptor = $convert.base64Decode(
    'CgxDbGllbnRDb25maWcSGwoJY2xpZW50X2lkGAEgASgNUghjbGllbnRJZBIfCgttYWNfYWRkcm'
    'VzcxgCIAEoCVIKbWFjQWRkcmVzcxIdCgpnaXZlbl9uYW1lGAMgASgJUglnaXZlbk5hbWUSXAoW'
    'd2Vla2x5X2Jsb2NrX3NjaGVkdWxlcxgFIAMoCzImLlNwYWNlWC5BUEkuRGV2aWNlLldlZWtseU'
    'Jsb2NrU2NoZWR1bGVSFHdlZWtseUJsb2NrU2NoZWR1bGVzEhkKCGdyb3VwX2lkGAYgASgJUgdn'
    'cm91cElkSgQIBBAFUhV3ZWVrbHlfYmxvY2tfc2NoZWR1bGU=');

@$core.Deprecated('Use weeklyBlockScheduleDescriptor instead')
const WeeklyBlockSchedule$json = {
  '1': 'WeeklyBlockSchedule',
  '2': [
    {'1': 'block_ranges', '3': 1, '4': 3, '5': 11, '6': '.SpaceX.API.Device.WeeklyBlockSchedule.BlockRange', '10': 'blockRanges'},
    {'1': 'group_id', '3': 2, '4': 1, '5': 9, '10': 'groupId'},
  ],
  '3': [WeeklyBlockSchedule_BlockRange$json],
};

@$core.Deprecated('Use weeklyBlockScheduleDescriptor instead')
const WeeklyBlockSchedule_BlockRange$json = {
  '1': 'BlockRange',
  '2': [
    {'1': 'start_minutes', '3': 1, '4': 1, '5': 13, '10': 'startMinutes'},
    {'1': 'end_minutes', '3': 2, '4': 1, '5': 13, '10': 'endMinutes'},
  ],
};

/// Descriptor for `WeeklyBlockSchedule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List weeklyBlockScheduleDescriptor = $convert.base64Decode(
    'ChNXZWVrbHlCbG9ja1NjaGVkdWxlElQKDGJsb2NrX3JhbmdlcxgBIAMoCzIxLlNwYWNlWC5BUE'
    'kuRGV2aWNlLldlZWtseUJsb2NrU2NoZWR1bGUuQmxvY2tSYW5nZVILYmxvY2tSYW5nZXMSGQoI'
    'Z3JvdXBfaWQYAiABKAlSB2dyb3VwSWQaUgoKQmxvY2tSYW5nZRIjCg1zdGFydF9taW51dGVzGA'
    'EgASgNUgxzdGFydE1pbnV0ZXMSHwoLZW5kX21pbnV0ZXMYAiABKA1SCmVuZE1pbnV0ZXM=');

@$core.Deprecated('Use bootInfoDescriptor instead')
const BootInfo$json = {
  '1': 'BootInfo',
  '2': [
    {'1': 'count_by_reason', '3': 1, '4': 3, '5': 11, '6': '.SpaceX.API.Device.BootInfo.CountByReasonEntry', '10': 'countByReason'},
    {'1': 'last_reason', '3': 2, '4': 1, '5': 14, '6': '.SpaceX.API.Device.BootReason', '10': 'lastReason'},
    {'1': 'last_count', '3': 3, '4': 1, '5': 5, '10': 'lastCount'},
    {'1': 'count_by_reason_delta', '3': 4, '4': 3, '5': 11, '6': '.SpaceX.API.Device.BootInfo.CountByReasonDeltaEntry', '10': 'countByReasonDelta'},
    {'1': 'crash_boot', '3': 5, '4': 1, '5': 8, '10': 'crashBoot'},
    {'1': 'crash_boot_count', '3': 6, '4': 1, '5': 5, '10': 'crashBootCount'},
  ],
  '3': [BootInfo_CountByReasonEntry$json, BootInfo_CountByReasonDeltaEntry$json],
};

@$core.Deprecated('Use bootInfoDescriptor instead')
const BootInfo_CountByReasonEntry$json = {
  '1': 'CountByReasonEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use bootInfoDescriptor instead')
const BootInfo_CountByReasonDeltaEntry$json = {
  '1': 'CountByReasonDeltaEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `BootInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bootInfoDescriptor = $convert.base64Decode(
    'CghCb290SW5mbxJWCg9jb3VudF9ieV9yZWFzb24YASADKAsyLi5TcGFjZVguQVBJLkRldmljZS'
    '5Cb290SW5mby5Db3VudEJ5UmVhc29uRW50cnlSDWNvdW50QnlSZWFzb24SPgoLbGFzdF9yZWFz'
    'b24YAiABKA4yHS5TcGFjZVguQVBJLkRldmljZS5Cb290UmVhc29uUgpsYXN0UmVhc29uEh0KCm'
    'xhc3RfY291bnQYAyABKAVSCWxhc3RDb3VudBJmChVjb3VudF9ieV9yZWFzb25fZGVsdGEYBCAD'
    'KAsyMy5TcGFjZVguQVBJLkRldmljZS5Cb290SW5mby5Db3VudEJ5UmVhc29uRGVsdGFFbnRyeV'
    'ISY291bnRCeVJlYXNvbkRlbHRhEh0KCmNyYXNoX2Jvb3QYBSABKAhSCWNyYXNoQm9vdBIoChBj'
    'cmFzaF9ib290X2NvdW50GAYgASgFUg5jcmFzaEJvb3RDb3VudBpAChJDb3VudEJ5UmVhc29uRW'
    '50cnkSEAoDa2V5GAEgASgFUgNrZXkSFAoFdmFsdWUYAiABKAVSBXZhbHVlOgI4ARpFChdDb3Vu'
    'dEJ5UmVhc29uRGVsdGFFbnRyeRIQCgNrZXkYASABKAVSA2tleRIUCgV2YWx1ZRgCIAEoBVIFdm'
    'FsdWU6AjgB');

@$core.Deprecated('Use noTrafficControlDescriptor instead')
const NoTrafficControl$json = {
  '1': 'NoTrafficControl',
};

/// Descriptor for `NoTrafficControl`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noTrafficControlDescriptor = $convert.base64Decode(
    'ChBOb1RyYWZmaWNDb250cm9s');

@$core.Deprecated('Use ackSuppressionDescriptor instead')
const AckSuppression$json = {
  '1': 'AckSuppression',
  '2': [
    {'1': 'ack_mark', '3': 1, '4': 1, '5': 13, '10': 'ackMark'},
    {'1': 'htb_ack_queue_rate', '3': 2, '4': 1, '5': 2, '10': 'htbAckQueueRate'},
    {'1': 'htb_ack_queue_ceil', '3': 3, '4': 1, '5': 2, '10': 'htbAckQueueCeil'},
    {'1': 'cake_queue_bandwidth', '3': 4, '4': 1, '5': 2, '10': 'cakeQueueBandwidth'},
    {'1': 'cake_ack_filter_aggressive', '3': 5, '4': 1, '5': 8, '10': 'cakeAckFilterAggressive'},
    {'1': 'cake_manual_rtt', '3': 6, '4': 1, '5': 2, '10': 'cakeManualRtt'},
  ],
};

/// Descriptor for `AckSuppression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ackSuppressionDescriptor = $convert.base64Decode(
    'Cg5BY2tTdXBwcmVzc2lvbhIZCghhY2tfbWFyaxgBIAEoDVIHYWNrTWFyaxIrChJodGJfYWNrX3'
    'F1ZXVlX3JhdGUYAiABKAJSD2h0YkFja1F1ZXVlUmF0ZRIrChJodGJfYWNrX3F1ZXVlX2NlaWwY'
    'AyABKAJSD2h0YkFja1F1ZXVlQ2VpbBIwChRjYWtlX3F1ZXVlX2JhbmR3aWR0aBgEIAEoAlISY2'
    'FrZVF1ZXVlQmFuZHdpZHRoEjsKGmNha2VfYWNrX2ZpbHRlcl9hZ2dyZXNzaXZlGAUgASgIUhdj'
    'YWtlQWNrRmlsdGVyQWdncmVzc2l2ZRImCg9jYWtlX21hbnVhbF9ydHQYBiABKAJSDWNha2VNYW'
    '51YWxSdHQ=');

@$core.Deprecated('Use cakeRateLimitDescriptor instead')
const CakeRateLimit$json = {
  '1': 'CakeRateLimit',
  '2': [
    {'1': 'host_mark', '3': 1, '4': 1, '5': 13, '10': 'hostMark'},
    {'1': 'bandwidth', '3': 2, '4': 1, '5': 2, '10': 'bandwidth'},
    {'1': 'priority_queue_parameter', '3': 3, '4': 1, '5': 14, '6': '.SpaceX.API.Device.CakePriorityQueueParameter', '10': 'priorityQueueParameter'},
    {'1': 'ack_filter', '3': 4, '4': 1, '5': 14, '6': '.SpaceX.API.Device.CakeAckFilter', '10': 'ackFilter'},
    {'1': 'manual_rtt', '3': 6, '4': 1, '5': 2, '10': 'manualRtt'},
  ],
};

/// Descriptor for `CakeRateLimit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cakeRateLimitDescriptor = $convert.base64Decode(
    'Cg1DYWtlUmF0ZUxpbWl0EhsKCWhvc3RfbWFyaxgBIAEoDVIIaG9zdE1hcmsSHAoJYmFuZHdpZH'
    'RoGAIgASgCUgliYW5kd2lkdGgSZwoYcHJpb3JpdHlfcXVldWVfcGFyYW1ldGVyGAMgASgOMi0u'
    'U3BhY2VYLkFQSS5EZXZpY2UuQ2FrZVByaW9yaXR5UXVldWVQYXJhbWV0ZXJSFnByaW9yaXR5UX'
    'VldWVQYXJhbWV0ZXISPwoKYWNrX2ZpbHRlchgEIAEoDjIgLlNwYWNlWC5BUEkuRGV2aWNlLkNh'
    'a2VBY2tGaWx0ZXJSCWFja0ZpbHRlchIdCgptYW51YWxfcnR0GAYgASgCUgltYW51YWxSdHQ=');

@$core.Deprecated('Use authOpenDescriptor instead')
const AuthOpen$json = {
  '1': 'AuthOpen',
};

/// Descriptor for `AuthOpen`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authOpenDescriptor = $convert.base64Decode(
    'CghBdXRoT3Blbg==');

@$core.Deprecated('Use authWpa2Descriptor instead')
const AuthWpa2$json = {
  '1': 'AuthWpa2',
  '2': [
    {'1': 'password', '3': 1, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `AuthWpa2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authWpa2Descriptor = $convert.base64Decode(
    'CghBdXRoV3BhMhIaCghwYXNzd29yZBgBIAEoCVIIcGFzc3dvcmQ=');

@$core.Deprecated('Use authWpa3Descriptor instead')
const AuthWpa3$json = {
  '1': 'AuthWpa3',
  '2': [
    {'1': 'password', '3': 1, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `AuthWpa3`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authWpa3Descriptor = $convert.base64Decode(
    'CghBdXRoV3BhMxIaCghwYXNzd29yZBgBIAEoCVIIcGFzc3dvcmQ=');

@$core.Deprecated('Use authWpa2Wpa3Descriptor instead')
const AuthWpa2Wpa3$json = {
  '1': 'AuthWpa2Wpa3',
  '2': [
    {'1': 'password', '3': 1, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `AuthWpa2Wpa3`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authWpa2Wpa3Descriptor = $convert.base64Decode(
    'CgxBdXRoV3BhMldwYTMSGgoIcGFzc3dvcmQYASABKAlSCHBhc3N3b3Jk');

@$core.Deprecated('Use authRadiusDescriptor instead')
const AuthRadius$json = {
  '1': 'AuthRadius',
  '2': [
    {'1': 'server', '3': 1, '4': 1, '5': 9, '10': 'server'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    {
      '1': 'server_ca',
      '3': 3,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '10': 'serverCa',
    },
    {'1': 'server_ca_base_64', '3': 4, '4': 1, '5': 9, '10': 'serverCaBase64'},
    {'1': 'transport', '3': 5, '4': 1, '5': 14, '6': '.SpaceX.API.Device.Protocol', '10': 'transport'},
  ],
};

/// Descriptor for `AuthRadius`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRadiusDescriptor = $convert.base64Decode(
    'CgpBdXRoUmFkaXVzEhYKBnNlcnZlchgBIAEoCVIGc2VydmVyEhoKCHBhc3N3b3JkGAIgASgJUg'
    'hwYXNzd29yZBIfCglzZXJ2ZXJfY2EYAyABKAlCAhgBUghzZXJ2ZXJDYRIpChFzZXJ2ZXJfY2Ff'
    'YmFzZV82NBgEIAEoCVIOc2VydmVyQ2FCYXNlNjQSOQoJdHJhbnNwb3J0GAUgASgOMhsuU3BhY2'
    'VYLkFQSS5EZXZpY2UuUHJvdG9jb2xSCXRyYW5zcG9ydA==');

@$core.Deprecated('Use wifiGetClientsRequestDescriptor instead')
const WifiGetClientsRequest$json = {
  '1': 'WifiGetClientsRequest',
};

/// Descriptor for `WifiGetClientsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetClientsRequestDescriptor = $convert.base64Decode(
    'ChVXaWZpR2V0Q2xpZW50c1JlcXVlc3Q=');

@$core.Deprecated('Use wifiSetupRequestDescriptor instead')
const WifiSetupRequest$json = {
  '1': 'WifiSetupRequest',
  '2': [
    {'1': 'skip', '3': 1, '4': 1, '5': 8, '10': 'skip'},
    {'1': 'network_name', '3': 2, '4': 1, '5': 9, '10': 'networkName'},
    {'1': 'network_password', '3': 3, '4': 1, '5': 9, '10': 'networkPassword'},
    {'1': 'bypass', '3': 4, '4': 1, '5': 8, '10': 'bypass'},
  ],
};

/// Descriptor for `WifiSetupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSetupRequestDescriptor = $convert.base64Decode(
    'ChBXaWZpU2V0dXBSZXF1ZXN0EhIKBHNraXAYASABKAhSBHNraXASIQoMbmV0d29ya19uYW1lGA'
    'IgASgJUgtuZXR3b3JrTmFtZRIpChBuZXR3b3JrX3Bhc3N3b3JkGAMgASgJUg9uZXR3b3JrUGFz'
    'c3dvcmQSFgoGYnlwYXNzGAQgASgIUgZieXBhc3M=');

@$core.Deprecated('Use wifiGetPingMetricsRequestDescriptor instead')
const WifiGetPingMetricsRequest$json = {
  '1': 'WifiGetPingMetricsRequest',
};

/// Descriptor for `WifiGetPingMetricsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetPingMetricsRequestDescriptor = $convert.base64Decode(
    'ChlXaWZpR2V0UGluZ01ldHJpY3NSZXF1ZXN0');

@$core.Deprecated('Use wifiGetConfigRequestDescriptor instead')
const WifiGetConfigRequest$json = {
  '1': 'WifiGetConfigRequest',
};

/// Descriptor for `WifiGetConfigRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetConfigRequestDescriptor = $convert.base64Decode(
    'ChRXaWZpR2V0Q29uZmlnUmVxdWVzdA==');

@$core.Deprecated('Use wifiSetMeshDeviceTrustRequestDescriptor instead')
const WifiSetMeshDeviceTrustRequest$json = {
  '1': 'WifiSetMeshDeviceTrustRequest',
  '2': [
    {'1': 'device_id', '3': 1, '4': 1, '5': 9, '10': 'deviceId'},
    {'1': 'auth', '3': 2, '4': 1, '5': 14, '6': '.SpaceX.API.Device.MeshAuth', '10': 'auth'},
  ],
};

/// Descriptor for `WifiSetMeshDeviceTrustRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSetMeshDeviceTrustRequestDescriptor = $convert.base64Decode(
    'Ch1XaWZpU2V0TWVzaERldmljZVRydXN0UmVxdWVzdBIbCglkZXZpY2VfaWQYASABKAlSCGRldm'
    'ljZUlkEi8KBGF1dGgYAiABKA4yGy5TcGFjZVguQVBJLkRldmljZS5NZXNoQXV0aFIEYXV0aA==');

@$core.Deprecated('Use wifiSetMeshConfigRequestDescriptor instead')
const WifiSetMeshConfigRequest$json = {
  '1': 'WifiSetMeshConfigRequest',
  '2': [
    {'1': 'mesh_config', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.MeshConfig', '10': 'meshConfig'},
    {'1': 'device_id', '3': 2, '4': 1, '5': 9, '10': 'deviceId'},
  ],
};

/// Descriptor for `WifiSetMeshConfigRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSetMeshConfigRequestDescriptor = $convert.base64Decode(
    'ChhXaWZpU2V0TWVzaENvbmZpZ1JlcXVlc3QSPgoLbWVzaF9jb25maWcYASABKAsyHS5TcGFjZV'
    'guQVBJLkRldmljZS5NZXNoQ29uZmlnUgptZXNoQ29uZmlnEhsKCWRldmljZV9pZBgCIAEoCVII'
    'ZGV2aWNlSWQ=');

@$core.Deprecated('Use wifiGetClientHistoryRequestDescriptor instead')
const WifiGetClientHistoryRequest$json = {
  '1': 'WifiGetClientHistoryRequest',
  '2': [
    {
      '1': 'mac_address',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '10': 'macAddress',
    },
    {'1': 'client_id', '3': 2, '4': 1, '5': 13, '10': 'clientId'},
  ],
};

/// Descriptor for `WifiGetClientHistoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetClientHistoryRequestDescriptor = $convert.base64Decode(
    'ChtXaWZpR2V0Q2xpZW50SGlzdG9yeVJlcXVlc3QSIwoLbWFjX2FkZHJlc3MYASABKAlCAhgBUg'
    'ptYWNBZGRyZXNzEhsKCWNsaWVudF9pZBgCIAEoDVIIY2xpZW50SWQ=');

@$core.Deprecated('Use wifiSetAviationConformedRequestDescriptor instead')
const WifiSetAviationConformedRequest$json = {
  '1': 'WifiSetAviationConformedRequest',
};

/// Descriptor for `WifiSetAviationConformedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSetAviationConformedRequestDescriptor = $convert.base64Decode(
    'Ch9XaWZpU2V0QXZpYXRpb25Db25mb3JtZWRSZXF1ZXN0');

@$core.Deprecated('Use wifiSetClientGivenNameRequestDescriptor instead')
const WifiSetClientGivenNameRequest$json = {
  '1': 'WifiSetClientGivenNameRequest',
  '2': [
    {
      '1': 'client_name',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.SpaceX.API.Device.ClientName',
      '8': {'3': true},
      '10': 'clientName',
    },
    {'1': 'client_config', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.ClientConfig', '10': 'clientConfig'},
  ],
};

/// Descriptor for `WifiSetClientGivenNameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSetClientGivenNameRequestDescriptor = $convert.base64Decode(
    'Ch1XaWZpU2V0Q2xpZW50R2l2ZW5OYW1lUmVxdWVzdBJCCgtjbGllbnRfbmFtZRgBIAEoCzIdLl'
    'NwYWNlWC5BUEkuRGV2aWNlLkNsaWVudE5hbWVCAhgBUgpjbGllbnROYW1lEkQKDWNsaWVudF9j'
    'b25maWcYAiABKAsyHy5TcGFjZVguQVBJLkRldmljZS5DbGllbnRDb25maWdSDGNsaWVudENvbm'
    'ZpZw==');

@$core.Deprecated('Use wifiSelfTestRequestDescriptor instead')
const WifiSelfTestRequest$json = {
  '1': 'WifiSelfTestRequest',
};

/// Descriptor for `WifiSelfTestRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSelfTestRequestDescriptor = $convert.base64Decode(
    'ChNXaWZpU2VsZlRlc3RSZXF1ZXN0');

@$core.Deprecated('Use wifiCalibrationModeRequestDescriptor instead')
const WifiCalibrationModeRequest$json = {
  '1': 'WifiCalibrationModeRequest',
};

/// Descriptor for `WifiCalibrationModeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiCalibrationModeRequestDescriptor = $convert.base64Decode(
    'ChpXaWZpQ2FsaWJyYXRpb25Nb2RlUmVxdWVzdA==');

@$core.Deprecated('Use wifiGuestInfoRequestDescriptor instead')
const WifiGuestInfoRequest$json = {
  '1': 'WifiGuestInfoRequest',
};

/// Descriptor for `WifiGuestInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGuestInfoRequestDescriptor = $convert.base64Decode(
    'ChRXaWZpR3Vlc3RJbmZvUmVxdWVzdA==');

@$core.Deprecated('Use wifiRfTestRequestDescriptor instead')
const WifiRfTestRequest$json = {
  '1': 'WifiRfTestRequest',
  '2': [
    {'1': 'num_measurements', '3': 1, '4': 1, '5': 13, '10': 'numMeasurements'},
    {'1': 'channel_2ghz', '3': 2, '4': 1, '5': 13, '10': 'channel2ghz'},
    {'1': 'channel_5ghz', '3': 3, '4': 1, '5': 13, '10': 'channel5ghz'},
    {'1': 'channel_5ghz_high', '3': 4, '4': 1, '5': 13, '10': 'channel5ghzHigh'},
    {'1': 'mcs_2ghz', '3': 5, '4': 1, '5': 13, '10': 'mcs2ghz'},
    {'1': 'mcs_5ghz', '3': 6, '4': 1, '5': 13, '10': 'mcs5ghz'},
    {'1': 'mcs_5ghz_high', '3': 7, '4': 1, '5': 13, '10': 'mcs5ghzHigh'},
    {'1': 'phy_mode_2ghz', '3': 8, '4': 1, '5': 13, '10': 'phyMode2ghz'},
    {'1': 'phy_mode_5ghz', '3': 9, '4': 1, '5': 13, '10': 'phyMode5ghz'},
    {'1': 'phy_mode_5ghz_high', '3': 10, '4': 1, '5': 13, '10': 'phyMode5ghzHigh'},
  ],
};

/// Descriptor for `WifiRfTestRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiRfTestRequestDescriptor = $convert.base64Decode(
    'ChFXaWZpUmZUZXN0UmVxdWVzdBIpChBudW1fbWVhc3VyZW1lbnRzGAEgASgNUg9udW1NZWFzdX'
    'JlbWVudHMSIQoMY2hhbm5lbF8yZ2h6GAIgASgNUgtjaGFubmVsMmdoehIhCgxjaGFubmVsXzVn'
    'aHoYAyABKA1SC2NoYW5uZWw1Z2h6EioKEWNoYW5uZWxfNWdoel9oaWdoGAQgASgNUg9jaGFubm'
    'VsNWdoekhpZ2gSGQoIbWNzXzJnaHoYBSABKA1SB21jczJnaHoSGQoIbWNzXzVnaHoYBiABKA1S'
    'B21jczVnaHoSIgoNbWNzXzVnaHpfaGlnaBgHIAEoDVILbWNzNWdoekhpZ2gSIgoNcGh5X21vZG'
    'VfMmdoehgIIAEoDVILcGh5TW9kZTJnaHoSIgoNcGh5X21vZGVfNWdoehgJIAEoDVILcGh5TW9k'
    'ZTVnaHoSKwoScGh5X21vZGVfNWdoel9oaWdoGAogASgNUg9waHlNb2RlNWdoekhpZ2g=');

@$core.Deprecated('Use wifiGetFirewallRequestDescriptor instead')
const WifiGetFirewallRequest$json = {
  '1': 'WifiGetFirewallRequest',
};

/// Descriptor for `WifiGetFirewallRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetFirewallRequestDescriptor = $convert.base64Decode(
    'ChZXaWZpR2V0RmlyZXdhbGxSZXF1ZXN0');

@$core.Deprecated('Use wifiTogglePoeNegotiationRequestDescriptor instead')
const WifiTogglePoeNegotiationRequest$json = {
  '1': 'WifiTogglePoeNegotiationRequest',
  '2': [
    {'1': 'enable', '3': 1, '4': 1, '5': 8, '10': 'enable'},
  ],
};

/// Descriptor for `WifiTogglePoeNegotiationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiTogglePoeNegotiationRequestDescriptor = $convert.base64Decode(
    'Ch9XaWZpVG9nZ2xlUG9lTmVnb3RpYXRpb25SZXF1ZXN0EhYKBmVuYWJsZRgBIAEoCFIGZW5hYm'
    'xl');

@$core.Deprecated('Use wifiFactoryTestCommandRequestDescriptor instead')
const WifiFactoryTestCommandRequest$json = {
  '1': 'WifiFactoryTestCommandRequest',
  '2': [
    {'1': 'iwpriv_command', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.IwprivCommand', '9': 0, '10': 'iwprivCommand'},
    {'1': 'ip_link_set_command', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.IpLinkSetCommand', '9': 0, '10': 'ipLinkSetCommand'},
    {'1': 'ip_addr_set_command', '3': 3, '4': 1, '5': 11, '6': '.SpaceX.API.Device.IpAddrSetCommand', '9': 0, '10': 'ipAddrSetCommand'},
  ],
  '8': [
    {'1': 'command'},
  ],
};

/// Descriptor for `WifiFactoryTestCommandRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiFactoryTestCommandRequestDescriptor = $convert.base64Decode(
    'Ch1XaWZpRmFjdG9yeVRlc3RDb21tYW5kUmVxdWVzdBJJCg5pd3ByaXZfY29tbWFuZBgBIAEoCz'
    'IgLlNwYWNlWC5BUEkuRGV2aWNlLkl3cHJpdkNvbW1hbmRIAFINaXdwcml2Q29tbWFuZBJUChNp'
    'cF9saW5rX3NldF9jb21tYW5kGAIgASgLMiMuU3BhY2VYLkFQSS5EZXZpY2UuSXBMaW5rU2V0Q2'
    '9tbWFuZEgAUhBpcExpbmtTZXRDb21tYW5kElQKE2lwX2FkZHJfc2V0X2NvbW1hbmQYAyABKAsy'
    'Iy5TcGFjZVguQVBJLkRldmljZS5JcEFkZHJTZXRDb21tYW5kSABSEGlwQWRkclNldENvbW1hbm'
    'RCCQoHY29tbWFuZA==');

@$core.Deprecated('Use iwprivCommandDescriptor instead')
const IwprivCommand$json = {
  '1': 'IwprivCommand',
  '2': [
    {'1': 'iface', '3': 1, '4': 1, '5': 9, '10': 'iface'},
    {'1': 'arg', '3': 2, '4': 1, '5': 9, '10': 'arg'},
    {'1': 'ioctl', '3': 3, '4': 1, '5': 14, '6': '.SpaceX.API.Device.IwprivCommand.Ioctl', '10': 'ioctl'},
  ],
  '4': [IwprivCommand_Ioctl$json],
};

@$core.Deprecated('Use iwprivCommandDescriptor instead')
const IwprivCommand_Ioctl$json = {
  '1': 'Ioctl',
  '2': [
    {'1': 'IOCTL_SET', '2': 0},
    {'1': 'IOCTL_E2P', '2': 1},
    {'1': 'IOCTL_MAC', '2': 3},
    {'1': 'IOCTL_SX_ALLOW_5GHZ_HIGH', '2': 4},
  ],
};

/// Descriptor for `IwprivCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iwprivCommandDescriptor = $convert.base64Decode(
    'Cg1Jd3ByaXZDb21tYW5kEhQKBWlmYWNlGAEgASgJUgVpZmFjZRIQCgNhcmcYAiABKAlSA2FyZx'
    'I8CgVpb2N0bBgDIAEoDjImLlNwYWNlWC5BUEkuRGV2aWNlLkl3cHJpdkNvbW1hbmQuSW9jdGxS'
    'BWlvY3RsIlIKBUlvY3RsEg0KCUlPQ1RMX1NFVBAAEg0KCUlPQ1RMX0UyUBABEg0KCUlPQ1RMX0'
    '1BQxADEhwKGElPQ1RMX1NYX0FMTE9XXzVHSFpfSElHSBAE');

@$core.Deprecated('Use ipLinkSetCommandDescriptor instead')
const IpLinkSetCommand$json = {
  '1': 'IpLinkSetCommand',
  '2': [
    {'1': 'iface', '3': 1, '4': 1, '5': 9, '10': 'iface'},
    {'1': 'up', '3': 2, '4': 1, '5': 8, '10': 'up'},
  ],
};

/// Descriptor for `IpLinkSetCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ipLinkSetCommandDescriptor = $convert.base64Decode(
    'ChBJcExpbmtTZXRDb21tYW5kEhQKBWlmYWNlGAEgASgJUgVpZmFjZRIOCgJ1cBgCIAEoCFICdX'
    'A=');

@$core.Deprecated('Use ipAddrSetCommandDescriptor instead')
const IpAddrSetCommand$json = {
  '1': 'IpAddrSetCommand',
  '2': [
    {'1': 'iface', '3': 1, '4': 1, '5': 9, '10': 'iface'},
    {'1': 'add', '3': 2, '4': 1, '5': 8, '10': 'add'},
    {'1': 'cidr', '3': 3, '4': 1, '5': 9, '10': 'cidr'},
  ],
};

/// Descriptor for `IpAddrSetCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ipAddrSetCommandDescriptor = $convert.base64Decode(
    'ChBJcEFkZHJTZXRDb21tYW5kEhQKBWlmYWNlGAEgASgJUgVpZmFjZRIQCgNhZGQYAiABKAhSA2'
    'FkZBISCgRjaWRyGAMgASgJUgRjaWRy');

@$core.Deprecated('Use wifiStartLocalTelemProxyRequestDescriptor instead')
const WifiStartLocalTelemProxyRequest$json = {
  '1': 'WifiStartLocalTelemProxyRequest',
  '2': [
    {'1': 'port', '3': 1, '4': 1, '5': 5, '10': 'port'},
  ],
};

/// Descriptor for `WifiStartLocalTelemProxyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiStartLocalTelemProxyRequestDescriptor = $convert.base64Decode(
    'Ch9XaWZpU3RhcnRMb2NhbFRlbGVtUHJveHlSZXF1ZXN0EhIKBHBvcnQYASABKAVSBHBvcnQ=');

@$core.Deprecated('Use wifiRunSelfTestRequestDescriptor instead')
const WifiRunSelfTestRequest$json = {
  '1': 'WifiRunSelfTestRequest',
};

/// Descriptor for `WifiRunSelfTestRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiRunSelfTestRequestDescriptor = $convert.base64Decode(
    'ChZXaWZpUnVuU2VsZlRlc3RSZXF1ZXN0');

@$core.Deprecated('Use wifiBackhaulStatsRequestDescriptor instead')
const WifiBackhaulStatsRequest$json = {
  '1': 'WifiBackhaulStatsRequest',
};

/// Descriptor for `WifiBackhaulStatsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiBackhaulStatsRequestDescriptor = $convert.base64Decode(
    'ChhXaWZpQmFja2hhdWxTdGF0c1JlcXVlc3Q=');

@$core.Deprecated('Use wifiToggleUmbilicalModeRequestDescriptor instead')
const WifiToggleUmbilicalModeRequest$json = {
  '1': 'WifiToggleUmbilicalModeRequest',
  '2': [
    {'1': 'enable', '3': 1, '4': 1, '5': 8, '10': 'enable'},
  ],
};

/// Descriptor for `WifiToggleUmbilicalModeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiToggleUmbilicalModeRequestDescriptor = $convert.base64Decode(
    'Ch5XaWZpVG9nZ2xlVW1iaWxpY2FsTW9kZVJlcXVlc3QSFgoGZW5hYmxlGAEgASgIUgZlbmFibG'
    'U=');

@$core.Deprecated('Use transceiverIFLoopbackTestRequestDescriptor instead')
const TransceiverIFLoopbackTestRequest$json = {
  '1': 'TransceiverIFLoopbackTestRequest',
  '2': [
    {'1': 'enable_if_loopback', '3': 1, '4': 1, '5': 8, '10': 'enableIfLoopback'},
  ],
};

/// Descriptor for `TransceiverIFLoopbackTestRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transceiverIFLoopbackTestRequestDescriptor = $convert.base64Decode(
    'CiBUcmFuc2NlaXZlcklGTG9vcGJhY2tUZXN0UmVxdWVzdBIsChJlbmFibGVfaWZfbG9vcGJhY2'
    'sYASABKAhSEGVuYWJsZUlmTG9vcGJhY2s=');

@$core.Deprecated('Use transceiverGetStatusRequestDescriptor instead')
const TransceiverGetStatusRequest$json = {
  '1': 'TransceiverGetStatusRequest',
};

/// Descriptor for `TransceiverGetStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transceiverGetStatusRequestDescriptor = $convert.base64Decode(
    'ChtUcmFuc2NlaXZlckdldFN0YXR1c1JlcXVlc3Q=');

@$core.Deprecated('Use transceiverGetTelemetryRequestDescriptor instead')
const TransceiverGetTelemetryRequest$json = {
  '1': 'TransceiverGetTelemetryRequest',
};

/// Descriptor for `TransceiverGetTelemetryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transceiverGetTelemetryRequestDescriptor = $convert.base64Decode(
    'Ch5UcmFuc2NlaXZlckdldFRlbGVtZXRyeVJlcXVlc3Q=');

@$core.Deprecated('Use startUnlockRequestDescriptor instead')
const StartUnlockRequest$json = {
  '1': 'StartUnlockRequest',
};

/// Descriptor for `StartUnlockRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startUnlockRequestDescriptor = $convert.base64Decode(
    'ChJTdGFydFVubG9ja1JlcXVlc3Q=');

@$core.Deprecated('Use finishUnlockRequestDescriptor instead')
const FinishUnlockRequest$json = {
  '1': 'FinishUnlockRequest',
  '2': [
    {'1': 'challenge', '3': 1, '4': 1, '5': 12, '10': 'challenge'},
    {'1': 'signature', '3': 2, '4': 1, '5': 12, '10': 'signature'},
  ],
};

/// Descriptor for `FinishUnlockRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List finishUnlockRequestDescriptor = $convert.base64Decode(
    'ChNGaW5pc2hVbmxvY2tSZXF1ZXN0EhwKCWNoYWxsZW5nZRgBIAEoDFIJY2hhbGxlbmdlEhwKCX'
    'NpZ25hdHVyZRgCIAEoDFIJc2lnbmF0dXJl');

@$core.Deprecated('Use getDiagnosticsRequestDescriptor instead')
const GetDiagnosticsRequest$json = {
  '1': 'GetDiagnosticsRequest',
};

/// Descriptor for `GetDiagnosticsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDiagnosticsRequestDescriptor = $convert.base64Decode(
    'ChVHZXREaWFnbm9zdGljc1JlcXVlc3Q=');

@$core.Deprecated('Use responseDescriptor instead')
const Response$json = {
  '1': 'Response',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'status', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Status.Status', '10': 'status'},
    {'1': 'api_version', '3': 3, '4': 1, '5': 4, '10': 'apiVersion'},
    {'1': 'reboot', '3': 1001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.RebootResponse', '9': 0, '10': 'reboot'},
    {'1': 'speed_test', '3': 1003, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SpeedTestResponse', '9': 0, '10': 'speedTest'},
    {'1': 'get_device_info', '3': 1004, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetDeviceInfoResponse', '9': 0, '10': 'getDeviceInfo'},
    {'1': 'get_next_id', '3': 1006, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetNextIdResponse', '9': 0, '10': 'getNextId'},
    {'1': 'get_ping', '3': 1009, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetPingResponse', '9': 0, '10': 'getPing'},
    {'1': 'set_trusted_keys', '3': 1010, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SetTrustedKeysResponse', '9': 0, '10': 'setTrustedKeys'},
    {'1': 'factory_reset', '3': 1011, '4': 1, '5': 11, '6': '.SpaceX.API.Device.FactoryResetResponse', '9': 0, '10': 'factoryReset'},
    {'1': 'get_log', '3': 1012, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetLogResponse', '9': 0, '10': 'getLog'},
    {'1': 'set_sku', '3': 1013, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SetSkuResponse', '9': 0, '10': 'setSku'},
    {'1': 'update', '3': 1014, '4': 1, '5': 11, '6': '.SpaceX.API.Device.UpdateResponse', '9': 0, '10': 'update'},
    {'1': 'get_network_interfaces', '3': 1015, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetNetworkInterfacesResponse', '9': 0, '10': 'getNetworkInterfaces'},
    {'1': 'ping_host', '3': 1016, '4': 1, '5': 11, '6': '.SpaceX.API.Device.PingHostResponse', '9': 0, '10': 'pingHost'},
    {'1': 'get_location', '3': 1017, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetLocationResponse', '9': 0, '10': 'getLocation'},
    {'1': 'get_heap_dump', '3': 1019, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetHeapDumpResponse', '9': 0, '10': 'getHeapDump'},
    {'1': 'restart_control', '3': 1020, '4': 1, '5': 11, '6': '.SpaceX.API.Device.RestartControlResponse', '9': 0, '10': 'restartControl'},
    {'1': 'fuse', '3': 1021, '4': 1, '5': 11, '6': '.SpaceX.API.Device.FuseResponse', '9': 0, '10': 'fuse'},
    {'1': 'get_connections', '3': 1023, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetConnectionsResponse', '9': 0, '10': 'getConnections'},
    {'1': 'start_speedtest', '3': 1027, '4': 1, '5': 11, '6': '.SpaceX.API.Device.StartSpeedtestResponse', '9': 0, '10': 'startSpeedtest'},
    {'1': 'get_speedtest_status', '3': 1028, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetSpeedtestStatusResponse', '9': 0, '10': 'getSpeedtestStatus'},
    {'1': 'report_client_speedtest', '3': 1029, '4': 1, '5': 11, '6': '.SpaceX.API.Device.ReportClientSpeedtestResponse', '9': 0, '10': 'reportClientSpeedtest'},
    {
      '1': 'initiate_remote_ssh',
      '3': 1030,
      '4': 1,
      '5': 11,
      '6': '.SpaceX.API.Device.InitiateRemoteSshResponse',
      '8': {'3': true},
      '9': 0,
      '10': 'initiateRemoteSsh',
    },
    {'1': 'self_test', '3': 1031, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SelfTestResponse', '9': 0, '10': 'selfTest'},
    {'1': 'set_test_mode', '3': 1032, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SetTestModeResponse', '9': 0, '10': 'setTestMode'},
    {'1': 'software_update', '3': 1033, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SoftwareUpdateResponse', '9': 0, '10': 'softwareUpdate'},
    {'1': 'enable_debug_telem', '3': 1034, '4': 1, '5': 11, '6': '.SpaceX.API.Device.EnableDebugTelemResponse', '9': 0, '10': 'enableDebugTelem'},
    {'1': 'get_radio_stats', '3': 1035, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetRadioStatsResponse', '9': 0, '10': 'getRadioStats'},
    {'1': 'time', '3': 1037, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetTimeResponse', '9': 0, '10': 'time'},
    {'1': 'run_iperf_server', '3': 1038, '4': 1, '5': 11, '6': '.SpaceX.API.Device.RunIperfServerResponse', '9': 0, '10': 'runIperfServer'},
    {'1': 'dish_stow', '3': 2002, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishStowResponse', '9': 0, '10': 'dishStow'},
    {'1': 'dish_get_context', '3': 2003, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetContextResponse', '9': 0, '10': 'dishGetContext'},
    {'1': 'dish_get_status', '3': 2004, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetStatusResponse', '9': 0, '10': 'dishGetStatus'},
    {'1': 'dish_authenticate', '3': 2005, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishAuthenticateResponse', '9': 0, '10': 'dishAuthenticate'},
    {'1': 'dish_get_history', '3': 2006, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetHistoryResponse', '9': 0, '10': 'dishGetHistory'},
    {'1': 'dish_set_emc', '3': 2007, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishSetEmcResponse', '9': 0, '10': 'dishSetEmc'},
    {'1': 'dish_get_obstruction_map', '3': 2008, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetObstructionMapResponse', '9': 0, '10': 'dishGetObstructionMap'},
    {'1': 'dish_get_emc', '3': 2009, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetEmcResponse', '9': 0, '10': 'dishGetEmc'},
    {'1': 'dish_set_config', '3': 2010, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishSetConfigResponse', '9': 0, '10': 'dishSetConfig'},
    {'1': 'dish_get_config', '3': 2011, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetConfigResponse', '9': 0, '10': 'dishGetConfig'},
    {'1': 'start_dish_self_test', '3': 2012, '4': 1, '5': 11, '6': '.SpaceX.API.Device.StartDishSelfTestResponse', '9': 0, '10': 'startDishSelfTest'},
    {'1': 'dish_inhibit_gps', '3': 2013, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishInhibitGpsResponse', '9': 0, '10': 'dishInhibitGps'},
    {'1': 'dish_clear_obstruction_map', '3': 2015, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishClearObstructionMapResponse', '9': 0, '10': 'dishClearObstructionMap'},
    {'1': 'dish_set_max_power_test_mode', '3': 2018, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishSetMaxPowerTestModeResponse', '9': 0, '10': 'dishSetMaxPowerTestMode'},
    {'1': 'dish_activate_rssi_scan', '3': 2019, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishActivateRssiScanResponse', '9': 0, '10': 'dishActivateRssiScan'},
    {'1': 'dish_get_rssi_scan_result', '3': 2020, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetRssiScanResultResponse', '9': 0, '10': 'dishGetRssiScanResult'},
    {'1': 'dish_factory_reset', '3': 2021, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishFactoryResetResponse', '9': 0, '10': 'dishFactoryReset'},
    {'1': 'reset_button', '3': 2022, '4': 1, '5': 11, '6': '.SpaceX.API.Device.ResetButtonResponse', '9': 0, '10': 'resetButton'},
    {'1': 'wifi_set_config', '3': 3001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSetConfigResponse', '9': 0, '10': 'wifiSetConfig'},
    {'1': 'wifi_get_clients', '3': 3002, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetClientsResponse', '9': 0, '10': 'wifiGetClients'},
    {'1': 'wifi_setup', '3': 3003, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSetupResponse', '9': 0, '10': 'wifiSetup'},
    {'1': 'wifi_get_status', '3': 3004, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetStatusResponse', '9': 0, '10': 'wifiGetStatus'},
    {'1': 'wifi_authenticate', '3': 3005, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiAuthenticateResponse', '9': 0, '10': 'wifiAuthenticate'},
    {'1': 'wifi_get_history', '3': 3006, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetHistoryResponse', '9': 0, '10': 'wifiGetHistory'},
    {'1': 'wifi_get_ping_metrics', '3': 3007, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetPingMetricsResponse', '9': 0, '10': 'wifiGetPingMetrics'},
    {'1': 'wifi_get_config', '3': 3009, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetConfigResponse', '9': 0, '10': 'wifiGetConfig'},
    {'1': 'wifi_set_mesh_device_trust', '3': 3012, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSetMeshDeviceTrustResponse', '9': 0, '10': 'wifiSetMeshDeviceTrust'},
    {
      '1': 'wifi_set_mesh_config',
      '3': 3013,
      '4': 1,
      '5': 11,
      '6': '.SpaceX.API.Device.WifiSetMeshConfigResponse',
      '8': {'3': true},
      '9': 0,
      '10': 'wifiSetMeshConfig',
    },
    {'1': 'wifi_get_client_history', '3': 3015, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetClientHistoryResponse', '9': 0, '10': 'wifiGetClientHistory'},
    {'1': 'wifi_self_test', '3': 3016, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSelfTestResponse', '9': 0, '10': 'wifiSelfTest'},
    {'1': 'wifi_guest_info', '3': 3020, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGuestInfoResponse', '9': 0, '10': 'wifiGuestInfo'},
    {'1': 'wifi_rf_test', '3': 3021, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiRfTestResponse', '9': 0, '10': 'wifiRfTest'},
    {'1': 'wifi_get_persistent_stats', '3': 3022, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetPersistentStatsResponse', '9': 0, '10': 'wifiGetPersistentStats'},
    {'1': 'wifi_get_firewall', '3': 3024, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetFirewallResponse', '9': 0, '10': 'wifiGetFirewall'},
    {'1': 'wifi_factory_test_command', '3': 3025, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiFactoryTestCommandResponse', '9': 0, '10': 'wifiFactoryTestCommand'},
    {'1': 'wifi_backhaul_stats', '3': 3026, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiBackhaulStatsResponse', '9': 0, '10': 'wifiBackhaulStats'},
    {'1': 'transceiver_if_loopback_test', '3': 4001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.TransceiverIFLoopbackTestResponse', '9': 0, '10': 'transceiverIfLoopbackTest'},
    {'1': 'transceiver_get_status', '3': 4003, '4': 1, '5': 11, '6': '.SpaceX.API.Device.TransceiverGetStatusResponse', '9': 0, '10': 'transceiverGetStatus'},
    {'1': 'transceiver_get_telemetry', '3': 4004, '4': 1, '5': 11, '6': '.SpaceX.API.Device.TransceiverGetTelemetryResponse', '9': 0, '10': 'transceiverGetTelemetry'},
    {'1': 'wifi_get_diagnostics', '3': 6000, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetDiagnosticsResponse', '9': 0, '10': 'wifiGetDiagnostics'},
    {'1': 'dish_get_diagnostics', '3': 6001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetDiagnosticsResponse', '9': 0, '10': 'dishGetDiagnostics'},
  ],
  '8': [
    {'1': 'response'},
  ],
  '9': [
    {'1': 1018, '2': 1019},
    {'1': 1026, '2': 1027},
    {'1': 2014, '2': 2015},
    {'1': 2025, '2': 2026},
    {'1': 3008, '2': 3009},
    {'1': 3011, '2': 3012},
    {'1': 3014, '2': 3015},
    {'1': 3203, '2': 3204},
  ],
};

/// Descriptor for `Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseDescriptor = $convert.base64Decode(
    'CghSZXNwb25zZRIOCgJpZBgBIAEoBFICaWQSMQoGc3RhdHVzGAIgASgLMhkuU3BhY2VYLkFQSS'
    '5TdGF0dXMuU3RhdHVzUgZzdGF0dXMSHwoLYXBpX3ZlcnNpb24YAyABKARSCmFwaVZlcnNpb24S'
    'PAoGcmVib290GOkHIAEoCzIhLlNwYWNlWC5BUEkuRGV2aWNlLlJlYm9vdFJlc3BvbnNlSABSBn'
    'JlYm9vdBJGCgpzcGVlZF90ZXN0GOsHIAEoCzIkLlNwYWNlWC5BUEkuRGV2aWNlLlNwZWVkVGVz'
    'dFJlc3BvbnNlSABSCXNwZWVkVGVzdBJTCg9nZXRfZGV2aWNlX2luZm8Y7AcgASgLMiguU3BhY2'
    'VYLkFQSS5EZXZpY2UuR2V0RGV2aWNlSW5mb1Jlc3BvbnNlSABSDWdldERldmljZUluZm8SRwoL'
    'Z2V0X25leHRfaWQY7gcgASgLMiQuU3BhY2VYLkFQSS5EZXZpY2UuR2V0TmV4dElkUmVzcG9uc2'
    'VIAFIJZ2V0TmV4dElkEkAKCGdldF9waW5nGPEHIAEoCzIiLlNwYWNlWC5BUEkuRGV2aWNlLkdl'
    'dFBpbmdSZXNwb25zZUgAUgdnZXRQaW5nElYKEHNldF90cnVzdGVkX2tleXMY8gcgASgLMikuU3'
    'BhY2VYLkFQSS5EZXZpY2UuU2V0VHJ1c3RlZEtleXNSZXNwb25zZUgAUg5zZXRUcnVzdGVkS2V5'
    'cxJPCg1mYWN0b3J5X3Jlc2V0GPMHIAEoCzInLlNwYWNlWC5BUEkuRGV2aWNlLkZhY3RvcnlSZX'
    'NldFJlc3BvbnNlSABSDGZhY3RvcnlSZXNldBI9CgdnZXRfbG9nGPQHIAEoCzIhLlNwYWNlWC5B'
    'UEkuRGV2aWNlLkdldExvZ1Jlc3BvbnNlSABSBmdldExvZxI9CgdzZXRfc2t1GPUHIAEoCzIhLl'
    'NwYWNlWC5BUEkuRGV2aWNlLlNldFNrdVJlc3BvbnNlSABSBnNldFNrdRI8CgZ1cGRhdGUY9gcg'
    'ASgLMiEuU3BhY2VYLkFQSS5EZXZpY2UuVXBkYXRlUmVzcG9uc2VIAFIGdXBkYXRlEmgKFmdldF'
    '9uZXR3b3JrX2ludGVyZmFjZXMY9wcgASgLMi8uU3BhY2VYLkFQSS5EZXZpY2UuR2V0TmV0d29y'
    'a0ludGVyZmFjZXNSZXNwb25zZUgAUhRnZXROZXR3b3JrSW50ZXJmYWNlcxJDCglwaW5nX2hvc3'
    'QY+AcgASgLMiMuU3BhY2VYLkFQSS5EZXZpY2UuUGluZ0hvc3RSZXNwb25zZUgAUghwaW5nSG9z'
    'dBJMCgxnZXRfbG9jYXRpb24Y+QcgASgLMiYuU3BhY2VYLkFQSS5EZXZpY2UuR2V0TG9jYXRpb2'
    '5SZXNwb25zZUgAUgtnZXRMb2NhdGlvbhJNCg1nZXRfaGVhcF9kdW1wGPsHIAEoCzImLlNwYWNl'
    'WC5BUEkuRGV2aWNlLkdldEhlYXBEdW1wUmVzcG9uc2VIAFILZ2V0SGVhcER1bXASVQoPcmVzdG'
    'FydF9jb250cm9sGPwHIAEoCzIpLlNwYWNlWC5BUEkuRGV2aWNlLlJlc3RhcnRDb250cm9sUmVz'
    'cG9uc2VIAFIOcmVzdGFydENvbnRyb2wSNgoEZnVzZRj9ByABKAsyHy5TcGFjZVguQVBJLkRldm'
    'ljZS5GdXNlUmVzcG9uc2VIAFIEZnVzZRJVCg9nZXRfY29ubmVjdGlvbnMY/wcgASgLMikuU3Bh'
    'Y2VYLkFQSS5EZXZpY2UuR2V0Q29ubmVjdGlvbnNSZXNwb25zZUgAUg5nZXRDb25uZWN0aW9ucx'
    'JVCg9zdGFydF9zcGVlZHRlc3QYgwggASgLMikuU3BhY2VYLkFQSS5EZXZpY2UuU3RhcnRTcGVl'
    'ZHRlc3RSZXNwb25zZUgAUg5zdGFydFNwZWVkdGVzdBJiChRnZXRfc3BlZWR0ZXN0X3N0YXR1cx'
    'iECCABKAsyLS5TcGFjZVguQVBJLkRldmljZS5HZXRTcGVlZHRlc3RTdGF0dXNSZXNwb25zZUgA'
    'UhJnZXRTcGVlZHRlc3RTdGF0dXMSawoXcmVwb3J0X2NsaWVudF9zcGVlZHRlc3QYhQggASgLMj'
    'AuU3BhY2VYLkFQSS5EZXZpY2UuUmVwb3J0Q2xpZW50U3BlZWR0ZXN0UmVzcG9uc2VIAFIVcmVw'
    'b3J0Q2xpZW50U3BlZWR0ZXN0EmMKE2luaXRpYXRlX3JlbW90ZV9zc2gYhgggASgLMiwuU3BhY2'
    'VYLkFQSS5EZXZpY2UuSW5pdGlhdGVSZW1vdGVTc2hSZXNwb25zZUICGAFIAFIRaW5pdGlhdGVS'
    'ZW1vdGVTc2gSQwoJc2VsZl90ZXN0GIcIIAEoCzIjLlNwYWNlWC5BUEkuRGV2aWNlLlNlbGZUZX'
    'N0UmVzcG9uc2VIAFIIc2VsZlRlc3QSTQoNc2V0X3Rlc3RfbW9kZRiICCABKAsyJi5TcGFjZVgu'
    'QVBJLkRldmljZS5TZXRUZXN0TW9kZVJlc3BvbnNlSABSC3NldFRlc3RNb2RlElUKD3NvZnR3YX'
    'JlX3VwZGF0ZRiJCCABKAsyKS5TcGFjZVguQVBJLkRldmljZS5Tb2Z0d2FyZVVwZGF0ZVJlc3Bv'
    'bnNlSABSDnNvZnR3YXJlVXBkYXRlElwKEmVuYWJsZV9kZWJ1Z190ZWxlbRiKCCABKAsyKy5TcG'
    'FjZVguQVBJLkRldmljZS5FbmFibGVEZWJ1Z1RlbGVtUmVzcG9uc2VIAFIQZW5hYmxlRGVidWdU'
    'ZWxlbRJTCg9nZXRfcmFkaW9fc3RhdHMYiwggASgLMiguU3BhY2VYLkFQSS5EZXZpY2UuR2V0Um'
    'FkaW9TdGF0c1Jlc3BvbnNlSABSDWdldFJhZGlvU3RhdHMSOQoEdGltZRiNCCABKAsyIi5TcGFj'
    'ZVguQVBJLkRldmljZS5HZXRUaW1lUmVzcG9uc2VIAFIEdGltZRJWChBydW5faXBlcmZfc2Vydm'
    'VyGI4IIAEoCzIpLlNwYWNlWC5BUEkuRGV2aWNlLlJ1bklwZXJmU2VydmVyUmVzcG9uc2VIAFIO'
    'cnVuSXBlcmZTZXJ2ZXISQwoJZGlzaF9zdG93GNIPIAEoCzIjLlNwYWNlWC5BUEkuRGV2aWNlLk'
    'Rpc2hTdG93UmVzcG9uc2VIAFIIZGlzaFN0b3cSVgoQZGlzaF9nZXRfY29udGV4dBjTDyABKAsy'
    'KS5TcGFjZVguQVBJLkRldmljZS5EaXNoR2V0Q29udGV4dFJlc3BvbnNlSABSDmRpc2hHZXRDb2'
    '50ZXh0ElMKD2Rpc2hfZ2V0X3N0YXR1cxjUDyABKAsyKC5TcGFjZVguQVBJLkRldmljZS5EaXNo'
    'R2V0U3RhdHVzUmVzcG9uc2VIAFINZGlzaEdldFN0YXR1cxJbChFkaXNoX2F1dGhlbnRpY2F0ZR'
    'jVDyABKAsyKy5TcGFjZVguQVBJLkRldmljZS5EaXNoQXV0aGVudGljYXRlUmVzcG9uc2VIAFIQ'
    'ZGlzaEF1dGhlbnRpY2F0ZRJWChBkaXNoX2dldF9oaXN0b3J5GNYPIAEoCzIpLlNwYWNlWC5BUE'
    'kuRGV2aWNlLkRpc2hHZXRIaXN0b3J5UmVzcG9uc2VIAFIOZGlzaEdldEhpc3RvcnkSSgoMZGlz'
    'aF9zZXRfZW1jGNcPIAEoCzIlLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hTZXRFbWNSZXNwb25zZU'
    'gAUgpkaXNoU2V0RW1jEmwKGGRpc2hfZ2V0X29ic3RydWN0aW9uX21hcBjYDyABKAsyMC5TcGFj'
    'ZVguQVBJLkRldmljZS5EaXNoR2V0T2JzdHJ1Y3Rpb25NYXBSZXNwb25zZUgAUhVkaXNoR2V0T2'
    'JzdHJ1Y3Rpb25NYXASSgoMZGlzaF9nZXRfZW1jGNkPIAEoCzIlLlNwYWNlWC5BUEkuRGV2aWNl'
    'LkRpc2hHZXRFbWNSZXNwb25zZUgAUgpkaXNoR2V0RW1jElMKD2Rpc2hfc2V0X2NvbmZpZxjaDy'
    'ABKAsyKC5TcGFjZVguQVBJLkRldmljZS5EaXNoU2V0Q29uZmlnUmVzcG9uc2VIAFINZGlzaFNl'
    'dENvbmZpZxJTCg9kaXNoX2dldF9jb25maWcY2w8gASgLMiguU3BhY2VYLkFQSS5EZXZpY2UuRG'
    'lzaEdldENvbmZpZ1Jlc3BvbnNlSABSDWRpc2hHZXRDb25maWcSYAoUc3RhcnRfZGlzaF9zZWxm'
    'X3Rlc3QY3A8gASgLMiwuU3BhY2VYLkFQSS5EZXZpY2UuU3RhcnREaXNoU2VsZlRlc3RSZXNwb2'
    '5zZUgAUhFzdGFydERpc2hTZWxmVGVzdBJWChBkaXNoX2luaGliaXRfZ3BzGN0PIAEoCzIpLlNw'
    'YWNlWC5BUEkuRGV2aWNlLkRpc2hJbmhpYml0R3BzUmVzcG9uc2VIAFIOZGlzaEluaGliaXRHcH'
    'MScgoaZGlzaF9jbGVhcl9vYnN0cnVjdGlvbl9tYXAY3w8gASgLMjIuU3BhY2VYLkFQSS5EZXZp'
    'Y2UuRGlzaENsZWFyT2JzdHJ1Y3Rpb25NYXBSZXNwb25zZUgAUhdkaXNoQ2xlYXJPYnN0cnVjdG'
    'lvbk1hcBJ0ChxkaXNoX3NldF9tYXhfcG93ZXJfdGVzdF9tb2RlGOIPIAEoCzIyLlNwYWNlWC5B'
    'UEkuRGV2aWNlLkRpc2hTZXRNYXhQb3dlclRlc3RNb2RlUmVzcG9uc2VIAFIXZGlzaFNldE1heF'
    'Bvd2VyVGVzdE1vZGUSaQoXZGlzaF9hY3RpdmF0ZV9yc3NpX3NjYW4Y4w8gASgLMi8uU3BhY2VY'
    'LkFQSS5EZXZpY2UuRGlzaEFjdGl2YXRlUnNzaVNjYW5SZXNwb25zZUgAUhRkaXNoQWN0aXZhdG'
    'VSc3NpU2NhbhJtChlkaXNoX2dldF9yc3NpX3NjYW5fcmVzdWx0GOQPIAEoCzIwLlNwYWNlWC5B'
    'UEkuRGV2aWNlLkRpc2hHZXRSc3NpU2NhblJlc3VsdFJlc3BvbnNlSABSFWRpc2hHZXRSc3NpU2'
    'NhblJlc3VsdBJcChJkaXNoX2ZhY3RvcnlfcmVzZXQY5Q8gASgLMisuU3BhY2VYLkFQSS5EZXZp'
    'Y2UuRGlzaEZhY3RvcnlSZXNldFJlc3BvbnNlSABSEGRpc2hGYWN0b3J5UmVzZXQSTAoMcmVzZX'
    'RfYnV0dG9uGOYPIAEoCzImLlNwYWNlWC5BUEkuRGV2aWNlLlJlc2V0QnV0dG9uUmVzcG9uc2VI'
    'AFILcmVzZXRCdXR0b24SUwoPd2lmaV9zZXRfY29uZmlnGLkXIAEoCzIoLlNwYWNlWC5BUEkuRG'
    'V2aWNlLldpZmlTZXRDb25maWdSZXNwb25zZUgAUg13aWZpU2V0Q29uZmlnElYKEHdpZmlfZ2V0'
    'X2NsaWVudHMYuhcgASgLMikuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUdldENsaWVudHNSZXNwb2'
    '5zZUgAUg53aWZpR2V0Q2xpZW50cxJGCgp3aWZpX3NldHVwGLsXIAEoCzIkLlNwYWNlWC5BUEku'
    'RGV2aWNlLldpZmlTZXR1cFJlc3BvbnNlSABSCXdpZmlTZXR1cBJTCg93aWZpX2dldF9zdGF0dX'
    'MYvBcgASgLMiguU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUdldFN0YXR1c1Jlc3BvbnNlSABSDXdp'
    'ZmlHZXRTdGF0dXMSWwoRd2lmaV9hdXRoZW50aWNhdGUYvRcgASgLMisuU3BhY2VYLkFQSS5EZX'
    'ZpY2UuV2lmaUF1dGhlbnRpY2F0ZVJlc3BvbnNlSABSEHdpZmlBdXRoZW50aWNhdGUSVgoQd2lm'
    'aV9nZXRfaGlzdG9yeRi+FyABKAsyKS5TcGFjZVguQVBJLkRldmljZS5XaWZpR2V0SGlzdG9yeV'
    'Jlc3BvbnNlSABSDndpZmlHZXRIaXN0b3J5EmMKFXdpZmlfZ2V0X3BpbmdfbWV0cmljcxi/FyAB'
    'KAsyLS5TcGFjZVguQVBJLkRldmljZS5XaWZpR2V0UGluZ01ldHJpY3NSZXNwb25zZUgAUhJ3aW'
    'ZpR2V0UGluZ01ldHJpY3MSUwoPd2lmaV9nZXRfY29uZmlnGMEXIAEoCzIoLlNwYWNlWC5BUEku'
    'RGV2aWNlLldpZmlHZXRDb25maWdSZXNwb25zZUgAUg13aWZpR2V0Q29uZmlnEnAKGndpZmlfc2'
    'V0X21lc2hfZGV2aWNlX3RydXN0GMQXIAEoCzIxLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlTZXRN'
    'ZXNoRGV2aWNlVHJ1c3RSZXNwb25zZUgAUhZ3aWZpU2V0TWVzaERldmljZVRydXN0EmQKFHdpZm'
    'lfc2V0X21lc2hfY29uZmlnGMUXIAEoCzIsLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlTZXRNZXNo'
    'Q29uZmlnUmVzcG9uc2VCAhgBSABSEXdpZmlTZXRNZXNoQ29uZmlnEmkKF3dpZmlfZ2V0X2NsaW'
    'VudF9oaXN0b3J5GMcXIAEoCzIvLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlHZXRDbGllbnRIaXN0'
    'b3J5UmVzcG9uc2VIAFIUd2lmaUdldENsaWVudEhpc3RvcnkSUAoOd2lmaV9zZWxmX3Rlc3QYyB'
    'cgASgLMicuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaVNlbGZUZXN0UmVzcG9uc2VIAFIMd2lmaVNl'
    'bGZUZXN0ElMKD3dpZmlfZ3Vlc3RfaW5mbxjMFyABKAsyKC5TcGFjZVguQVBJLkRldmljZS5XaW'
    'ZpR3Vlc3RJbmZvUmVzcG9uc2VIAFINd2lmaUd1ZXN0SW5mbxJKCgx3aWZpX3JmX3Rlc3QYzRcg'
    'ASgLMiUuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaVJmVGVzdFJlc3BvbnNlSABSCndpZmlSZlRlc3'
    'QSbwoZd2lmaV9nZXRfcGVyc2lzdGVudF9zdGF0cxjOFyABKAsyMS5TcGFjZVguQVBJLkRldmlj'
    'ZS5XaWZpR2V0UGVyc2lzdGVudFN0YXRzUmVzcG9uc2VIAFIWd2lmaUdldFBlcnNpc3RlbnRTdG'
    'F0cxJZChF3aWZpX2dldF9maXJld2FsbBjQFyABKAsyKi5TcGFjZVguQVBJLkRldmljZS5XaWZp'
    'R2V0RmlyZXdhbGxSZXNwb25zZUgAUg93aWZpR2V0RmlyZXdhbGwSbwoZd2lmaV9mYWN0b3J5X3'
    'Rlc3RfY29tbWFuZBjRFyABKAsyMS5TcGFjZVguQVBJLkRldmljZS5XaWZpRmFjdG9yeVRlc3RD'
    'b21tYW5kUmVzcG9uc2VIAFIWd2lmaUZhY3RvcnlUZXN0Q29tbWFuZBJfChN3aWZpX2JhY2toYX'
    'VsX3N0YXRzGNIXIAEoCzIsLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlCYWNraGF1bFN0YXRzUmVz'
    'cG9uc2VIAFIRd2lmaUJhY2toYXVsU3RhdHMSeAocdHJhbnNjZWl2ZXJfaWZfbG9vcGJhY2tfdG'
    'VzdBihHyABKAsyNC5TcGFjZVguQVBJLkRldmljZS5UcmFuc2NlaXZlcklGTG9vcGJhY2tUZXN0'
    'UmVzcG9uc2VIAFIZdHJhbnNjZWl2ZXJJZkxvb3BiYWNrVGVzdBJoChZ0cmFuc2NlaXZlcl9nZX'
    'Rfc3RhdHVzGKMfIAEoCzIvLlNwYWNlWC5BUEkuRGV2aWNlLlRyYW5zY2VpdmVyR2V0U3RhdHVz'
    'UmVzcG9uc2VIAFIUdHJhbnNjZWl2ZXJHZXRTdGF0dXMScQoZdHJhbnNjZWl2ZXJfZ2V0X3RlbG'
    'VtZXRyeRikHyABKAsyMi5TcGFjZVguQVBJLkRldmljZS5UcmFuc2NlaXZlckdldFRlbGVtZXRy'
    'eVJlc3BvbnNlSABSF3RyYW5zY2VpdmVyR2V0VGVsZW1ldHJ5EmIKFHdpZmlfZ2V0X2RpYWdub3'
    'N0aWNzGPAuIAEoCzItLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlHZXREaWFnbm9zdGljc1Jlc3Bv'
    'bnNlSABSEndpZmlHZXREaWFnbm9zdGljcxJiChRkaXNoX2dldF9kaWFnbm9zdGljcxjxLiABKA'
    'syLS5TcGFjZVguQVBJLkRldmljZS5EaXNoR2V0RGlhZ25vc3RpY3NSZXNwb25zZUgAUhJkaXNo'
    'R2V0RGlhZ25vc3RpY3NCCgoIcmVzcG9uc2VKBgj6BxD7B0oGCIIIEIMISgYI3g8Q3w9KBgjpDx'
    'DqD0oGCMAXEMEXSgYIwxcQxBdKBgjGFxDHF0oGCIMZEIQZ');

@$core.Deprecated('Use statusDescriptor instead')
const Status$json = {
  '1': 'Status',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 5, '10': 'code'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `Status`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusDescriptor = $convert.base64Decode(
    'CgZTdGF0dXMSEgoEY29kZRgBIAEoBVIEY29kZRIYCgdtZXNzYWdlGAIgASgJUgdtZXNzYWdl');

@$core.Deprecated('Use rebootResponseDescriptor instead')
const RebootResponse$json = {
  '1': 'RebootResponse',
};

/// Descriptor for `RebootResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rebootResponseDescriptor = $convert.base64Decode(
    'Cg5SZWJvb3RSZXNwb25zZQ==');

@$core.Deprecated('Use speedTestResponseDescriptor instead')
const SpeedTestResponse$json = {
  '1': 'SpeedTestResponse',
  '2': [
    {
      '1': 'download_bps',
      '3': 1,
      '4': 1,
      '5': 2,
      '8': {'3': true},
      '10': 'downloadBps',
    },
    {
      '1': 'upload_bps',
      '3': 2,
      '4': 1,
      '5': 2,
      '8': {'3': true},
      '10': 'uploadBps',
    },
    {
      '1': 'latency_s',
      '3': 3,
      '4': 1,
      '5': 2,
      '8': {'3': true},
      '10': 'latencyS',
    },
    {
      '1': 'download_mbps',
      '3': 4,
      '4': 1,
      '5': 2,
      '8': {'3': true},
      '10': 'downloadMbps',
    },
    {
      '1': 'upload_mbps',
      '3': 5,
      '4': 1,
      '5': 2,
      '8': {'3': true},
      '10': 'uploadMbps',
    },
    {
      '1': 'latency_ms',
      '3': 6,
      '4': 1,
      '5': 2,
      '8': {'3': true},
      '10': 'latencyMs',
    },
    {'1': 'download_mbps_1_tcp_conn', '3': 7, '4': 1, '5': 2, '10': 'downloadMbps1TcpConn'},
    {'1': 'upload_mbps_1_tcp_conn', '3': 8, '4': 1, '5': 2, '10': 'uploadMbps1TcpConn'},
    {'1': 'download_mbps_4_tcp_conn', '3': 9, '4': 1, '5': 2, '10': 'downloadMbps4TcpConn'},
    {'1': 'upload_mbps_4_tcp_conn', '3': 10, '4': 1, '5': 2, '10': 'uploadMbps4TcpConn'},
    {'1': 'download_mbps_16_tcp_conn', '3': 11, '4': 1, '5': 2, '10': 'downloadMbps16TcpConn'},
    {'1': 'upload_mbps_16_tcp_conn', '3': 12, '4': 1, '5': 2, '10': 'uploadMbps16TcpConn'},
    {'1': 'download_mbps_64_tcp_conn', '3': 13, '4': 1, '5': 2, '10': 'downloadMbps64TcpConn'},
    {'1': 'upload_mbps_64_tcp_conn', '3': 14, '4': 1, '5': 2, '10': 'uploadMbps64TcpConn'},
    {'1': 'router_speedtest', '3': 15, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SpeedTestStats', '10': 'routerSpeedtest'},
  ],
};

/// Descriptor for `SpeedTestResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List speedTestResponseDescriptor = $convert.base64Decode(
    'ChFTcGVlZFRlc3RSZXNwb25zZRIlCgxkb3dubG9hZF9icHMYASABKAJCAhgBUgtkb3dubG9hZE'
    'JwcxIhCgp1cGxvYWRfYnBzGAIgASgCQgIYAVIJdXBsb2FkQnBzEh8KCWxhdGVuY3lfcxgDIAEo'
    'AkICGAFSCGxhdGVuY3lTEicKDWRvd25sb2FkX21icHMYBCABKAJCAhgBUgxkb3dubG9hZE1icH'
    'MSIwoLdXBsb2FkX21icHMYBSABKAJCAhgBUgp1cGxvYWRNYnBzEiEKCmxhdGVuY3lfbXMYBiAB'
    'KAJCAhgBUglsYXRlbmN5TXMSNgoYZG93bmxvYWRfbWJwc18xX3RjcF9jb25uGAcgASgCUhRkb3'
    'dubG9hZE1icHMxVGNwQ29ubhIyChZ1cGxvYWRfbWJwc18xX3RjcF9jb25uGAggASgCUhJ1cGxv'
    'YWRNYnBzMVRjcENvbm4SNgoYZG93bmxvYWRfbWJwc180X3RjcF9jb25uGAkgASgCUhRkb3dubG'
    '9hZE1icHM0VGNwQ29ubhIyChZ1cGxvYWRfbWJwc180X3RjcF9jb25uGAogASgCUhJ1cGxvYWRN'
    'YnBzNFRjcENvbm4SOAoZZG93bmxvYWRfbWJwc18xNl90Y3BfY29ubhgLIAEoAlIVZG93bmxvYW'
    'RNYnBzMTZUY3BDb25uEjQKF3VwbG9hZF9tYnBzXzE2X3RjcF9jb25uGAwgASgCUhN1cGxvYWRN'
    'YnBzMTZUY3BDb25uEjgKGWRvd25sb2FkX21icHNfNjRfdGNwX2Nvbm4YDSABKAJSFWRvd25sb2'
    'FkTWJwczY0VGNwQ29ubhI0Chd1cGxvYWRfbWJwc182NF90Y3BfY29ubhgOIAEoAlITdXBsb2Fk'
    'TWJwczY0VGNwQ29ubhJMChByb3V0ZXJfc3BlZWR0ZXN0GA8gASgLMiEuU3BhY2VYLkFQSS5EZX'
    'ZpY2UuU3BlZWRUZXN0U3RhdHNSD3JvdXRlclNwZWVkdGVzdA==');

@$core.Deprecated('Use getDeviceInfoResponseDescriptor instead')
const GetDeviceInfoResponse$json = {
  '1': 'GetDeviceInfoResponse',
  '2': [
    {'1': 'device_info', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DeviceInfo', '10': 'deviceInfo'},
  ],
};

/// Descriptor for `GetDeviceInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDeviceInfoResponseDescriptor = $convert.base64Decode(
    'ChVHZXREZXZpY2VJbmZvUmVzcG9uc2USPgoLZGV2aWNlX2luZm8YASABKAsyHS5TcGFjZVguQV'
    'BJLkRldmljZS5EZXZpY2VJbmZvUgpkZXZpY2VJbmZv');

@$core.Deprecated('Use deviceInfoDescriptor instead')
const DeviceInfo$json = {
  '1': 'DeviceInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'hardware_version', '3': 2, '4': 1, '5': 9, '10': 'hardwareVersion'},
    {'1': 'software_version', '3': 3, '4': 1, '5': 9, '10': 'softwareVersion'},
    {'1': 'country_code', '3': 4, '4': 1, '5': 9, '10': 'countryCode'},
    {'1': 'utc_offset_s', '3': 5, '4': 1, '5': 5, '10': 'utcOffsetS'},
    {'1': 'software_partitions_equal', '3': 6, '4': 1, '5': 8, '10': 'softwarePartitionsEqual'},
    {'1': 'is_dev', '3': 7, '4': 1, '5': 8, '10': 'isDev'},
    {'1': 'bootcount', '3': 8, '4': 1, '5': 5, '10': 'bootcount'},
    {'1': 'anti_rollback_version', '3': 9, '4': 1, '5': 5, '10': 'antiRollbackVersion'},
    {'1': 'is_hitl', '3': 10, '4': 1, '5': 8, '10': 'isHitl'},
    {'1': 'manufactured_version', '3': 11, '4': 1, '5': 9, '10': 'manufacturedVersion'},
    {'1': 'generation_number', '3': 12, '4': 1, '5': 3, '10': 'generationNumber'},
    {'1': 'dish_cohoused', '3': 13, '4': 1, '5': 8, '10': 'dishCohoused'},
    {'1': 'board_rev', '3': 14, '4': 1, '5': 5, '10': 'boardRev'},
    {'1': 'boot', '3': 1001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.BootInfo', '10': 'boot'},
  ],
};

/// Descriptor for `DeviceInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceInfoDescriptor = $convert.base64Decode(
    'CgpEZXZpY2VJbmZvEg4KAmlkGAEgASgJUgJpZBIpChBoYXJkd2FyZV92ZXJzaW9uGAIgASgJUg'
    '9oYXJkd2FyZVZlcnNpb24SKQoQc29mdHdhcmVfdmVyc2lvbhgDIAEoCVIPc29mdHdhcmVWZXJz'
    'aW9uEiEKDGNvdW50cnlfY29kZRgEIAEoCVILY291bnRyeUNvZGUSIAoMdXRjX29mZnNldF9zGA'
    'UgASgFUgp1dGNPZmZzZXRTEjoKGXNvZnR3YXJlX3BhcnRpdGlvbnNfZXF1YWwYBiABKAhSF3Nv'
    'ZnR3YXJlUGFydGl0aW9uc0VxdWFsEhUKBmlzX2RldhgHIAEoCFIFaXNEZXYSHAoJYm9vdGNvdW'
    '50GAggASgFUglib290Y291bnQSMgoVYW50aV9yb2xsYmFja192ZXJzaW9uGAkgASgFUhNhbnRp'
    'Um9sbGJhY2tWZXJzaW9uEhcKB2lzX2hpdGwYCiABKAhSBmlzSGl0bBIxChRtYW51ZmFjdHVyZW'
    'RfdmVyc2lvbhgLIAEoCVITbWFudWZhY3R1cmVkVmVyc2lvbhIrChFnZW5lcmF0aW9uX251bWJl'
    'chgMIAEoA1IQZ2VuZXJhdGlvbk51bWJlchIjCg1kaXNoX2NvaG91c2VkGA0gASgIUgxkaXNoQ2'
    '9ob3VzZWQSGwoJYm9hcmRfcmV2GA4gASgFUghib2FyZFJldhIwCgRib290GOkHIAEoCzIbLlNw'
    'YWNlWC5BUEkuRGV2aWNlLkJvb3RJbmZvUgRib290');

@$core.Deprecated('Use getNextIdResponseDescriptor instead')
const GetNextIdResponse$json = {
  '1': 'GetNextIdResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'epoch_id', '3': 2, '4': 1, '5': 4, '10': 'epochId'},
  ],
};

/// Descriptor for `GetNextIdResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNextIdResponseDescriptor = $convert.base64Decode(
    'ChFHZXROZXh0SWRSZXNwb25zZRIOCgJpZBgBIAEoBFICaWQSGQoIZXBvY2hfaWQYAiABKARSB2'
    'Vwb2NoSWQ=');

@$core.Deprecated('Use getPingResponseDescriptor instead')
const GetPingResponse$json = {
  '1': 'GetPingResponse',
  '2': [
    {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.SpaceX.API.Device.GetPingResponse.ResultsEntry', '10': 'results'},
  ],
  '3': [GetPingResponse_ResultsEntry$json],
};

@$core.Deprecated('Use getPingResponseDescriptor instead')
const GetPingResponse_ResultsEntry$json = {
  '1': 'ResultsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.PingResult', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `GetPingResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPingResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRQaW5nUmVzcG9uc2USSQoHcmVzdWx0cxgBIAMoCzIvLlNwYWNlWC5BUEkuRGV2aWNlLk'
    'dldFBpbmdSZXNwb25zZS5SZXN1bHRzRW50cnlSB3Jlc3VsdHMaWQoMUmVzdWx0c0VudHJ5EhAK'
    'A2tleRgBIAEoCVIDa2V5EjMKBXZhbHVlGAIgASgLMh0uU3BhY2VYLkFQSS5EZXZpY2UuUGluZ1'
    'Jlc3VsdFIFdmFsdWU6AjgB');

@$core.Deprecated('Use pingResultDescriptor instead')
const PingResult$json = {
  '1': 'PingResult',
  '2': [
    {'1': 'dropRate', '3': 1, '4': 1, '5': 2, '10': 'dropRate'},
    {'1': 'latencyMs', '3': 2, '4': 1, '5': 2, '10': 'latencyMs'},
    {'1': 'target', '3': 3, '4': 1, '5': 11, '6': '.SpaceX.API.Device.PingTarget', '10': 'target'},
  ],
};

/// Descriptor for `PingResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingResultDescriptor = $convert.base64Decode(
    'CgpQaW5nUmVzdWx0EhoKCGRyb3BSYXRlGAEgASgCUghkcm9wUmF0ZRIcCglsYXRlbmN5TXMYAi'
    'ABKAJSCWxhdGVuY3lNcxI1CgZ0YXJnZXQYAyABKAsyHS5TcGFjZVguQVBJLkRldmljZS5QaW5n'
    'VGFyZ2V0UgZ0YXJnZXQ=');

@$core.Deprecated('Use pingTargetDescriptor instead')
const PingTarget$json = {
  '1': 'PingTarget',
  '2': [
    {'1': 'service', '3': 1, '4': 1, '5': 9, '10': 'service'},
    {'1': 'location', '3': 2, '4': 1, '5': 9, '10': 'location'},
    {'1': 'address', '3': 3, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `PingTarget`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingTargetDescriptor = $convert.base64Decode(
    'CgpQaW5nVGFyZ2V0EhgKB3NlcnZpY2UYASABKAlSB3NlcnZpY2USGgoIbG9jYXRpb24YAiABKA'
    'lSCGxvY2F0aW9uEhgKB2FkZHJlc3MYAyABKAlSB2FkZHJlc3M=');

@$core.Deprecated('Use setTrustedKeysResponseDescriptor instead')
const SetTrustedKeysResponse$json = {
  '1': 'SetTrustedKeysResponse',
};

/// Descriptor for `SetTrustedKeysResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setTrustedKeysResponseDescriptor = $convert.base64Decode(
    'ChZTZXRUcnVzdGVkS2V5c1Jlc3BvbnNl');

@$core.Deprecated('Use factoryResetResponseDescriptor instead')
const FactoryResetResponse$json = {
  '1': 'FactoryResetResponse',
};

/// Descriptor for `FactoryResetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List factoryResetResponseDescriptor = $convert.base64Decode(
    'ChRGYWN0b3J5UmVzZXRSZXNwb25zZQ==');

@$core.Deprecated('Use getLogResponseDescriptor instead')
const GetLogResponse$json = {
  '1': 'GetLogResponse',
  '2': [
    {
      '1': 'syslog',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '10': 'syslog',
    },
    {
      '1': 'offline_log',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '10': 'offlineLog',
    },
    {
      '1': 'persistent_log',
      '3': 3,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '10': 'persistentLog',
    },
    {'1': 'current', '3': 4, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetLogResponse.Logs', '10': 'current'},
    {'1': 'saved', '3': 5, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetLogResponse.Logs', '10': 'saved'},
  ],
  '3': [GetLogResponse_Logs$json],
};

@$core.Deprecated('Use getLogResponseDescriptor instead')
const GetLogResponse_Logs$json = {
  '1': 'Logs',
  '2': [
    {'1': 'syslog', '3': 1, '4': 1, '5': 9, '10': 'syslog'},
    {'1': 'dmesg', '3': 2, '4': 1, '5': 9, '10': 'dmesg'},
    {'1': 'kernel_panic', '3': 3, '4': 1, '5': 9, '10': 'kernelPanic'},
    {'1': 'mtk_eth_procs', '3': 4, '4': 1, '5': 9, '10': 'mtkEthProcs'},
  ],
};

/// Descriptor for `GetLogResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLogResponseDescriptor = $convert.base64Decode(
    'Cg5HZXRMb2dSZXNwb25zZRIaCgZzeXNsb2cYASABKAlCAhgBUgZzeXNsb2cSIwoLb2ZmbGluZV'
    '9sb2cYAiABKAlCAhgBUgpvZmZsaW5lTG9nEikKDnBlcnNpc3RlbnRfbG9nGAMgASgJQgIYAVIN'
    'cGVyc2lzdGVudExvZxJACgdjdXJyZW50GAQgASgLMiYuU3BhY2VYLkFQSS5EZXZpY2UuR2V0TG'
    '9nUmVzcG9uc2UuTG9nc1IHY3VycmVudBI8CgVzYXZlZBgFIAEoCzImLlNwYWNlWC5BUEkuRGV2'
    'aWNlLkdldExvZ1Jlc3BvbnNlLkxvZ3NSBXNhdmVkGnsKBExvZ3MSFgoGc3lzbG9nGAEgASgJUg'
    'ZzeXNsb2cSFAoFZG1lc2cYAiABKAlSBWRtZXNnEiEKDGtlcm5lbF9wYW5pYxgDIAEoCVILa2Vy'
    'bmVsUGFuaWMSIgoNbXRrX2V0aF9wcm9jcxgEIAEoCVILbXRrRXRoUHJvY3M=');

@$core.Deprecated('Use setSkuResponseDescriptor instead')
const SetSkuResponse$json = {
  '1': 'SetSkuResponse',
};

/// Descriptor for `SetSkuResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setSkuResponseDescriptor = $convert.base64Decode(
    'Cg5TZXRTa3VSZXNwb25zZQ==');

@$core.Deprecated('Use updateResponseDescriptor instead')
const UpdateResponse$json = {
  '1': 'UpdateResponse',
};

/// Descriptor for `UpdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateResponseDescriptor = $convert.base64Decode(
    'Cg5VcGRhdGVSZXNwb25zZQ==');

@$core.Deprecated('Use getNetworkInterfacesResponseDescriptor instead')
const GetNetworkInterfacesResponse$json = {
  '1': 'GetNetworkInterfacesResponse',
  '2': [
    {'1': 'network_interfaces', '3': 1006, '4': 3, '5': 11, '6': '.SpaceX.API.Device.NetworkInterface', '10': 'networkInterfaces'},
  ],
};

/// Descriptor for `GetNetworkInterfacesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNetworkInterfacesResponseDescriptor = $convert.base64Decode(
    'ChxHZXROZXR3b3JrSW50ZXJmYWNlc1Jlc3BvbnNlElMKEm5ldHdvcmtfaW50ZXJmYWNlcxjuBy'
    'ADKAsyIy5TcGFjZVguQVBJLkRldmljZS5OZXR3b3JrSW50ZXJmYWNlUhFuZXR3b3JrSW50ZXJm'
    'YWNlcw==');

@$core.Deprecated('Use networkInterfaceDescriptor instead')
const NetworkInterface$json = {
  '1': 'NetworkInterface',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'rx_stats', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.NetworkInterface.RxStats', '10': 'rxStats'},
    {'1': 'tx_stats', '3': 3, '4': 1, '5': 11, '6': '.SpaceX.API.Device.NetworkInterface.TxStats', '10': 'txStats'},
    {'1': 'up', '3': 4, '4': 1, '5': 8, '10': 'up'},
    {'1': 'mac_address', '3': 5, '4': 1, '5': 9, '10': 'macAddress'},
    {'1': 'ipv4_addresses', '3': 6, '4': 3, '5': 9, '10': 'ipv4Addresses'},
    {'1': 'ipv6_addresses', '3': 7, '4': 3, '5': 9, '10': 'ipv6Addresses'},
    {'1': 'ethernet', '3': 1000, '4': 1, '5': 11, '6': '.SpaceX.API.Device.EthernetNetworkInterface', '9': 0, '10': 'ethernet'},
    {'1': 'wifi', '3': 1001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiNetworkInterface', '9': 0, '10': 'wifi'},
    {'1': 'bridge', '3': 1002, '4': 1, '5': 11, '6': '.SpaceX.API.Device.BridgeNetworkInterface', '9': 0, '10': 'bridge'},
  ],
  '3': [NetworkInterface_RxStats$json, NetworkInterface_TxStats$json],
  '8': [
    {'1': 'interface'},
  ],
};

@$core.Deprecated('Use networkInterfaceDescriptor instead')
const NetworkInterface_RxStats$json = {
  '1': 'RxStats',
  '2': [
    {'1': 'bytes', '3': 1, '4': 1, '5': 4, '10': 'bytes'},
    {'1': 'packets', '3': 2, '4': 1, '5': 4, '10': 'packets'},
    {'1': 'frame_errors', '3': 3, '4': 1, '5': 4, '10': 'frameErrors'},
  ],
};

@$core.Deprecated('Use networkInterfaceDescriptor instead')
const NetworkInterface_TxStats$json = {
  '1': 'TxStats',
  '2': [
    {'1': 'bytes', '3': 1, '4': 1, '5': 4, '10': 'bytes'},
    {'1': 'packets', '3': 2, '4': 1, '5': 4, '10': 'packets'},
  ],
};

/// Descriptor for `NetworkInterface`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List networkInterfaceDescriptor = $convert.base64Decode(
    'ChBOZXR3b3JrSW50ZXJmYWNlEhIKBG5hbWUYASABKAlSBG5hbWUSRgoIcnhfc3RhdHMYAiABKA'
    'syKy5TcGFjZVguQVBJLkRldmljZS5OZXR3b3JrSW50ZXJmYWNlLlJ4U3RhdHNSB3J4U3RhdHMS'
    'RgoIdHhfc3RhdHMYAyABKAsyKy5TcGFjZVguQVBJLkRldmljZS5OZXR3b3JrSW50ZXJmYWNlLl'
    'R4U3RhdHNSB3R4U3RhdHMSDgoCdXAYBCABKAhSAnVwEh8KC21hY19hZGRyZXNzGAUgASgJUgpt'
    'YWNBZGRyZXNzEiUKDmlwdjRfYWRkcmVzc2VzGAYgAygJUg1pcHY0QWRkcmVzc2VzEiUKDmlwdj'
    'ZfYWRkcmVzc2VzGAcgAygJUg1pcHY2QWRkcmVzc2VzEkoKCGV0aGVybmV0GOgHIAEoCzIrLlNw'
    'YWNlWC5BUEkuRGV2aWNlLkV0aGVybmV0TmV0d29ya0ludGVyZmFjZUgAUghldGhlcm5ldBI+Cg'
    'R3aWZpGOkHIAEoCzInLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlOZXR3b3JrSW50ZXJmYWNlSABS'
    'BHdpZmkSRAoGYnJpZGdlGOoHIAEoCzIpLlNwYWNlWC5BUEkuRGV2aWNlLkJyaWRnZU5ldHdvcm'
    'tJbnRlcmZhY2VIAFIGYnJpZGdlGlwKB1J4U3RhdHMSFAoFYnl0ZXMYASABKARSBWJ5dGVzEhgK'
    'B3BhY2tldHMYAiABKARSB3BhY2tldHMSIQoMZnJhbWVfZXJyb3JzGAMgASgEUgtmcmFtZUVycm'
    '9ycxo5CgdUeFN0YXRzEhQKBWJ5dGVzGAEgASgEUgVieXRlcxIYCgdwYWNrZXRzGAIgASgEUgdw'
    'YWNrZXRzQgsKCWludGVyZmFjZQ==');

@$core.Deprecated('Use ethernetNetworkInterfaceDescriptor instead')
const EthernetNetworkInterface$json = {
  '1': 'EthernetNetworkInterface',
  '2': [
    {'1': 'link_detected', '3': 1, '4': 1, '5': 8, '10': 'linkDetected'},
    {'1': 'speed_mbps', '3': 2, '4': 1, '5': 13, '10': 'speedMbps'},
    {'1': 'autonegotiation_on', '3': 3, '4': 1, '5': 8, '10': 'autonegotiationOn'},
    {'1': 'duplex', '3': 4, '4': 1, '5': 14, '6': '.SpaceX.API.Device.EthernetNetworkInterface.Duplex', '10': 'duplex'},
  ],
  '4': [EthernetNetworkInterface_Duplex$json],
};

@$core.Deprecated('Use ethernetNetworkInterfaceDescriptor instead')
const EthernetNetworkInterface_Duplex$json = {
  '1': 'Duplex',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'HALF', '2': 1},
    {'1': 'FULL', '2': 2},
  ],
};

/// Descriptor for `EthernetNetworkInterface`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ethernetNetworkInterfaceDescriptor = $convert.base64Decode(
    'ChhFdGhlcm5ldE5ldHdvcmtJbnRlcmZhY2USIwoNbGlua19kZXRlY3RlZBgBIAEoCFIMbGlua0'
    'RldGVjdGVkEh0KCnNwZWVkX21icHMYAiABKA1SCXNwZWVkTWJwcxItChJhdXRvbmVnb3RpYXRp'
    'b25fb24YAyABKAhSEWF1dG9uZWdvdGlhdGlvbk9uEkoKBmR1cGxleBgEIAEoDjIyLlNwYWNlWC'
    '5BUEkuRGV2aWNlLkV0aGVybmV0TmV0d29ya0ludGVyZmFjZS5EdXBsZXhSBmR1cGxleCIpCgZE'
    'dXBsZXgSCwoHVU5LTk9XThAAEggKBEhBTEYQARIICgRGVUxMEAI=');

@$core.Deprecated('Use wifiNetworkInterfaceDescriptor instead')
const WifiNetworkInterface$json = {
  '1': 'WifiNetworkInterface',
  '2': [
    {'1': 'invalid_packet_counts', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiNetworkInterface.InvalidPacketCounts', '10': 'invalidPacketCounts'},
    {'1': 'channel', '3': 3, '4': 1, '5': 13, '10': 'channel'},
    {'1': 'link_quality', '3': 4, '4': 1, '5': 1, '10': 'linkQuality'},
    {'1': 'signal_level', '3': 5, '4': 1, '5': 1, '10': 'signalLevel'},
    {'1': 'noise_level', '3': 6, '4': 1, '5': 1, '10': 'noiseLevel'},
    {'1': 'missed_beacons', '3': 8, '4': 1, '5': 13, '10': 'missedBeacons'},
  ],
  '3': [WifiNetworkInterface_InvalidPacketCounts$json],
  '9': [
    {'1': 1, '2': 2},
    {'1': 7, '2': 8},
    {'1': 9, '2': 10},
  ],
  '10': ['antennae_status', 'thermal_status'],
};

@$core.Deprecated('Use wifiNetworkInterfaceDescriptor instead')
const WifiNetworkInterface_InvalidPacketCounts$json = {
  '1': 'InvalidPacketCounts',
  '2': [
    {'1': 'rx_invalid_nwid', '3': 1, '4': 1, '5': 13, '10': 'rxInvalidNwid'},
    {'1': 'rx_invalid_crypt', '3': 2, '4': 1, '5': 13, '10': 'rxInvalidCrypt'},
    {'1': 'rx_invalid_frag', '3': 3, '4': 1, '5': 13, '10': 'rxInvalidFrag'},
    {'1': 'tx_excessive_retries', '3': 4, '4': 1, '5': 13, '10': 'txExcessiveRetries'},
    {'1': 'invalid_misc', '3': 5, '4': 1, '5': 13, '10': 'invalidMisc'},
  ],
};

/// Descriptor for `WifiNetworkInterface`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiNetworkInterfaceDescriptor = $convert.base64Decode(
    'ChRXaWZpTmV0d29ya0ludGVyZmFjZRJvChVpbnZhbGlkX3BhY2tldF9jb3VudHMYAiABKAsyOy'
    '5TcGFjZVguQVBJLkRldmljZS5XaWZpTmV0d29ya0ludGVyZmFjZS5JbnZhbGlkUGFja2V0Q291'
    'bnRzUhNpbnZhbGlkUGFja2V0Q291bnRzEhgKB2NoYW5uZWwYAyABKA1SB2NoYW5uZWwSIQoMbG'
    'lua19xdWFsaXR5GAQgASgBUgtsaW5rUXVhbGl0eRIhCgxzaWduYWxfbGV2ZWwYBSABKAFSC3Np'
    'Z25hbExldmVsEh8KC25vaXNlX2xldmVsGAYgASgBUgpub2lzZUxldmVsEiUKDm1pc3NlZF9iZW'
    'Fjb25zGAggASgNUg1taXNzZWRCZWFjb25zGuQBChNJbnZhbGlkUGFja2V0Q291bnRzEiYKD3J4'
    'X2ludmFsaWRfbndpZBgBIAEoDVINcnhJbnZhbGlkTndpZBIoChByeF9pbnZhbGlkX2NyeXB0GA'
    'IgASgNUg5yeEludmFsaWRDcnlwdBImCg9yeF9pbnZhbGlkX2ZyYWcYAyABKA1SDXJ4SW52YWxp'
    'ZEZyYWcSMAoUdHhfZXhjZXNzaXZlX3JldHJpZXMYBCABKA1SEnR4RXhjZXNzaXZlUmV0cmllcx'
    'IhCgxpbnZhbGlkX21pc2MYBSABKA1SC2ludmFsaWRNaXNjSgQIARACSgQIBxAISgQICRAKUg9h'
    'bnRlbm5hZV9zdGF0dXNSDnRoZXJtYWxfc3RhdHVz');

@$core.Deprecated('Use bridgeNetworkInterfaceDescriptor instead')
const BridgeNetworkInterface$json = {
  '1': 'BridgeNetworkInterface',
  '2': [
    {'1': 'member_names', '3': 1, '4': 3, '5': 9, '10': 'memberNames'},
  ],
};

/// Descriptor for `BridgeNetworkInterface`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bridgeNetworkInterfaceDescriptor = $convert.base64Decode(
    'ChZCcmlkZ2VOZXR3b3JrSW50ZXJmYWNlEiEKDG1lbWJlcl9uYW1lcxgBIAMoCVILbWVtYmVyTm'
    'FtZXM=');

@$core.Deprecated('Use pingHostResponseDescriptor instead')
const PingHostResponse$json = {
  '1': 'PingHostResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.PingResult', '10': 'result'},
  ],
};

/// Descriptor for `PingHostResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingHostResponseDescriptor = $convert.base64Decode(
    'ChBQaW5nSG9zdFJlc3BvbnNlEjUKBnJlc3VsdBgBIAEoCzIdLlNwYWNlWC5BUEkuRGV2aWNlLl'
    'BpbmdSZXN1bHRSBnJlc3VsdA==');

@$core.Deprecated('Use getLocationResponseDescriptor instead')
const GetLocationResponse$json = {
  '1': 'GetLocationResponse',
  '2': [
    {'1': 'lla', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.LLAPosition', '10': 'lla'},
    {'1': 'source', '3': 3, '4': 1, '5': 14, '6': '.SpaceX.API.Device.PositionSource', '10': 'source'},
    {'1': 'sigma_m', '3': 4, '4': 1, '5': 1, '10': 'sigmaM'},
  ],
  '9': [
    {'1': 2, '2': 3},
  ],
  '10': ['ecef'],
};

/// Descriptor for `GetLocationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLocationResponseDescriptor = $convert.base64Decode(
    'ChNHZXRMb2NhdGlvblJlc3BvbnNlEjAKA2xsYRgBIAEoCzIeLlNwYWNlWC5BUEkuRGV2aWNlLk'
    'xMQVBvc2l0aW9uUgNsbGESOQoGc291cmNlGAMgASgOMiEuU3BhY2VYLkFQSS5EZXZpY2UuUG9z'
    'aXRpb25Tb3VyY2VSBnNvdXJjZRIXCgdzaWdtYV9tGAQgASgBUgZzaWdtYU1KBAgCEANSBGVjZW'
    'Y=');

@$core.Deprecated('Use lLAPositionDescriptor instead')
const LLAPosition$json = {
  '1': 'LLAPosition',
  '2': [
    {'1': 'lat', '3': 1, '4': 1, '5': 1, '10': 'lat'},
    {'1': 'lon', '3': 2, '4': 1, '5': 1, '10': 'lon'},
    {'1': 'alt', '3': 3, '4': 1, '5': 1, '10': 'alt'},
  ],
};

/// Descriptor for `LLAPosition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lLAPositionDescriptor = $convert.base64Decode(
    'CgtMTEFQb3NpdGlvbhIQCgNsYXQYASABKAFSA2xhdBIQCgNsb24YAiABKAFSA2xvbhIQCgNhbH'
    'QYAyABKAFSA2FsdA==');

@$core.Deprecated('Use getHeapDumpResponseDescriptor instead')
const GetHeapDumpResponse$json = {
  '1': 'GetHeapDumpResponse',
  '2': [
    {'1': 'heap_dump', '3': 1, '4': 1, '5': 9, '10': 'heapDump'},
  ],
};

/// Descriptor for `GetHeapDumpResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getHeapDumpResponseDescriptor = $convert.base64Decode(
    'ChNHZXRIZWFwRHVtcFJlc3BvbnNlEhsKCWhlYXBfZHVtcBgBIAEoCVIIaGVhcER1bXA=');

@$core.Deprecated('Use restartControlResponseDescriptor instead')
const RestartControlResponse$json = {
  '1': 'RestartControlResponse',
};

/// Descriptor for `RestartControlResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List restartControlResponseDescriptor = $convert.base64Decode(
    'ChZSZXN0YXJ0Q29udHJvbFJlc3BvbnNl');

@$core.Deprecated('Use fuseResponseDescriptor instead')
const FuseResponse$json = {
  '1': 'FuseResponse',
};

/// Descriptor for `FuseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fuseResponseDescriptor = $convert.base64Decode(
    'CgxGdXNlUmVzcG9uc2U=');

@$core.Deprecated('Use getConnectionsResponseDescriptor instead')
const GetConnectionsResponse$json = {
  '1': 'GetConnectionsResponse',
  '2': [
    {'1': 'services', '3': 1, '4': 3, '5': 11, '6': '.SpaceX.API.Device.GetConnectionsResponse.ServicesEntry', '10': 'services'},
  ],
  '3': [GetConnectionsResponse_ServicesEntry$json, GetConnectionsResponse_ServiceConnection$json],
};

@$core.Deprecated('Use getConnectionsResponseDescriptor instead')
const GetConnectionsResponse_ServicesEntry$json = {
  '1': 'ServicesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetConnectionsResponse.ServiceConnection', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use getConnectionsResponseDescriptor instead')
const GetConnectionsResponse_ServiceConnection$json = {
  '1': 'ServiceConnection',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    {'1': 'seconds_since_success', '3': 2, '4': 1, '5': 5, '10': 'secondsSinceSuccess'},
  ],
};

/// Descriptor for `GetConnectionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getConnectionsResponseDescriptor = $convert.base64Decode(
    'ChZHZXRDb25uZWN0aW9uc1Jlc3BvbnNlElMKCHNlcnZpY2VzGAEgAygLMjcuU3BhY2VYLkFQSS'
    '5EZXZpY2UuR2V0Q29ubmVjdGlvbnNSZXNwb25zZS5TZXJ2aWNlc0VudHJ5UghzZXJ2aWNlcxp4'
    'Cg1TZXJ2aWNlc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5ElEKBXZhbHVlGAIgASgLMjsuU3BhY2'
    'VYLkFQSS5EZXZpY2UuR2V0Q29ubmVjdGlvbnNSZXNwb25zZS5TZXJ2aWNlQ29ubmVjdGlvblIF'
    'dmFsdWU6AjgBGmEKEVNlcnZpY2VDb25uZWN0aW9uEhgKB2FkZHJlc3MYASABKAlSB2FkZHJlc3'
    'MSMgoVc2Vjb25kc19zaW5jZV9zdWNjZXNzGAIgASgFUhNzZWNvbmRzU2luY2VTdWNjZXNz');

@$core.Deprecated('Use startSpeedtestResponseDescriptor instead')
const StartSpeedtestResponse$json = {
  '1': 'StartSpeedtestResponse',
};

/// Descriptor for `StartSpeedtestResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startSpeedtestResponseDescriptor = $convert.base64Decode(
    'ChZTdGFydFNwZWVkdGVzdFJlc3BvbnNl');

@$core.Deprecated('Use getSpeedtestStatusResponseDescriptor instead')
const GetSpeedtestStatusResponse$json = {
  '1': 'GetSpeedtestStatusResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SpeedtestStatus', '10': 'status'},
  ],
};

/// Descriptor for `GetSpeedtestStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSpeedtestStatusResponseDescriptor = $convert.base64Decode(
    'ChpHZXRTcGVlZHRlc3RTdGF0dXNSZXNwb25zZRI6CgZzdGF0dXMYASABKAsyIi5TcGFjZVguQV'
    'BJLkRldmljZS5TcGVlZHRlc3RTdGF0dXNSBnN0YXR1cw==');

@$core.Deprecated('Use speedtestStatusDescriptor instead')
const SpeedtestStatus$json = {
  '1': 'SpeedtestStatus',
  '2': [
    {'1': 'running', '3': 1, '4': 1, '5': 8, '10': 'running'},
    {'1': 'id', '3': 2, '4': 1, '5': 13, '10': 'id'},
    {'1': 'up', '3': 1000, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SpeedtestStatus.Direction', '10': 'up'},
    {'1': 'down', '3': 1001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SpeedtestStatus.Direction', '10': 'down'},
  ],
  '3': [SpeedtestStatus_Direction$json],
};

@$core.Deprecated('Use speedtestStatusDescriptor instead')
const SpeedtestStatus_Direction$json = {
  '1': 'Direction',
  '2': [
    {'1': 'throughputs_mbps', '3': 1, '4': 3, '5': 2, '10': 'throughputsMbps'},
    {'1': 'err', '3': 2, '4': 1, '5': 14, '6': '.SpaceX.API.Device.SpeedtestError', '10': 'err'},
  ],
};

/// Descriptor for `SpeedtestStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List speedtestStatusDescriptor = $convert.base64Decode(
    'Cg9TcGVlZHRlc3RTdGF0dXMSGAoHcnVubmluZxgBIAEoCFIHcnVubmluZxIOCgJpZBgCIAEoDV'
    'ICaWQSPQoCdXAY6AcgASgLMiwuU3BhY2VYLkFQSS5EZXZpY2UuU3BlZWR0ZXN0U3RhdHVzLkRp'
    'cmVjdGlvblICdXASQQoEZG93bhjpByABKAsyLC5TcGFjZVguQVBJLkRldmljZS5TcGVlZHRlc3'
    'RTdGF0dXMuRGlyZWN0aW9uUgRkb3duGmsKCURpcmVjdGlvbhIpChB0aHJvdWdocHV0c19tYnBz'
    'GAEgAygCUg90aHJvdWdocHV0c01icHMSMwoDZXJyGAIgASgOMiEuU3BhY2VYLkFQSS5EZXZpY2'
    'UuU3BlZWR0ZXN0RXJyb3JSA2Vycg==');

@$core.Deprecated('Use reportClientSpeedtestResponseDescriptor instead')
const ReportClientSpeedtestResponse$json = {
  '1': 'ReportClientSpeedtestResponse',
};

/// Descriptor for `ReportClientSpeedtestResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportClientSpeedtestResponseDescriptor = $convert.base64Decode(
    'Ch1SZXBvcnRDbGllbnRTcGVlZHRlc3RSZXNwb25zZQ==');

@$core.Deprecated('Use initiateRemoteSshResponseDescriptor instead')
const InitiateRemoteSshResponse$json = {
  '1': 'InitiateRemoteSshResponse',
  '2': [
    {'1': 'port', '3': 1, '4': 1, '5': 13, '10': 'port'},
    {'1': 'address', '3': 2, '4': 1, '5': 9, '10': 'address'},
    {'1': 'stsafe', '3': 3, '4': 1, '5': 12, '10': 'stsafe'},
  ],
};

/// Descriptor for `InitiateRemoteSshResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List initiateRemoteSshResponseDescriptor = $convert.base64Decode(
    'ChlJbml0aWF0ZVJlbW90ZVNzaFJlc3BvbnNlEhIKBHBvcnQYASABKA1SBHBvcnQSGAoHYWRkcm'
    'VzcxgCIAEoCVIHYWRkcmVzcxIWCgZzdHNhZmUYAyABKAxSBnN0c2FmZQ==');

@$core.Deprecated('Use selfTestResponseDescriptor instead')
const SelfTestResponse$json = {
  '1': 'SelfTestResponse',
  '2': [
    {'1': 'passed', '3': 1, '4': 1, '5': 8, '10': 'passed'},
    {'1': 'report', '3': 2, '4': 1, '5': 9, '10': 'report'},
  ],
};

/// Descriptor for `SelfTestResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List selfTestResponseDescriptor = $convert.base64Decode(
    'ChBTZWxmVGVzdFJlc3BvbnNlEhYKBnBhc3NlZBgBIAEoCFIGcGFzc2VkEhYKBnJlcG9ydBgCIA'
    'EoCVIGcmVwb3J0');

@$core.Deprecated('Use setTestModeResponseDescriptor instead')
const SetTestModeResponse$json = {
  '1': 'SetTestModeResponse',
};

/// Descriptor for `SetTestModeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setTestModeResponseDescriptor = $convert.base64Decode(
    'ChNTZXRUZXN0TW9kZVJlc3BvbnNl');

@$core.Deprecated('Use softwareUpdateResponseDescriptor instead')
const SoftwareUpdateResponse$json = {
  '1': 'SoftwareUpdateResponse',
};

/// Descriptor for `SoftwareUpdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List softwareUpdateResponseDescriptor = $convert.base64Decode(
    'ChZTb2Z0d2FyZVVwZGF0ZVJlc3BvbnNl');

@$core.Deprecated('Use enableDebugTelemResponseDescriptor instead')
const EnableDebugTelemResponse$json = {
  '1': 'EnableDebugTelemResponse',
};

/// Descriptor for `EnableDebugTelemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enableDebugTelemResponseDescriptor = $convert.base64Decode(
    'ChhFbmFibGVEZWJ1Z1RlbGVtUmVzcG9uc2U=');

@$core.Deprecated('Use getRadioStatsResponseDescriptor instead')
const GetRadioStatsResponse$json = {
  '1': 'GetRadioStatsResponse',
  '2': [
    {'1': 'radio_stats', '3': 1, '4': 3, '5': 11, '6': '.SpaceX.API.Device.RadioStats', '10': 'radioStats'},
  ],
};

/// Descriptor for `GetRadioStatsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRadioStatsResponseDescriptor = $convert.base64Decode(
    'ChVHZXRSYWRpb1N0YXRzUmVzcG9uc2USPgoLcmFkaW9fc3RhdHMYASADKAsyHS5TcGFjZVguQV'
    'BJLkRldmljZS5SYWRpb1N0YXRzUgpyYWRpb1N0YXRz');

@$core.Deprecated('Use radioStatsDescriptor instead')
const RadioStats$json = {
  '1': 'RadioStats',
  '2': [
    {'1': 'band', '3': 1, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiConfig.Band', '10': 'band'},
    {'1': 'rx_stats', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.NetworkInterface.RxStats', '10': 'rxStats'},
    {'1': 'tx_stats', '3': 3, '4': 1, '5': 11, '6': '.SpaceX.API.Device.NetworkInterface.TxStats', '10': 'txStats'},
    {'1': 'thermal_status', '3': 4, '4': 1, '5': 11, '6': '.SpaceX.API.Device.RadioStats.ThermalStatus', '10': 'thermalStatus'},
    {'1': 'antenna_status', '3': 5, '4': 1, '5': 11, '6': '.SpaceX.API.Device.RadioStats.AntennaStatus', '10': 'antennaStatus'},
  ],
  '3': [RadioStats_AntennaStatus$json, RadioStats_ThermalStatus$json],
};

@$core.Deprecated('Use radioStatsDescriptor instead')
const RadioStats_AntennaStatus$json = {
  '1': 'AntennaStatus',
  '2': [
    {'1': 'rssi1', '3': 1, '4': 1, '5': 2, '10': 'rssi1'},
    {'1': 'rssi2', '3': 2, '4': 1, '5': 2, '10': 'rssi2'},
    {'1': 'rssi3', '3': 3, '4': 1, '5': 2, '10': 'rssi3'},
    {'1': 'rssi4', '3': 4, '4': 1, '5': 2, '10': 'rssi4'},
  ],
};

@$core.Deprecated('Use radioStatsDescriptor instead')
const RadioStats_ThermalStatus$json = {
  '1': 'ThermalStatus',
  '2': [
    {'1': 'level', '3': 1, '4': 1, '5': 13, '10': 'level'},
    {
      '1': 'temp',
      '3': 2,
      '4': 1,
      '5': 13,
      '8': {'3': true},
      '10': 'temp',
    },
    {'1': 'temp2', '3': 3, '4': 1, '5': 1, '10': 'temp2'},
    {'1': 'power_reduction', '3': 4, '4': 1, '5': 13, '10': 'powerReduction'},
    {'1': 'duty_cycle', '3': 5, '4': 1, '5': 13, '10': 'dutyCycle'},
  ],
};

/// Descriptor for `RadioStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List radioStatsDescriptor = $convert.base64Decode(
    'CgpSYWRpb1N0YXRzEjYKBGJhbmQYASABKA4yIi5TcGFjZVguQVBJLkRldmljZS5XaWZpQ29uZm'
    'lnLkJhbmRSBGJhbmQSRgoIcnhfc3RhdHMYAiABKAsyKy5TcGFjZVguQVBJLkRldmljZS5OZXR3'
    'b3JrSW50ZXJmYWNlLlJ4U3RhdHNSB3J4U3RhdHMSRgoIdHhfc3RhdHMYAyABKAsyKy5TcGFjZV'
    'guQVBJLkRldmljZS5OZXR3b3JrSW50ZXJmYWNlLlR4U3RhdHNSB3R4U3RhdHMSUgoOdGhlcm1h'
    'bF9zdGF0dXMYBCABKAsyKy5TcGFjZVguQVBJLkRldmljZS5SYWRpb1N0YXRzLlRoZXJtYWxTdG'
    'F0dXNSDXRoZXJtYWxTdGF0dXMSUgoOYW50ZW5uYV9zdGF0dXMYBSABKAsyKy5TcGFjZVguQVBJ'
    'LkRldmljZS5SYWRpb1N0YXRzLkFudGVubmFTdGF0dXNSDWFudGVubmFTdGF0dXMaZwoNQW50ZW'
    '5uYVN0YXR1cxIUCgVyc3NpMRgBIAEoAlIFcnNzaTESFAoFcnNzaTIYAiABKAJSBXJzc2kyEhQK'
    'BXJzc2kzGAMgASgCUgVyc3NpMxIUCgVyc3NpNBgEIAEoAlIFcnNzaTQamwEKDVRoZXJtYWxTdG'
    'F0dXMSFAoFbGV2ZWwYASABKA1SBWxldmVsEhYKBHRlbXAYAiABKA1CAhgBUgR0ZW1wEhQKBXRl'
    'bXAyGAMgASgBUgV0ZW1wMhInCg9wb3dlcl9yZWR1Y3Rpb24YBCABKA1SDnBvd2VyUmVkdWN0aW'
    '9uEh0KCmR1dHlfY3ljbGUYBSABKA1SCWR1dHlDeWNsZQ==');

@$core.Deprecated('Use getTimeResponseDescriptor instead')
const GetTimeResponse$json = {
  '1': 'GetTimeResponse',
  '2': [
    {'1': 'unix_nano', '3': 1, '4': 1, '5': 3, '10': 'unixNano'},
  ],
};

/// Descriptor for `GetTimeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTimeResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRUaW1lUmVzcG9uc2USGwoJdW5peF9uYW5vGAEgASgDUgh1bml4TmFubw==');

@$core.Deprecated('Use runIperfServerResponseDescriptor instead')
const RunIperfServerResponse$json = {
  '1': 'RunIperfServerResponse',
  '2': [
    {'1': 'port', '3': 1, '4': 1, '5': 13, '10': 'port'},
  ],
};

/// Descriptor for `RunIperfServerResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runIperfServerResponseDescriptor = $convert.base64Decode(
    'ChZSdW5JcGVyZlNlcnZlclJlc3BvbnNlEhIKBHBvcnQYASABKA1SBHBvcnQ=');

@$core.Deprecated('Use dishStowResponseDescriptor instead')
const DishStowResponse$json = {
  '1': 'DishStowResponse',
};

/// Descriptor for `DishStowResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishStowResponseDescriptor = $convert.base64Decode(
    'ChBEaXNoU3Rvd1Jlc3BvbnNl');

@$core.Deprecated('Use dishGetContextResponseDescriptor instead')
const DishGetContextResponse$json = {
  '1': 'DishGetContextResponse',
  '2': [
    {'1': 'device_info', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DeviceInfo', '10': 'deviceInfo'},
    {'1': 'obstruction_fraction', '3': 2, '4': 1, '5': 2, '10': 'obstructionFraction'},
    {'1': 'obstruction_valid_s', '3': 3, '4': 1, '5': 2, '10': 'obstructionValidS'},
    {'1': 'cell_id', '3': 4, '4': 1, '5': 13, '10': 'cellId'},
    {'1': 'pop_rack_id', '3': 5, '4': 1, '5': 13, '10': 'popRackId'},
    {'1': 'seconds_to_slot_end', '3': 6, '4': 1, '5': 2, '10': 'secondsToSlotEnd'},
    {'1': 'device_state', '3': 7, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DeviceState', '10': 'deviceState'},
    {'1': 'initial_satellite_id', '3': 8, '4': 1, '5': 13, '10': 'initialSatelliteId'},
    {'1': 'initial_gateway_id', '3': 9, '4': 1, '5': 13, '10': 'initialGatewayId'},
    {'1': 'on_backup_beam', '3': 10, '4': 1, '5': 8, '10': 'onBackupBeam'},
    {'1': 'debug_telemetry_enabled', '3': 11, '4': 1, '5': 8, '10': 'debugTelemetryEnabled'},
    {'1': 'obstruction_current', '3': 12, '4': 1, '5': 8, '10': 'obstructionCurrent'},
    {'1': 'pop_ping_drop_rate_15s_mean', '3': 13, '4': 1, '5': 2, '10': 'popPingDropRate15sMean'},
    {'1': 'pop_ping_latency_ms_15s_mean', '3': 14, '4': 1, '5': 2, '10': 'popPingLatencyMs15sMean'},
    {'1': 'seconds_since_last_1s_outage', '3': 15, '4': 1, '5': 2, '10': 'secondsSinceLast1sOutage'},
    {'1': 'seconds_since_last_2s_outage', '3': 16, '4': 1, '5': 2, '10': 'secondsSinceLast2sOutage'},
    {'1': 'seconds_since_last_5s_outage', '3': 17, '4': 1, '5': 2, '10': 'secondsSinceLast5sOutage'},
    {'1': 'seconds_since_last_15s_outage', '3': 18, '4': 1, '5': 2, '10': 'secondsSinceLast15sOutage'},
    {'1': 'seconds_since_last_60s_outage', '3': 19, '4': 1, '5': 2, '10': 'secondsSinceLast60sOutage'},
    {'1': 'obstruction_time', '3': 20, '4': 1, '5': 2, '10': 'obstructionTime'},
    {'1': 'disablement_code', '3': 21, '4': 1, '5': 14, '6': '.SpaceX.API.Satellites.Network.UtDisablementCode', '10': 'disablementCode'},
    {'1': 'ku_mac_active_ratio', '3': 22, '4': 1, '5': 2, '10': 'kuMacActiveRatio'},
  ],
};

/// Descriptor for `DishGetContextResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGetContextResponseDescriptor = $convert.base64Decode(
    'ChZEaXNoR2V0Q29udGV4dFJlc3BvbnNlEj4KC2RldmljZV9pbmZvGAEgASgLMh0uU3BhY2VYLk'
    'FQSS5EZXZpY2UuRGV2aWNlSW5mb1IKZGV2aWNlSW5mbxIxChRvYnN0cnVjdGlvbl9mcmFjdGlv'
    'bhgCIAEoAlITb2JzdHJ1Y3Rpb25GcmFjdGlvbhIuChNvYnN0cnVjdGlvbl92YWxpZF9zGAMgAS'
    'gCUhFvYnN0cnVjdGlvblZhbGlkUxIXCgdjZWxsX2lkGAQgASgNUgZjZWxsSWQSHgoLcG9wX3Jh'
    'Y2tfaWQYBSABKA1SCXBvcFJhY2tJZBItChNzZWNvbmRzX3RvX3Nsb3RfZW5kGAYgASgCUhBzZW'
    'NvbmRzVG9TbG90RW5kEkEKDGRldmljZV9zdGF0ZRgHIAEoCzIeLlNwYWNlWC5BUEkuRGV2aWNl'
    'LkRldmljZVN0YXRlUgtkZXZpY2VTdGF0ZRIwChRpbml0aWFsX3NhdGVsbGl0ZV9pZBgIIAEoDV'
    'ISaW5pdGlhbFNhdGVsbGl0ZUlkEiwKEmluaXRpYWxfZ2F0ZXdheV9pZBgJIAEoDVIQaW5pdGlh'
    'bEdhdGV3YXlJZBIkCg5vbl9iYWNrdXBfYmVhbRgKIAEoCFIMb25CYWNrdXBCZWFtEjYKF2RlYn'
    'VnX3RlbGVtZXRyeV9lbmFibGVkGAsgASgIUhVkZWJ1Z1RlbGVtZXRyeUVuYWJsZWQSLwoTb2Jz'
    'dHJ1Y3Rpb25fY3VycmVudBgMIAEoCFISb2JzdHJ1Y3Rpb25DdXJyZW50EjsKG3BvcF9waW5nX2'
    'Ryb3BfcmF0ZV8xNXNfbWVhbhgNIAEoAlIWcG9wUGluZ0Ryb3BSYXRlMTVzTWVhbhI9Chxwb3Bf'
    'cGluZ19sYXRlbmN5X21zXzE1c19tZWFuGA4gASgCUhdwb3BQaW5nTGF0ZW5jeU1zMTVzTWVhbh'
    'I+ChxzZWNvbmRzX3NpbmNlX2xhc3RfMXNfb3V0YWdlGA8gASgCUhhzZWNvbmRzU2luY2VMYXN0'
    'MXNPdXRhZ2USPgocc2Vjb25kc19zaW5jZV9sYXN0XzJzX291dGFnZRgQIAEoAlIYc2Vjb25kc1'
    'NpbmNlTGFzdDJzT3V0YWdlEj4KHHNlY29uZHNfc2luY2VfbGFzdF81c19vdXRhZ2UYESABKAJS'
    'GHNlY29uZHNTaW5jZUxhc3Q1c091dGFnZRJACh1zZWNvbmRzX3NpbmNlX2xhc3RfMTVzX291dG'
    'FnZRgSIAEoAlIZc2Vjb25kc1NpbmNlTGFzdDE1c091dGFnZRJACh1zZWNvbmRzX3NpbmNlX2xh'
    'c3RfNjBzX291dGFnZRgTIAEoAlIZc2Vjb25kc1NpbmNlTGFzdDYwc091dGFnZRIpChBvYnN0cn'
    'VjdGlvbl90aW1lGBQgASgCUg9vYnN0cnVjdGlvblRpbWUSWwoQZGlzYWJsZW1lbnRfY29kZRgV'
    'IAEoDjIwLlNwYWNlWC5BUEkuU2F0ZWxsaXRlcy5OZXR3b3JrLlV0RGlzYWJsZW1lbnRDb2RlUg'
    '9kaXNhYmxlbWVudENvZGUSLQoTa3VfbWFjX2FjdGl2ZV9yYXRpbxgWIAEoAlIQa3VNYWNBY3Rp'
    'dmVSYXRpbw==');

@$core.Deprecated('Use deviceStateDescriptor instead')
const DeviceState$json = {
  '1': 'DeviceState',
  '2': [
    {'1': 'uptime_s', '3': 1, '4': 1, '5': 4, '10': 'uptimeS'},
  ],
};

/// Descriptor for `DeviceState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceStateDescriptor = $convert.base64Decode(
    'CgtEZXZpY2VTdGF0ZRIZCgh1cHRpbWVfcxgBIAEoBFIHdXB0aW1lUw==');

@$core.Deprecated('Use dishGetStatusResponseDescriptor instead')
const DishGetStatusResponse$json = {
  '1': 'DishGetStatusResponse',
  '2': [
    {'1': 'device_info', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DeviceInfo', '10': 'deviceInfo'},
    {'1': 'device_state', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DeviceState', '10': 'deviceState'},
    {'1': 'seconds_to_first_nonempty_slot', '3': 1002, '4': 1, '5': 2, '10': 'secondsToFirstNonemptySlot'},
    {'1': 'pop_ping_drop_rate', '3': 1003, '4': 1, '5': 2, '10': 'popPingDropRate'},
    {'1': 'obstruction_stats', '3': 1004, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishObstructionStats', '10': 'obstructionStats'},
    {'1': 'alerts', '3': 1005, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishAlerts', '10': 'alerts'},
    {'1': 'downlink_throughput_bps', '3': 1007, '4': 1, '5': 2, '10': 'downlinkThroughputBps'},
    {'1': 'uplink_throughput_bps', '3': 1008, '4': 1, '5': 2, '10': 'uplinkThroughputBps'},
    {'1': 'pop_ping_latency_ms', '3': 1009, '4': 1, '5': 2, '10': 'popPingLatencyMs'},
    {'1': 'stow_requested', '3': 1010, '4': 1, '5': 8, '10': 'stowRequested'},
    {'1': 'boresight_azimuth_deg', '3': 1011, '4': 1, '5': 2, '10': 'boresightAzimuthDeg'},
    {'1': 'boresight_elevation_deg', '3': 1012, '4': 1, '5': 2, '10': 'boresightElevationDeg'},
    {'1': 'outage', '3': 1014, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishOutage', '10': 'outage'},
    {'1': 'gps_stats', '3': 1015, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGpsStats', '10': 'gpsStats'},
    {'1': 'eth_speed_mbps', '3': 1016, '4': 1, '5': 5, '10': 'ethSpeedMbps'},
    {'1': 'mobility_class', '3': 1017, '4': 1, '5': 14, '6': '.SpaceX.API.Device.UserMobilityClass', '10': 'mobilityClass'},
    {'1': 'is_snr_above_noise_floor', '3': 1018, '4': 1, '5': 8, '10': 'isSnrAboveNoiseFloor'},
    {'1': 'ready_states', '3': 1019, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishReadyStates', '10': 'readyStates'},
    {'1': 'class_of_service', '3': 1020, '4': 1, '5': 14, '6': '.SpaceX.API.Device.UserClassOfService', '10': 'classOfService'},
    {'1': 'software_update_state', '3': 1021, '4': 1, '5': 14, '6': '.SpaceX.API.Device.SoftwareUpdateState', '10': 'softwareUpdateState'},
    {'1': 'is_snr_persistently_low', '3': 1022, '4': 1, '5': 8, '10': 'isSnrPersistentlyLow'},
    {'1': 'has_actuators', '3': 1023, '4': 1, '5': 14, '6': '.SpaceX.API.Device.HasActuators', '10': 'hasActuators'},
    {'1': 'disablement_code', '3': 1024, '4': 1, '5': 14, '6': '.SpaceX.API.Satellites.Network.UtDisablementCode', '10': 'disablementCode'},
    {'1': 'has_signed_cals', '3': 1025, '4': 1, '5': 8, '10': 'hasSignedCals'},
    {'1': 'software_update_stats', '3': 1026, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SoftwareUpdateStats', '10': 'softwareUpdateStats'},
    {'1': 'alignment_stats', '3': 1027, '4': 1, '5': 11, '6': '.SpaceX.API.Device.AlignmentStats', '10': 'alignmentStats'},
    {'1': 'initialization_duration_seconds', '3': 1028, '4': 1, '5': 11, '6': '.SpaceX.API.Device.InitializationDurationSeconds', '10': 'initializationDurationSeconds'},
    {'1': 'is_cell_disabled', '3': 1029, '4': 1, '5': 8, '10': 'isCellDisabled'},
    {'1': 'swupdate_reboot_ready', '3': 1030, '4': 1, '5': 8, '10': 'swupdateRebootReady'},
    {'1': 'seconds_until_swupdate_reboot_possible', '3': 1031, '4': 1, '5': 5, '10': 'secondsUntilSwupdateRebootPossible'},
    {'1': 'connected_routers', '3': 1040, '4': 3, '5': 9, '10': 'connectedRouters'},
    {'1': 'config', '3': 2000, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishConfig', '10': 'config'},
  ],
  '9': [
    {'1': 1001, '2': 1002},
    {'1': 1006, '2': 1007},
    {'1': 1013, '2': 1014},
  ],
};

/// Descriptor for `DishGetStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGetStatusResponseDescriptor = $convert.base64Decode(
    'ChVEaXNoR2V0U3RhdHVzUmVzcG9uc2USPgoLZGV2aWNlX2luZm8YASABKAsyHS5TcGFjZVguQV'
    'BJLkRldmljZS5EZXZpY2VJbmZvUgpkZXZpY2VJbmZvEkEKDGRldmljZV9zdGF0ZRgCIAEoCzIe'
    'LlNwYWNlWC5BUEkuRGV2aWNlLkRldmljZVN0YXRlUgtkZXZpY2VTdGF0ZRJDCh5zZWNvbmRzX3'
    'RvX2ZpcnN0X25vbmVtcHR5X3Nsb3QY6gcgASgCUhpzZWNvbmRzVG9GaXJzdE5vbmVtcHR5U2xv'
    'dBIsChJwb3BfcGluZ19kcm9wX3JhdGUY6wcgASgCUg9wb3BQaW5nRHJvcFJhdGUSVQoRb2JzdH'
    'J1Y3Rpb25fc3RhdHMY7AcgASgLMicuU3BhY2VYLkFQSS5EZXZpY2UuRGlzaE9ic3RydWN0aW9u'
    'U3RhdHNSEG9ic3RydWN0aW9uU3RhdHMSNgoGYWxlcnRzGO0HIAEoCzIdLlNwYWNlWC5BUEkuRG'
    'V2aWNlLkRpc2hBbGVydHNSBmFsZXJ0cxI3Chdkb3dubGlua190aHJvdWdocHV0X2JwcxjvByAB'
    'KAJSFWRvd25saW5rVGhyb3VnaHB1dEJwcxIzChV1cGxpbmtfdGhyb3VnaHB1dF9icHMY8AcgAS'
    'gCUhN1cGxpbmtUaHJvdWdocHV0QnBzEi4KE3BvcF9waW5nX2xhdGVuY3lfbXMY8QcgASgCUhBw'
    'b3BQaW5nTGF0ZW5jeU1zEiYKDnN0b3dfcmVxdWVzdGVkGPIHIAEoCFINc3Rvd1JlcXVlc3RlZB'
    'IzChVib3Jlc2lnaHRfYXppbXV0aF9kZWcY8wcgASgCUhNib3Jlc2lnaHRBemltdXRoRGVnEjcK'
    'F2JvcmVzaWdodF9lbGV2YXRpb25fZGVnGPQHIAEoAlIVYm9yZXNpZ2h0RWxldmF0aW9uRGVnEj'
    'YKBm91dGFnZRj2ByABKAsyHS5TcGFjZVguQVBJLkRldmljZS5EaXNoT3V0YWdlUgZvdXRhZ2US'
    'PQoJZ3BzX3N0YXRzGPcHIAEoCzIfLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hHcHNTdGF0c1IIZ3'
    'BzU3RhdHMSJQoOZXRoX3NwZWVkX21icHMY+AcgASgFUgxldGhTcGVlZE1icHMSTAoObW9iaWxp'
    'dHlfY2xhc3MY+QcgASgOMiQuU3BhY2VYLkFQSS5EZXZpY2UuVXNlck1vYmlsaXR5Q2xhc3NSDW'
    '1vYmlsaXR5Q2xhc3MSNwoYaXNfc25yX2Fib3ZlX25vaXNlX2Zsb29yGPoHIAEoCFIUaXNTbnJB'
    'Ym92ZU5vaXNlRmxvb3ISRgoMcmVhZHlfc3RhdGVzGPsHIAEoCzIiLlNwYWNlWC5BUEkuRGV2aW'
    'NlLkRpc2hSZWFkeVN0YXRlc1ILcmVhZHlTdGF0ZXMSUAoQY2xhc3Nfb2Zfc2VydmljZRj8ByAB'
    'KA4yJS5TcGFjZVguQVBJLkRldmljZS5Vc2VyQ2xhc3NPZlNlcnZpY2VSDmNsYXNzT2ZTZXJ2aW'
    'NlElsKFXNvZnR3YXJlX3VwZGF0ZV9zdGF0ZRj9ByABKA4yJi5TcGFjZVguQVBJLkRldmljZS5T'
    'b2Z0d2FyZVVwZGF0ZVN0YXRlUhNzb2Z0d2FyZVVwZGF0ZVN0YXRlEjYKF2lzX3Nucl9wZXJzaX'
    'N0ZW50bHlfbG93GP4HIAEoCFIUaXNTbnJQZXJzaXN0ZW50bHlMb3cSRQoNaGFzX2FjdHVhdG9y'
    'cxj/ByABKA4yHy5TcGFjZVguQVBJLkRldmljZS5IYXNBY3R1YXRvcnNSDGhhc0FjdHVhdG9ycx'
    'JcChBkaXNhYmxlbWVudF9jb2RlGIAIIAEoDjIwLlNwYWNlWC5BUEkuU2F0ZWxsaXRlcy5OZXR3'
    'b3JrLlV0RGlzYWJsZW1lbnRDb2RlUg9kaXNhYmxlbWVudENvZGUSJwoPaGFzX3NpZ25lZF9jYW'
    'xzGIEIIAEoCFINaGFzU2lnbmVkQ2FscxJbChVzb2Z0d2FyZV91cGRhdGVfc3RhdHMYggggASgL'
    'MiYuU3BhY2VYLkFQSS5EZXZpY2UuU29mdHdhcmVVcGRhdGVTdGF0c1ITc29mdHdhcmVVcGRhdG'
    'VTdGF0cxJLCg9hbGlnbm1lbnRfc3RhdHMYgwggASgLMiEuU3BhY2VYLkFQSS5EZXZpY2UuQWxp'
    'Z25tZW50U3RhdHNSDmFsaWdubWVudFN0YXRzEnkKH2luaXRpYWxpemF0aW9uX2R1cmF0aW9uX3'
    'NlY29uZHMYhAggASgLMjAuU3BhY2VYLkFQSS5EZXZpY2UuSW5pdGlhbGl6YXRpb25EdXJhdGlv'
    'blNlY29uZHNSHWluaXRpYWxpemF0aW9uRHVyYXRpb25TZWNvbmRzEikKEGlzX2NlbGxfZGlzYW'
    'JsZWQYhQggASgIUg5pc0NlbGxEaXNhYmxlZBIzChVzd3VwZGF0ZV9yZWJvb3RfcmVhZHkYhggg'
    'ASgIUhNzd3VwZGF0ZVJlYm9vdFJlYWR5ElMKJnNlY29uZHNfdW50aWxfc3d1cGRhdGVfcmVib2'
    '90X3Bvc3NpYmxlGIcIIAEoBVIic2Vjb25kc1VudGlsU3d1cGRhdGVSZWJvb3RQb3NzaWJsZRIs'
    'ChFjb25uZWN0ZWRfcm91dGVycxiQCCADKAlSEGNvbm5lY3RlZFJvdXRlcnMSNgoGY29uZmlnGN'
    'APIAEoCzIdLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hDb25maWdSBmNvbmZpZ0oGCOkHEOoHSgYI'
    '7gcQ7wdKBgj1BxD2Bw==');

@$core.Deprecated('Use dishObstructionStatsDescriptor instead')
const DishObstructionStats$json = {
  '1': 'DishObstructionStats',
  '2': [
    {'1': 'fraction_obstructed', '3': 1, '4': 1, '5': 2, '10': 'fractionObstructed'},
    {'1': 'valid_s', '3': 4, '4': 1, '5': 2, '10': 'validS'},
    {'1': 'currently_obstructed', '3': 5, '4': 1, '5': 8, '10': 'currentlyObstructed'},
    {'1': 'avg_prolonged_obstruction_duration_s', '3': 6, '4': 1, '5': 2, '10': 'avgProlongedObstructionDurationS'},
    {'1': 'avg_prolonged_obstruction_interval_s', '3': 7, '4': 1, '5': 2, '10': 'avgProlongedObstructionIntervalS'},
    {'1': 'avg_prolonged_obstruction_valid', '3': 8, '4': 1, '5': 8, '10': 'avgProlongedObstructionValid'},
    {'1': 'time_obstructed', '3': 9, '4': 1, '5': 2, '10': 'timeObstructed'},
    {'1': 'patches_valid', '3': 10, '4': 1, '5': 13, '10': 'patchesValid'},
  ],
  '9': [
    {'1': 2, '2': 3},
    {'1': 3, '2': 4},
    {'1': 1006, '2': 1007},
  ],
  '10': ['wedge_abs_fraction_obstructed', 'wedge_fraction_obstructed'],
};

/// Descriptor for `DishObstructionStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishObstructionStatsDescriptor = $convert.base64Decode(
    'ChREaXNoT2JzdHJ1Y3Rpb25TdGF0cxIvChNmcmFjdGlvbl9vYnN0cnVjdGVkGAEgASgCUhJmcm'
    'FjdGlvbk9ic3RydWN0ZWQSFwoHdmFsaWRfcxgEIAEoAlIGdmFsaWRTEjEKFGN1cnJlbnRseV9v'
    'YnN0cnVjdGVkGAUgASgIUhNjdXJyZW50bHlPYnN0cnVjdGVkEk4KJGF2Z19wcm9sb25nZWRfb2'
    'JzdHJ1Y3Rpb25fZHVyYXRpb25fcxgGIAEoAlIgYXZnUHJvbG9uZ2VkT2JzdHJ1Y3Rpb25EdXJh'
    'dGlvblMSTgokYXZnX3Byb2xvbmdlZF9vYnN0cnVjdGlvbl9pbnRlcnZhbF9zGAcgASgCUiBhdm'
    'dQcm9sb25nZWRPYnN0cnVjdGlvbkludGVydmFsUxJFCh9hdmdfcHJvbG9uZ2VkX29ic3RydWN0'
    'aW9uX3ZhbGlkGAggASgIUhxhdmdQcm9sb25nZWRPYnN0cnVjdGlvblZhbGlkEicKD3RpbWVfb2'
    'JzdHJ1Y3RlZBgJIAEoAlIOdGltZU9ic3RydWN0ZWQSIwoNcGF0Y2hlc192YWxpZBgKIAEoDVIM'
    'cGF0Y2hlc1ZhbGlkSgQIAhADSgQIAxAESgYI7gcQ7wdSHXdlZGdlX2Fic19mcmFjdGlvbl9vYn'
    'N0cnVjdGVkUhl3ZWRnZV9mcmFjdGlvbl9vYnN0cnVjdGVk');

@$core.Deprecated('Use dishAlertsDescriptor instead')
const DishAlerts$json = {
  '1': 'DishAlerts',
  '2': [
    {'1': 'motors_stuck', '3': 1, '4': 1, '5': 8, '10': 'motorsStuck'},
    {'1': 'thermal_shutdown', '3': 2, '4': 1, '5': 8, '10': 'thermalShutdown'},
    {'1': 'thermal_throttle', '3': 3, '4': 1, '5': 8, '10': 'thermalThrottle'},
    {'1': 'unexpected_location', '3': 4, '4': 1, '5': 8, '10': 'unexpectedLocation'},
    {'1': 'mast_not_near_vertical', '3': 5, '4': 1, '5': 8, '10': 'mastNotNearVertical'},
    {'1': 'slow_ethernet_speeds', '3': 6, '4': 1, '5': 8, '10': 'slowEthernetSpeeds'},
    {'1': 'roaming', '3': 7, '4': 1, '5': 8, '10': 'roaming'},
    {'1': 'install_pending', '3': 8, '4': 1, '5': 8, '10': 'installPending'},
    {'1': 'is_heating', '3': 9, '4': 1, '5': 8, '10': 'isHeating'},
    {'1': 'power_supply_thermal_throttle', '3': 10, '4': 1, '5': 8, '10': 'powerSupplyThermalThrottle'},
    {'1': 'is_power_save_idle', '3': 11, '4': 1, '5': 8, '10': 'isPowerSaveIdle'},
    {'1': 'moving_while_not_mobile', '3': 12, '4': 1, '5': 8, '10': 'movingWhileNotMobile'},
    {'1': 'dbf_telem_stale', '3': 14, '4': 1, '5': 8, '10': 'dbfTelemStale'},
    {'1': 'moving_too_fast_for_policy', '3': 15, '4': 1, '5': 8, '10': 'movingTooFastForPolicy'},
    {'1': 'low_motor_current', '3': 16, '4': 1, '5': 8, '10': 'lowMotorCurrent'},
    {'1': 'lower_signal_than_predicted', '3': 17, '4': 1, '5': 8, '10': 'lowerSignalThanPredicted'},
    {'1': 'slow_ethernet_speeds_100', '3': 18, '4': 1, '5': 8, '10': 'slowEthernetSpeeds100'},
  ],
  '9': [
    {'1': 13, '2': 14},
  ],
  '10': ['moving_fast_while_not_aviation'],
};

/// Descriptor for `DishAlerts`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishAlertsDescriptor = $convert.base64Decode(
    'CgpEaXNoQWxlcnRzEiEKDG1vdG9yc19zdHVjaxgBIAEoCFILbW90b3JzU3R1Y2sSKQoQdGhlcm'
    '1hbF9zaHV0ZG93bhgCIAEoCFIPdGhlcm1hbFNodXRkb3duEikKEHRoZXJtYWxfdGhyb3R0bGUY'
    'AyABKAhSD3RoZXJtYWxUaHJvdHRsZRIvChN1bmV4cGVjdGVkX2xvY2F0aW9uGAQgASgIUhJ1bm'
    'V4cGVjdGVkTG9jYXRpb24SMwoWbWFzdF9ub3RfbmVhcl92ZXJ0aWNhbBgFIAEoCFITbWFzdE5v'
    'dE5lYXJWZXJ0aWNhbBIwChRzbG93X2V0aGVybmV0X3NwZWVkcxgGIAEoCFISc2xvd0V0aGVybm'
    'V0U3BlZWRzEhgKB3JvYW1pbmcYByABKAhSB3JvYW1pbmcSJwoPaW5zdGFsbF9wZW5kaW5nGAgg'
    'ASgIUg5pbnN0YWxsUGVuZGluZxIdCgppc19oZWF0aW5nGAkgASgIUglpc0hlYXRpbmcSQQodcG'
    '93ZXJfc3VwcGx5X3RoZXJtYWxfdGhyb3R0bGUYCiABKAhSGnBvd2VyU3VwcGx5VGhlcm1hbFRo'
    'cm90dGxlEisKEmlzX3Bvd2VyX3NhdmVfaWRsZRgLIAEoCFIPaXNQb3dlclNhdmVJZGxlEjUKF2'
    '1vdmluZ193aGlsZV9ub3RfbW9iaWxlGAwgASgIUhRtb3ZpbmdXaGlsZU5vdE1vYmlsZRImCg9k'
    'YmZfdGVsZW1fc3RhbGUYDiABKAhSDWRiZlRlbGVtU3RhbGUSOgoabW92aW5nX3Rvb19mYXN0X2'
    'Zvcl9wb2xpY3kYDyABKAhSFm1vdmluZ1Rvb0Zhc3RGb3JQb2xpY3kSKgoRbG93X21vdG9yX2N1'
    'cnJlbnQYECABKAhSD2xvd01vdG9yQ3VycmVudBI9Chtsb3dlcl9zaWduYWxfdGhhbl9wcmVkaW'
    'N0ZWQYESABKAhSGGxvd2VyU2lnbmFsVGhhblByZWRpY3RlZBI3ChhzbG93X2V0aGVybmV0X3Nw'
    'ZWVkc18xMDAYEiABKAhSFXNsb3dFdGhlcm5ldFNwZWVkczEwMEoECA0QDlIebW92aW5nX2Zhc3'
    'Rfd2hpbGVfbm90X2F2aWF0aW9u');

@$core.Deprecated('Use dishOutageDescriptor instead')
const DishOutage$json = {
  '1': 'DishOutage',
  '2': [
    {'1': 'cause', '3': 1, '4': 1, '5': 14, '6': '.SpaceX.API.Device.DishOutage.Cause', '10': 'cause'},
    {'1': 'start_timestamp_ns', '3': 2, '4': 1, '5': 3, '10': 'startTimestampNs'},
    {'1': 'duration_ns', '3': 3, '4': 1, '5': 4, '10': 'durationNs'},
    {'1': 'did_switch', '3': 4, '4': 1, '5': 8, '10': 'didSwitch'},
  ],
  '4': [DishOutage_Cause$json],
};

@$core.Deprecated('Use dishOutageDescriptor instead')
const DishOutage_Cause$json = {
  '1': 'Cause',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'BOOTING', '2': 1},
    {'1': 'STOWED', '2': 2},
    {'1': 'THERMAL_SHUTDOWN', '2': 3},
    {'1': 'NO_SCHEDULE', '2': 4},
    {'1': 'NO_SATS', '2': 5},
    {'1': 'OBSTRUCTED', '2': 6},
    {'1': 'NO_DOWNLINK', '2': 7},
    {'1': 'NO_PINGS', '2': 8},
    {'1': 'ACTUATOR_ACTIVITY', '2': 9},
    {'1': 'CABLE_TEST', '2': 10},
    {'1': 'SLEEPING', '2': 11},
    {'1': 'MOVING_WHILE_NOT_ALLOWED', '2': 12},
  ],
};

/// Descriptor for `DishOutage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishOutageDescriptor = $convert.base64Decode(
    'CgpEaXNoT3V0YWdlEjkKBWNhdXNlGAEgASgOMiMuU3BhY2VYLkFQSS5EZXZpY2UuRGlzaE91dG'
    'FnZS5DYXVzZVIFY2F1c2USLAoSc3RhcnRfdGltZXN0YW1wX25zGAIgASgDUhBzdGFydFRpbWVz'
    'dGFtcE5zEh8KC2R1cmF0aW9uX25zGAMgASgEUgpkdXJhdGlvbk5zEh0KCmRpZF9zd2l0Y2gYBC'
    'ABKAhSCWRpZFN3aXRjaCLjAQoFQ2F1c2USCwoHVU5LTk9XThAAEgsKB0JPT1RJTkcQARIKCgZT'
    'VE9XRUQQAhIUChBUSEVSTUFMX1NIVVRET1dOEAMSDwoLTk9fU0NIRURVTEUQBBILCgdOT19TQV'
    'RTEAUSDgoKT0JTVFJVQ1RFRBAGEg8KC05PX0RPV05MSU5LEAcSDAoITk9fUElOR1MQCBIVChFB'
    'Q1RVQVRPUl9BQ1RJVklUWRAJEg4KCkNBQkxFX1RFU1QQChIMCghTTEVFUElORxALEhwKGE1PVk'
    'lOR19XSElMRV9OT1RfQUxMT1dFRBAM');

@$core.Deprecated('Use dishGpsStatsDescriptor instead')
const DishGpsStats$json = {
  '1': 'DishGpsStats',
  '2': [
    {'1': 'gps_valid', '3': 1, '4': 1, '5': 8, '10': 'gpsValid'},
    {'1': 'gps_sats', '3': 2, '4': 1, '5': 13, '10': 'gpsSats'},
    {'1': 'no_sats_after_ttff', '3': 3, '4': 1, '5': 8, '10': 'noSatsAfterTtff'},
    {'1': 'inhibit_gps', '3': 4, '4': 1, '5': 8, '10': 'inhibitGps'},
  ],
};

/// Descriptor for `DishGpsStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGpsStatsDescriptor = $convert.base64Decode(
    'CgxEaXNoR3BzU3RhdHMSGwoJZ3BzX3ZhbGlkGAEgASgIUghncHNWYWxpZBIZCghncHNfc2F0cx'
    'gCIAEoDVIHZ3BzU2F0cxIrChJub19zYXRzX2FmdGVyX3R0ZmYYAyABKAhSD25vU2F0c0FmdGVy'
    'VHRmZhIfCgtpbmhpYml0X2dwcxgEIAEoCFIKaW5oaWJpdEdwcw==');

@$core.Deprecated('Use dishReadyStatesDescriptor instead')
const DishReadyStates$json = {
  '1': 'DishReadyStates',
  '2': [
    {'1': 'cady', '3': 1, '4': 1, '5': 8, '10': 'cady'},
    {'1': 'scp', '3': 2, '4': 1, '5': 8, '10': 'scp'},
    {'1': 'l1l2', '3': 3, '4': 1, '5': 8, '10': 'l1l2'},
    {'1': 'xphy', '3': 4, '4': 1, '5': 8, '10': 'xphy'},
    {'1': 'aap', '3': 5, '4': 1, '5': 8, '10': 'aap'},
    {'1': 'rf', '3': 6, '4': 1, '5': 8, '10': 'rf'},
  ],
};

/// Descriptor for `DishReadyStates`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishReadyStatesDescriptor = $convert.base64Decode(
    'Cg9EaXNoUmVhZHlTdGF0ZXMSEgoEY2FkeRgBIAEoCFIEY2FkeRIQCgNzY3AYAiABKAhSA3NjcB'
    'ISCgRsMWwyGAMgASgIUgRsMWwyEhIKBHhwaHkYBCABKAhSBHhwaHkSEAoDYWFwGAUgASgIUgNh'
    'YXASDgoCcmYYBiABKAhSAnJm');

@$core.Deprecated('Use softwareUpdateStatsDescriptor instead')
const SoftwareUpdateStats$json = {
  '1': 'SoftwareUpdateStats',
  '2': [
    {'1': 'software_update_state', '3': 1, '4': 1, '5': 14, '6': '.SpaceX.API.Device.SoftwareUpdateState', '10': 'softwareUpdateState'},
    {'1': 'software_update_progress', '3': 2, '4': 1, '5': 2, '10': 'softwareUpdateProgress'},
  ],
};

/// Descriptor for `SoftwareUpdateStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List softwareUpdateStatsDescriptor = $convert.base64Decode(
    'ChNTb2Z0d2FyZVVwZGF0ZVN0YXRzEloKFXNvZnR3YXJlX3VwZGF0ZV9zdGF0ZRgBIAEoDjImLl'
    'NwYWNlWC5BUEkuRGV2aWNlLlNvZnR3YXJlVXBkYXRlU3RhdGVSE3NvZnR3YXJlVXBkYXRlU3Rh'
    'dGUSOAoYc29mdHdhcmVfdXBkYXRlX3Byb2dyZXNzGAIgASgCUhZzb2Z0d2FyZVVwZGF0ZVByb2'
    'dyZXNz');

@$core.Deprecated('Use alignmentStatsDescriptor instead')
const AlignmentStats$json = {
  '1': 'AlignmentStats',
  '2': [
    {'1': 'has_actuators', '3': 1, '4': 1, '5': 14, '6': '.SpaceX.API.Device.HasActuators', '10': 'hasActuators'},
    {'1': 'actuator_state', '3': 2, '4': 1, '5': 14, '6': '.SpaceX.API.Device.ActuatorState', '10': 'actuatorState'},
    {'1': 'tilt_angle_deg', '3': 3, '4': 1, '5': 2, '10': 'tiltAngleDeg'},
    {'1': 'boresight_azimuth_deg', '3': 4, '4': 1, '5': 2, '10': 'boresightAzimuthDeg'},
    {'1': 'boresight_elevation_deg', '3': 5, '4': 1, '5': 2, '10': 'boresightElevationDeg'},
    {'1': 'attitude_estimation_state', '3': 6, '4': 1, '5': 14, '6': '.SpaceX.API.Device.AttitudeEstimationState', '10': 'attitudeEstimationState'},
    {'1': 'attitude_uncertainty_deg', '3': 7, '4': 1, '5': 2, '10': 'attitudeUncertaintyDeg'},
    {'1': 'desired_boresight_azimuth_deg', '3': 8, '4': 1, '5': 2, '10': 'desiredBoresightAzimuthDeg'},
    {'1': 'desired_boresight_elevation_deg', '3': 9, '4': 1, '5': 2, '10': 'desiredBoresightElevationDeg'},
  ],
};

/// Descriptor for `AlignmentStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alignmentStatsDescriptor = $convert.base64Decode(
    'Cg5BbGlnbm1lbnRTdGF0cxJECg1oYXNfYWN0dWF0b3JzGAEgASgOMh8uU3BhY2VYLkFQSS5EZX'
    'ZpY2UuSGFzQWN0dWF0b3JzUgxoYXNBY3R1YXRvcnMSRwoOYWN0dWF0b3Jfc3RhdGUYAiABKA4y'
    'IC5TcGFjZVguQVBJLkRldmljZS5BY3R1YXRvclN0YXRlUg1hY3R1YXRvclN0YXRlEiQKDnRpbH'
    'RfYW5nbGVfZGVnGAMgASgCUgx0aWx0QW5nbGVEZWcSMgoVYm9yZXNpZ2h0X2F6aW11dGhfZGVn'
    'GAQgASgCUhNib3Jlc2lnaHRBemltdXRoRGVnEjYKF2JvcmVzaWdodF9lbGV2YXRpb25fZGVnGA'
    'UgASgCUhVib3Jlc2lnaHRFbGV2YXRpb25EZWcSZgoZYXR0aXR1ZGVfZXN0aW1hdGlvbl9zdGF0'
    'ZRgGIAEoDjIqLlNwYWNlWC5BUEkuRGV2aWNlLkF0dGl0dWRlRXN0aW1hdGlvblN0YXRlUhdhdH'
    'RpdHVkZUVzdGltYXRpb25TdGF0ZRI4ChhhdHRpdHVkZV91bmNlcnRhaW50eV9kZWcYByABKAJS'
    'FmF0dGl0dWRlVW5jZXJ0YWludHlEZWcSQQodZGVzaXJlZF9ib3Jlc2lnaHRfYXppbXV0aF9kZW'
    'cYCCABKAJSGmRlc2lyZWRCb3Jlc2lnaHRBemltdXRoRGVnEkUKH2Rlc2lyZWRfYm9yZXNpZ2h0'
    'X2VsZXZhdGlvbl9kZWcYCSABKAJSHGRlc2lyZWRCb3Jlc2lnaHRFbGV2YXRpb25EZWc=');

@$core.Deprecated('Use initializationDurationSecondsDescriptor instead')
const InitializationDurationSeconds$json = {
  '1': 'InitializationDurationSeconds',
  '2': [
    {'1': 'attitude_initialization', '3': 1, '4': 1, '5': 5, '10': 'attitudeInitialization'},
    {'1': 'burst_detected', '3': 2, '4': 1, '5': 5, '10': 'burstDetected'},
    {'1': 'ekf_converged', '3': 3, '4': 1, '5': 5, '10': 'ekfConverged'},
    {'1': 'first_cplane', '3': 4, '4': 1, '5': 5, '10': 'firstCplane'},
    {'1': 'first_pop_ping', '3': 5, '4': 1, '5': 5, '10': 'firstPopPing'},
    {'1': 'gps_valid', '3': 6, '4': 1, '5': 5, '10': 'gpsValid'},
    {'1': 'initial_network_entry', '3': 7, '4': 1, '5': 5, '10': 'initialNetworkEntry'},
    {'1': 'network_schedule', '3': 8, '4': 1, '5': 5, '10': 'networkSchedule'},
    {'1': 'rf_ready', '3': 9, '4': 1, '5': 5, '10': 'rfReady'},
    {'1': 'stable_connection', '3': 10, '4': 1, '5': 5, '10': 'stableConnection'},
  ],
};

/// Descriptor for `InitializationDurationSeconds`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List initializationDurationSecondsDescriptor = $convert.base64Decode(
    'Ch1Jbml0aWFsaXphdGlvbkR1cmF0aW9uU2Vjb25kcxI3ChdhdHRpdHVkZV9pbml0aWFsaXphdG'
    'lvbhgBIAEoBVIWYXR0aXR1ZGVJbml0aWFsaXphdGlvbhIlCg5idXJzdF9kZXRlY3RlZBgCIAEo'
    'BVINYnVyc3REZXRlY3RlZBIjCg1la2ZfY29udmVyZ2VkGAMgASgFUgxla2ZDb252ZXJnZWQSIQ'
    'oMZmlyc3RfY3BsYW5lGAQgASgFUgtmaXJzdENwbGFuZRIkCg5maXJzdF9wb3BfcGluZxgFIAEo'
    'BVIMZmlyc3RQb3BQaW5nEhsKCWdwc192YWxpZBgGIAEoBVIIZ3BzVmFsaWQSMgoVaW5pdGlhbF'
    '9uZXR3b3JrX2VudHJ5GAcgASgFUhNpbml0aWFsTmV0d29ya0VudHJ5EikKEG5ldHdvcmtfc2No'
    'ZWR1bGUYCCABKAVSD25ldHdvcmtTY2hlZHVsZRIZCghyZl9yZWFkeRgJIAEoBVIHcmZSZWFkeR'
    'IrChFzdGFibGVfY29ubmVjdGlvbhgKIAEoBVIQc3RhYmxlQ29ubmVjdGlvbg==');

@$core.Deprecated('Use dishAuthenticateResponseDescriptor instead')
const DishAuthenticateResponse$json = {
  '1': 'DishAuthenticateResponse',
  '2': [
    {'1': 'dish', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.ChallengeResponse', '10': 'dish'},
  ],
};

/// Descriptor for `DishAuthenticateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishAuthenticateResponseDescriptor = $convert.base64Decode(
    'ChhEaXNoQXV0aGVudGljYXRlUmVzcG9uc2USOAoEZGlzaBgCIAEoCzIkLlNwYWNlWC5BUEkuRG'
    'V2aWNlLkNoYWxsZW5nZVJlc3BvbnNlUgRkaXNo');

@$core.Deprecated('Use challengeResponseDescriptor instead')
const ChallengeResponse$json = {
  '1': 'ChallengeResponse',
  '2': [
    {'1': 'signature', '3': 1, '4': 1, '5': 12, '10': 'signature'},
    {'1': 'certificate_chain', '3': 2, '4': 1, '5': 12, '10': 'certificateChain'},
  ],
};

/// Descriptor for `ChallengeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List challengeResponseDescriptor = $convert.base64Decode(
    'ChFDaGFsbGVuZ2VSZXNwb25zZRIcCglzaWduYXR1cmUYASABKAxSCXNpZ25hdHVyZRIrChFjZX'
    'J0aWZpY2F0ZV9jaGFpbhgCIAEoDFIQY2VydGlmaWNhdGVDaGFpbg==');

@$core.Deprecated('Use dishGetHistoryResponseDescriptor instead')
const DishGetHistoryResponse$json = {
  '1': 'DishGetHistoryResponse',
  '2': [
    {'1': 'current', '3': 1, '4': 1, '5': 4, '10': 'current'},
    {'1': 'pop_ping_drop_rate', '3': 1001, '4': 3, '5': 2, '10': 'popPingDropRate'},
    {'1': 'pop_ping_latency_ms', '3': 1002, '4': 3, '5': 2, '10': 'popPingLatencyMs'},
    {'1': 'downlink_throughput_bps', '3': 1003, '4': 3, '5': 2, '10': 'downlinkThroughputBps'},
    {'1': 'uplink_throughput_bps', '3': 1004, '4': 3, '5': 2, '10': 'uplinkThroughputBps'},
    {'1': 'outages', '3': 1009, '4': 3, '5': 11, '6': '.SpaceX.API.Device.DishOutage', '10': 'outages'},
  ],
  '9': [
    {'1': 1005, '2': 1006},
    {'1': 1006, '2': 1007},
    {'1': 1007, '2': 1008},
    {'1': 1008, '2': 1009},
  ],
};

/// Descriptor for `DishGetHistoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGetHistoryResponseDescriptor = $convert.base64Decode(
    'ChZEaXNoR2V0SGlzdG9yeVJlc3BvbnNlEhgKB2N1cnJlbnQYASABKARSB2N1cnJlbnQSLAoScG'
    '9wX3BpbmdfZHJvcF9yYXRlGOkHIAMoAlIPcG9wUGluZ0Ryb3BSYXRlEi4KE3BvcF9waW5nX2xh'
    'dGVuY3lfbXMY6gcgAygCUhBwb3BQaW5nTGF0ZW5jeU1zEjcKF2Rvd25saW5rX3Rocm91Z2hwdX'
    'RfYnBzGOsHIAMoAlIVZG93bmxpbmtUaHJvdWdocHV0QnBzEjMKFXVwbGlua190aHJvdWdocHV0'
    'X2JwcxjsByADKAJSE3VwbGlua1Rocm91Z2hwdXRCcHMSOAoHb3V0YWdlcxjxByADKAsyHS5TcG'
    'FjZVguQVBJLkRldmljZS5EaXNoT3V0YWdlUgdvdXRhZ2VzSgYI7QcQ7gdKBgjuBxDvB0oGCO8H'
    'EPAHSgYI8AcQ8Qc=');

@$core.Deprecated('Use dishSetEmcResponseDescriptor instead')
const DishSetEmcResponse$json = {
  '1': 'DishSetEmcResponse',
};

/// Descriptor for `DishSetEmcResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishSetEmcResponseDescriptor = $convert.base64Decode(
    'ChJEaXNoU2V0RW1jUmVzcG9uc2U=');

@$core.Deprecated('Use dishGetObstructionMapResponseDescriptor instead')
const DishGetObstructionMapResponse$json = {
  '1': 'DishGetObstructionMapResponse',
  '2': [
    {'1': 'num_rows', '3': 1, '4': 1, '5': 13, '10': 'numRows'},
    {'1': 'num_cols', '3': 2, '4': 1, '5': 13, '10': 'numCols'},
    {'1': 'snr', '3': 3, '4': 3, '5': 2, '10': 'snr'},
    {
      '1': 'min_elevation_deg',
      '3': 4,
      '4': 1,
      '5': 2,
      '8': {'3': true},
      '10': 'minElevationDeg',
    },
    {'1': 'max_theta_deg', '3': 5, '4': 1, '5': 2, '10': 'maxThetaDeg'},
  ],
};

/// Descriptor for `DishGetObstructionMapResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGetObstructionMapResponseDescriptor = $convert.base64Decode(
    'Ch1EaXNoR2V0T2JzdHJ1Y3Rpb25NYXBSZXNwb25zZRIZCghudW1fcm93cxgBIAEoDVIHbnVtUm'
    '93cxIZCghudW1fY29scxgCIAEoDVIHbnVtQ29scxIQCgNzbnIYAyADKAJSA3NuchIuChFtaW5f'
    'ZWxldmF0aW9uX2RlZxgEIAEoAkICGAFSD21pbkVsZXZhdGlvbkRlZxIiCg1tYXhfdGhldGFfZG'
    'VnGAUgASgCUgttYXhUaGV0YURlZw==');

@$core.Deprecated('Use dishGetEmcResponseDescriptor instead')
const DishGetEmcResponse$json = {
  '1': 'DishGetEmcResponse',
  '2': [
    {'1': 'uuid', '3': 2, '4': 1, '5': 9, '10': 'uuid'},
    {'1': 'timestamp', '3': 3, '4': 1, '5': 4, '10': 'timestamp'},
    {'1': 'cplane_updates', '3': 11, '4': 1, '5': 13, '10': 'cplaneUpdates'},
    {'1': 'gps_latitude', '3': 16, '4': 1, '5': 1, '10': 'gpsLatitude'},
    {'1': 'gps_longitude', '3': 17, '4': 1, '5': 1, '10': 'gpsLongitude'},
    {'1': 'gps_pdop', '3': 18, '4': 1, '5': 1, '10': 'gpsPdop'},
    {'1': 'rf_mode', '3': 19, '4': 1, '5': 13, '10': 'rfMode'},
    {'1': 'phi', '3': 20, '4': 1, '5': 1, '10': 'phi'},
    {'1': 'theta', '3': 21, '4': 1, '5': 1, '10': 'theta'},
    {'1': 'rx_channel', '3': 22, '4': 1, '5': 13, '10': 'rxChannel'},
    {'1': 'tx_channel', '3': 23, '4': 1, '5': 13, '10': 'txChannel'},
    {'1': 't_dbf_max', '3': 24, '4': 1, '5': 2, '10': 'tDbfMax'},
    {'1': 't_center', '3': 25, '4': 1, '5': 1, '10': 'tCenter'},
    {'1': 'auto_power_snow_melt_enabled', '3': 30, '4': 1, '5': 8, '10': 'autoPowerSnowMeltEnabled'},
    {'1': 'voltage', '3': 32, '4': 1, '5': 1, '10': 'voltage'},
    {'1': 'rx_beam_state', '3': 33, '4': 1, '5': 13, '10': 'rxBeamState'},
    {'1': 'tx_beam_state', '3': 34, '4': 1, '5': 13, '10': 'txBeamState'},
    {'1': 'half_duplex_state', '3': 35, '4': 1, '5': 13, '10': 'halfDuplexState'},
    {'1': 'manual_tilt_enabled', '3': 36, '4': 1, '5': 8, '10': 'manualTiltEnabled'},
    {'1': 'tilt_angle', '3': 37, '4': 1, '5': 1, '10': 'tiltAngle'},
    {'1': 'pll_tx_lock_detected', '3': 38, '4': 1, '5': 13, '10': 'pllTxLockDetected'},
    {'1': 'eirp_exceeded_threshold', '3': 39, '4': 1, '5': 8, '10': 'eirpExceededThreshold'},
    {'1': 'idle_override_enabled', '3': 41, '4': 1, '5': 8, '10': 'idleOverrideEnabled'},
    {'1': 'theta_override_enabled', '3': 42, '4': 1, '5': 8, '10': 'thetaOverrideEnabled'},
    {'1': 'theta_override_value', '3': 43, '4': 1, '5': 1, '10': 'thetaOverrideValue'},
    {'1': 'phi_override_enabled', '3': 44, '4': 1, '5': 8, '10': 'phiOverrideEnabled'},
    {'1': 'phi_override_value', '3': 45, '4': 1, '5': 1, '10': 'phiOverrideValue'},
    {'1': 'rx_chan_override_value', '3': 46, '4': 1, '5': 13, '10': 'rxChanOverrideValue'},
    {'1': 'tx_chan_override_value', '3': 47, '4': 1, '5': 13, '10': 'txChanOverrideValue'},
    {'1': 'sky_search_override_enabled', '3': 48, '4': 1, '5': 8, '10': 'skySearchOverrideEnabled'},
    {'1': 'fast_switching_enabled', '3': 49, '4': 1, '5': 8, '10': 'fastSwitchingEnabled'},
    {'1': 'modulation_override_value', '3': 50, '4': 1, '5': 13, '10': 'modulationOverrideValue'},
    {'1': 'force_eirp_failure', '3': 51, '4': 1, '5': 8, '10': 'forceEirpFailure'},
    {'1': 'force_pll_unlock', '3': 52, '4': 1, '5': 8, '10': 'forcePllUnlock'},
    {'1': 'ut_ine_success', '3': 53, '4': 1, '5': 13, '10': 'utIneSuccess'},
    {'1': 'rf_ready', '3': 54, '4': 1, '5': 8, '10': 'rfReady'},
    {'1': 'tilt_to_stowed', '3': 55, '4': 1, '5': 8, '10': 'tiltToStowed'},
    {'1': 'reboot', '3': 56, '4': 1, '5': 8, '10': 'reboot'},
    {'1': 'continuous_motor_test', '3': 57, '4': 1, '5': 8, '10': 'continuousMotorTest'},
    {'1': 'distance_override_meters', '3': 58, '4': 1, '5': 1, '10': 'distanceOverrideMeters'},
    {'1': 'amplitude_taper_override', '3': 59, '4': 1, '5': 13, '10': 'amplitudeTaperOverride'},
    {'1': 'amplitude_taper_enabled', '3': 60, '4': 1, '5': 8, '10': 'amplitudeTaperEnabled'},
    {'1': 'amplitude_taper_scale', '3': 61, '4': 1, '5': 1, '10': 'amplitudeTaperScale'},
    {'1': 'country_code_override', '3': 62, '4': 1, '5': 13, '10': 'countryCodeOverride'},
    {'1': 'max_pointing_distance', '3': 63, '4': 1, '5': 1, '10': 'maxPointingDistance'},
    {'1': 'distance_scaling_factor', '3': 64, '4': 1, '5': 1, '10': 'distanceScalingFactor'},
    {'1': 'tx_duty_cycle_override', '3': 65, '4': 1, '5': 5, '10': 'txDutyCycleOverride'},
    {'1': 'rx_duty_cycle_override', '3': 66, '4': 1, '5': 5, '10': 'rxDutyCycleOverride'},
    {'1': 'tx_time_ms', '3': 67, '4': 1, '5': 2, '10': 'txTimeMs'},
    {'1': 'rx_time_ms', '3': 68, '4': 1, '5': 2, '10': 'rxTimeMs'},
    {'1': 'eirp_legal_limit_dbw', '3': 69, '4': 1, '5': 1, '10': 'eirpLegalLimitDbw'},
    {'1': 'eirp_legal_limit_dbw_override', '3': 70, '4': 1, '5': 1, '10': 'eirpLegalLimitDbwOverride'},
    {'1': 'eirp_adjustment_db', '3': 71, '4': 1, '5': 1, '10': 'eirpAdjustmentDb'},
    {'1': 'eirp_predicted_dbw', '3': 72, '4': 1, '5': 1, '10': 'eirpPredictedDbw'},
  ],
  '9': [
    {'1': 26, '2': 30},
    {'1': 40, '2': 41},
  ],
  '10': ['additional_heating', 'baseline_heating', 'eirp_scale_override', 'target_total_heating', 'total_heating'],
};

/// Descriptor for `DishGetEmcResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGetEmcResponseDescriptor = $convert.base64Decode(
    'ChJEaXNoR2V0RW1jUmVzcG9uc2USEgoEdXVpZBgCIAEoCVIEdXVpZBIcCgl0aW1lc3RhbXAYAy'
    'ABKARSCXRpbWVzdGFtcBIlCg5jcGxhbmVfdXBkYXRlcxgLIAEoDVINY3BsYW5lVXBkYXRlcxIh'
    'CgxncHNfbGF0aXR1ZGUYECABKAFSC2dwc0xhdGl0dWRlEiMKDWdwc19sb25naXR1ZGUYESABKA'
    'FSDGdwc0xvbmdpdHVkZRIZCghncHNfcGRvcBgSIAEoAVIHZ3BzUGRvcBIXCgdyZl9tb2RlGBMg'
    'ASgNUgZyZk1vZGUSEAoDcGhpGBQgASgBUgNwaGkSFAoFdGhldGEYFSABKAFSBXRoZXRhEh0KCn'
    'J4X2NoYW5uZWwYFiABKA1SCXJ4Q2hhbm5lbBIdCgp0eF9jaGFubmVsGBcgASgNUgl0eENoYW5u'
    'ZWwSGgoJdF9kYmZfbWF4GBggASgCUgd0RGJmTWF4EhkKCHRfY2VudGVyGBkgASgBUgd0Q2VudG'
    'VyEj4KHGF1dG9fcG93ZXJfc25vd19tZWx0X2VuYWJsZWQYHiABKAhSGGF1dG9Qb3dlclNub3dN'
    'ZWx0RW5hYmxlZBIYCgd2b2x0YWdlGCAgASgBUgd2b2x0YWdlEiIKDXJ4X2JlYW1fc3RhdGUYIS'
    'ABKA1SC3J4QmVhbVN0YXRlEiIKDXR4X2JlYW1fc3RhdGUYIiABKA1SC3R4QmVhbVN0YXRlEioK'
    'EWhhbGZfZHVwbGV4X3N0YXRlGCMgASgNUg9oYWxmRHVwbGV4U3RhdGUSLgoTbWFudWFsX3RpbH'
    'RfZW5hYmxlZBgkIAEoCFIRbWFudWFsVGlsdEVuYWJsZWQSHQoKdGlsdF9hbmdsZRglIAEoAVIJ'
    'dGlsdEFuZ2xlEi8KFHBsbF90eF9sb2NrX2RldGVjdGVkGCYgASgNUhFwbGxUeExvY2tEZXRlY3'
    'RlZBI2ChdlaXJwX2V4Y2VlZGVkX3RocmVzaG9sZBgnIAEoCFIVZWlycEV4Y2VlZGVkVGhyZXNo'
    'b2xkEjIKFWlkbGVfb3ZlcnJpZGVfZW5hYmxlZBgpIAEoCFITaWRsZU92ZXJyaWRlRW5hYmxlZB'
    'I0ChZ0aGV0YV9vdmVycmlkZV9lbmFibGVkGCogASgIUhR0aGV0YU92ZXJyaWRlRW5hYmxlZBIw'
    'ChR0aGV0YV9vdmVycmlkZV92YWx1ZRgrIAEoAVISdGhldGFPdmVycmlkZVZhbHVlEjAKFHBoaV'
    '9vdmVycmlkZV9lbmFibGVkGCwgASgIUhJwaGlPdmVycmlkZUVuYWJsZWQSLAoScGhpX292ZXJy'
    'aWRlX3ZhbHVlGC0gASgBUhBwaGlPdmVycmlkZVZhbHVlEjMKFnJ4X2NoYW5fb3ZlcnJpZGVfdm'
    'FsdWUYLiABKA1SE3J4Q2hhbk92ZXJyaWRlVmFsdWUSMwoWdHhfY2hhbl9vdmVycmlkZV92YWx1'
    'ZRgvIAEoDVITdHhDaGFuT3ZlcnJpZGVWYWx1ZRI9Chtza3lfc2VhcmNoX292ZXJyaWRlX2VuYW'
    'JsZWQYMCABKAhSGHNreVNlYXJjaE92ZXJyaWRlRW5hYmxlZBI0ChZmYXN0X3N3aXRjaGluZ19l'
    'bmFibGVkGDEgASgIUhRmYXN0U3dpdGNoaW5nRW5hYmxlZBI6Chltb2R1bGF0aW9uX292ZXJyaW'
    'RlX3ZhbHVlGDIgASgNUhdtb2R1bGF0aW9uT3ZlcnJpZGVWYWx1ZRIsChJmb3JjZV9laXJwX2Zh'
    'aWx1cmUYMyABKAhSEGZvcmNlRWlycEZhaWx1cmUSKAoQZm9yY2VfcGxsX3VubG9jaxg0IAEoCF'
    'IOZm9yY2VQbGxVbmxvY2sSJAoOdXRfaW5lX3N1Y2Nlc3MYNSABKA1SDHV0SW5lU3VjY2VzcxIZ'
    'CghyZl9yZWFkeRg2IAEoCFIHcmZSZWFkeRIkCg50aWx0X3RvX3N0b3dlZBg3IAEoCFIMdGlsdF'
    'RvU3Rvd2VkEhYKBnJlYm9vdBg4IAEoCFIGcmVib290EjIKFWNvbnRpbnVvdXNfbW90b3JfdGVz'
    'dBg5IAEoCFITY29udGludW91c01vdG9yVGVzdBI4ChhkaXN0YW5jZV9vdmVycmlkZV9tZXRlcn'
    'MYOiABKAFSFmRpc3RhbmNlT3ZlcnJpZGVNZXRlcnMSOAoYYW1wbGl0dWRlX3RhcGVyX292ZXJy'
    'aWRlGDsgASgNUhZhbXBsaXR1ZGVUYXBlck92ZXJyaWRlEjYKF2FtcGxpdHVkZV90YXBlcl9lbm'
    'FibGVkGDwgASgIUhVhbXBsaXR1ZGVUYXBlckVuYWJsZWQSMgoVYW1wbGl0dWRlX3RhcGVyX3Nj'
    'YWxlGD0gASgBUhNhbXBsaXR1ZGVUYXBlclNjYWxlEjIKFWNvdW50cnlfY29kZV9vdmVycmlkZR'
    'g+IAEoDVITY291bnRyeUNvZGVPdmVycmlkZRIyChVtYXhfcG9pbnRpbmdfZGlzdGFuY2UYPyAB'
    'KAFSE21heFBvaW50aW5nRGlzdGFuY2USNgoXZGlzdGFuY2Vfc2NhbGluZ19mYWN0b3IYQCABKA'
    'FSFWRpc3RhbmNlU2NhbGluZ0ZhY3RvchIzChZ0eF9kdXR5X2N5Y2xlX292ZXJyaWRlGEEgASgF'
    'UhN0eER1dHlDeWNsZU92ZXJyaWRlEjMKFnJ4X2R1dHlfY3ljbGVfb3ZlcnJpZGUYQiABKAVSE3'
    'J4RHV0eUN5Y2xlT3ZlcnJpZGUSHAoKdHhfdGltZV9tcxhDIAEoAlIIdHhUaW1lTXMSHAoKcnhf'
    'dGltZV9tcxhEIAEoAlIIcnhUaW1lTXMSLwoUZWlycF9sZWdhbF9saW1pdF9kYncYRSABKAFSEW'
    'VpcnBMZWdhbExpbWl0RGJ3EkAKHWVpcnBfbGVnYWxfbGltaXRfZGJ3X292ZXJyaWRlGEYgASgB'
    'UhllaXJwTGVnYWxMaW1pdERid092ZXJyaWRlEiwKEmVpcnBfYWRqdXN0bWVudF9kYhhHIAEoAV'
    'IQZWlycEFkanVzdG1lbnREYhIsChJlaXJwX3ByZWRpY3RlZF9kYncYSCABKAFSEGVpcnBQcmVk'
    'aWN0ZWREYndKBAgaEB5KBAgoEClSEmFkZGl0aW9uYWxfaGVhdGluZ1IQYmFzZWxpbmVfaGVhdG'
    'luZ1ITZWlycF9zY2FsZV9vdmVycmlkZVIUdGFyZ2V0X3RvdGFsX2hlYXRpbmdSDXRvdGFsX2hl'
    'YXRpbmc=');

@$core.Deprecated('Use dishSetConfigResponseDescriptor instead')
const DishSetConfigResponse$json = {
  '1': 'DishSetConfigResponse',
  '2': [
    {'1': 'updated_dish_config', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishConfig', '10': 'updatedDishConfig'},
  ],
};

/// Descriptor for `DishSetConfigResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishSetConfigResponseDescriptor = $convert.base64Decode(
    'ChVEaXNoU2V0Q29uZmlnUmVzcG9uc2USTQoTdXBkYXRlZF9kaXNoX2NvbmZpZxgBIAEoCzIdLl'
    'NwYWNlWC5BUEkuRGV2aWNlLkRpc2hDb25maWdSEXVwZGF0ZWREaXNoQ29uZmln');

@$core.Deprecated('Use dishGetConfigResponseDescriptor instead')
const DishGetConfigResponse$json = {
  '1': 'DishGetConfigResponse',
  '2': [
    {'1': 'dish_config', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishConfig', '10': 'dishConfig'},
  ],
};

/// Descriptor for `DishGetConfigResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGetConfigResponseDescriptor = $convert.base64Decode(
    'ChVEaXNoR2V0Q29uZmlnUmVzcG9uc2USPgoLZGlzaF9jb25maWcYASABKAsyHS5TcGFjZVguQV'
    'BJLkRldmljZS5EaXNoQ29uZmlnUgpkaXNoQ29uZmln');

@$core.Deprecated('Use startDishSelfTestResponseDescriptor instead')
const StartDishSelfTestResponse$json = {
  '1': 'StartDishSelfTestResponse',
};

/// Descriptor for `StartDishSelfTestResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startDishSelfTestResponseDescriptor = $convert.base64Decode(
    'ChlTdGFydERpc2hTZWxmVGVzdFJlc3BvbnNl');

@$core.Deprecated('Use dishInhibitGpsResponseDescriptor instead')
const DishInhibitGpsResponse$json = {
  '1': 'DishInhibitGpsResponse',
  '2': [
    {'1': 'inhibit_gps', '3': 1, '4': 1, '5': 8, '10': 'inhibitGps'},
  ],
};

/// Descriptor for `DishInhibitGpsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishInhibitGpsResponseDescriptor = $convert.base64Decode(
    'ChZEaXNoSW5oaWJpdEdwc1Jlc3BvbnNlEh8KC2luaGliaXRfZ3BzGAEgASgIUgppbmhpYml0R3'
    'Bz');

@$core.Deprecated('Use dishClearObstructionMapResponseDescriptor instead')
const DishClearObstructionMapResponse$json = {
  '1': 'DishClearObstructionMapResponse',
};

/// Descriptor for `DishClearObstructionMapResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishClearObstructionMapResponseDescriptor = $convert.base64Decode(
    'Ch9EaXNoQ2xlYXJPYnN0cnVjdGlvbk1hcFJlc3BvbnNl');

@$core.Deprecated('Use dishSetMaxPowerTestModeResponseDescriptor instead')
const DishSetMaxPowerTestModeResponse$json = {
  '1': 'DishSetMaxPowerTestModeResponse',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
  ],
};

/// Descriptor for `DishSetMaxPowerTestModeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishSetMaxPowerTestModeResponseDescriptor = $convert.base64Decode(
    'Ch9EaXNoU2V0TWF4UG93ZXJUZXN0TW9kZVJlc3BvbnNlEhgKB2VuYWJsZWQYASABKAhSB2VuYW'
    'JsZWQ=');

@$core.Deprecated('Use dishActivateRssiScanResponseDescriptor instead')
const DishActivateRssiScanResponse$json = {
  '1': 'DishActivateRssiScanResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DishActivateRssiScanResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishActivateRssiScanResponseDescriptor = $convert.base64Decode(
    'ChxEaXNoQWN0aXZhdGVSc3NpU2NhblJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3'
    'M=');

@$core.Deprecated('Use dishGetRssiScanResultResponseDescriptor instead')
const DishGetRssiScanResultResponse$json = {
  '1': 'DishGetRssiScanResultResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetRssiScanResult', '10': 'result'},
  ],
};

/// Descriptor for `DishGetRssiScanResultResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGetRssiScanResultResponseDescriptor = $convert.base64Decode(
    'Ch1EaXNoR2V0UnNzaVNjYW5SZXN1bHRSZXNwb25zZRJACgZyZXN1bHQYASABKAsyKC5TcGFjZV'
    'guQVBJLkRldmljZS5EaXNoR2V0UnNzaVNjYW5SZXN1bHRSBnJlc3VsdA==');

@$core.Deprecated('Use dishGetRssiScanResultDescriptor instead')
const DishGetRssiScanResult$json = {
  '1': 'DishGetRssiScanResult',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'channel', '3': 2, '4': 1, '5': 13, '10': 'channel'},
    {'1': 'request_timestamp', '3': 3, '4': 1, '5': 4, '10': 'requestTimestamp'},
    {'1': 'number_samples', '3': 4, '4': 1, '5': 13, '10': 'numberSamples'},
    {'1': 'rssi_scan_points', '3': 5, '4': 3, '5': 11, '6': '.SpaceX.API.Device.RssiEntry', '10': 'rssiScanPoints'},
  ],
};

/// Descriptor for `DishGetRssiScanResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGetRssiScanResultDescriptor = $convert.base64Decode(
    'ChVEaXNoR2V0UnNzaVNjYW5SZXN1bHQSGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIYCgdjaG'
    'FubmVsGAIgASgNUgdjaGFubmVsEisKEXJlcXVlc3RfdGltZXN0YW1wGAMgASgEUhByZXF1ZXN0'
    'VGltZXN0YW1wEiUKDm51bWJlcl9zYW1wbGVzGAQgASgNUg1udW1iZXJTYW1wbGVzEkYKEHJzc2'
    'lfc2Nhbl9wb2ludHMYBSADKAsyHC5TcGFjZVguQVBJLkRldmljZS5Sc3NpRW50cnlSDnJzc2lT'
    'Y2FuUG9pbnRz');

@$core.Deprecated('Use rssiEntryDescriptor instead')
const RssiEntry$json = {
  '1': 'RssiEntry',
  '2': [
    {'1': 'theta_degree', '3': 1, '4': 1, '5': 1, '10': 'thetaDegree'},
    {'1': 'phi_degree', '3': 2, '4': 1, '5': 1, '10': 'phiDegree'},
    {'1': 'rssi_dbf', '3': 3, '4': 1, '5': 1, '10': 'rssiDbf'},
    {'1': 'scan_timestamp_ms', '3': 4, '4': 1, '5': 4, '10': 'scanTimestampMs'},
  ],
};

/// Descriptor for `RssiEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rssiEntryDescriptor = $convert.base64Decode(
    'CglSc3NpRW50cnkSIQoMdGhldGFfZGVncmVlGAEgASgBUgt0aGV0YURlZ3JlZRIdCgpwaGlfZG'
    'VncmVlGAIgASgBUglwaGlEZWdyZWUSGQoIcnNzaV9kYmYYAyABKAFSB3Jzc2lEYmYSKgoRc2Nh'
    'bl90aW1lc3RhbXBfbXMYBCABKARSD3NjYW5UaW1lc3RhbXBNcw==');

@$core.Deprecated('Use dishFactoryResetResponseDescriptor instead')
const DishFactoryResetResponse$json = {
  '1': 'DishFactoryResetResponse',
};

/// Descriptor for `DishFactoryResetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishFactoryResetResponseDescriptor = $convert.base64Decode(
    'ChhEaXNoRmFjdG9yeVJlc2V0UmVzcG9uc2U=');

@$core.Deprecated('Use resetButtonResponseDescriptor instead')
const ResetButtonResponse$json = {
  '1': 'ResetButtonResponse',
};

/// Descriptor for `ResetButtonResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resetButtonResponseDescriptor = $convert.base64Decode(
    'ChNSZXNldEJ1dHRvblJlc3BvbnNl');

@$core.Deprecated('Use wifiSetConfigResponseDescriptor instead')
const WifiSetConfigResponse$json = {
  '1': 'WifiSetConfigResponse',
  '2': [
    {'1': 'updated_wifi_config', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiConfig', '10': 'updatedWifiConfig'},
  ],
};

/// Descriptor for `WifiSetConfigResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSetConfigResponseDescriptor = $convert.base64Decode(
    'ChVXaWZpU2V0Q29uZmlnUmVzcG9uc2USTQoTdXBkYXRlZF93aWZpX2NvbmZpZxgBIAEoCzIdLl'
    'NwYWNlWC5BUEkuRGV2aWNlLldpZmlDb25maWdSEXVwZGF0ZWRXaWZpQ29uZmln');

@$core.Deprecated('Use wifiGetClientsResponseDescriptor instead')
const WifiGetClientsResponse$json = {
  '1': 'WifiGetClientsResponse',
  '2': [
    {'1': 'clients', '3': 1, '4': 3, '5': 11, '6': '.SpaceX.API.Device.WifiClient', '10': 'clients'},
    {'1': 'has_client_index', '3': 2, '4': 1, '5': 8, '10': 'hasClientIndex'},
    {'1': 'client_index', '3': 3, '4': 1, '5': 5, '10': 'clientIndex'},
  ],
};

/// Descriptor for `WifiGetClientsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetClientsResponseDescriptor = $convert.base64Decode(
    'ChZXaWZpR2V0Q2xpZW50c1Jlc3BvbnNlEjcKB2NsaWVudHMYASADKAsyHS5TcGFjZVguQVBJLk'
    'RldmljZS5XaWZpQ2xpZW50UgdjbGllbnRzEigKEGhhc19jbGllbnRfaW5kZXgYAiABKAhSDmhh'
    'c0NsaWVudEluZGV4EiEKDGNsaWVudF9pbmRleBgDIAEoBVILY2xpZW50SW5kZXg=');

@$core.Deprecated('Use wifiClientDescriptor instead')
const WifiClient$json = {
  '1': 'WifiClient',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'mac_address', '3': 2, '4': 1, '5': 9, '10': 'macAddress'},
    {'1': 'ip_address', '3': 3, '4': 1, '5': 9, '10': 'ipAddress'},
    {'1': 'signal_strength', '3': 4, '4': 1, '5': 2, '10': 'signalStrength'},
    {'1': 'rx_stats', '3': 5, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiClient.RxStats', '10': 'rxStats'},
    {'1': 'tx_stats', '3': 6, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiClient.TxStats', '10': 'txStats'},
    {'1': 'associated_time_s', '3': 7, '4': 1, '5': 13, '10': 'associatedTimeS'},
    {'1': 'mode_str', '3': 8, '4': 1, '5': 9, '10': 'modeStr'},
    {'1': 'iface', '3': 9, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiClient.Interface', '10': 'iface'},
    {'1': 'snr', '3': 10, '4': 1, '5': 2, '10': 'snr'},
    {'1': 'psmode', '3': 11, '4': 1, '5': 5, '10': 'psmode'},
    {'1': 'channel_width', '3': 12, '4': 1, '5': 13, '10': 'channelWidth'},
    {'1': 'upstream_mac_address', '3': 13, '4': 1, '5': 9, '10': 'upstreamMacAddress'},
    {'1': 'role', '3': 14, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiClient.Role', '10': 'role'},
    {'1': 'device_id', '3': 15, '4': 1, '5': 9, '10': 'deviceId'},
    {'1': 'swq_checks', '3': 16, '4': 1, '5': 13, '10': 'swqChecks'},
    {'1': 'swq_checks_non_empty', '3': 17, '4': 1, '5': 13, '10': 'swqChecksNonEmpty'},
    {'1': 'mib_steer_state', '3': 18, '4': 1, '5': 13, '10': 'mibSteerState'},
    {'1': 'mib_steer_method', '3': 19, '4': 1, '5': 13, '10': 'mibSteerMethod'},
    {'1': 'btm_requests', '3': 20, '4': 1, '5': 13, '10': 'btmRequests'},
    {'1': 'btm_requests_success', '3': 21, '4': 1, '5': 13, '10': 'btmRequestsSuccess'},
    {'1': 'domain', '3': 22, '4': 1, '5': 9, '10': 'domain'},
    {'1': 'dot11v_support', '3': 23, '4': 1, '5': 8, '10': 'dot11vSupport'},
    {'1': 'iface_name', '3': 26, '4': 1, '5': 9, '10': 'ifaceName'},
    {'1': 'steer_req_success_last_1h', '3': 27, '4': 1, '5': 13, '10': 'steerReqSuccessLast1h'},
    {'1': 'steer_req_fail_last_1h', '3': 28, '4': 1, '5': 13, '10': 'steerReqFailLast1h'},
    {'1': 'steer_req_fail_and_dissoc_last_1h', '3': 29, '4': 1, '5': 13, '10': 'steerReqFailAndDissocLast1h'},
    {'1': 'steer_state', '3': 30, '4': 1, '5': 13, '10': 'steerState'},
    {'1': 'given_name', '3': 31, '4': 1, '5': 9, '10': 'givenName'},
    {'1': 'hops_from_controller', '3': 32, '4': 1, '5': 13, '10': 'hopsFromController'},
    {'1': 'est_tx_rate_mbps_from_controller', '3': 33, '4': 1, '5': 2, '10': 'estTxRateMbpsFromController'},
    {'1': 'est_rx_rate_mbps_from_controller', '3': 34, '4': 1, '5': 2, '10': 'estRxRateMbpsFromController'},
    {'1': 'hardware_version', '3': 37, '4': 1, '5': 9, '10': 'hardwareVersion'},
    {'1': 'software_version', '3': 38, '4': 1, '5': 9, '10': 'softwareVersion'},
    {'1': 'api_version', '3': 39, '4': 1, '5': 13, '10': 'apiVersion'},
    {'1': 'ping_metrics', '3': 40, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiClient.PingMetrics', '10': 'pingMetrics'},
    {'1': 'ipv6_addresses', '3': 41, '4': 3, '5': 9, '10': 'ipv6Addresses'},
    {'1': 'blocked', '3': 42, '4': 1, '5': 8, '10': 'blocked'},
    {'1': 'client_id', '3': 43, '4': 1, '5': 13, '10': 'clientId'},
    {'1': 'fqcodel_info', '3': 44, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiClient.FqcodelInfo', '10': 'fqcodelInfo'},
    {'1': 'no_data_idle_s', '3': 45, '4': 1, '5': 13, '10': 'noDataIdleS'},
    {'1': 'dhcp_lease_active', '3': 46, '4': 1, '5': 8, '10': 'dhcpLeaseActive'},
    {'1': 'dhcp_lease_renewed', '3': 47, '4': 1, '5': 8, '10': 'dhcpLeaseRenewed'},
  ],
  '3': [WifiClient_FqcodelInfo$json, WifiClient_PingMetrics$json, WifiClient_RxStats$json, WifiClient_TxStats$json],
  '4': [WifiClient_Interface$json, WifiClient_Role$json],
};

@$core.Deprecated('Use wifiClientDescriptor instead')
const WifiClient_FqcodelInfo$json = {
  '1': 'FqcodelInfo',
  '2': [
    {'1': 'enqs_hi_prio', '3': 1, '4': 1, '5': 4, '10': 'enqsHiPrio'},
    {'1': 'enqs_fqcodel', '3': 2, '4': 1, '5': 4, '10': 'enqsFqcodel'},
    {'1': 'enqs_new', '3': 3, '4': 1, '5': 4, '10': 'enqsNew'},
    {'1': 'enqs_old', '3': 4, '4': 1, '5': 4, '10': 'enqsOld'},
    {'1': 'enqs_dropped', '3': 5, '4': 1, '5': 4, '10': 'enqsDropped'},
    {'1': 'deqs_new', '3': 6, '4': 1, '5': 4, '10': 'deqsNew'},
    {'1': 'deqs_old', '3': 7, '4': 1, '5': 4, '10': 'deqsOld'},
    {'1': 'deqs_flow_new', '3': 8, '4': 1, '5': 4, '10': 'deqsFlowNew'},
    {'1': 'deqs_flow_old_deficit', '3': 9, '4': 1, '5': 4, '10': 'deqsFlowOldDeficit'},
    {'1': 'deqs_flow_old_starvation', '3': 10, '4': 1, '5': 4, '10': 'deqsFlowOldStarvation'},
    {'1': 'deqs_dropped', '3': 11, '4': 1, '5': 4, '10': 'deqsDropped'},
  ],
};

@$core.Deprecated('Use wifiClientDescriptor instead')
const WifiClient_PingMetrics$json = {
  '1': 'PingMetrics',
  '2': [
    {'1': 'in_unhappy_hour_2s', '3': 1, '4': 1, '5': 8, '10': 'inUnhappyHour2s'},
    {'1': 'in_unhappy_hour_5s', '3': 2, '4': 1, '5': 8, '10': 'inUnhappyHour5s'},
    {'1': 'drop_rate_5m', '3': 3, '4': 1, '5': 2, '10': 'dropRate5m'},
    {'1': 'latency_5m', '3': 4, '4': 1, '5': 2, '10': 'latency5m'},
  ],
};

@$core.Deprecated('Use wifiClientDescriptor instead')
const WifiClient_RxStats$json = {
  '1': 'RxStats',
  '2': [
    {'1': 'bytes', '3': 1, '4': 1, '5': 4, '10': 'bytes'},
    {'1': 'count_errors', '3': 2, '4': 1, '5': 4, '10': 'countErrors'},
    {'1': 'nss', '3': 3, '4': 1, '5': 5, '10': 'nss'},
    {'1': 'mcs', '3': 5, '4': 1, '5': 13, '10': 'mcs'},
    {'1': 'bandwidth', '3': 6, '4': 1, '5': 13, '10': 'bandwidth'},
    {'1': 'guard_ns', '3': 7, '4': 1, '5': 13, '10': 'guardNs'},
    {'1': 'rate_mbps', '3': 8, '4': 1, '5': 13, '10': 'rateMbps'},
    {'1': 'airtime_fraction_last_1s', '3': 9, '4': 1, '5': 2, '10': 'airtimeFractionLast1s'},
    {'1': 'sampled_packets', '3': 10, '4': 1, '5': 13, '10': 'sampledPackets'},
    {'1': 'sampled_packets_retried', '3': 11, '4': 1, '5': 13, '10': 'sampledPacketsRetried'},
    {'1': 'sampled_packets_dropped', '3': 12, '4': 1, '5': 13, '10': 'sampledPacketsDropped'},
    {'1': 'phy_mode', '3': 13, '4': 1, '5': 13, '10': 'phyMode'},
    {'1': 'rate_mbps_last_30s', '3': 14, '4': 1, '5': 2, '10': 'rateMbpsLast30s'},
    {'1': 'rate_mbps_last_15s', '3': 15, '4': 1, '5': 2, '10': 'rateMbpsLast15s'},
  ],
  '9': [
    {'1': 4, '2': 5},
  ],
};

@$core.Deprecated('Use wifiClientDescriptor instead')
const WifiClient_TxStats$json = {
  '1': 'TxStats',
  '2': [
    {'1': 'bytes', '3': 1, '4': 1, '5': 4, '10': 'bytes'},
    {'1': 'success_bytes', '3': 2, '4': 1, '5': 4, '10': 'successBytes'},
    {'1': 'nss', '3': 3, '4': 1, '5': 5, '10': 'nss'},
    {'1': 'mcs', '3': 5, '4': 1, '5': 13, '10': 'mcs'},
    {'1': 'bandwidth', '3': 6, '4': 1, '5': 13, '10': 'bandwidth'},
    {'1': 'guard_ns', '3': 7, '4': 1, '5': 13, '10': 'guardNs'},
    {'1': 'rate_mbps', '3': 8, '4': 1, '5': 13, '10': 'rateMbps'},
    {'1': 'airtime_fraction_last_1s', '3': 9, '4': 1, '5': 2, '10': 'airtimeFractionLast1s'},
    {'1': 'phy_mode', '3': 10, '4': 1, '5': 13, '10': 'phyMode'},
    {'1': 'rate_mbps_last_30s', '3': 11, '4': 1, '5': 2, '10': 'rateMbpsLast30s'},
    {'1': 'rate_mbps_last_15s', '3': 12, '4': 1, '5': 2, '10': 'rateMbpsLast15s'},
  ],
  '9': [
    {'1': 4, '2': 5},
  ],
};

@$core.Deprecated('Use wifiClientDescriptor instead')
const WifiClient_Interface$json = {
  '1': 'Interface',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'ETH', '2': 1},
    {'1': 'RF_2GHZ', '2': 2},
    {'1': 'RF_5GHZ', '2': 3},
    {'1': 'RF_5GHZ_HIGH', '2': 4},
  ],
};

@$core.Deprecated('Use wifiClientDescriptor instead')
const WifiClient_Role$json = {
  '1': 'Role',
  '2': [
    {'1': 'ROLE_UNKNOWN', '2': 0},
    {'1': 'CLIENT', '2': 1},
    {'1': 'REPEATER', '2': 2},
    {'1': 'CONTROLLER', '2': 3},
  ],
};

/// Descriptor for `WifiClient`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiClientDescriptor = $convert.base64Decode(
    'CgpXaWZpQ2xpZW50EhIKBG5hbWUYASABKAlSBG5hbWUSHwoLbWFjX2FkZHJlc3MYAiABKAlSCm'
    '1hY0FkZHJlc3MSHQoKaXBfYWRkcmVzcxgDIAEoCVIJaXBBZGRyZXNzEicKD3NpZ25hbF9zdHJl'
    'bmd0aBgEIAEoAlIOc2lnbmFsU3RyZW5ndGgSQAoIcnhfc3RhdHMYBSABKAsyJS5TcGFjZVguQV'
    'BJLkRldmljZS5XaWZpQ2xpZW50LlJ4U3RhdHNSB3J4U3RhdHMSQAoIdHhfc3RhdHMYBiABKAsy'
    'JS5TcGFjZVguQVBJLkRldmljZS5XaWZpQ2xpZW50LlR4U3RhdHNSB3R4U3RhdHMSKgoRYXNzb2'
    'NpYXRlZF90aW1lX3MYByABKA1SD2Fzc29jaWF0ZWRUaW1lUxIZCghtb2RlX3N0chgIIAEoCVIH'
    'bW9kZVN0chI9CgVpZmFjZRgJIAEoDjInLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlDbGllbnQuSW'
    '50ZXJmYWNlUgVpZmFjZRIQCgNzbnIYCiABKAJSA3NuchIWCgZwc21vZGUYCyABKAVSBnBzbW9k'
    'ZRIjCg1jaGFubmVsX3dpZHRoGAwgASgNUgxjaGFubmVsV2lkdGgSMAoUdXBzdHJlYW1fbWFjX2'
    'FkZHJlc3MYDSABKAlSEnVwc3RyZWFtTWFjQWRkcmVzcxI2CgRyb2xlGA4gASgOMiIuU3BhY2VY'
    'LkFQSS5EZXZpY2UuV2lmaUNsaWVudC5Sb2xlUgRyb2xlEhsKCWRldmljZV9pZBgPIAEoCVIIZG'
    'V2aWNlSWQSHQoKc3dxX2NoZWNrcxgQIAEoDVIJc3dxQ2hlY2tzEi8KFHN3cV9jaGVja3Nfbm9u'
    'X2VtcHR5GBEgASgNUhFzd3FDaGVja3NOb25FbXB0eRImCg9taWJfc3RlZXJfc3RhdGUYEiABKA'
    '1SDW1pYlN0ZWVyU3RhdGUSKAoQbWliX3N0ZWVyX21ldGhvZBgTIAEoDVIObWliU3RlZXJNZXRo'
    'b2QSIQoMYnRtX3JlcXVlc3RzGBQgASgNUgtidG1SZXF1ZXN0cxIwChRidG1fcmVxdWVzdHNfc3'
    'VjY2VzcxgVIAEoDVISYnRtUmVxdWVzdHNTdWNjZXNzEhYKBmRvbWFpbhgWIAEoCVIGZG9tYWlu'
    'EiUKDmRvdDExdl9zdXBwb3J0GBcgASgIUg1kb3QxMXZTdXBwb3J0Eh0KCmlmYWNlX25hbWUYGi'
    'ABKAlSCWlmYWNlTmFtZRI4ChlzdGVlcl9yZXFfc3VjY2Vzc19sYXN0XzFoGBsgASgNUhVzdGVl'
    'clJlcVN1Y2Nlc3NMYXN0MWgSMgoWc3RlZXJfcmVxX2ZhaWxfbGFzdF8xaBgcIAEoDVISc3RlZX'
    'JSZXFGYWlsTGFzdDFoEkYKIXN0ZWVyX3JlcV9mYWlsX2FuZF9kaXNzb2NfbGFzdF8xaBgdIAEo'
    'DVIbc3RlZXJSZXFGYWlsQW5kRGlzc29jTGFzdDFoEh8KC3N0ZWVyX3N0YXRlGB4gASgNUgpzdG'
    'VlclN0YXRlEh0KCmdpdmVuX25hbWUYHyABKAlSCWdpdmVuTmFtZRIwChRob3BzX2Zyb21fY29u'
    'dHJvbGxlchggIAEoDVISaG9wc0Zyb21Db250cm9sbGVyEkUKIGVzdF90eF9yYXRlX21icHNfZn'
    'JvbV9jb250cm9sbGVyGCEgASgCUhtlc3RUeFJhdGVNYnBzRnJvbUNvbnRyb2xsZXISRQogZXN0'
    'X3J4X3JhdGVfbWJwc19mcm9tX2NvbnRyb2xsZXIYIiABKAJSG2VzdFJ4UmF0ZU1icHNGcm9tQ2'
    '9udHJvbGxlchIpChBoYXJkd2FyZV92ZXJzaW9uGCUgASgJUg9oYXJkd2FyZVZlcnNpb24SKQoQ'
    'c29mdHdhcmVfdmVyc2lvbhgmIAEoCVIPc29mdHdhcmVWZXJzaW9uEh8KC2FwaV92ZXJzaW9uGC'
    'cgASgNUgphcGlWZXJzaW9uEkwKDHBpbmdfbWV0cmljcxgoIAEoCzIpLlNwYWNlWC5BUEkuRGV2'
    'aWNlLldpZmlDbGllbnQuUGluZ01ldHJpY3NSC3BpbmdNZXRyaWNzEiUKDmlwdjZfYWRkcmVzc2'
    'VzGCkgAygJUg1pcHY2QWRkcmVzc2VzEhgKB2Jsb2NrZWQYKiABKAhSB2Jsb2NrZWQSGwoJY2xp'
    'ZW50X2lkGCsgASgNUghjbGllbnRJZBJMCgxmcWNvZGVsX2luZm8YLCABKAsyKS5TcGFjZVguQV'
    'BJLkRldmljZS5XaWZpQ2xpZW50LkZxY29kZWxJbmZvUgtmcWNvZGVsSW5mbxIjCg5ub19kYXRh'
    'X2lkbGVfcxgtIAEoDVILbm9EYXRhSWRsZVMSKgoRZGhjcF9sZWFzZV9hY3RpdmUYLiABKAhSD2'
    'RoY3BMZWFzZUFjdGl2ZRIsChJkaGNwX2xlYXNlX3JlbmV3ZWQYLyABKAhSEGRoY3BMZWFzZVJl'
    'bmV3ZWQalAMKC0ZxY29kZWxJbmZvEiAKDGVucXNfaGlfcHJpbxgBIAEoBFIKZW5xc0hpUHJpbx'
    'IhCgxlbnFzX2ZxY29kZWwYAiABKARSC2VucXNGcWNvZGVsEhkKCGVucXNfbmV3GAMgASgEUgdl'
    'bnFzTmV3EhkKCGVucXNfb2xkGAQgASgEUgdlbnFzT2xkEiEKDGVucXNfZHJvcHBlZBgFIAEoBF'
    'ILZW5xc0Ryb3BwZWQSGQoIZGVxc19uZXcYBiABKARSB2RlcXNOZXcSGQoIZGVxc19vbGQYByAB'
    'KARSB2RlcXNPbGQSIgoNZGVxc19mbG93X25ldxgIIAEoBFILZGVxc0Zsb3dOZXcSMQoVZGVxc1'
    '9mbG93X29sZF9kZWZpY2l0GAkgASgEUhJkZXFzRmxvd09sZERlZmljaXQSNwoYZGVxc19mbG93'
    'X29sZF9zdGFydmF0aW9uGAogASgEUhVkZXFzRmxvd09sZFN0YXJ2YXRpb24SIQoMZGVxc19kcm'
    '9wcGVkGAsgASgEUgtkZXFzRHJvcHBlZBqoAQoLUGluZ01ldHJpY3MSKwoSaW5fdW5oYXBweV9o'
    'b3VyXzJzGAEgASgIUg9pblVuaGFwcHlIb3VyMnMSKwoSaW5fdW5oYXBweV9ob3VyXzVzGAIgAS'
    'gIUg9pblVuaGFwcHlIb3VyNXMSIAoMZHJvcF9yYXRlXzVtGAMgASgCUgpkcm9wUmF0ZTVtEh0K'
    'CmxhdGVuY3lfNW0YBCABKAJSCWxhdGVuY3k1bRqJBAoHUnhTdGF0cxIUCgVieXRlcxgBIAEoBF'
    'IFYnl0ZXMSIQoMY291bnRfZXJyb3JzGAIgASgEUgtjb3VudEVycm9ycxIQCgNuc3MYAyABKAVS'
    'A25zcxIQCgNtY3MYBSABKA1SA21jcxIcCgliYW5kd2lkdGgYBiABKA1SCWJhbmR3aWR0aBIZCg'
    'hndWFyZF9ucxgHIAEoDVIHZ3VhcmROcxIbCglyYXRlX21icHMYCCABKA1SCHJhdGVNYnBzEjcK'
    'GGFpcnRpbWVfZnJhY3Rpb25fbGFzdF8xcxgJIAEoAlIVYWlydGltZUZyYWN0aW9uTGFzdDFzEi'
    'cKD3NhbXBsZWRfcGFja2V0cxgKIAEoDVIOc2FtcGxlZFBhY2tldHMSNgoXc2FtcGxlZF9wYWNr'
    'ZXRzX3JldHJpZWQYCyABKA1SFXNhbXBsZWRQYWNrZXRzUmV0cmllZBI2ChdzYW1wbGVkX3BhY2'
    'tldHNfZHJvcHBlZBgMIAEoDVIVc2FtcGxlZFBhY2tldHNEcm9wcGVkEhkKCHBoeV9tb2RlGA0g'
    'ASgNUgdwaHlNb2RlEisKEnJhdGVfbWJwc19sYXN0XzMwcxgOIAEoAlIPcmF0ZU1icHNMYXN0Mz'
    'BzEisKEnJhdGVfbWJwc19sYXN0XzE1cxgPIAEoAlIPcmF0ZU1icHNMYXN0MTVzSgQIBBAFGvIC'
    'CgdUeFN0YXRzEhQKBWJ5dGVzGAEgASgEUgVieXRlcxIjCg1zdWNjZXNzX2J5dGVzGAIgASgEUg'
    'xzdWNjZXNzQnl0ZXMSEAoDbnNzGAMgASgFUgNuc3MSEAoDbWNzGAUgASgNUgNtY3MSHAoJYmFu'
    'ZHdpZHRoGAYgASgNUgliYW5kd2lkdGgSGQoIZ3VhcmRfbnMYByABKA1SB2d1YXJkTnMSGwoJcm'
    'F0ZV9tYnBzGAggASgNUghyYXRlTWJwcxI3ChhhaXJ0aW1lX2ZyYWN0aW9uX2xhc3RfMXMYCSAB'
    'KAJSFWFpcnRpbWVGcmFjdGlvbkxhc3QxcxIZCghwaHlfbW9kZRgKIAEoDVIHcGh5TW9kZRIrCh'
    'JyYXRlX21icHNfbGFzdF8zMHMYCyABKAJSD3JhdGVNYnBzTGFzdDMwcxIrChJyYXRlX21icHNf'
    'bGFzdF8xNXMYDCABKAJSD3JhdGVNYnBzTGFzdDE1c0oECAQQBSJNCglJbnRlcmZhY2USCwoHVU'
    '5LTk9XThAAEgcKA0VUSBABEgsKB1JGXzJHSFoQAhILCgdSRl81R0haEAMSEAoMUkZfNUdIWl9I'
    'SUdIEAQiQgoEUm9sZRIQCgxST0xFX1VOS05PV04QABIKCgZDTElFTlQQARIMCghSRVBFQVRFUh'
    'ACEg4KCkNPTlRST0xMRVIQAw==');

@$core.Deprecated('Use wifiSetupResponseDescriptor instead')
const WifiSetupResponse$json = {
  '1': 'WifiSetupResponse',
};

/// Descriptor for `WifiSetupResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSetupResponseDescriptor = $convert.base64Decode(
    'ChFXaWZpU2V0dXBSZXNwb25zZQ==');

@$core.Deprecated('Use wifiGetStatusResponseDescriptor instead')
const WifiGetStatusResponse$json = {
  '1': 'WifiGetStatusResponse',
  '2': [
    {'1': 'captive_portal_enabled', '3': 1, '4': 1, '5': 8, '10': 'captivePortalEnabled'},
    {'1': 'device_info', '3': 3, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DeviceInfo', '10': 'deviceInfo'},
    {'1': 'device_state', '3': 4, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DeviceState', '10': 'deviceState'},
    {'1': 'ipv4_wan_address', '3': 1003, '4': 1, '5': 9, '10': 'ipv4WanAddress'},
    {'1': 'ping_drop_rate', '3': 1004, '4': 1, '5': 2, '10': 'pingDropRate'},
    {'1': 'ping_latency_ms', '3': 1005, '4': 1, '5': 2, '10': 'pingLatencyMs'},
    {
      '1': 'rf_2ghz_status',
      '3': 1008,
      '4': 1,
      '5': 11,
      '6': '.SpaceX.API.Device.WifiBandStatus',
      '8': {'3': true},
      '10': 'rf2ghzStatus',
    },
    {
      '1': 'rf_5ghz_status',
      '3': 1009,
      '4': 1,
      '5': 11,
      '6': '.SpaceX.API.Device.WifiBandStatus',
      '8': {'3': true},
      '10': 'rf5ghzStatus',
    },
    {'1': 'alerts', '3': 1010, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiAlerts', '10': 'alerts'},
    {'1': 'is_aviation', '3': 1011, '4': 1, '5': 8, '10': 'isAviation'},
    {'1': 'dish_ping_drop_rate', '3': 1012, '4': 1, '5': 2, '10': 'dishPingDropRate'},
    {'1': 'dish_ping_latency_ms', '3': 1013, '4': 1, '5': 2, '10': 'dishPingLatencyMs'},
    {'1': 'pop_ping_drop_rate', '3': 1014, '4': 1, '5': 2, '10': 'popPingDropRate'},
    {'1': 'pop_ping_latency_ms', '3': 1015, '4': 1, '5': 2, '10': 'popPingLatencyMs'},
    {'1': 'is_aviation_conformed', '3': 1016, '4': 1, '5': 8, '10': 'isAviationConformed'},
    {'1': 'ipv6_wan_addresses', '3': 1017, '4': 3, '5': 9, '10': 'ipv6WanAddresses'},
    {'1': 'dish_ping_drop_rate_5m', '3': 1018, '4': 1, '5': 2, '10': 'dishPingDropRate5m'},
    {'1': 'dhcp_servers', '3': 1019, '4': 3, '5': 11, '6': '.SpaceX.API.Device.DhcpServer', '10': 'dhcpServers'},
    {'1': 'pop_ping_drop_rate_5m', '3': 1020, '4': 1, '5': 2, '10': 'popPingDropRate5m'},
    {'1': 'ping_drop_rate_5m', '3': 1021, '4': 1, '5': 2, '10': 'pingDropRate5m'},
    {'1': 'poe_stats', '3': 1022, '4': 1, '5': 11, '6': '.SpaceX.API.Device.PoeStats', '10': 'poeStats'},
    {'1': 'dish_id', '3': 1023, '4': 1, '5': 9, '10': 'dishId'},
    {'1': 'utc_ns', '3': 1024, '4': 1, '5': 3, '10': 'utcNs'},
    {'1': 'software_update_stats', '3': 1025, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSoftwareUpdateStats', '10': 'softwareUpdateStats'},
    {'1': 'setup_requirement', '3': 1026, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSetupRequirement', '10': 'setupRequirement'},
    {'1': 'config', '3': 2000, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiConfig', '10': 'config'},
    {'1': 'clients', '3': 3000, '4': 3, '5': 11, '6': '.SpaceX.API.Device.WifiClient', '10': 'clients'},
    {'1': 'has_client_index', '3': 3001, '4': 1, '5': 8, '10': 'hasClientIndex'},
    {'1': 'client_index', '3': 3002, '4': 1, '5': 5, '10': 'clientIndex'},
    {'1': 'radius_stats', '3': 3003, '4': 1, '5': 11, '6': '.SpaceX.API.Device.RadiusStatsMap', '10': 'radiusStats'},
  ],
  '9': [
    {'1': 2, '2': 3},
    {'1': 5, '2': 6},
    {'1': 6, '2': 7},
    {'1': 7, '2': 8},
    {'1': 1001, '2': 1002},
    {'1': 1002, '2': 1003},
    {'1': 1006, '2': 1007},
    {'1': 1007, '2': 1008},
  ],
};

/// Descriptor for `WifiGetStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetStatusResponseDescriptor = $convert.base64Decode(
    'ChVXaWZpR2V0U3RhdHVzUmVzcG9uc2USNAoWY2FwdGl2ZV9wb3J0YWxfZW5hYmxlZBgBIAEoCF'
    'IUY2FwdGl2ZVBvcnRhbEVuYWJsZWQSPgoLZGV2aWNlX2luZm8YAyABKAsyHS5TcGFjZVguQVBJ'
    'LkRldmljZS5EZXZpY2VJbmZvUgpkZXZpY2VJbmZvEkEKDGRldmljZV9zdGF0ZRgEIAEoCzIeLl'
    'NwYWNlWC5BUEkuRGV2aWNlLkRldmljZVN0YXRlUgtkZXZpY2VTdGF0ZRIpChBpcHY0X3dhbl9h'
    'ZGRyZXNzGOsHIAEoCVIOaXB2NFdhbkFkZHJlc3MSJQoOcGluZ19kcm9wX3JhdGUY7AcgASgCUg'
    'xwaW5nRHJvcFJhdGUSJwoPcGluZ19sYXRlbmN5X21zGO0HIAEoAlINcGluZ0xhdGVuY3lNcxJM'
    'Cg5yZl8yZ2h6X3N0YXR1cxjwByABKAsyIS5TcGFjZVguQVBJLkRldmljZS5XaWZpQmFuZFN0YX'
    'R1c0ICGAFSDHJmMmdoelN0YXR1cxJMCg5yZl81Z2h6X3N0YXR1cxjxByABKAsyIS5TcGFjZVgu'
    'QVBJLkRldmljZS5XaWZpQmFuZFN0YXR1c0ICGAFSDHJmNWdoelN0YXR1cxI2CgZhbGVydHMY8g'
    'cgASgLMh0uU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUFsZXJ0c1IGYWxlcnRzEiAKC2lzX2F2aWF0'
    'aW9uGPMHIAEoCFIKaXNBdmlhdGlvbhIuChNkaXNoX3BpbmdfZHJvcF9yYXRlGPQHIAEoAlIQZG'
    'lzaFBpbmdEcm9wUmF0ZRIwChRkaXNoX3BpbmdfbGF0ZW5jeV9tcxj1ByABKAJSEWRpc2hQaW5n'
    'TGF0ZW5jeU1zEiwKEnBvcF9waW5nX2Ryb3BfcmF0ZRj2ByABKAJSD3BvcFBpbmdEcm9wUmF0ZR'
    'IuChNwb3BfcGluZ19sYXRlbmN5X21zGPcHIAEoAlIQcG9wUGluZ0xhdGVuY3lNcxIzChVpc19h'
    'dmlhdGlvbl9jb25mb3JtZWQY+AcgASgIUhNpc0F2aWF0aW9uQ29uZm9ybWVkEi0KEmlwdjZfd2'
    'FuX2FkZHJlc3Nlcxj5ByADKAlSEGlwdjZXYW5BZGRyZXNzZXMSMwoWZGlzaF9waW5nX2Ryb3Bf'
    'cmF0ZV81bRj6ByABKAJSEmRpc2hQaW5nRHJvcFJhdGU1bRJBCgxkaGNwX3NlcnZlcnMY+wcgAy'
    'gLMh0uU3BhY2VYLkFQSS5EZXZpY2UuRGhjcFNlcnZlclILZGhjcFNlcnZlcnMSMQoVcG9wX3Bp'
    'bmdfZHJvcF9yYXRlXzVtGPwHIAEoAlIRcG9wUGluZ0Ryb3BSYXRlNW0SKgoRcGluZ19kcm9wX3'
    'JhdGVfNW0Y/QcgASgCUg5waW5nRHJvcFJhdGU1bRI5Cglwb2Vfc3RhdHMY/gcgASgLMhsuU3Bh'
    'Y2VYLkFQSS5EZXZpY2UuUG9lU3RhdHNSCHBvZVN0YXRzEhgKB2Rpc2hfaWQY/wcgASgJUgZkaX'
    'NoSWQSFgoGdXRjX25zGIAIIAEoA1IFdXRjTnMSXwoVc29mdHdhcmVfdXBkYXRlX3N0YXRzGIEI'
    'IAEoCzIqLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlTb2Z0d2FyZVVwZGF0ZVN0YXRzUhNzb2Z0d2'
    'FyZVVwZGF0ZVN0YXRzElUKEXNldHVwX3JlcXVpcmVtZW50GIIIIAEoCzInLlNwYWNlWC5BUEku'
    'RGV2aWNlLldpZmlTZXR1cFJlcXVpcmVtZW50UhBzZXR1cFJlcXVpcmVtZW50EjYKBmNvbmZpZx'
    'jQDyABKAsyHS5TcGFjZVguQVBJLkRldmljZS5XaWZpQ29uZmlnUgZjb25maWcSOAoHY2xpZW50'
    'cxi4FyADKAsyHS5TcGFjZVguQVBJLkRldmljZS5XaWZpQ2xpZW50UgdjbGllbnRzEikKEGhhc1'
    '9jbGllbnRfaW5kZXgYuRcgASgIUg5oYXNDbGllbnRJbmRleBIiCgxjbGllbnRfaW5kZXgYuhcg'
    'ASgFUgtjbGllbnRJbmRleBJFCgxyYWRpdXNfc3RhdHMYuxcgASgLMiEuU3BhY2VYLkFQSS5EZX'
    'ZpY2UuUmFkaXVzU3RhdHNNYXBSC3JhZGl1c1N0YXRzSgQIAhADSgQIBRAGSgQIBhAHSgQIBxAI'
    'SgYI6QcQ6gdKBgjqBxDrB0oGCO4HEO8HSgYI7wcQ8Ac=');

@$core.Deprecated('Use wifiBandStatusDescriptor instead')
const WifiBandStatus$json = {
  '1': 'WifiBandStatus',
  '2': [
    {'1': 'chan_busy_time_fraction', '3': 1, '4': 1, '5': 2, '10': 'chanBusyTimeFraction'},
    {'1': 'tx_air_time_fraction', '3': 2, '4': 1, '5': 2, '10': 'txAirTimeFraction'},
    {'1': 'rx_air_time_fraction', '3': 3, '4': 1, '5': 2, '10': 'rxAirTimeFraction'},
    {'1': 'obss_air_time_fraction', '3': 4, '4': 1, '5': 2, '10': 'obssAirTimeFraction'},
    {'1': 'edcca_air_time_fraction', '3': 5, '4': 1, '5': 2, '10': 'edccaAirTimeFraction'},
  ],
};

/// Descriptor for `WifiBandStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiBandStatusDescriptor = $convert.base64Decode(
    'Cg5XaWZpQmFuZFN0YXR1cxI1ChdjaGFuX2J1c3lfdGltZV9mcmFjdGlvbhgBIAEoAlIUY2hhbk'
    'J1c3lUaW1lRnJhY3Rpb24SLwoUdHhfYWlyX3RpbWVfZnJhY3Rpb24YAiABKAJSEXR4QWlyVGlt'
    'ZUZyYWN0aW9uEi8KFHJ4X2Fpcl90aW1lX2ZyYWN0aW9uGAMgASgCUhFyeEFpclRpbWVGcmFjdG'
    'lvbhIzChZvYnNzX2Fpcl90aW1lX2ZyYWN0aW9uGAQgASgCUhNvYnNzQWlyVGltZUZyYWN0aW9u'
    'EjUKF2VkY2NhX2Fpcl90aW1lX2ZyYWN0aW9uGAUgASgCUhRlZGNjYUFpclRpbWVGcmFjdGlvbg'
    '==');

@$core.Deprecated('Use wifiAlertsDescriptor instead')
const WifiAlerts$json = {
  '1': 'WifiAlerts',
  '2': [
    {'1': 'thermal_throttle', '3': 1, '4': 1, '5': 8, '10': 'thermalThrottle'},
    {'1': 'install_pending', '3': 2, '4': 1, '5': 8, '10': 'installPending'},
    {'1': 'freshly_fused', '3': 3, '4': 1, '5': 8, '10': 'freshlyFused'},
    {'1': 'lan_eth_slow_link_10', '3': 4, '4': 1, '5': 8, '10': 'lanEthSlowLink10'},
    {'1': 'lan_eth_slow_link_100', '3': 5, '4': 1, '5': 8, '10': 'lanEthSlowLink100'},
    {'1': 'wan_eth_poor_connection', '3': 10, '4': 1, '5': 8, '10': 'wanEthPoorConnection'},
    {'1': 'mesh_topology_changing_often', '3': 11, '4': 1, '5': 8, '10': 'meshTopologyChangingOften'},
    {'1': 'mesh_unreliable_backhaul', '3': 12, '4': 1, '5': 8, '10': 'meshUnreliableBackhaul'},
    {'1': 'radius_missing_process', '3': 13, '4': 1, '5': 8, '10': 'radiusMissingProcess'},
    {'1': 'eth_switch_error', '3': 14, '4': 1, '5': 8, '10': 'ethSwitchError'},
    {'1': 'poe_on_dish_unreachable', '3': 15, '4': 1, '5': 8, '10': 'poeOnDishUnreachable'},
    {'1': 'poe_fuse_blown', '3': 16, '4': 1, '5': 8, '10': 'poeFuseBlown'},
    {'1': 'poe_router_overcurrent', '3': 17, '4': 1, '5': 8, '10': 'poeRouterOvercurrent'},
    {'1': 'poe_off_current_nominal', '3': 18, '4': 1, '5': 8, '10': 'poeOffCurrentNominal'},
    {'1': 'poe_vin_overvoltage', '3': 19, '4': 1, '5': 8, '10': 'poeVinOvervoltage'},
    {'1': 'poe_vin_undervoltage', '3': 20, '4': 1, '5': 8, '10': 'poeVinUndervoltage'},
  ],
  '9': [
    {'1': 6, '2': 7},
    {'1': 7, '2': 8},
    {'1': 8, '2': 9},
    {'1': 9, '2': 10},
  ],
  '10': ['inconsistent_2ghz_antennae_performance_15db', 'inconsistent_5ghz_antennae_performance_15db', 'poor_2ghz_antennae_performance_80db', 'poor_5ghz_antennae_performance_80db'],
};

/// Descriptor for `WifiAlerts`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiAlertsDescriptor = $convert.base64Decode(
    'CgpXaWZpQWxlcnRzEikKEHRoZXJtYWxfdGhyb3R0bGUYASABKAhSD3RoZXJtYWxUaHJvdHRsZR'
    'InCg9pbnN0YWxsX3BlbmRpbmcYAiABKAhSDmluc3RhbGxQZW5kaW5nEiMKDWZyZXNobHlfZnVz'
    'ZWQYAyABKAhSDGZyZXNobHlGdXNlZBIuChRsYW5fZXRoX3Nsb3dfbGlua18xMBgEIAEoCFIQbG'
    'FuRXRoU2xvd0xpbmsxMBIwChVsYW5fZXRoX3Nsb3dfbGlua18xMDAYBSABKAhSEWxhbkV0aFNs'
    'b3dMaW5rMTAwEjUKF3dhbl9ldGhfcG9vcl9jb25uZWN0aW9uGAogASgIUhR3YW5FdGhQb29yQ2'
    '9ubmVjdGlvbhI/ChxtZXNoX3RvcG9sb2d5X2NoYW5naW5nX29mdGVuGAsgASgIUhltZXNoVG9w'
    'b2xvZ3lDaGFuZ2luZ09mdGVuEjgKGG1lc2hfdW5yZWxpYWJsZV9iYWNraGF1bBgMIAEoCFIWbW'
    'VzaFVucmVsaWFibGVCYWNraGF1bBI0ChZyYWRpdXNfbWlzc2luZ19wcm9jZXNzGA0gASgIUhRy'
    'YWRpdXNNaXNzaW5nUHJvY2VzcxIoChBldGhfc3dpdGNoX2Vycm9yGA4gASgIUg5ldGhTd2l0Y2'
    'hFcnJvchI1Chdwb2Vfb25fZGlzaF91bnJlYWNoYWJsZRgPIAEoCFIUcG9lT25EaXNoVW5yZWFj'
    'aGFibGUSJAoOcG9lX2Z1c2VfYmxvd24YECABKAhSDHBvZUZ1c2VCbG93bhI0ChZwb2Vfcm91dG'
    'VyX292ZXJjdXJyZW50GBEgASgIUhRwb2VSb3V0ZXJPdmVyY3VycmVudBI1Chdwb2Vfb2ZmX2N1'
    'cnJlbnRfbm9taW5hbBgSIAEoCFIUcG9lT2ZmQ3VycmVudE5vbWluYWwSLgoTcG9lX3Zpbl9vdm'
    'Vydm9sdGFnZRgTIAEoCFIRcG9lVmluT3ZlcnZvbHRhZ2USMAoUcG9lX3Zpbl91bmRlcnZvbHRh'
    'Z2UYFCABKAhSEnBvZVZpblVuZGVydm9sdGFnZUoECAYQB0oECAcQCEoECAgQCUoECAkQClIraW'
    '5jb25zaXN0ZW50XzJnaHpfYW50ZW5uYWVfcGVyZm9ybWFuY2VfMTVkYlIraW5jb25zaXN0ZW50'
    'XzVnaHpfYW50ZW5uYWVfcGVyZm9ybWFuY2VfMTVkYlIjcG9vcl8yZ2h6X2FudGVubmFlX3Blcm'
    'Zvcm1hbmNlXzgwZGJSI3Bvb3JfNWdoel9hbnRlbm5hZV9wZXJmb3JtYW5jZV84MGRi');

@$core.Deprecated('Use dhcpServerDescriptor instead')
const DhcpServer$json = {
  '1': 'DhcpServer',
  '2': [
    {'1': 'domain', '3': 1, '4': 1, '5': 9, '10': 'domain'},
    {'1': 'subnet', '3': 2, '4': 1, '5': 9, '10': 'subnet'},
    {'1': 'leases', '3': 3, '4': 3, '5': 11, '6': '.SpaceX.API.Device.DhcpLease', '10': 'leases'},
  ],
};

/// Descriptor for `DhcpServer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dhcpServerDescriptor = $convert.base64Decode(
    'CgpEaGNwU2VydmVyEhYKBmRvbWFpbhgBIAEoCVIGZG9tYWluEhYKBnN1Ym5ldBgCIAEoCVIGc3'
    'VibmV0EjQKBmxlYXNlcxgDIAMoCzIcLlNwYWNlWC5BUEkuRGV2aWNlLkRoY3BMZWFzZVIGbGVh'
    'c2Vz');

@$core.Deprecated('Use dhcpLeaseDescriptor instead')
const DhcpLease$json = {
  '1': 'DhcpLease',
  '2': [
    {'1': 'ip_address', '3': 1, '4': 1, '5': 9, '10': 'ipAddress'},
    {'1': 'mac_address', '3': 2, '4': 1, '5': 9, '10': 'macAddress'},
    {'1': 'hostname', '3': 3, '4': 1, '5': 9, '10': 'hostname'},
    {'1': 'expires_time', '3': 4, '4': 1, '5': 9, '10': 'expiresTime'},
    {'1': 'active', '3': 5, '4': 1, '5': 8, '10': 'active'},
    {'1': 'client_id', '3': 6, '4': 1, '5': 13, '10': 'clientId'},
  ],
};

/// Descriptor for `DhcpLease`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dhcpLeaseDescriptor = $convert.base64Decode(
    'CglEaGNwTGVhc2USHQoKaXBfYWRkcmVzcxgBIAEoCVIJaXBBZGRyZXNzEh8KC21hY19hZGRyZX'
    'NzGAIgASgJUgptYWNBZGRyZXNzEhoKCGhvc3RuYW1lGAMgASgJUghob3N0bmFtZRIhCgxleHBp'
    'cmVzX3RpbWUYBCABKAlSC2V4cGlyZXNUaW1lEhYKBmFjdGl2ZRgFIAEoCFIGYWN0aXZlEhsKCW'
    'NsaWVudF9pZBgGIAEoDVIIY2xpZW50SWQ=');

@$core.Deprecated('Use poeStatsDescriptor instead')
const PoeStats$json = {
  '1': 'PoeStats',
  '2': [
    {'1': 'poe_state', '3': 1, '4': 1, '5': 14, '6': '.SpaceX.API.Device.PoeState', '10': 'poeState'},
    {'1': 'poe_power', '3': 2, '4': 1, '5': 2, '10': 'poePower'},
    {'1': 'poe_faults_fast_overcurrent', '3': 3, '4': 1, '5': 13, '10': 'poeFaultsFastOvercurrent'},
    {'1': 'poe_faults_slow_overcurrent', '3': 4, '4': 1, '5': 13, '10': 'poeFaultsSlowOvercurrent'},
    {'1': 'poe_faults_overvoltage', '3': 5, '4': 1, '5': 13, '10': 'poeFaultsOvervoltage'},
    {'1': 'poe_faults_undervoltage', '3': 6, '4': 1, '5': 13, '10': 'poeFaultsUndervoltage'},
  ],
};

/// Descriptor for `PoeStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List poeStatsDescriptor = $convert.base64Decode(
    'CghQb2VTdGF0cxI4Cglwb2Vfc3RhdGUYASABKA4yGy5TcGFjZVguQVBJLkRldmljZS5Qb2VTdG'
    'F0ZVIIcG9lU3RhdGUSGwoJcG9lX3Bvd2VyGAIgASgCUghwb2VQb3dlchI9Chtwb2VfZmF1bHRz'
    'X2Zhc3Rfb3ZlcmN1cnJlbnQYAyABKA1SGHBvZUZhdWx0c0Zhc3RPdmVyY3VycmVudBI9Chtwb2'
    'VfZmF1bHRzX3Nsb3dfb3ZlcmN1cnJlbnQYBCABKA1SGHBvZUZhdWx0c1Nsb3dPdmVyY3VycmVu'
    'dBI0ChZwb2VfZmF1bHRzX292ZXJ2b2x0YWdlGAUgASgNUhRwb2VGYXVsdHNPdmVydm9sdGFnZR'
    'I2Chdwb2VfZmF1bHRzX3VuZGVydm9sdGFnZRgGIAEoDVIVcG9lRmF1bHRzVW5kZXJ2b2x0YWdl');

@$core.Deprecated('Use wifiSoftwareUpdateStatsDescriptor instead')
const WifiSoftwareUpdateStats$json = {
  '1': 'WifiSoftwareUpdateStats',
  '2': [
    {'1': 'state', '3': 1, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiSoftwareUpdateState', '10': 'state'},
    {'1': 'software_download_progress', '3': 2, '4': 1, '5': 2, '10': 'softwareDownloadProgress'},
    {'1': 'seconds_since_get_target_versions', '3': 3, '4': 1, '5': 2, '10': 'secondsSinceGetTargetVersions'},
  ],
};

/// Descriptor for `WifiSoftwareUpdateStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSoftwareUpdateStatsDescriptor = $convert.base64Decode(
    'ChdXaWZpU29mdHdhcmVVcGRhdGVTdGF0cxJACgVzdGF0ZRgBIAEoDjIqLlNwYWNlWC5BUEkuRG'
    'V2aWNlLldpZmlTb2Z0d2FyZVVwZGF0ZVN0YXRlUgVzdGF0ZRI8Chpzb2Z0d2FyZV9kb3dubG9h'
    'ZF9wcm9ncmVzcxgCIAEoAlIYc29mdHdhcmVEb3dubG9hZFByb2dyZXNzEkgKIXNlY29uZHNfc2'
    'luY2VfZ2V0X3RhcmdldF92ZXJzaW9ucxgDIAEoAlIdc2Vjb25kc1NpbmNlR2V0VGFyZ2V0VmVy'
    'c2lvbnM=');

@$core.Deprecated('Use wifiSetupRequirementDescriptor instead')
const WifiSetupRequirement$json = {
  '1': 'WifiSetupRequirement',
  '2': [
    {'1': 'state', '3': 1, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiSetupRequirementState', '10': 'state'},
    {'1': 'pause_countdown_seconds', '3': 2, '4': 1, '5': 4, '10': 'pauseCountdownSeconds'},
  ],
};

/// Descriptor for `WifiSetupRequirement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSetupRequirementDescriptor = $convert.base64Decode(
    'ChRXaWZpU2V0dXBSZXF1aXJlbWVudBJCCgVzdGF0ZRgBIAEoDjIsLlNwYWNlWC5BUEkuRGV2aW'
    'NlLldpZmlTZXR1cFJlcXVpcmVtZW50U3RhdGVSBXN0YXRlEjYKF3BhdXNlX2NvdW50ZG93bl9z'
    'ZWNvbmRzGAIgASgEUhVwYXVzZUNvdW50ZG93blNlY29uZHM=');

@$core.Deprecated('Use radiusStatsMapDescriptor instead')
const RadiusStatsMap$json = {
  '1': 'RadiusStatsMap',
  '2': [
    {'1': 'radius_stats', '3': 1, '4': 3, '5': 11, '6': '.SpaceX.API.Device.RadiusStatsMap.RadiusStatsEntry', '10': 'radiusStats'},
  ],
  '3': [RadiusStatsMap_RadiusStatsEntry$json, RadiusStatsMap_RadiusStats$json],
};

@$core.Deprecated('Use radiusStatsMapDescriptor instead')
const RadiusStatsMap_RadiusStatsEntry$json = {
  '1': 'RadiusStatsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.RadiusStatsMap.RadiusStats', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use radiusStatsMapDescriptor instead')
const RadiusStatsMap_RadiusStats$json = {
  '1': 'RadiusStats',
  '2': [
    {'1': 'iface_name', '3': 1, '4': 1, '5': 9, '10': 'ifaceName'},
    {'1': 'timeout_count', '3': 2, '4': 1, '5': 13, '10': 'timeoutCount'},
    {'1': 'access_request_count', '3': 3, '4': 1, '5': 13, '10': 'accessRequestCount'},
    {'1': 'access_accept_count', '3': 4, '4': 1, '5': 13, '10': 'accessAcceptCount'},
    {'1': 'access_reject_count', '3': 5, '4': 1, '5': 13, '10': 'accessRejectCount'},
    {'1': 'access_challenge_count', '3': 6, '4': 1, '5': 13, '10': 'accessChallengeCount'},
    {'1': 'accounting_request_count', '3': 7, '4': 1, '5': 13, '10': 'accountingRequestCount'},
    {'1': 'accounting_response_count', '3': 8, '4': 1, '5': 13, '10': 'accountingResponseCount'},
  ],
};

/// Descriptor for `RadiusStatsMap`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List radiusStatsMapDescriptor = $convert.base64Decode(
    'Cg5SYWRpdXNTdGF0c01hcBJVCgxyYWRpdXNfc3RhdHMYASADKAsyMi5TcGFjZVguQVBJLkRldm'
    'ljZS5SYWRpdXNTdGF0c01hcC5SYWRpdXNTdGF0c0VudHJ5UgtyYWRpdXNTdGF0cxptChBSYWRp'
    'dXNTdGF0c0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EkMKBXZhbHVlGAIgASgLMi0uU3BhY2VYLk'
    'FQSS5EZXZpY2UuUmFkaXVzU3RhdHNNYXAuUmFkaXVzU3RhdHNSBXZhbHVlOgI4ARqPAwoLUmFk'
    'aXVzU3RhdHMSHQoKaWZhY2VfbmFtZRgBIAEoCVIJaWZhY2VOYW1lEiMKDXRpbWVvdXRfY291bn'
    'QYAiABKA1SDHRpbWVvdXRDb3VudBIwChRhY2Nlc3NfcmVxdWVzdF9jb3VudBgDIAEoDVISYWNj'
    'ZXNzUmVxdWVzdENvdW50Ei4KE2FjY2Vzc19hY2NlcHRfY291bnQYBCABKA1SEWFjY2Vzc0FjY2'
    'VwdENvdW50Ei4KE2FjY2Vzc19yZWplY3RfY291bnQYBSABKA1SEWFjY2Vzc1JlamVjdENvdW50'
    'EjQKFmFjY2Vzc19jaGFsbGVuZ2VfY291bnQYBiABKA1SFGFjY2Vzc0NoYWxsZW5nZUNvdW50Ej'
    'gKGGFjY291bnRpbmdfcmVxdWVzdF9jb3VudBgHIAEoDVIWYWNjb3VudGluZ1JlcXVlc3RDb3Vu'
    'dBI6ChlhY2NvdW50aW5nX3Jlc3BvbnNlX2NvdW50GAggASgNUhdhY2NvdW50aW5nUmVzcG9uc2'
    'VDb3VudA==');

@$core.Deprecated('Use wifiAuthenticateResponseDescriptor instead')
const WifiAuthenticateResponse$json = {
  '1': 'WifiAuthenticateResponse',
  '2': [
    {'1': 'wifi', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.ChallengeResponse', '10': 'wifi'},
    {'1': 'dish', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.ChallengeResponse', '10': 'dish'},
  ],
};

/// Descriptor for `WifiAuthenticateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiAuthenticateResponseDescriptor = $convert.base64Decode(
    'ChhXaWZpQXV0aGVudGljYXRlUmVzcG9uc2USOAoEd2lmaRgBIAEoCzIkLlNwYWNlWC5BUEkuRG'
    'V2aWNlLkNoYWxsZW5nZVJlc3BvbnNlUgR3aWZpEjgKBGRpc2gYAiABKAsyJC5TcGFjZVguQVBJ'
    'LkRldmljZS5DaGFsbGVuZ2VSZXNwb25zZVIEZGlzaA==');

@$core.Deprecated('Use wifiGetHistoryResponseDescriptor instead')
const WifiGetHistoryResponse$json = {
  '1': 'WifiGetHistoryResponse',
  '2': [
    {'1': 'current', '3': 1, '4': 1, '5': 4, '10': 'current'},
    {'1': 'ping_drop_rate', '3': 1001, '4': 3, '5': 2, '10': 'pingDropRate'},
    {'1': 'ping_latency_ms', '3': 1002, '4': 3, '5': 2, '10': 'pingLatencyMs'},
  ],
};

/// Descriptor for `WifiGetHistoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetHistoryResponseDescriptor = $convert.base64Decode(
    'ChZXaWZpR2V0SGlzdG9yeVJlc3BvbnNlEhgKB2N1cnJlbnQYASABKARSB2N1cnJlbnQSJQoOcG'
    'luZ19kcm9wX3JhdGUY6QcgAygCUgxwaW5nRHJvcFJhdGUSJwoPcGluZ19sYXRlbmN5X21zGOoH'
    'IAMoAlINcGluZ0xhdGVuY3lNcw==');

@$core.Deprecated('Use wifiGetPingMetricsResponseDescriptor instead')
const WifiGetPingMetricsResponse$json = {
  '1': 'WifiGetPingMetricsResponse',
  '2': [
    {'1': 'internet', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.PingMetrics', '10': 'internet'},
  ],
};

/// Descriptor for `WifiGetPingMetricsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetPingMetricsResponseDescriptor = $convert.base64Decode(
    'ChpXaWZpR2V0UGluZ01ldHJpY3NSZXNwb25zZRI6CghpbnRlcm5ldBgBIAEoCzIeLlNwYWNlWC'
    '5BUEkuRGV2aWNlLlBpbmdNZXRyaWNzUghpbnRlcm5ldA==');

@$core.Deprecated('Use pingMetricsDescriptor instead')
const PingMetrics$json = {
  '1': 'PingMetrics',
  '2': [
    {'1': 'latency_mean_ms', '3': 1, '4': 1, '5': 2, '10': 'latencyMeanMs'},
    {'1': 'latency_stddev_ms', '3': 2, '4': 1, '5': 2, '10': 'latencyStddevMs'},
    {'1': 'latency_mean_ms_5m', '3': 3, '4': 1, '5': 2, '10': 'latencyMeanMs5m'},
    {'1': 'latency_mean_ms_1h', '3': 4, '4': 1, '5': 2, '10': 'latencyMeanMs1h'},
    {
      '1': 'latency_mean_ms_1d',
      '3': 5,
      '4': 1,
      '5': 2,
      '8': {'3': true},
      '10': 'latencyMeanMs1d',
    },
    {'1': 'drop_rate', '3': 6, '4': 1, '5': 2, '10': 'dropRate'},
    {'1': 'drop_rate_5m', '3': 7, '4': 1, '5': 2, '10': 'dropRate5m'},
    {'1': 'drop_rate_1h', '3': 8, '4': 1, '5': 2, '10': 'dropRate1h'},
    {'1': 'drop_rate_1d', '3': 9, '4': 1, '5': 2, '10': 'dropRate1d'},
    {'1': 'seconds_since_last_success', '3': 10, '4': 1, '5': 2, '10': 'secondsSinceLastSuccess'},
    {'1': 'seconds_since_last_1s_outage', '3': 11, '4': 1, '5': 2, '10': 'secondsSinceLast1sOutage'},
    {'1': 'seconds_since_last_5s_outage', '3': 12, '4': 1, '5': 2, '10': 'secondsSinceLast5sOutage'},
    {'1': 'happy_hours_1s_1d', '3': 13, '4': 1, '5': 2, '10': 'happyHours1s1d'},
    {'1': 'happy_hours_5s_1d', '3': 14, '4': 1, '5': 2, '10': 'happyHours5s1d'},
    {'1': 'seconds_since_last_2s_outage', '3': 15, '4': 1, '5': 2, '10': 'secondsSinceLast2sOutage'},
    {'1': 'happy_hours_2s_1d', '3': 16, '4': 1, '5': 2, '10': 'happyHours2s1d'},
    {'1': 'seconds_since_last_15s_outage', '3': 18, '4': 1, '5': 2, '10': 'secondsSinceLast15sOutage'},
    {'1': 'seconds_since_last_60s_outage', '3': 19, '4': 1, '5': 2, '10': 'secondsSinceLast60sOutage'},
    {'1': 'seconds_since_last_300s_outage', '3': 20, '4': 1, '5': 2, '10': 'secondsSinceLast300sOutage'},
  ],
};

/// Descriptor for `PingMetrics`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingMetricsDescriptor = $convert.base64Decode(
    'CgtQaW5nTWV0cmljcxImCg9sYXRlbmN5X21lYW5fbXMYASABKAJSDWxhdGVuY3lNZWFuTXMSKg'
    'oRbGF0ZW5jeV9zdGRkZXZfbXMYAiABKAJSD2xhdGVuY3lTdGRkZXZNcxIrChJsYXRlbmN5X21l'
    'YW5fbXNfNW0YAyABKAJSD2xhdGVuY3lNZWFuTXM1bRIrChJsYXRlbmN5X21lYW5fbXNfMWgYBC'
    'ABKAJSD2xhdGVuY3lNZWFuTXMxaBIvChJsYXRlbmN5X21lYW5fbXNfMWQYBSABKAJCAhgBUg9s'
    'YXRlbmN5TWVhbk1zMWQSGwoJZHJvcF9yYXRlGAYgASgCUghkcm9wUmF0ZRIgCgxkcm9wX3JhdG'
    'VfNW0YByABKAJSCmRyb3BSYXRlNW0SIAoMZHJvcF9yYXRlXzFoGAggASgCUgpkcm9wUmF0ZTFo'
    'EiAKDGRyb3BfcmF0ZV8xZBgJIAEoAlIKZHJvcFJhdGUxZBI7ChpzZWNvbmRzX3NpbmNlX2xhc3'
    'Rfc3VjY2VzcxgKIAEoAlIXc2Vjb25kc1NpbmNlTGFzdFN1Y2Nlc3MSPgocc2Vjb25kc19zaW5j'
    'ZV9sYXN0XzFzX291dGFnZRgLIAEoAlIYc2Vjb25kc1NpbmNlTGFzdDFzT3V0YWdlEj4KHHNlY2'
    '9uZHNfc2luY2VfbGFzdF81c19vdXRhZ2UYDCABKAJSGHNlY29uZHNTaW5jZUxhc3Q1c091dGFn'
    'ZRIpChFoYXBweV9ob3Vyc18xc18xZBgNIAEoAlIOaGFwcHlIb3VyczFzMWQSKQoRaGFwcHlfaG'
    '91cnNfNXNfMWQYDiABKAJSDmhhcHB5SG91cnM1czFkEj4KHHNlY29uZHNfc2luY2VfbGFzdF8y'
    'c19vdXRhZ2UYDyABKAJSGHNlY29uZHNTaW5jZUxhc3Qyc091dGFnZRIpChFoYXBweV9ob3Vyc1'
    '8yc18xZBgQIAEoAlIOaGFwcHlIb3VyczJzMWQSQAodc2Vjb25kc19zaW5jZV9sYXN0XzE1c19v'
    'dXRhZ2UYEiABKAJSGXNlY29uZHNTaW5jZUxhc3QxNXNPdXRhZ2USQAodc2Vjb25kc19zaW5jZV'
    '9sYXN0XzYwc19vdXRhZ2UYEyABKAJSGXNlY29uZHNTaW5jZUxhc3Q2MHNPdXRhZ2USQgoec2Vj'
    'b25kc19zaW5jZV9sYXN0XzMwMHNfb3V0YWdlGBQgASgCUhpzZWNvbmRzU2luY2VMYXN0MzAwc0'
    '91dGFnZQ==');

@$core.Deprecated('Use wifiGetConfigResponseDescriptor instead')
const WifiGetConfigResponse$json = {
  '1': 'WifiGetConfigResponse',
  '2': [
    {'1': 'wifi_config', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiConfig', '10': 'wifiConfig'},
  ],
};

/// Descriptor for `WifiGetConfigResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetConfigResponseDescriptor = $convert.base64Decode(
    'ChVXaWZpR2V0Q29uZmlnUmVzcG9uc2USPgoLd2lmaV9jb25maWcYASABKAsyHS5TcGFjZVguQV'
    'BJLkRldmljZS5XaWZpQ29uZmlnUgp3aWZpQ29uZmln');

@$core.Deprecated('Use wifiSetMeshDeviceTrustResponseDescriptor instead')
const WifiSetMeshDeviceTrustResponse$json = {
  '1': 'WifiSetMeshDeviceTrustResponse',
};

/// Descriptor for `WifiSetMeshDeviceTrustResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSetMeshDeviceTrustResponseDescriptor = $convert.base64Decode(
    'Ch5XaWZpU2V0TWVzaERldmljZVRydXN0UmVzcG9uc2U=');

@$core.Deprecated('Use wifiSetMeshConfigResponseDescriptor instead')
const WifiSetMeshConfigResponse$json = {
  '1': 'WifiSetMeshConfigResponse',
};

/// Descriptor for `WifiSetMeshConfigResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSetMeshConfigResponseDescriptor = $convert.base64Decode(
    'ChlXaWZpU2V0TWVzaENvbmZpZ1Jlc3BvbnNl');

@$core.Deprecated('Use wifiGetClientHistoryResponseDescriptor instead')
const WifiGetClientHistoryResponse$json = {
  '1': 'WifiGetClientHistoryResponse',
  '2': [
    {'1': 'current', '3': 1, '4': 1, '5': 4, '10': 'current'},
    {'1': 'tx_throughput_mbps', '3': 2, '4': 3, '5': 2, '10': 'txThroughputMbps'},
    {'1': 'rx_throughput_mbps', '3': 3, '4': 3, '5': 2, '10': 'rxThroughputMbps'},
    {'1': 'throughput_limited', '3': 4, '4': 3, '5': 14, '6': '.SpaceX.API.Device.WifiGetClientHistoryResponse.WifiLimitedReason', '10': 'throughputLimited'},
    {'1': 'rx_rate_mbps', '3': 5, '4': 3, '5': 2, '10': 'rxRateMbps'},
    {'1': 'rssi', '3': 6, '4': 1, '5': 12, '10': 'rssi'},
  ],
  '4': [WifiGetClientHistoryResponse_WifiLimitedReason$json],
};

@$core.Deprecated('Use wifiGetClientHistoryResponseDescriptor instead')
const WifiGetClientHistoryResponse_WifiLimitedReason$json = {
  '1': 'WifiLimitedReason',
  '2': [
    {'1': 'LIMIT_UNKNOWN', '2': 0},
    {'1': 'LIMIT_NONE', '2': 1},
    {'1': 'LIMIT_UNCLASSIFIED', '2': 2},
    {'1': 'LIMIT_DROPPED_PACKETS', '2': 3},
  ],
};

/// Descriptor for `WifiGetClientHistoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetClientHistoryResponseDescriptor = $convert.base64Decode(
    'ChxXaWZpR2V0Q2xpZW50SGlzdG9yeVJlc3BvbnNlEhgKB2N1cnJlbnQYASABKARSB2N1cnJlbn'
    'QSLAoSdHhfdGhyb3VnaHB1dF9tYnBzGAIgAygCUhB0eFRocm91Z2hwdXRNYnBzEiwKEnJ4X3Ro'
    'cm91Z2hwdXRfbWJwcxgDIAMoAlIQcnhUaHJvdWdocHV0TWJwcxJwChJ0aHJvdWdocHV0X2xpbW'
    'l0ZWQYBCADKA4yQS5TcGFjZVguQVBJLkRldmljZS5XaWZpR2V0Q2xpZW50SGlzdG9yeVJlc3Bv'
    'bnNlLldpZmlMaW1pdGVkUmVhc29uUhF0aHJvdWdocHV0TGltaXRlZBIgCgxyeF9yYXRlX21icH'
    'MYBSADKAJSCnJ4UmF0ZU1icHMSEgoEcnNzaRgGIAEoDFIEcnNzaSJpChFXaWZpTGltaXRlZFJl'
    'YXNvbhIRCg1MSU1JVF9VTktOT1dOEAASDgoKTElNSVRfTk9ORRABEhYKEkxJTUlUX1VOQ0xBU1'
    'NJRklFRBACEhkKFUxJTUlUX0RST1BQRURfUEFDS0VUUxAD');

@$core.Deprecated('Use wifiSelfTestResponseDescriptor instead')
const WifiSelfTestResponse$json = {
  '1': 'WifiSelfTestResponse',
  '2': [
    {'1': 'self_test', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSelfTest', '10': 'selfTest'},
    {'1': 'json', '3': 2, '4': 1, '5': 9, '10': 'json'},
  ],
};

/// Descriptor for `WifiSelfTestResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSelfTestResponseDescriptor = $convert.base64Decode(
    'ChRXaWZpU2VsZlRlc3RSZXNwb25zZRI8CglzZWxmX3Rlc3QYASABKAsyHy5TcGFjZVguQVBJLk'
    'RldmljZS5XaWZpU2VsZlRlc3RSCHNlbGZUZXN0EhIKBGpzb24YAiABKAlSBGpzb24=');

@$core.Deprecated('Use wifiSelfTestDescriptor instead')
const WifiSelfTest$json = {
  '1': 'WifiSelfTest',
  '2': [
    {'1': 'total_success', '3': 1, '4': 1, '5': 8, '10': 'totalSuccess'},
    {'1': 'fused', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSelfTest.TestResult', '10': 'fused'},
    {'1': 'eth_phys', '3': 3, '4': 3, '5': 11, '6': '.SpaceX.API.Device.WifiSelfTest.TestResult', '10': 'ethPhys'},
    {'1': 'pcis', '3': 4, '4': 3, '5': 11, '6': '.SpaceX.API.Device.WifiSelfTest.TestResult', '10': 'pcis'},
    {'1': 'bl2_prod', '3': 5, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSelfTest.TestResult', '10': 'bl2Prod'},
  ],
  '3': [WifiSelfTest_TestResult$json],
};

@$core.Deprecated('Use wifiSelfTestDescriptor instead')
const WifiSelfTest_TestResult$json = {
  '1': 'TestResult',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'success', '3': 2, '4': 1, '5': 8, '10': 'success'},
    {'1': 'failure_reason', '3': 3, '4': 1, '5': 9, '10': 'failureReason'},
  ],
};

/// Descriptor for `WifiSelfTest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSelfTestDescriptor = $convert.base64Decode(
    'CgxXaWZpU2VsZlRlc3QSIwoNdG90YWxfc3VjY2VzcxgBIAEoCFIMdG90YWxTdWNjZXNzEkAKBW'
    'Z1c2VkGAIgASgLMiouU3BhY2VYLkFQSS5EZXZpY2UuV2lmaVNlbGZUZXN0LlRlc3RSZXN1bHRS'
    'BWZ1c2VkEkUKCGV0aF9waHlzGAMgAygLMiouU3BhY2VYLkFQSS5EZXZpY2UuV2lmaVNlbGZUZX'
    'N0LlRlc3RSZXN1bHRSB2V0aFBoeXMSPgoEcGNpcxgEIAMoCzIqLlNwYWNlWC5BUEkuRGV2aWNl'
    'LldpZmlTZWxmVGVzdC5UZXN0UmVzdWx0UgRwY2lzEkUKCGJsMl9wcm9kGAUgASgLMiouU3BhY2'
    'VYLkFQSS5EZXZpY2UuV2lmaVNlbGZUZXN0LlRlc3RSZXN1bHRSB2JsMlByb2QaYQoKVGVzdFJl'
    'c3VsdBISCgRuYW1lGAEgASgJUgRuYW1lEhgKB3N1Y2Nlc3MYAiABKAhSB3N1Y2Nlc3MSJQoOZm'
    'FpbHVyZV9yZWFzb24YAyABKAlSDWZhaWx1cmVSZWFzb24=');

@$core.Deprecated('Use wifiGuestInfoResponseDescriptor instead')
const WifiGuestInfoResponse$json = {
  '1': 'WifiGuestInfoResponse',
  '2': [
    {'1': 'is_guest', '3': 1, '4': 1, '5': 8, '10': 'isGuest'},
    {'1': 'is_online', '3': 2, '4': 1, '5': 8, '10': 'isOnline'},
    {'1': 'router_hardware_version', '3': 3, '4': 1, '5': 9, '10': 'routerHardwareVersion'},
    {'1': 'dish_hardware_version', '3': 4, '4': 1, '5': 9, '10': 'dishHardwareVersion'},
    {'1': 'is_router_aviation_conformed', '3': 5, '4': 1, '5': 8, '10': 'isRouterAviationConformed'},
  ],
};

/// Descriptor for `WifiGuestInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGuestInfoResponseDescriptor = $convert.base64Decode(
    'ChVXaWZpR3Vlc3RJbmZvUmVzcG9uc2USGQoIaXNfZ3Vlc3QYASABKAhSB2lzR3Vlc3QSGwoJaX'
    'Nfb25saW5lGAIgASgIUghpc09ubGluZRI2Chdyb3V0ZXJfaGFyZHdhcmVfdmVyc2lvbhgDIAEo'
    'CVIVcm91dGVySGFyZHdhcmVWZXJzaW9uEjIKFWRpc2hfaGFyZHdhcmVfdmVyc2lvbhgEIAEoCV'
    'ITZGlzaEhhcmR3YXJlVmVyc2lvbhI/Chxpc19yb3V0ZXJfYXZpYXRpb25fY29uZm9ybWVkGAUg'
    'ASgIUhlpc1JvdXRlckF2aWF0aW9uQ29uZm9ybWVk');

@$core.Deprecated('Use wifiRfTestResponseDescriptor instead')
const WifiRfTestResponse$json = {
  '1': 'WifiRfTestResponse',
  '2': [
    {'1': 'report', '3': 1, '4': 1, '5': 9, '10': 'report'},
  ],
};

/// Descriptor for `WifiRfTestResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiRfTestResponseDescriptor = $convert.base64Decode(
    'ChJXaWZpUmZUZXN0UmVzcG9uc2USFgoGcmVwb3J0GAEgASgJUgZyZXBvcnQ=');

@$core.Deprecated('Use wifiGetPersistentStatsResponseDescriptor instead')
const WifiGetPersistentStatsResponse$json = {
  '1': 'WifiGetPersistentStatsResponse',
  '2': [
    {'1': 'stats', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiPersistentStats', '10': 'stats'},
  ],
};

/// Descriptor for `WifiGetPersistentStatsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetPersistentStatsResponseDescriptor = $convert.base64Decode(
    'Ch5XaWZpR2V0UGVyc2lzdGVudFN0YXRzUmVzcG9uc2USPAoFc3RhdHMYASABKAsyJi5TcGFjZV'
    'guQVBJLkRldmljZS5XaWZpUGVyc2lzdGVudFN0YXRzUgVzdGF0cw==');

@$core.Deprecated('Use wifiPersistentStatsDescriptor instead')
const WifiPersistentStats$json = {
  '1': 'WifiPersistentStats',
  '2': [
    {'1': 'factory_reset_button', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiPersistentStats.Event', '10': 'factoryResetButton'},
    {'1': 'factory_reset_plug_unplug', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiPersistentStats.Event', '10': 'factoryResetPlugUnplug'},
    {'1': 'factory_reset_command', '3': 3, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiPersistentStats.Event', '10': 'factoryResetCommand'},
    {'1': 'factory_reset_failed_load_wifi_config', '3': 4, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiPersistentStats.Event', '10': 'factoryResetFailedLoadWifiConfig'},
    {'1': 'reboot_from_software_update', '3': 5, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiPersistentStats.Event', '10': 'rebootFromSoftwareUpdate'},
  ],
  '3': [WifiPersistentStats_Event$json],
};

@$core.Deprecated('Use wifiPersistentStatsDescriptor instead')
const WifiPersistentStats_Event$json = {
  '1': 'Event',
  '2': [
    {'1': 'count', '3': 1, '4': 1, '5': 13, '10': 'count'},
    {'1': 'last_occurred_timestamp', '3': 2, '4': 1, '5': 3, '10': 'lastOccurredTimestamp'},
  ],
};

/// Descriptor for `WifiPersistentStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiPersistentStatsDescriptor = $convert.base64Decode(
    'ChNXaWZpUGVyc2lzdGVudFN0YXRzEl4KFGZhY3RvcnlfcmVzZXRfYnV0dG9uGAEgASgLMiwuU3'
    'BhY2VYLkFQSS5EZXZpY2UuV2lmaVBlcnNpc3RlbnRTdGF0cy5FdmVudFISZmFjdG9yeVJlc2V0'
    'QnV0dG9uEmcKGWZhY3RvcnlfcmVzZXRfcGx1Z191bnBsdWcYAiABKAsyLC5TcGFjZVguQVBJLk'
    'RldmljZS5XaWZpUGVyc2lzdGVudFN0YXRzLkV2ZW50UhZmYWN0b3J5UmVzZXRQbHVnVW5wbHVn'
    'EmAKFWZhY3RvcnlfcmVzZXRfY29tbWFuZBgDIAEoCzIsLlNwYWNlWC5BUEkuRGV2aWNlLldpZm'
    'lQZXJzaXN0ZW50U3RhdHMuRXZlbnRSE2ZhY3RvcnlSZXNldENvbW1hbmQSfQolZmFjdG9yeV9y'
    'ZXNldF9mYWlsZWRfbG9hZF93aWZpX2NvbmZpZxgEIAEoCzIsLlNwYWNlWC5BUEkuRGV2aWNlLl'
    'dpZmlQZXJzaXN0ZW50U3RhdHMuRXZlbnRSIGZhY3RvcnlSZXNldEZhaWxlZExvYWRXaWZpQ29u'
    'ZmlnEmsKG3JlYm9vdF9mcm9tX3NvZnR3YXJlX3VwZGF0ZRgFIAEoCzIsLlNwYWNlWC5BUEkuRG'
    'V2aWNlLldpZmlQZXJzaXN0ZW50U3RhdHMuRXZlbnRSGHJlYm9vdEZyb21Tb2Z0d2FyZVVwZGF0'
    'ZRpVCgVFdmVudBIUCgVjb3VudBgBIAEoDVIFY291bnQSNgoXbGFzdF9vY2N1cnJlZF90aW1lc3'
    'RhbXAYAiABKANSFWxhc3RPY2N1cnJlZFRpbWVzdGFtcA==');

@$core.Deprecated('Use wifiGetFirewallResponseDescriptor instead')
const WifiGetFirewallResponse$json = {
  '1': 'WifiGetFirewallResponse',
  '2': [
    {'1': 'iptables', '3': 1, '4': 1, '5': 9, '10': 'iptables'},
    {'1': 'iptables_6', '3': 2, '4': 1, '5': 9, '10': 'iptables6'},
  ],
};

/// Descriptor for `WifiGetFirewallResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetFirewallResponseDescriptor = $convert.base64Decode(
    'ChdXaWZpR2V0RmlyZXdhbGxSZXNwb25zZRIaCghpcHRhYmxlcxgBIAEoCVIIaXB0YWJsZXMSHQ'
    'oKaXB0YWJsZXNfNhgCIAEoCVIJaXB0YWJsZXM2');

@$core.Deprecated('Use wifiFactoryTestCommandResponseDescriptor instead')
const WifiFactoryTestCommandResponse$json = {
  '1': 'WifiFactoryTestCommandResponse',
  '2': [
    {'1': 'response', '3': 1, '4': 1, '5': 9, '10': 'response'},
  ],
};

/// Descriptor for `WifiFactoryTestCommandResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiFactoryTestCommandResponseDescriptor = $convert.base64Decode(
    'Ch5XaWZpRmFjdG9yeVRlc3RDb21tYW5kUmVzcG9uc2USGgoIcmVzcG9uc2UYASABKAlSCHJlc3'
    'BvbnNl');

@$core.Deprecated('Use wifiBackhaulStatsResponseDescriptor instead')
const WifiBackhaulStatsResponse$json = {
  '1': 'WifiBackhaulStatsResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'bssid', '3': 2, '4': 1, '5': 9, '10': 'bssid'},
    {'1': 'iface', '3': 3, '4': 1, '5': 14, '6': '.SpaceX.API.Device.IfaceType', '10': 'iface'},
    {'1': 'preference', '3': 4, '4': 1, '5': 13, '10': 'preference'},
    {'1': 'siteSurveyScan', '3': 5, '4': 3, '5': 11, '6': '.SpaceX.API.Device.WifiSiteSurveyResult', '10': 'siteSurveyScan'},
  ],
};

/// Descriptor for `WifiBackhaulStatsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiBackhaulStatsResponseDescriptor = $convert.base64Decode(
    'ChlXaWZpQmFja2hhdWxTdGF0c1Jlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSFA'
    'oFYnNzaWQYAiABKAlSBWJzc2lkEjIKBWlmYWNlGAMgASgOMhwuU3BhY2VYLkFQSS5EZXZpY2Uu'
    'SWZhY2VUeXBlUgVpZmFjZRIeCgpwcmVmZXJlbmNlGAQgASgNUgpwcmVmZXJlbmNlEk8KDnNpdG'
    'VTdXJ2ZXlTY2FuGAUgAygLMicuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaVNpdGVTdXJ2ZXlSZXN1'
    'bHRSDnNpdGVTdXJ2ZXlTY2Fu');

@$core.Deprecated('Use wifiSiteSurveyResultDescriptor instead')
const WifiSiteSurveyResult$json = {
  '1': 'WifiSiteSurveyResult',
  '2': [
    {'1': 'rssi', '3': 1, '4': 1, '5': 2, '10': 'rssi'},
    {'1': 'channel', '3': 2, '4': 1, '5': 13, '10': 'channel'},
    {'1': 'ssid', '3': 3, '4': 1, '5': 9, '10': 'ssid'},
    {'1': 'security', '3': 4, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiSecurity', '10': 'security'},
    {'1': 'wireless_mode', '3': 5, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiMode', '10': 'wirelessMode'},
    {'1': 'iface', '3': 6, '4': 1, '5': 14, '6': '.SpaceX.API.Device.IfaceType', '10': 'iface'},
    {'1': 'mac_address', '3': 7, '4': 1, '5': 9, '10': 'macAddress'},
    {'1': 'est_rx_rate', '3': 8, '4': 1, '5': 2, '10': 'estRxRate'},
  ],
};

/// Descriptor for `WifiSiteSurveyResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSiteSurveyResultDescriptor = $convert.base64Decode(
    'ChRXaWZpU2l0ZVN1cnZleVJlc3VsdBISCgRyc3NpGAEgASgCUgRyc3NpEhgKB2NoYW5uZWwYAi'
    'ABKA1SB2NoYW5uZWwSEgoEc3NpZBgDIAEoCVIEc3NpZBI7CghzZWN1cml0eRgEIAEoDjIfLlNw'
    'YWNlWC5BUEkuRGV2aWNlLldpZmlTZWN1cml0eVIIc2VjdXJpdHkSQAoNd2lyZWxlc3NfbW9kZR'
    'gFIAEoDjIbLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlNb2RlUgx3aXJlbGVzc01vZGUSMgoFaWZh'
    'Y2UYBiABKA4yHC5TcGFjZVguQVBJLkRldmljZS5JZmFjZVR5cGVSBWlmYWNlEh8KC21hY19hZG'
    'RyZXNzGAcgASgJUgptYWNBZGRyZXNzEh4KC2VzdF9yeF9yYXRlGAggASgCUgllc3RSeFJhdGU=');

@$core.Deprecated('Use transceiverIFLoopbackTestResponseDescriptor instead')
const TransceiverIFLoopbackTestResponse$json = {
  '1': 'TransceiverIFLoopbackTestResponse',
  '2': [
    {'1': 'ber_loopback_test', '3': 1, '4': 1, '5': 2, '10': 'berLoopbackTest'},
    {'1': 'snr_loopback_test', '3': 2, '4': 1, '5': 2, '10': 'snrLoopbackTest'},
    {'1': 'rssi_loopback_test', '3': 3, '4': 1, '5': 2, '10': 'rssiLoopbackTest'},
    {'1': 'pll_lock', '3': 4, '4': 1, '5': 8, '10': 'pllLock'},
  ],
};

/// Descriptor for `TransceiverIFLoopbackTestResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transceiverIFLoopbackTestResponseDescriptor = $convert.base64Decode(
    'CiFUcmFuc2NlaXZlcklGTG9vcGJhY2tUZXN0UmVzcG9uc2USKgoRYmVyX2xvb3BiYWNrX3Rlc3'
    'QYASABKAJSD2Jlckxvb3BiYWNrVGVzdBIqChFzbnJfbG9vcGJhY2tfdGVzdBgCIAEoAlIPc25y'
    'TG9vcGJhY2tUZXN0EiwKEnJzc2lfbG9vcGJhY2tfdGVzdBgDIAEoAlIQcnNzaUxvb3BiYWNrVG'
    'VzdBIZCghwbGxfbG9jaxgEIAEoCFIHcGxsTG9jaw==');

@$core.Deprecated('Use transceiverGetStatusResponseDescriptor instead')
const TransceiverGetStatusResponse$json = {
  '1': 'TransceiverGetStatusResponse',
  '2': [
    {'1': 'mod_state', '3': 1, '4': 1, '5': 14, '6': '.SpaceX.API.Device.TransceiverModulatorState', '10': 'modState'},
    {'1': 'demod_state', '3': 2, '4': 1, '5': 14, '6': '.SpaceX.API.Device.TransceiverModulatorState', '10': 'demodState'},
    {'1': 'tx_state', '3': 3, '4': 1, '5': 14, '6': '.SpaceX.API.Device.TransceiverTxRxState', '10': 'txState'},
    {'1': 'rx_state', '3': 4, '4': 1, '5': 14, '6': '.SpaceX.API.Device.TransceiverTxRxState', '10': 'rxState'},
    {'1': 'state', '3': 1006, '4': 1, '5': 14, '6': '.SpaceX.API.Device.DishState', '10': 'state'},
    {'1': 'faults', '3': 1007, '4': 1, '5': 11, '6': '.SpaceX.API.Device.TransceiverFaults', '10': 'faults'},
    {'1': 'transmit_blanking_state', '3': 1008, '4': 1, '5': 14, '6': '.SpaceX.API.Device.TransceiverTransmitBlankingState', '10': 'transmitBlankingState'},
    {'1': 'modem_asic_temp', '3': 1009, '4': 1, '5': 2, '10': 'modemAsicTemp'},
    {'1': 'tx_if_temp', '3': 1010, '4': 1, '5': 2, '10': 'txIfTemp'},
  ],
};

/// Descriptor for `TransceiverGetStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transceiverGetStatusResponseDescriptor = $convert.base64Decode(
    'ChxUcmFuc2NlaXZlckdldFN0YXR1c1Jlc3BvbnNlEkkKCW1vZF9zdGF0ZRgBIAEoDjIsLlNwYW'
    'NlWC5BUEkuRGV2aWNlLlRyYW5zY2VpdmVyTW9kdWxhdG9yU3RhdGVSCG1vZFN0YXRlEk0KC2Rl'
    'bW9kX3N0YXRlGAIgASgOMiwuU3BhY2VYLkFQSS5EZXZpY2UuVHJhbnNjZWl2ZXJNb2R1bGF0b3'
    'JTdGF0ZVIKZGVtb2RTdGF0ZRJCCgh0eF9zdGF0ZRgDIAEoDjInLlNwYWNlWC5BUEkuRGV2aWNl'
    'LlRyYW5zY2VpdmVyVHhSeFN0YXRlUgd0eFN0YXRlEkIKCHJ4X3N0YXRlGAQgASgOMicuU3BhY2'
    'VYLkFQSS5EZXZpY2UuVHJhbnNjZWl2ZXJUeFJ4U3RhdGVSB3J4U3RhdGUSMwoFc3RhdGUY7gcg'
    'ASgOMhwuU3BhY2VYLkFQSS5EZXZpY2UuRGlzaFN0YXRlUgVzdGF0ZRI9CgZmYXVsdHMY7wcgAS'
    'gLMiQuU3BhY2VYLkFQSS5EZXZpY2UuVHJhbnNjZWl2ZXJGYXVsdHNSBmZhdWx0cxJsChd0cmFu'
    'c21pdF9ibGFua2luZ19zdGF0ZRjwByABKA4yMy5TcGFjZVguQVBJLkRldmljZS5UcmFuc2NlaX'
    'ZlclRyYW5zbWl0QmxhbmtpbmdTdGF0ZVIVdHJhbnNtaXRCbGFua2luZ1N0YXRlEicKD21vZGVt'
    'X2FzaWNfdGVtcBjxByABKAJSDW1vZGVtQXNpY1RlbXASHQoKdHhfaWZfdGVtcBjyByABKAJSCH'
    'R4SWZUZW1w');

@$core.Deprecated('Use transceiverFaultsDescriptor instead')
const TransceiverFaults$json = {
  '1': 'TransceiverFaults',
  '2': [
    {'1': 'over_temp_modem_asic_fault', '3': 1, '4': 1, '5': 8, '10': 'overTempModemAsicFault'},
    {'1': 'over_temp_pcba_fault', '3': 2, '4': 1, '5': 8, '10': 'overTempPcbaFault'},
    {'1': 'dc_voltage_fault', '3': 3, '4': 1, '5': 8, '10': 'dcVoltageFault'},
  ],
};

/// Descriptor for `TransceiverFaults`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transceiverFaultsDescriptor = $convert.base64Decode(
    'ChFUcmFuc2NlaXZlckZhdWx0cxI6ChpvdmVyX3RlbXBfbW9kZW1fYXNpY19mYXVsdBgBIAEoCF'
    'IWb3ZlclRlbXBNb2RlbUFzaWNGYXVsdBIvChRvdmVyX3RlbXBfcGNiYV9mYXVsdBgCIAEoCFIR'
    'b3ZlclRlbXBQY2JhRmF1bHQSKAoQZGNfdm9sdGFnZV9mYXVsdBgDIAEoCFIOZGNWb2x0YWdlRm'
    'F1bHQ=');

@$core.Deprecated('Use transceiverGetTelemetryResponseDescriptor instead')
const TransceiverGetTelemetryResponse$json = {
  '1': 'TransceiverGetTelemetryResponse',
  '2': [
    {'1': 'antenna_pointing_mode', '3': 1001, '4': 1, '5': 13, '10': 'antennaPointingMode'},
    {'1': 'antenna_pitch', '3': 1002, '4': 1, '5': 2, '10': 'antennaPitch'},
    {'1': 'antenna_roll', '3': 1003, '4': 1, '5': 2, '10': 'antennaRoll'},
    {'1': 'antenna_rx_theta', '3': 1004, '4': 1, '5': 2, '10': 'antennaRxTheta'},
    {'1': 'antenna_true_heading', '3': 1005, '4': 1, '5': 2, '10': 'antennaTrueHeading'},
    {'1': 'rx_channel', '3': 1006, '4': 1, '5': 13, '10': 'rxChannel'},
    {'1': 'current_cell_id', '3': 1007, '4': 1, '5': 13, '10': 'currentCellId'},
    {'1': 'seconds_until_slot_end', '3': 1008, '4': 1, '5': 2, '10': 'secondsUntilSlotEnd'},
    {'1': 'wb_rssi_peak_mag_db', '3': 1009, '4': 1, '5': 2, '10': 'wbRssiPeakMagDb'},
    {'1': 'pop_ping_drop_rate', '3': 1010, '4': 1, '5': 2, '10': 'popPingDropRate'},
    {'1': 'snr_db', '3': 1011, '4': 1, '5': 2, '10': 'snrDb'},
    {'1': 'l1_snr_avg_db', '3': 1012, '4': 1, '5': 2, '10': 'l1SnrAvgDb'},
    {'1': 'l1_snr_min_db', '3': 1013, '4': 1, '5': 2, '10': 'l1SnrMinDb'},
    {'1': 'l1_snr_max_db', '3': 1014, '4': 1, '5': 2, '10': 'l1SnrMaxDb'},
    {'1': 'lmac_satellite_id', '3': 1015, '4': 1, '5': 13, '10': 'lmacSatelliteId'},
    {'1': 'target_satellite_id', '3': 1016, '4': 1, '5': 13, '10': 'targetSatelliteId'},
    {'1': 'grant_mcs', '3': 1017, '4': 1, '5': 13, '10': 'grantMcs'},
    {'1': 'grant_symbols_avg', '3': 1018, '4': 1, '5': 2, '10': 'grantSymbolsAvg'},
    {'1': 'ded_grant', '3': 1019, '4': 1, '5': 13, '10': 'dedGrant'},
    {'1': 'mobility_proactive_slot_change', '3': 1020, '4': 1, '5': 13, '10': 'mobilityProactiveSlotChange'},
    {'1': 'mobility_reactive_slot_change', '3': 1021, '4': 1, '5': 13, '10': 'mobilityReactiveSlotChange'},
    {'1': 'rfp_total_syn_failed', '3': 1022, '4': 1, '5': 13, '10': 'rfpTotalSynFailed'},
    {'1': 'num_out_of_seq', '3': 1023, '4': 1, '5': 13, '10': 'numOutOfSeq'},
    {'1': 'num_ulmap_drop', '3': 1024, '4': 1, '5': 13, '10': 'numUlmapDrop'},
    {'1': 'current_seconds_of_schedule', '3': 1025, '4': 1, '5': 2, '10': 'currentSecondsOfSchedule'},
    {'1': 'send_label_switch_to_ground_failed_calls', '3': 1026, '4': 1, '5': 13, '10': 'sendLabelSwitchToGroundFailedCalls'},
    {'1': 'ema_velocity_x', '3': 1027, '4': 1, '5': 1, '10': 'emaVelocityX'},
    {'1': 'ema_velocity_y', '3': 1028, '4': 1, '5': 1, '10': 'emaVelocityY'},
    {'1': 'ema_velocity_z', '3': 1029, '4': 1, '5': 1, '10': 'emaVelocityZ'},
    {'1': 'ce_rssi_db', '3': 1030, '4': 1, '5': 2, '10': 'ceRssiDb'},
  ],
};

/// Descriptor for `TransceiverGetTelemetryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transceiverGetTelemetryResponseDescriptor = $convert.base64Decode(
    'Ch9UcmFuc2NlaXZlckdldFRlbGVtZXRyeVJlc3BvbnNlEjMKFWFudGVubmFfcG9pbnRpbmdfbW'
    '9kZRjpByABKA1SE2FudGVubmFQb2ludGluZ01vZGUSJAoNYW50ZW5uYV9waXRjaBjqByABKAJS'
    'DGFudGVubmFQaXRjaBIiCgxhbnRlbm5hX3JvbGwY6wcgASgCUgthbnRlbm5hUm9sbBIpChBhbn'
    'Rlbm5hX3J4X3RoZXRhGOwHIAEoAlIOYW50ZW5uYVJ4VGhldGESMQoUYW50ZW5uYV90cnVlX2hl'
    'YWRpbmcY7QcgASgCUhJhbnRlbm5hVHJ1ZUhlYWRpbmcSHgoKcnhfY2hhbm5lbBjuByABKA1SCX'
    'J4Q2hhbm5lbBInCg9jdXJyZW50X2NlbGxfaWQY7wcgASgNUg1jdXJyZW50Q2VsbElkEjQKFnNl'
    'Y29uZHNfdW50aWxfc2xvdF9lbmQY8AcgASgCUhNzZWNvbmRzVW50aWxTbG90RW5kEi0KE3diX3'
    'Jzc2lfcGVha19tYWdfZGIY8QcgASgCUg93YlJzc2lQZWFrTWFnRGISLAoScG9wX3BpbmdfZHJv'
    'cF9yYXRlGPIHIAEoAlIPcG9wUGluZ0Ryb3BSYXRlEhYKBnNucl9kYhjzByABKAJSBXNuckRiEi'
    'IKDWwxX3Nucl9hdmdfZGIY9AcgASgCUgpsMVNuckF2Z0RiEiIKDWwxX3Nucl9taW5fZGIY9Qcg'
    'ASgCUgpsMVNuck1pbkRiEiIKDWwxX3Nucl9tYXhfZGIY9gcgASgCUgpsMVNuck1heERiEisKEW'
    'xtYWNfc2F0ZWxsaXRlX2lkGPcHIAEoDVIPbG1hY1NhdGVsbGl0ZUlkEi8KE3RhcmdldF9zYXRl'
    'bGxpdGVfaWQY+AcgASgNUhF0YXJnZXRTYXRlbGxpdGVJZBIcCglncmFudF9tY3MY+QcgASgNUg'
    'hncmFudE1jcxIrChFncmFudF9zeW1ib2xzX2F2Zxj6ByABKAJSD2dyYW50U3ltYm9sc0F2ZxIc'
    'CglkZWRfZ3JhbnQY+wcgASgNUghkZWRHcmFudBJECh5tb2JpbGl0eV9wcm9hY3RpdmVfc2xvdF'
    '9jaGFuZ2UY/AcgASgNUhttb2JpbGl0eVByb2FjdGl2ZVNsb3RDaGFuZ2USQgodbW9iaWxpdHlf'
    'cmVhY3RpdmVfc2xvdF9jaGFuZ2UY/QcgASgNUhptb2JpbGl0eVJlYWN0aXZlU2xvdENoYW5nZR'
    'IwChRyZnBfdG90YWxfc3luX2ZhaWxlZBj+ByABKA1SEXJmcFRvdGFsU3luRmFpbGVkEiQKDm51'
    'bV9vdXRfb2Zfc2VxGP8HIAEoDVILbnVtT3V0T2ZTZXESJQoObnVtX3VsbWFwX2Ryb3AYgAggAS'
    'gNUgxudW1VbG1hcERyb3ASPgobY3VycmVudF9zZWNvbmRzX29mX3NjaGVkdWxlGIEIIAEoAlIY'
    'Y3VycmVudFNlY29uZHNPZlNjaGVkdWxlElUKKHNlbmRfbGFiZWxfc3dpdGNoX3RvX2dyb3VuZF'
    '9mYWlsZWRfY2FsbHMYggggASgNUiJzZW5kTGFiZWxTd2l0Y2hUb0dyb3VuZEZhaWxlZENhbGxz'
    'EiUKDmVtYV92ZWxvY2l0eV94GIMIIAEoAVIMZW1hVmVsb2NpdHlYEiUKDmVtYV92ZWxvY2l0eV'
    '95GIQIIAEoAVIMZW1hVmVsb2NpdHlZEiUKDmVtYV92ZWxvY2l0eV96GIUIIAEoAVIMZW1hVmVs'
    'b2NpdHlaEh0KCmNlX3Jzc2lfZGIYhgggASgCUghjZVJzc2lEYg==');

@$core.Deprecated('Use startUnlockResponseDescriptor instead')
const StartUnlockResponse$json = {
  '1': 'StartUnlockResponse',
  '2': [
    {'1': 'device_id', '3': 1, '4': 1, '5': 9, '10': 'deviceId'},
    {'1': 'nonce', '3': 2, '4': 1, '5': 12, '10': 'nonce'},
    {'1': 'sign_spki', '3': 3, '4': 1, '5': 12, '10': 'signSpki'},
  ],
};

/// Descriptor for `StartUnlockResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startUnlockResponseDescriptor = $convert.base64Decode(
    'ChNTdGFydFVubG9ja1Jlc3BvbnNlEhsKCWRldmljZV9pZBgBIAEoCVIIZGV2aWNlSWQSFAoFbm'
    '9uY2UYAiABKAxSBW5vbmNlEhsKCXNpZ25fc3BraRgDIAEoDFIIc2lnblNwa2k=');

@$core.Deprecated('Use finishUnlockResponseDescriptor instead')
const FinishUnlockResponse$json = {
  '1': 'FinishUnlockResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 13, '10': 'status'},
  ],
};

/// Descriptor for `FinishUnlockResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List finishUnlockResponseDescriptor = $convert.base64Decode(
    'ChRGaW5pc2hVbmxvY2tSZXNwb25zZRIWCgZzdGF0dXMYASABKA1SBnN0YXR1cw==');

@$core.Deprecated('Use wifiGetDiagnosticsResponseDescriptor instead')
const WifiGetDiagnosticsResponse$json = {
  '1': 'WifiGetDiagnosticsResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'hardware_version', '3': 2, '4': 1, '5': 9, '10': 'hardwareVersion'},
    {'1': 'software_version', '3': 3, '4': 1, '5': 9, '10': 'softwareVersion'},
    {'1': 'networks', '3': 4, '4': 3, '5': 11, '6': '.SpaceX.API.Device.WifiGetDiagnosticsResponse.Network', '10': 'networks'},
  ],
  '3': [WifiGetDiagnosticsResponse_Network$json],
};

@$core.Deprecated('Use wifiGetDiagnosticsResponseDescriptor instead')
const WifiGetDiagnosticsResponse_Network$json = {
  '1': 'Network',
  '2': [
    {'1': 'domain', '3': 1, '4': 1, '5': 9, '10': 'domain'},
    {'1': 'ipv4', '3': 2, '4': 1, '5': 9, '10': 'ipv4'},
    {'1': 'ipv6', '3': 3, '4': 3, '5': 9, '10': 'ipv6'},
    {'1': 'clients_ethernet', '3': 10, '4': 1, '5': 13, '10': 'clientsEthernet'},
    {'1': 'clients_2ghz', '3': 11, '4': 1, '5': 13, '10': 'clients2ghz'},
    {'1': 'clients_5ghz', '3': 12, '4': 1, '5': 13, '10': 'clients5ghz'},
  ],
};

/// Descriptor for `WifiGetDiagnosticsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetDiagnosticsResponseDescriptor = $convert.base64Decode(
    'ChpXaWZpR2V0RGlhZ25vc3RpY3NSZXNwb25zZRIOCgJpZBgBIAEoCVICaWQSKQoQaGFyZHdhcm'
    'VfdmVyc2lvbhgCIAEoCVIPaGFyZHdhcmVWZXJzaW9uEikKEHNvZnR3YXJlX3ZlcnNpb24YAyAB'
    'KAlSD3NvZnR3YXJlVmVyc2lvbhJRCghuZXR3b3JrcxgEIAMoCzI1LlNwYWNlWC5BUEkuRGV2aW'
    'NlLldpZmlHZXREaWFnbm9zdGljc1Jlc3BvbnNlLk5ldHdvcmtSCG5ldHdvcmtzGroBCgdOZXR3'
    'b3JrEhYKBmRvbWFpbhgBIAEoCVIGZG9tYWluEhIKBGlwdjQYAiABKAlSBGlwdjQSEgoEaXB2Nh'
    'gDIAMoCVIEaXB2NhIpChBjbGllbnRzX2V0aGVybmV0GAogASgNUg9jbGllbnRzRXRoZXJuZXQS'
    'IQoMY2xpZW50c18yZ2h6GAsgASgNUgtjbGllbnRzMmdoehIhCgxjbGllbnRzXzVnaHoYDCABKA'
    '1SC2NsaWVudHM1Z2h6');

@$core.Deprecated('Use dishGetDiagnosticsResponseDescriptor instead')
const DishGetDiagnosticsResponse$json = {
  '1': 'DishGetDiagnosticsResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'hardware_version', '3': 2, '4': 1, '5': 9, '10': 'hardwareVersion'},
    {'1': 'software_version', '3': 3, '4': 1, '5': 9, '10': 'softwareVersion'},
    {'1': 'utc_offset_s', '3': 4, '4': 1, '5': 5, '10': 'utcOffsetS'},
    {'1': 'alerts', '3': 5, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetDiagnosticsResponse.Alerts', '10': 'alerts'},
    {'1': 'disablement_code', '3': 6, '4': 1, '5': 14, '6': '.SpaceX.API.Device.DishGetDiagnosticsResponse.DisablementCode', '10': 'disablementCode'},
    {'1': 'hardware_self_test', '3': 7, '4': 1, '5': 14, '6': '.SpaceX.API.Device.DishGetDiagnosticsResponse.TestResult', '10': 'hardwareSelfTest'},
    {'1': 'location', '3': 8, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetDiagnosticsResponse.Location', '10': 'location'},
  ],
  '3': [DishGetDiagnosticsResponse_Alerts$json, DishGetDiagnosticsResponse_Location$json],
  '4': [DishGetDiagnosticsResponse_DisablementCode$json, DishGetDiagnosticsResponse_TestResult$json],
};

@$core.Deprecated('Use dishGetDiagnosticsResponseDescriptor instead')
const DishGetDiagnosticsResponse_Alerts$json = {
  '1': 'Alerts',
  '2': [
    {'1': 'dish_is_heating', '3': 1, '4': 1, '5': 8, '10': 'dishIsHeating'},
    {'1': 'dish_thermal_throttle', '3': 2, '4': 1, '5': 8, '10': 'dishThermalThrottle'},
    {'1': 'dish_thermal_shutdown', '3': 3, '4': 1, '5': 8, '10': 'dishThermalShutdown'},
    {'1': 'power_supply_thermal_throttle', '3': 4, '4': 1, '5': 8, '10': 'powerSupplyThermalThrottle'},
    {'1': 'motors_stuck', '3': 5, '4': 1, '5': 8, '10': 'motorsStuck'},
    {'1': 'mast_not_near_vertical', '3': 6, '4': 1, '5': 8, '10': 'mastNotNearVertical'},
    {'1': 'slow_ethernet_speeds', '3': 7, '4': 1, '5': 8, '10': 'slowEthernetSpeeds'},
    {'1': 'software_install_pending', '3': 8, '4': 1, '5': 8, '10': 'softwareInstallPending'},
    {'1': 'moving_too_fast_for_policy', '3': 9, '4': 1, '5': 8, '10': 'movingTooFastForPolicy'},
    {'1': 'obstructed', '3': 10, '4': 1, '5': 8, '10': 'obstructed'},
  ],
};

@$core.Deprecated('Use dishGetDiagnosticsResponseDescriptor instead')
const DishGetDiagnosticsResponse_Location$json = {
  '1': 'Location',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
    {'1': 'latitude', '3': 2, '4': 1, '5': 1, '10': 'latitude'},
    {'1': 'longitude', '3': 3, '4': 1, '5': 1, '10': 'longitude'},
    {'1': 'altitude_meters', '3': 4, '4': 1, '5': 1, '10': 'altitudeMeters'},
  ],
};

@$core.Deprecated('Use dishGetDiagnosticsResponseDescriptor instead')
const DishGetDiagnosticsResponse_DisablementCode$json = {
  '1': 'DisablementCode',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'OKAY', '2': 1},
    {'1': 'NO_ACTIVE_ACCOUNT', '2': 2},
    {'1': 'TOO_FAR_FROM_SERVICE_ADDRESS', '2': 3},
    {'1': 'IN_OCEAN', '2': 4},
    {'1': 'INVALID_COUNTRY', '2': 5},
    {'1': 'BLOCKED_COUNTRY', '2': 6},
    {'1': 'DATA_OVERAGE_SANDBOX_POLICY', '2': 7},
    {'1': 'CELL_IS_DISABLED', '2': 8},
    {'1': 'UNLICENSED_COUNTRY', '2': 9},
  ],
};

@$core.Deprecated('Use dishGetDiagnosticsResponseDescriptor instead')
const DishGetDiagnosticsResponse_TestResult$json = {
  '1': 'TestResult',
  '2': [
    {'1': 'NO_RESULT', '2': 0},
    {'1': 'PASSED', '2': 1},
    {'1': 'FAILED', '2': 2},
  ],
};

/// Descriptor for `DishGetDiagnosticsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGetDiagnosticsResponseDescriptor = $convert.base64Decode(
    'ChpEaXNoR2V0RGlhZ25vc3RpY3NSZXNwb25zZRIOCgJpZBgBIAEoCVICaWQSKQoQaGFyZHdhcm'
    'VfdmVyc2lvbhgCIAEoCVIPaGFyZHdhcmVWZXJzaW9uEikKEHNvZnR3YXJlX3ZlcnNpb24YAyAB'
    'KAlSD3NvZnR3YXJlVmVyc2lvbhIgCgx1dGNfb2Zmc2V0X3MYBCABKAVSCnV0Y09mZnNldFMSTA'
    'oGYWxlcnRzGAUgASgLMjQuU3BhY2VYLkFQSS5EZXZpY2UuRGlzaEdldERpYWdub3N0aWNzUmVz'
    'cG9uc2UuQWxlcnRzUgZhbGVydHMSaAoQZGlzYWJsZW1lbnRfY29kZRgGIAEoDjI9LlNwYWNlWC'
    '5BUEkuRGV2aWNlLkRpc2hHZXREaWFnbm9zdGljc1Jlc3BvbnNlLkRpc2FibGVtZW50Q29kZVIP'
    'ZGlzYWJsZW1lbnRDb2RlEmYKEmhhcmR3YXJlX3NlbGZfdGVzdBgHIAEoDjI4LlNwYWNlWC5BUE'
    'kuRGV2aWNlLkRpc2hHZXREaWFnbm9zdGljc1Jlc3BvbnNlLlRlc3RSZXN1bHRSEGhhcmR3YXJl'
    'U2VsZlRlc3QSUgoIbG9jYXRpb24YCCABKAsyNi5TcGFjZVguQVBJLkRldmljZS5EaXNoR2V0RG'
    'lhZ25vc3RpY3NSZXNwb25zZS5Mb2NhdGlvblIIbG9jYXRpb24a+wMKBkFsZXJ0cxImCg9kaXNo'
    'X2lzX2hlYXRpbmcYASABKAhSDWRpc2hJc0hlYXRpbmcSMgoVZGlzaF90aGVybWFsX3Rocm90dG'
    'xlGAIgASgIUhNkaXNoVGhlcm1hbFRocm90dGxlEjIKFWRpc2hfdGhlcm1hbF9zaHV0ZG93bhgD'
    'IAEoCFITZGlzaFRoZXJtYWxTaHV0ZG93bhJBCh1wb3dlcl9zdXBwbHlfdGhlcm1hbF90aHJvdH'
    'RsZRgEIAEoCFIacG93ZXJTdXBwbHlUaGVybWFsVGhyb3R0bGUSIQoMbW90b3JzX3N0dWNrGAUg'
    'ASgIUgttb3RvcnNTdHVjaxIzChZtYXN0X25vdF9uZWFyX3ZlcnRpY2FsGAYgASgIUhNtYXN0Tm'
    '90TmVhclZlcnRpY2FsEjAKFHNsb3dfZXRoZXJuZXRfc3BlZWRzGAcgASgIUhJzbG93RXRoZXJu'
    'ZXRTcGVlZHMSOAoYc29mdHdhcmVfaW5zdGFsbF9wZW5kaW5nGAggASgIUhZzb2Z0d2FyZUluc3'
    'RhbGxQZW5kaW5nEjoKGm1vdmluZ190b29fZmFzdF9mb3JfcG9saWN5GAkgASgIUhZtb3ZpbmdU'
    'b29GYXN0Rm9yUG9saWN5Eh4KCm9ic3RydWN0ZWQYCiABKAhSCm9ic3RydWN0ZWQahwEKCExvY2'
    'F0aW9uEhgKB2VuYWJsZWQYASABKAhSB2VuYWJsZWQSGgoIbGF0aXR1ZGUYAiABKAFSCGxhdGl0'
    'dWRlEhwKCWxvbmdpdHVkZRgDIAEoAVIJbG9uZ2l0dWRlEicKD2FsdGl0dWRlX21ldGVycxgEIA'
    'EoAVIOYWx0aXR1ZGVNZXRlcnMi6AEKD0Rpc2FibGVtZW50Q29kZRILCgdVTktOT1dOEAASCAoE'
    'T0tBWRABEhUKEU5PX0FDVElWRV9BQ0NPVU5UEAISIAocVE9PX0ZBUl9GUk9NX1NFUlZJQ0VfQU'
    'REUkVTUxADEgwKCElOX09DRUFOEAQSEwoPSU5WQUxJRF9DT1VOVFJZEAUSEwoPQkxPQ0tFRF9D'
    'T1VOVFJZEAYSHwobREFUQV9PVkVSQUdFX1NBTkRCT1hfUE9MSUNZEAcSFAoQQ0VMTF9JU19ESV'
    'NBQkxFRBAIEhYKElVOTElDRU5TRURfQ09VTlRSWRAJIjMKClRlc3RSZXN1bHQSDQoJTk9fUkVT'
    'VUxUEAASCgoGUEFTU0VEEAESCgoGRkFJTEVEEAI=');

@$core.Deprecated('Use toDeviceDescriptor instead')
const ToDevice$json = {
  '1': 'ToDevice',
  '2': [
    {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.Request', '9': 0, '10': 'request'},
    {'1': 'health_check', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.HealthCheck', '9': 0, '10': 'healthCheck'},
  ],
  '8': [
    {'1': 'message'},
  ],
};

/// Descriptor for `ToDevice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List toDeviceDescriptor = $convert.base64Decode(
    'CghUb0RldmljZRI2CgdyZXF1ZXN0GAEgASgLMhouU3BhY2VYLkFQSS5EZXZpY2UuUmVxdWVzdE'
    'gAUgdyZXF1ZXN0EkMKDGhlYWx0aF9jaGVjaxgCIAEoCzIeLlNwYWNlWC5BUEkuRGV2aWNlLkhl'
    'YWx0aENoZWNrSABSC2hlYWx0aENoZWNrQgkKB21lc3NhZ2U=');

@$core.Deprecated('Use healthCheckDescriptor instead')
const HealthCheck$json = {
  '1': 'HealthCheck',
};

/// Descriptor for `HealthCheck`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List healthCheckDescriptor = $convert.base64Decode(
    'CgtIZWFsdGhDaGVjaw==');

@$core.Deprecated('Use fromDeviceDescriptor instead')
const FromDevice$json = {
  '1': 'FromDevice',
  '2': [
    {'1': 'response', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.Response', '9': 0, '10': 'response'},
    {'1': 'event', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.Event', '9': 0, '10': 'event'},
    {'1': 'health_check', '3': 3, '4': 1, '5': 11, '6': '.SpaceX.API.Device.HealthCheck', '9': 0, '10': 'healthCheck'},
  ],
  '8': [
    {'1': 'message'},
  ],
};

/// Descriptor for `FromDevice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fromDeviceDescriptor = $convert.base64Decode(
    'CgpGcm9tRGV2aWNlEjkKCHJlc3BvbnNlGAEgASgLMhsuU3BhY2VYLkFQSS5EZXZpY2UuUmVzcG'
    '9uc2VIAFIIcmVzcG9uc2USMAoFZXZlbnQYAiABKAsyGC5TcGFjZVguQVBJLkRldmljZS5FdmVu'
    'dEgAUgVldmVudBJDCgxoZWFsdGhfY2hlY2sYAyABKAsyHi5TcGFjZVguQVBJLkRldmljZS5IZW'
    'FsdGhDaGVja0gAUgtoZWFsdGhDaGVja0IJCgdtZXNzYWdl');

@$core.Deprecated('Use eventDescriptor instead')
const Event$json = {
  '1': 'Event',
  '2': [
    {'1': 'wifi_new_client_connected', '3': 3001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiNewClientConnectedEvent', '9': 0, '10': 'wifiNewClientConnected'},
    {'1': 'wifi_account_bonding', '3': 3002, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiAccountBondingEvent', '9': 0, '10': 'wifiAccountBonding'},
    {'1': 'wifi_new_peer', '3': 3003, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiNewPeerEvent', '9': 0, '10': 'wifiNewPeer'},
    {'1': 'wifi_cloud_status', '3': 3004, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiCloudStatusEvent', '9': 0, '10': 'wifiCloudStatus'},
  ],
  '8': [
    {'1': 'event'},
  ],
};

/// Descriptor for `Event`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventDescriptor = $convert.base64Decode(
    'CgVFdmVudBJsChl3aWZpX25ld19jbGllbnRfY29ubmVjdGVkGLkXIAEoCzIuLlNwYWNlWC5BUE'
    'kuRGV2aWNlLldpZmlOZXdDbGllbnRDb25uZWN0ZWRFdmVudEgAUhZ3aWZpTmV3Q2xpZW50Q29u'
    'bmVjdGVkEl8KFHdpZmlfYWNjb3VudF9ib25kaW5nGLoXIAEoCzIqLlNwYWNlWC5BUEkuRGV2aW'
    'NlLldpZmlBY2NvdW50Qm9uZGluZ0V2ZW50SABSEndpZmlBY2NvdW50Qm9uZGluZxJKCg13aWZp'
    'X25ld19wZWVyGLsXIAEoCzIjLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlOZXdQZWVyRXZlbnRIAF'
    'ILd2lmaU5ld1BlZXISVgoRd2lmaV9jbG91ZF9zdGF0dXMYvBcgASgLMicuU3BhY2VYLkFQSS5E'
    'ZXZpY2UuV2lmaUNsb3VkU3RhdHVzRXZlbnRIAFIPd2lmaUNsb3VkU3RhdHVzQgcKBWV2ZW50');

@$core.Deprecated('Use wifiNewClientConnectedEventDescriptor instead')
const WifiNewClientConnectedEvent$json = {
  '1': 'WifiNewClientConnectedEvent',
  '2': [
    {'1': 'client', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiClient', '10': 'client'},
  ],
};

/// Descriptor for `WifiNewClientConnectedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiNewClientConnectedEventDescriptor = $convert.base64Decode(
    'ChtXaWZpTmV3Q2xpZW50Q29ubmVjdGVkRXZlbnQSNQoGY2xpZW50GAEgASgLMh0uU3BhY2VYLk'
    'FQSS5EZXZpY2UuV2lmaUNsaWVudFIGY2xpZW50');

@$core.Deprecated('Use wifiAccountBondingEventDescriptor instead')
const WifiAccountBondingEvent$json = {
  '1': 'WifiAccountBondingEvent',
  '2': [
    {'1': 'dish_id', '3': 1, '4': 1, '5': 9, '10': 'dishId'},
    {'1': 'is_repeater', '3': 2, '4': 1, '5': 8, '10': 'isRepeater'},
    {'1': 'hardware_version', '3': 3, '4': 1, '5': 9, '10': 'hardwareVersion'},
  ],
};

/// Descriptor for `WifiAccountBondingEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiAccountBondingEventDescriptor = $convert.base64Decode(
    'ChdXaWZpQWNjb3VudEJvbmRpbmdFdmVudBIXCgdkaXNoX2lkGAEgASgJUgZkaXNoSWQSHwoLaX'
    'NfcmVwZWF0ZXIYAiABKAhSCmlzUmVwZWF0ZXISKQoQaGFyZHdhcmVfdmVyc2lvbhgDIAEoCVIP'
    'aGFyZHdhcmVWZXJzaW9u');

@$core.Deprecated('Use wifiNewPeerEventDescriptor instead')
const WifiNewPeerEvent$json = {
  '1': 'WifiNewPeerEvent',
  '2': [
    {'1': 'peer_id', '3': 1, '4': 1, '5': 9, '10': 'peerId'},
  ],
};

/// Descriptor for `WifiNewPeerEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiNewPeerEventDescriptor = $convert.base64Decode(
    'ChBXaWZpTmV3UGVlckV2ZW50EhcKB3BlZXJfaWQYASABKAlSBnBlZXJJZA==');

@$core.Deprecated('Use wifiCloudStatusEventDescriptor instead')
const WifiCloudStatusEvent$json = {
  '1': 'WifiCloudStatusEvent',
  '2': [
    {'1': 'direct_link_to_dish', '3': 1, '4': 1, '5': 8, '10': 'directLinkToDish'},
    {'1': 'hardware_version', '3': 2, '4': 1, '5': 9, '10': 'hardwareVersion'},
    {'1': 'is_bypassed', '3': 3, '4': 1, '5': 8, '10': 'isBypassed'},
    {'1': 'api_version', '3': 4, '4': 1, '5': 13, '10': 'apiVersion'},
  ],
};

/// Descriptor for `WifiCloudStatusEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiCloudStatusEventDescriptor = $convert.base64Decode(
    'ChRXaWZpQ2xvdWRTdGF0dXNFdmVudBItChNkaXJlY3RfbGlua190b19kaXNoGAEgASgIUhBkaX'
    'JlY3RMaW5rVG9EaXNoEikKEGhhcmR3YXJlX3ZlcnNpb24YAiABKAlSD2hhcmR3YXJlVmVyc2lv'
    'bhIfCgtpc19ieXBhc3NlZBgDIAEoCFIKaXNCeXBhc3NlZBIfCgthcGlfdmVyc2lvbhgEIAEoDV'
    'IKYXBpVmVyc2lvbg==');

