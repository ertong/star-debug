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
  ],
};

/// Descriptor for `Capability`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List capabilityDescriptor = $convert.base64Decode(
    'CgpDYXBhYmlsaXR5EggKBFJFQUQQABIJCgVXUklURRABEgkKBURFQlVHEAISCQoFQURNSU4QAx'
    'IJCgVTRVRVUBAEEgsKB1NFVF9TS1UQBRILCgdSRUZSRVNIEAYSEAoMUkVBRF9QUklWQVRFEAcS'
    'CAoERlVTRRAIEgkKBVJFU0VUEAkSCAoEVEVTVBAKEhQKEFdSSVRFX1BFUlNJU1RFTlQQCxIHCg'
    'NTU0gQDBIRCg1SRUFEX0lOVEVSTkFMEA0SCQoFTE9DQUwQDg==');

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
  ],
};

/// Descriptor for `PositionSource`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List positionSourceDescriptor = $convert.base64Decode(
    'Cg5Qb3NpdGlvblNvdXJjZRIICgRBVVRPEAASCAoETk9ORRABEgsKB1VUX0lORk8QAhIMCghFWF'
    'RFUk5BTBADEgcKA0dQUxAEEgwKCFNUQVJMSU5LEAU=');

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
    {'1': 'AVIATION_5M_OUTAGE_FDIR', '2': 10},
  ],
};

/// Descriptor for `BootReason`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List bootReasonDescriptor = $convert.base64Decode(
    'CgpCb290UmVhc29uEhcKE0JPT1RfUkVBU09OX1VOS05PV04QABINCglGT1JHT1RURU4QARIPCg'
    'tQT1dFUl9DWUNMRRACEgsKB0NPTU1BTkQQAxITCg9TT0ZUV0FSRV9VUERBVEUQBBIRCg1DT05G'
    'SUdfVVBEQVRFEAUSDwoLVVBUSU1FX0ZESVIQBhIRCg1SRVBFQVRFUl9GRElSEAcSGQoVQVZJQV'
    'RJT05fRVRIX1dBTl9GRElSEAgSEAoMS0VSTkVMX1BBTklDEAkSGwoXQVZJQVRJT05fNU1fT1VU'
    'QUdFX0ZESVIQCg==');

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
    {'1': 'wifi_set_config', '3': 3001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSetConfigRequest', '9': 0, '10': 'wifiSetConfig'},
    {'1': 'wifi_get_clients', '3': 3002, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetClientsRequest', '9': 0, '10': 'wifiGetClients'},
    {'1': 'wifi_setup', '3': 3003, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSetupRequest', '9': 0, '10': 'wifiSetup'},
    {'1': 'wifi_get_ping_metrics', '3': 3007, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetPingMetricsRequest', '9': 0, '10': 'wifiGetPingMetrics'},
    {'1': 'wifi_get_diagnostics', '3': 3008, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetDiagnosticsRequest', '9': 0, '10': 'wifiGetDiagnostics'},
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
    {'1': 'transceiver_if_loopback_test', '3': 4001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.TransceiverIFLoopbackTestRequest', '9': 0, '10': 'transceiverIfLoopbackTest'},
    {'1': 'transceiver_get_status', '3': 4003, '4': 1, '5': 11, '6': '.SpaceX.API.Device.TransceiverGetStatusRequest', '9': 0, '10': 'transceiverGetStatus'},
    {'1': 'transceiver_get_telemetry', '3': 4004, '4': 1, '5': 11, '6': '.SpaceX.API.Device.TransceiverGetTelemetryRequest', '9': 0, '10': 'transceiverGetTelemetry'},
  ],
  '8': [
    {'1': 'request'},
  ],
  '9': [
    {'1': 1018, '2': 1019},
    {'1': 1025, '2': 1026},
    {'1': 1026, '2': 1027},
    {'1': 3011, '2': 3012},
    {'1': 3014, '2': 3015},
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
    'FDYXB0dXJlUmVxdWVzdEgAUglpcUNhcHR1cmUSQgoJZGlzaF9zdG93GNIPIAEoCzIiLlNwYWNl'
    'WC5BUEkuRGV2aWNlLkRpc2hTdG93UmVxdWVzdEgAUghkaXNoU3RvdxJVChBkaXNoX2dldF9jb2'
    '50ZXh0GNMPIAEoCzIoLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hHZXRDb250ZXh0UmVxdWVzdEgA'
    'Ug5kaXNoR2V0Q29udGV4dBJJCgxkaXNoX3NldF9lbWMY1w8gASgLMiQuU3BhY2VYLkFQSS5EZX'
    'ZpY2UuRGlzaFNldEVtY1JlcXVlc3RIAFIKZGlzaFNldEVtYxJrChhkaXNoX2dldF9vYnN0cnVj'
    'dGlvbl9tYXAY2A8gASgLMi8uU3BhY2VYLkFQSS5EZXZpY2UuRGlzaEdldE9ic3RydWN0aW9uTW'
    'FwUmVxdWVzdEgAUhVkaXNoR2V0T2JzdHJ1Y3Rpb25NYXASSQoMZGlzaF9nZXRfZW1jGNkPIAEo'
    'CzIkLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hHZXRFbWNSZXF1ZXN0SABSCmRpc2hHZXRFbWMSUg'
    'oPZGlzaF9zZXRfY29uZmlnGNoPIAEoCzInLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hTZXRDb25m'
    'aWdSZXF1ZXN0SABSDWRpc2hTZXRDb25maWcSUgoPZGlzaF9nZXRfY29uZmlnGNsPIAEoCzInLl'
    'NwYWNlWC5BUEkuRGV2aWNlLkRpc2hHZXRDb25maWdSZXF1ZXN0SABSDWRpc2hHZXRDb25maWcS'
    'XwoUc3RhcnRfZGlzaF9zZWxmX3Rlc3QY3A8gASgLMisuU3BhY2VYLkFQSS5EZXZpY2UuU3Rhcn'
    'REaXNoU2VsZlRlc3RSZXF1ZXN0SABSEXN0YXJ0RGlzaFNlbGZUZXN0ElIKD2Rpc2hfcG93ZXJf'
    'c2F2ZRjdDyABKAsyJy5TcGFjZVguQVBJLkRldmljZS5EaXNoUG93ZXJTYXZlUmVxdWVzdEgAUg'
    '1kaXNoUG93ZXJTYXZlElUKEGRpc2hfaW5oaWJpdF9ncHMY3g8gASgLMiguU3BhY2VYLkFQSS5E'
    'ZXZpY2UuRGlzaEluaGliaXRHcHNSZXF1ZXN0SABSDmRpc2hJbmhpYml0R3BzElIKD3dpZmlfc2'
    'V0X2NvbmZpZxi5FyABKAsyJy5TcGFjZVguQVBJLkRldmljZS5XaWZpU2V0Q29uZmlnUmVxdWVz'
    'dEgAUg13aWZpU2V0Q29uZmlnElUKEHdpZmlfZ2V0X2NsaWVudHMYuhcgASgLMiguU3BhY2VYLk'
    'FQSS5EZXZpY2UuV2lmaUdldENsaWVudHNSZXF1ZXN0SABSDndpZmlHZXRDbGllbnRzEkUKCndp'
    'Zmlfc2V0dXAYuxcgASgLMiMuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaVNldHVwUmVxdWVzdEgAUg'
    'l3aWZpU2V0dXASYgoVd2lmaV9nZXRfcGluZ19tZXRyaWNzGL8XIAEoCzIsLlNwYWNlWC5BUEku'
    'RGV2aWNlLldpZmlHZXRQaW5nTWV0cmljc1JlcXVlc3RIAFISd2lmaUdldFBpbmdNZXRyaWNzEm'
    'EKFHdpZmlfZ2V0X2RpYWdub3N0aWNzGMAXIAEoCzIsLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlH'
    'ZXREaWFnbm9zdGljc1JlcXVlc3RIAFISd2lmaUdldERpYWdub3N0aWNzElIKD3dpZmlfZ2V0X2'
    'NvbmZpZxjBFyABKAsyJy5TcGFjZVguQVBJLkRldmljZS5XaWZpR2V0Q29uZmlnUmVxdWVzdEgA'
    'Ug13aWZpR2V0Q29uZmlnEm8KGndpZmlfc2V0X21lc2hfZGV2aWNlX3RydXN0GMQXIAEoCzIwLl'
    'NwYWNlWC5BUEkuRGV2aWNlLldpZmlTZXRNZXNoRGV2aWNlVHJ1c3RSZXF1ZXN0SABSFndpZmlT'
    'ZXRNZXNoRGV2aWNlVHJ1c3QSYwoUd2lmaV9zZXRfbWVzaF9jb25maWcYxRcgASgLMisuU3BhY2'
    'VYLkFQSS5EZXZpY2UuV2lmaVNldE1lc2hDb25maWdSZXF1ZXN0QgIYAUgAUhF3aWZpU2V0TWVz'
    'aENvbmZpZxJoChd3aWZpX2dldF9jbGllbnRfaGlzdG9yeRjHFyABKAsyLi5TcGFjZVguQVBJLk'
    'RldmljZS5XaWZpR2V0Q2xpZW50SGlzdG9yeVJlcXVlc3RIAFIUd2lmaUdldENsaWVudEhpc3Rv'
    'cnkSdAobd2lmaV9zZXRfYXZpYXRpb25fY29uZm9ybWVkGMgXIAEoCzIyLlNwYWNlWC5BUEkuRG'
    'V2aWNlLldpZmlTZXRBdmlhdGlvbkNvbmZvcm1lZFJlcXVlc3RIAFIYd2lmaVNldEF2aWF0aW9u'
    'Q29uZm9ybWVkEm8KGndpZmlfc2V0X2NsaWVudF9naXZlbl9uYW1lGMkXIAEoCzIwLlNwYWNlWC'
    '5BUEkuRGV2aWNlLldpZmlTZXRDbGllbnRHaXZlbk5hbWVSZXF1ZXN0SABSFndpZmlTZXRDbGll'
    'bnRHaXZlbk5hbWUSTwoOd2lmaV9zZWxmX3Rlc3QYyhcgASgLMiYuU3BhY2VYLkFQSS5EZXZpY2'
    'UuV2lmaVNlbGZUZXN0UmVxdWVzdEgAUgx3aWZpU2VsZlRlc3QSZAoVd2lmaV9jYWxpYnJhdGlv'
    'bl9tb2RlGMsXIAEoCzItLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlDYWxpYnJhdGlvbk1vZGVSZX'
    'F1ZXN0SABSE3dpZmlDYWxpYnJhdGlvbk1vZGUSdwocdHJhbnNjZWl2ZXJfaWZfbG9vcGJhY2tf'
    'dGVzdBihHyABKAsyMy5TcGFjZVguQVBJLkRldmljZS5UcmFuc2NlaXZlcklGTG9vcGJhY2tUZX'
    'N0UmVxdWVzdEgAUhl0cmFuc2NlaXZlcklmTG9vcGJhY2tUZXN0EmcKFnRyYW5zY2VpdmVyX2dl'
    'dF9zdGF0dXMYox8gASgLMi4uU3BhY2VYLkFQSS5EZXZpY2UuVHJhbnNjZWl2ZXJHZXRTdGF0dX'
    'NSZXF1ZXN0SABSFHRyYW5zY2VpdmVyR2V0U3RhdHVzEnAKGXRyYW5zY2VpdmVyX2dldF90ZWxl'
    'bWV0cnkYpB8gASgLMjEuU3BhY2VYLkFQSS5EZXZpY2UuVHJhbnNjZWl2ZXJHZXRUZWxlbWV0cn'
    'lSZXF1ZXN0SABSF3RyYW5zY2VpdmVyR2V0VGVsZW1ldHJ5QgkKB3JlcXVlc3RKBgj6BxD7B0oG'
    'CIEIEIIISgYIgggQgwhKBgjDFxDEF0oGCMYXEMcX');

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
    {'1': 'start_time', '3': 4, '4': 1, '5': 4, '10': 'startTime'},
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
    'CWxhdGVuY3lNcxIdCgpzdGFydF90aW1lGAQgASgEUglzdGFydFRpbWUSKgoRdXBsb2FkX3N0YX'
    'J0X3RpbWUYBSABKANSD3VwbG9hZFN0YXJ0VGltZRIuChNkb3dubG9hZF9zdGFydF90aW1lGAYg'
    'ASgDUhFkb3dubG9hZFN0YXJ0VGltZRJACgZ0YXJnZXQYByABKA4yKC5TcGFjZVguQVBJLkRldm'
    'ljZS5TcGVlZFRlc3RTdGF0cy5UYXJnZXRSBnRhcmdldBIfCgt0Y3Bfc3RyZWFtcxgIIAEoDVIK'
    'dGNwU3RyZWFtcyIyCgZUYXJnZXQSCwoHVU5LTk9XThAAEgsKB0ZBU1RDT00QARIOCgpDTE9VRE'
    'ZMQVJFEAI=');

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
    {'1': 'capabilities', '3': 2, '4': 3, '5': 14, '6': '.SpaceX.API.Device.Capability', '10': 'capabilities'},
  ],
};

/// Descriptor for `PublicKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List publicKeyDescriptor = $convert.base64Decode(
    'CglQdWJsaWNLZXkSEAoDa2V5GAEgASgJUgNrZXkSQQoMY2FwYWJpbGl0aWVzGAIgAygOMh0uU3'
    'BhY2VYLkFQSS5EZXZpY2UuQ2FwYWJpbGl0eVIMY2FwYWJpbGl0aWVz');

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
  ],
};

/// Descriptor for `PingHostRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingHostRequestDescriptor = $convert.base64Decode(
    'Cg9QaW5nSG9zdFJlcXVlc3QSGAoHYWRkcmVzcxgDIAEoCVIHYWRkcmVzcw==');

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
};

/// Descriptor for `FuseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fuseRequestDescriptor = $convert.base64Decode(
    'CgtGdXNlUmVxdWVzdA==');

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
  ],
};

/// Descriptor for `ReportClientSpeedtestRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportClientSpeedtestRequestDescriptor = $convert.base64Decode(
    'ChxSZXBvcnRDbGllbnRTcGVlZHRlc3RSZXF1ZXN0Eg4KAmlkGAEgASgNUgJpZBJMChBjbGllbn'
    'Rfc3BlZWR0ZXN0GAIgASgLMiEuU3BhY2VYLkFQSS5EZXZpY2UuU3BlZWRUZXN0U3RhdHNSD2Ns'
    'aWVudFNwZWVkdGVzdBIfCgtjbGllbnRfcnNzaRgDIAEoAlIKY2xpZW50UnNzaRJKCg9jbGllbn'
    'RfcGxhdGZvcm0YBCABKAsyIS5TcGFjZVguQVBJLkRldmljZS5DbGllbnRQbGF0Zm9ybVIOY2xp'
    'ZW50UGxhdGZvcm0SSAoOd2lmaV9zcGVlZHRlc3QYBSABKAsyIS5TcGFjZVguQVBJLkRldmljZS'
    '5TcGVlZFRlc3RTdGF0c1INd2lmaVNwZWVkdGVzdA==');

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
    {'1': 'apply_snow_melt_mode', '3': 1001, '4': 1, '5': 8, '10': 'applySnowMeltMode'},
    {'1': 'apply_location_request_mode', '3': 2001, '4': 1, '5': 8, '10': 'applyLocationRequestMode'},
    {'1': 'apply_level_dish_mode', '3': 3001, '4': 1, '5': 8, '10': 'applyLevelDishMode'},
    {'1': 'apply_power_save_start_minutes', '3': 4001, '4': 1, '5': 8, '10': 'applyPowerSaveStartMinutes'},
    {'1': 'apply_power_save_duration_minutes', '3': 5001, '4': 1, '5': 8, '10': 'applyPowerSaveDurationMinutes'},
    {'1': 'apply_power_save_mode', '3': 6001, '4': 1, '5': 8, '10': 'applyPowerSaveMode'},
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
    'VyYXRpb25NaW51dGVzEiYKD3Bvd2VyX3NhdmVfbW9kZRgGIAEoCFINcG93ZXJTYXZlTW9kZRIw'
    'ChRhcHBseV9zbm93X21lbHRfbW9kZRjpByABKAhSEWFwcGx5U25vd01lbHRNb2RlEj4KG2FwcG'
    'x5X2xvY2F0aW9uX3JlcXVlc3RfbW9kZRjRDyABKAhSGGFwcGx5TG9jYXRpb25SZXF1ZXN0TW9k'
    'ZRIyChVhcHBseV9sZXZlbF9kaXNoX21vZGUYuRcgASgIUhJhcHBseUxldmVsRGlzaE1vZGUSQw'
    'oeYXBwbHlfcG93ZXJfc2F2ZV9zdGFydF9taW51dGVzGKEfIAEoCFIaYXBwbHlQb3dlclNhdmVT'
    'dGFydE1pbnV0ZXMSSQohYXBwbHlfcG93ZXJfc2F2ZV9kdXJhdGlvbl9taW51dGVzGIknIAEoCF'
    'IdYXBwbHlQb3dlclNhdmVEdXJhdGlvbk1pbnV0ZXMSMgoVYXBwbHlfcG93ZXJfc2F2ZV9tb2Rl'
    'GPEuIAEoCFISYXBwbHlQb3dlclNhdmVNb2RlIjYKDUxldmVsRGlzaE1vZGUSFAoQVElMVF9MSU'
    'tFX05PUk1BTBAAEg8KC0ZPUkNFX0xFVkVMEAEiKgoTTG9jYXRpb25SZXF1ZXN0TW9kZRIICgRO'
    'T05FEAASCQoFTE9DQUwQASI3CgxTbm93TWVsdE1vZGUSCAoEQVVUTxAAEg0KCUFMV0FZU19PTh'
    'ABEg4KCkFMV0FZU19PRkYQAg==');

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
    {'1': 'network_name', '3': 1, '4': 1, '5': 9, '10': 'networkName'},
    {'1': 'network_password', '3': 2, '4': 1, '5': 9, '10': 'networkPassword'},
    {'1': 'country_code', '3': 3, '4': 1, '5': 9, '10': 'countryCode'},
    {
      '1': 'lan_ipv4',
      '3': 5,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '10': 'lanIpv4',
    },
    {'1': 'setup_complete', '3': 7, '4': 1, '5': 8, '10': 'setupComplete'},
    {'1': 'version', '3': 9, '4': 1, '5': 13, '10': 'version'},
    {
      '1': 'wifi_security',
      '3': 10,
      '4': 1,
      '5': 14,
      '6': '.SpaceX.API.Device.WifiConfig.Security',
      '8': {'3': true},
      '10': 'wifiSecurity',
    },
    {
      '1': 'network_name_5ghz',
      '3': 11,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '10': 'networkName5ghz',
    },
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
    {
      '1': 'enable_remote_ssh',
      '3': 34,
      '4': 1,
      '5': 8,
      '8': {'3': true},
      '10': 'enableRemoteSsh',
    },
    {
      '1': 'last_remote_ssh_access',
      '3': 35,
      '4': 1,
      '5': 3,
      '8': {'3': true},
      '10': 'lastRemoteSshAccess',
    },
    {
      '1': 'apply_lan_ipv4',
      '3': 37,
      '4': 1,
      '5': 8,
      '8': {'3': true},
      '10': 'applyLanIpv4',
    },
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
    {'1': 'client_names', '3': 62, '4': 3, '5': 11, '6': '.SpaceX.API.Device.ClientName', '10': 'clientNames'},
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
    {
      '1': 'apply_network_name',
      '3': 1001,
      '4': 1,
      '5': 8,
      '8': {'3': true},
      '10': 'applyNetworkName',
    },
    {
      '1': 'apply_network_password',
      '3': 1002,
      '4': 1,
      '5': 8,
      '8': {'3': true},
      '10': 'applyNetworkPassword',
    },
    {
      '1': 'apply_wifi_security',
      '3': 1004,
      '4': 1,
      '5': 8,
      '8': {'3': true},
      '10': 'applyWifiSecurity',
    },
    {
      '1': 'apply_network_name_5ghz',
      '3': 1005,
      '4': 1,
      '5': 8,
      '8': {'3': true},
      '10': 'applyNetworkName5ghz',
    },
    {'1': 'apply_setup_complete', '3': 1010, '4': 1, '5': 8, '10': 'applySetupComplete'},
    {'1': 'apply_channel_2ghz', '3': 1013, '4': 1, '5': 8, '10': 'applyChannel2ghz'},
    {'1': 'apply_channel_5ghz', '3': 1014, '4': 1, '5': 8, '10': 'applyChannel5ghz'},
    {'1': 'apply_channel_5ghz_high', '3': 1016, '4': 1, '5': 8, '10': 'applyChannel5ghzHigh'},
    {'1': 'apply_is_repeater', '3': 1031, '4': 1, '5': 8, '10': 'applyIsRepeater'},
    {'1': 'apply_mesh_configs', '3': 1033, '4': 1, '5': 8, '10': 'applyMeshConfigs'},
    {'1': 'apply_nameservers', '3': 1054, '4': 1, '5': 8, '10': 'applyNameservers'},
    {'1': 'apply_bypass_mode', '3': 1055, '4': 1, '5': 8, '10': 'applyBypassMode'},
    {
      '1': 'apply_enable_remote_ssh',
      '3': 1057,
      '4': 1,
      '5': 8,
      '8': {'3': true},
      '10': 'applyEnableRemoteSsh',
    },
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
    {'1': 'apply_client_names', '3': 1074, '4': 1, '5': 8, '10': 'applyClientNames'},
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
    {'1': 'networks', '3': 1100, '4': 3, '5': 11, '6': '.SpaceX.API.Device.WifiConfig.Network', '10': 'networks'},
    {'1': 'apply_networks', '3': 1101, '4': 1, '5': 8, '10': 'applyNetworks'},
    {'1': 'boot', '3': 3001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.BootInfo', '10': 'boot'},
    {'1': 'mesh_configs_updates', '3': 3033, '4': 3, '5': 11, '6': '.SpaceX.API.Device.WifiConfig.MeshConfigsUpdatesEntry', '10': 'meshConfigsUpdates'},
  ],
  '3': [WifiConfig_MeshConfigsEntry$json, WifiConfig_MeshConfigsUpdatesEntry$json, WifiConfig_BasicServiceSet$json, WifiConfig_Network$json],
  '4': [WifiConfig_Band$json, WifiConfig_HTBandwidth$json, WifiConfig_Security$json, WifiConfig_VHTBandwidth$json, WifiConfig_WirelessMode$json],
  '9': [
    {'1': 4, '2': 5},
    {'1': 6, '2': 7},
    {'1': 8, '2': 9},
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
    {'1': 36, '2': 37},
    {'1': 38, '2': 39},
    {'1': 40, '2': 41},
    {'1': 41, '2': 42},
    {'1': 1003, '2': 1004},
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
    {'1': 2001, '2': 2002},
    {'1': 2002, '2': 2003},
    {'1': 2003, '2': 2004},
    {'1': 2004, '2': 2005},
    {'1': 2005, '2': 2006},
    {'1': 2006, '2': 2007},
    {'1': 2007, '2': 2008},
    {'1': 2008, '2': 2009},
  ],
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
    'CgpXaWZpQ29uZmlnEiEKDG5ldHdvcmtfbmFtZRgBIAEoCVILbmV0d29ya05hbWUSKQoQbmV0d2'
    '9ya19wYXNzd29yZBgCIAEoCVIPbmV0d29ya1Bhc3N3b3JkEiEKDGNvdW50cnlfY29kZRgDIAEo'
    'CVILY291bnRyeUNvZGUSHQoIbGFuX2lwdjQYBSABKAlCAhgBUgdsYW5JcHY0EiUKDnNldHVwX2'
    'NvbXBsZXRlGAcgASgIUg1zZXR1cENvbXBsZXRlEhgKB3ZlcnNpb24YCSABKA1SB3ZlcnNpb24S'
    'TwoNd2lmaV9zZWN1cml0eRgKIAEoDjImLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlDb25maWcuU2'
    'VjdXJpdHlCAhgBUgx3aWZpU2VjdXJpdHkSLgoRbmV0d29ya19uYW1lXzVnaHoYCyABKAlCAhgB'
    'Ug9uZXR3b3JrTmFtZTVnaHoSFwoHbWFjX3dhbhgMIAEoCVIGbWFjV2FuEhcKB21hY19sYW4YDS'
    'ABKAlSBm1hY0xhbhIhCgxjaGFubmVsXzJnaHoYEyABKA1SC2NoYW5uZWwyZ2h6EiEKDGNoYW5u'
    'ZWxfNWdoehgUIAEoDVILY2hhbm5lbDVnaHoSPwoMZHluYW1pY19rZXlzGBYgAygLMhwuU3BhY2'
    'VYLkFQSS5EZXZpY2UuUHVibGljS2V5UgtkeW5hbWljS2V5cxIfCgtpc19yZXBlYXRlchgXIAEo'
    'CFIKaXNSZXBlYXRlchIdCgpib290X2NvdW50GBogASgFUglib290Q291bnQSIAoLbmFtZXNlcn'
    'ZlcnMYHiADKAlSC25hbWVzZXJ2ZXJzEh8KC2J5cGFzc19tb2RlGB8gASgIUgpieXBhc3NNb2Rl'
    'ElEKDG1lc2hfY29uZmlncxghIAMoCzIuLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlDb25maWcuTW'
    'VzaENvbmZpZ3NFbnRyeVILbWVzaENvbmZpZ3MSLgoRZW5hYmxlX3JlbW90ZV9zc2gYIiABKAhC'
    'AhgBUg9lbmFibGVSZW1vdGVTc2gSNwoWbGFzdF9yZW1vdGVfc3NoX2FjY2VzcxgjIAEoA0ICGA'
    'FSE2xhc3RSZW1vdGVTc2hBY2Nlc3MSKAoOYXBwbHlfbGFuX2lwdjQYJSABKAhCAhgBUgxhcHBs'
    'eUxhbklwdjQSLAoSYXBwbHlfZHluYW1pY19rZXlzGCcgASgIUhBhcHBseUR5bmFtaWNLZXlzEh'
    '8KC2Rmc19lbmFibGVkGCogASgIUgpkZnNFbmFibGVkEiAKC2luY2FybmF0aW9uGCsgASgEUgtp'
    'bmNhcm5hdGlvbhJYChJ3aXJlbGVzc19tb2RlXzJnaHoYLCABKA4yKi5TcGFjZVguQVBJLkRldm'
    'ljZS5XaWZpQ29uZmlnLldpcmVsZXNzTW9kZVIQd2lyZWxlc3NNb2RlMmdoehJYChJ3aXJlbGVz'
    'c19tb2RlXzVnaHoYLSABKA4yKi5TcGFjZVguQVBJLkRldmljZS5XaWZpQ29uZmlnLldpcmVsZX'
    'NzTW9kZVIQd2lyZWxlc3NNb2RlNWdoehJVChFodF9iYW5kd2lkdGhfMmdoehguIAEoDjIpLlNw'
    'YWNlWC5BUEkuRGV2aWNlLldpZmlDb25maWcuSFRCYW5kd2lkdGhSD2h0QmFuZHdpZHRoMmdoeh'
    'JVChFodF9iYW5kd2lkdGhfNWdoehgvIAEoDjIpLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlDb25m'
    'aWcuSFRCYW5kd2lkdGhSD2h0QmFuZHdpZHRoNWdoehJPCg12aHRfYmFuZHdpZHRoGDAgASgOMi'
    'ouU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUNvbmZpZy5WSFRCYW5kd2lkdGhSDHZodEJhbmR3aWR0'
    'aBIfCgtpc19hdmlhdGlvbhgxIAEoCFIKaXNBdmlhdGlvbhIdCgpzZWN1cmVfZG5zGDIgASgIUg'
    'lzZWN1cmVEbnMSFwoHYXBfbW9kZRgzIAEoCFIGYXBNb2RlEjYKF2Rpc2FibGVfbWVzaF9vbmJv'
    'YXJkaW5nGDQgASgIUhVkaXNhYmxlTWVzaE9uYm9hcmRpbmcSKAoQcGluX2NvdW50cnlfY29kZR'
    'g1IAEoCFIOcGluQ291bnRyeUNvZGUSLAoSY3VzdG9tX3Bvd2VyX3RhYmxlGDYgASgIUhBjdXN0'
    'b21Qb3dlclRhYmxlEi4KE3VzZV9wdWJsaWNfc2VydmljZXMYNyABKAhSEXVzZVB1YmxpY1Nlcn'
    'ZpY2VzEkAKHGRpc2FibGVfYXV0b21hdGVkX3NwZWVkdGVzdHMYOCABKAhSGmRpc2FibGVBdXRv'
    'bWF0ZWRTcGVlZHRlc3RzEioKEWNoYW5uZWxfNWdoel9oaWdoGDkgASgNUg9jaGFubmVsNWdoek'
    'hpZ2gSYQoXd2lyZWxlc3NfbW9kZV81Z2h6X2hpZ2gYOiABKA4yKi5TcGFjZVguQVBJLkRldmlj'
    'ZS5XaWZpQ29uZmlnLldpcmVsZXNzTW9kZVIUd2lyZWxlc3NNb2RlNWdoekhpZ2gSXgoWaHRfYm'
    'FuZHdpZHRoXzVnaHpfaGlnaBg7IAEoDjIpLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlDb25maWcu'
    'SFRCYW5kd2lkdGhSE2h0QmFuZHdpZHRoNWdoekhpZ2gSYQoXdmh0X2JhbmR3aWR0aF81Z2h6X2'
    'hpZ2gYPCABKA4yKi5TcGFjZVguQVBJLkRldmljZS5XaWZpQ29uZmlnLlZIVEJhbmR3aWR0aFIU'
    'dmh0QmFuZHdpZHRoNWdoekhpZ2gSMgoVZW5hYmxlX3VtYmlsaWNhbF92bGFuGD0gASgIUhNlbm'
    'FibGVVbWJpbGljYWxWbGFuEkAKDGNsaWVudF9uYW1lcxg+IAMoCzIdLlNwYWNlWC5BUEkuRGV2'
    'aWNlLkNsaWVudE5hbWVSC2NsaWVudE5hbWVzEiEKDG91dGRvb3JfbW9kZRg/IAEoCFILb3V0ZG'
    '9vck1vZGUSIQoMZGlzYWJsZV8yZ2h6GEAgASgIUgtkaXNhYmxlMmdoehIhCgxkaXNhYmxlXzVn'
    'aHoYQSABKAhSC2Rpc2FibGU1Z2h6EioKEWRpc2FibGVfNWdoel9oaWdoGEIgASgIUg9kaXNhYm'
    'xlNWdoekhpZ2gSNQoXZGlzYWJsZV94X21lc2hfYmFja2hhdWwYQyABKAhSFGRpc2FibGVYTWVz'
    'aEJhY2toYXVsEiUKDGdvbGRlbl9ic3NpZBhEIAEoCUICGAFSC2dvbGRlbkJzc2lkEkwKEWdvbG'
    'Rlbl9pZmFjZV90eXBlGEUgASgOMhwuU3BhY2VYLkFQSS5EZXZpY2UuSWZhY2VUeXBlQgIYAVIP'
    'Z29sZGVuSWZhY2VUeXBlEk4KE3R4X3Bvd2VyX2xldmVsXzJnaHoYRiABKA4yHy5TcGFjZVguQV'
    'BJLkRldmljZS5UeFBvd2VyTGV2ZWxSEHR4UG93ZXJMZXZlbDJnaHoSTgoTdHhfcG93ZXJfbGV2'
    'ZWxfNWdoehhHIAEoDjIfLlNwYWNlWC5BUEkuRGV2aWNlLlR4UG93ZXJMZXZlbFIQdHhQb3dlck'
    'xldmVsNWdoehJXChh0eF9wb3dlcl9sZXZlbF81Z2h6X2hpZ2gYSCABKA4yHy5TcGFjZVguQVBJ'
    'LkRldmljZS5UeFBvd2VyTGV2ZWxSFHR4UG93ZXJMZXZlbDVnaHpIaWdoEkEKHWRpc2FibGVfcG'
    'VuZGluZ191cGRhdGVfcmVib290GEkgASgIUhpkaXNhYmxlUGVuZGluZ1VwZGF0ZVJlYm9vdBJG'
    'Cg5jbGllbnRfY29uZmlncxhKIAMoCzIfLlNwYWNlWC5BUEkuRGV2aWNlLkNsaWVudENvbmZpZ1'
    'INY2xpZW50Q29uZmlncxJTCidkaXNhYmxlX3NldF93aWZpX2NvbmZpZ19mcm9tX2NvbnRyb2xs'
    'ZXIYSyABKAhSImRpc2FibGVTZXRXaWZpQ29uZmlnRnJvbUNvbnRyb2xsZXISMQoSYXBwbHlfbm'
    'V0d29ya19uYW1lGOkHIAEoCEICGAFSEGFwcGx5TmV0d29ya05hbWUSOQoWYXBwbHlfbmV0d29y'
    'a19wYXNzd29yZBjqByABKAhCAhgBUhRhcHBseU5ldHdvcmtQYXNzd29yZBIzChNhcHBseV93aW'
    'ZpX3NlY3VyaXR5GOwHIAEoCEICGAFSEWFwcGx5V2lmaVNlY3VyaXR5EjoKF2FwcGx5X25ldHdv'
    'cmtfbmFtZV81Z2h6GO0HIAEoCEICGAFSFGFwcGx5TmV0d29ya05hbWU1Z2h6EjEKFGFwcGx5X3'
    'NldHVwX2NvbXBsZXRlGPIHIAEoCFISYXBwbHlTZXR1cENvbXBsZXRlEi0KEmFwcGx5X2NoYW5u'
    'ZWxfMmdoehj1ByABKAhSEGFwcGx5Q2hhbm5lbDJnaHoSLQoSYXBwbHlfY2hhbm5lbF81Z2h6GP'
    'YHIAEoCFIQYXBwbHlDaGFubmVsNWdoehI2ChdhcHBseV9jaGFubmVsXzVnaHpfaGlnaBj4ByAB'
    'KAhSFGFwcGx5Q2hhbm5lbDVnaHpIaWdoEisKEWFwcGx5X2lzX3JlcGVhdGVyGIcIIAEoCFIPYX'
    'BwbHlJc1JlcGVhdGVyEi0KEmFwcGx5X21lc2hfY29uZmlncxiJCCABKAhSEGFwcGx5TWVzaENv'
    'bmZpZ3MSLAoRYXBwbHlfbmFtZXNlcnZlcnMYngggASgIUhBhcHBseU5hbWVzZXJ2ZXJzEisKEW'
    'FwcGx5X2J5cGFzc19tb2RlGJ8IIAEoCFIPYXBwbHlCeXBhc3NNb2RlEjoKF2FwcGx5X2VuYWJs'
    'ZV9yZW1vdGVfc3NoGKEIIAEoCEICGAFSFGFwcGx5RW5hYmxlUmVtb3RlU3NoEisKEWFwcGx5X2'
    'Rmc19lbmFibGVkGKIIIAEoCFIPYXBwbHlEZnNFbmFibGVkEjgKGGFwcGx5X3dpcmVsZXNzX21v'
    'ZGVfMmdoehijCCABKAhSFWFwcGx5V2lyZWxlc3NNb2RlMmdoehI4ChhhcHBseV93aXJlbGVzc1'
    '9tb2RlXzVnaHoYpAggASgIUhVhcHBseVdpcmVsZXNzTW9kZTVnaHoSNgoXYXBwbHlfaHRfYmFu'
    'ZHdpZHRoXzJnaHoYpQggASgIUhRhcHBseUh0QmFuZHdpZHRoMmdoehI2ChdhcHBseV9odF9iYW'
    '5kd2lkdGhfNWdoehimCCABKAhSFGFwcGx5SHRCYW5kd2lkdGg1Z2h6Ei8KE2FwcGx5X3ZodF9i'
    'YW5kd2lkdGgYpwggASgIUhFhcHBseVZodEJhbmR3aWR0aBIrChFhcHBseV9pc19hdmlhdGlvbh'
    'ioCCABKAhSD2FwcGx5SXNBdmlhdGlvbhIpChBhcHBseV9zZWN1cmVfZG5zGKkIIAEoCFIOYXBw'
    'bHlTZWN1cmVEbnMSIwoNYXBwbHlfYXBfbW9kZRiqCCABKAhSC2FwcGx5QXBNb2RlEkIKHWFwcG'
    'x5X2Rpc2FibGVfbWVzaF9vbmJvYXJkaW5nGKsIIAEoCFIaYXBwbHlEaXNhYmxlTWVzaE9uYm9h'
    'cmRpbmcSOgoZYXBwbHlfdXNlX3B1YmxpY19zZXJ2aWNlcxisCCABKAhSFmFwcGx5VXNlUHVibG'
    'ljU2VydmljZXMSTAoiYXBwbHlfZGlzYWJsZV9hdXRvbWF0ZWRfc3BlZWR0ZXN0cxitCCABKAhS'
    'H2FwcGx5RGlzYWJsZUF1dG9tYXRlZFNwZWVkdGVzdHMSQQodYXBwbHlfd2lyZWxlc3NfbW9kZV'
    '81Z2h6X2hpZ2gYrgggASgIUhlhcHBseVdpcmVsZXNzTW9kZTVnaHpIaWdoEj8KHGFwcGx5X2h0'
    'X2JhbmR3aWR0aF81Z2h6X2hpZ2gYrwggASgIUhhhcHBseUh0QmFuZHdpZHRoNWdoekhpZ2gSQQ'
    'odYXBwbHlfdmh0X2JhbmR3aWR0aF81Z2h6X2hpZ2gYsAggASgIUhlhcHBseVZodEJhbmR3aWR0'
    'aDVnaHpIaWdoEj4KG2FwcGx5X2VuYWJsZV91bWJpbGljYWxfdmxhbhixCCABKAhSGGFwcGx5RW'
    '5hYmxlVW1iaWxpY2FsVmxhbhItChJhcHBseV9jbGllbnRfbmFtZXMYsgggASgIUhBhcHBseUNs'
    'aWVudE5hbWVzEi0KEmFwcGx5X291dGRvb3JfbW9kZRizCCABKAhSEGFwcGx5T3V0ZG9vck1vZG'
    'USLQoSYXBwbHlfZGlzYWJsZV8yZ2h6GLQIIAEoCFIQYXBwbHlEaXNhYmxlMmdoehItChJhcHBs'
    'eV9kaXNhYmxlXzVnaHoYtQggASgIUhBhcHBseURpc2FibGU1Z2h6EjYKF2FwcGx5X2Rpc2FibG'
    'VfNWdoel9oaWdoGLYIIAEoCFIUYXBwbHlEaXNhYmxlNWdoekhpZ2gSQQodYXBwbHlfZGlzYWJs'
    'ZV94X21lc2hfYmFja2hhdWwYtwggASgIUhlhcHBseURpc2FibGVYTWVzaEJhY2toYXVsEjEKEm'
    'FwcGx5X2dvbGRlbl9ic3NpZBi4CCABKAhCAhgBUhBhcHBseUdvbGRlbkJzc2lkEjoKF2FwcGx5'
    'X2dvbGRlbl9pZmFjZV90eXBlGLkIIAEoCEICGAFSFGFwcGx5R29sZGVuSWZhY2VUeXBlEjkKGW'
    'FwcGx5X3R4X3Bvd2VyX2xldmVsXzJnaHoYugggASgIUhVhcHBseVR4UG93ZXJMZXZlbDJnaHoS'
    'OQoZYXBwbHlfdHhfcG93ZXJfbGV2ZWxfNWdoehi7CCABKAhSFWFwcGx5VHhQb3dlckxldmVsNW'
    'doehJCCh5hcHBseV90eF9wb3dlcl9sZXZlbF81Z2h6X2hpZ2gYvAggASgIUhlhcHBseVR4UG93'
    'ZXJMZXZlbDVnaHpIaWdoEi0KEmFwcGx5X2NvdW50cnlfY29kZRi9CCABKAhSEGFwcGx5Q291bn'
    'RyeUNvZGUSNAoWYXBwbHlfcGluX2NvdW50cnlfY29kZRi+CCABKAhSE2FwcGx5UGluQ291bnRy'
    'eUNvZGUSOAoYYXBwbHlfY3VzdG9tX3Bvd2VyX3RhYmxlGL8IIAEoCFIVYXBwbHlDdXN0b21Qb3'
    'dlclRhYmxlEk0KI2FwcGx5X2Rpc2FibGVfcGVuZGluZ191cGRhdGVfcmVib290GMAIIAEoCFIf'
    'YXBwbHlEaXNhYmxlUGVuZGluZ1VwZGF0ZVJlYm9vdBIxChRhcHBseV9jbGllbnRfY29uZmlncx'
    'jBCCABKAhSEmFwcGx5Q2xpZW50Q29uZmlncxJfCi1hcHBseV9kaXNhYmxlX3NldF93aWZpX2Nv'
    'bmZpZ19mcm9tX2NvbnRyb2xsZXIYwgggASgIUidhcHBseURpc2FibGVTZXRXaWZpQ29uZmlnRn'
    'JvbUNvbnRyb2xsZXISQgoIbmV0d29ya3MYzAggAygLMiUuU3BhY2VYLkFQSS5EZXZpY2UuV2lm'
    'aUNvbmZpZy5OZXR3b3JrUghuZXR3b3JrcxImCg5hcHBseV9uZXR3b3JrcxjNCCABKAhSDWFwcG'
    'x5TmV0d29ya3MSMAoEYm9vdBi5FyABKAsyGy5TcGFjZVguQVBJLkRldmljZS5Cb290SW5mb1IE'
    'Ym9vdBJoChRtZXNoX2NvbmZpZ3NfdXBkYXRlcxjZFyADKAsyNS5TcGFjZVguQVBJLkRldmljZS'
    '5XaWZpQ29uZmlnLk1lc2hDb25maWdzVXBkYXRlc0VudHJ5UhJtZXNoQ29uZmlnc1VwZGF0ZXMa'
    'XQoQTWVzaENvbmZpZ3NFbnRyeRIQCgNrZXkYASABKAlSA2tleRIzCgV2YWx1ZRgCIAEoCzIdLl'
    'NwYWNlWC5BUEkuRGV2aWNlLk1lc2hDb25maWdSBXZhbHVlOgI4ARpkChdNZXNoQ29uZmlnc1Vw'
    'ZGF0ZXNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIzCgV2YWx1ZRgCIAEoCzIdLlNwYWNlWC5BUE'
    'kuRGV2aWNlLk1lc2hDb25maWdSBXZhbHVlOgI4ARreBAoPQmFzaWNTZXJ2aWNlU2V0EhUKBWJz'
    'c2lkGOsHIAEoCVIFYnNzaWQSEwoEc3NpZBjtByABKAlSBHNzaWQSNwoEYmFuZBjzByABKA4yIi'
    '5TcGFjZVguQVBJLkRldmljZS5XaWZpQ29uZmlnLkJhbmRSBGJhbmQSGQoHZGlzYWJsZRj1ByAB'
    'KAhSB2Rpc2FibGUSFwoGaGlkZGVuGPcHIAEoCFIGaGlkZGVuEh4KCmlmYWNlX25hbWUY+QcgAS'
    'gJUglpZmFjZU5hbWUSOwoJYXV0aF9vcGVuGNEPIAEoCzIbLlNwYWNlWC5BUEkuRGV2aWNlLkF1'
    'dGhPcGVuSABSCGF1dGhPcGVuEjsKCWF1dGhfd3BhMhjSDyABKAsyGy5TcGFjZVguQVBJLkRldm'
    'ljZS5BdXRoV3BhMkgAUghhdXRoV3BhMhI7CglhdXRoX3dwYTMY0w8gASgLMhsuU3BhY2VYLkFQ'
    'SS5EZXZpY2UuQXV0aFdwYTNIAFIIYXV0aFdwYTMSSAoOYXV0aF93cGEyX3dwYTMY1A8gASgLMh'
    '8uU3BhY2VYLkFQSS5EZXZpY2UuQXV0aFdwYTJXcGEzSABSDGF1dGhXcGEyV3BhMxJBCgthdXRo'
    'X3JhZGl1cxjVDyABKAsyHS5TcGFjZVguQVBJLkRldmljZS5BdXRoUmFkaXVzSABSCmF1dGhSYW'
    'RpdXNCBgoEYXV0aEoGCOgHEOkHSgYI6QcQ6gdKBgjqBxDrB0oGCOwHEO0HSgYI7gcQ7wdKBgj0'
    'BxD1B0oGCPYHEPcHSgYI+AcQ+QdKBgjQDxDRDxrHAgoHTmV0d29yaxITCgRpcHY0GOsHIAEoCV'
    'IEaXB2NBJcChJiYXNpY19zZXJ2aWNlX3NldHMY7wcgAygLMi0uU3BhY2VYLkFQSS5EZXZpY2Uu'
    'V2lmaUNvbmZpZy5CYXNpY1NlcnZpY2VTZXRSEGJhc2ljU2VydmljZVNldHMSKgoQY2xpZW50X2'
    'lzb2xhdGlvbhjwByABKAhSD2NsaWVudElzb2xhdGlvbhIVCgVndWVzdBjxByABKAhSBWd1ZXN0'
    'EhkKB2xhbmRpbmcY8gcgASgJUgdsYW5kaW5nEhcKBmRvbWFpbhjzByABKAlSBmRvbWFpbhIiCg'
    'xkaGNwdjRfc3RhcnQY9AcgASgNUgtkaGNwdjRTdGFydEoGCOgHEOkHSgYI6QcQ6gdKBgjqBxDr'
    'B0oGCOwHEO0HSgYI7QcQ7gdKBgjuBxDvByJCCgRCYW5kEg4KClJGX1VOS05PV04QABILCgdSRl'
    '8yR0haEAISCwoHUkZfNUdIWhAFEhAKDFJGXzVHSFpfSElHSBAGIl8KC0hUQmFuZHdpZHRoEhgK'
    'FEhUX0JBTkRXSURUSF9ERUZBVUxUEAASFwoTSFRfQkFORFdJRFRIXzIwX01IWhABEh0KGUhUX0'
    'JBTkRXSURUSF8yMF9PUl80MF9NSFoQAiI5CghTZWN1cml0eRILCgdVTktOT1dOEAASCAoEV1BB'
    'MhABEggKBFdQQTMQAhIMCghXUEEyV1BBMxADIpwBCgxWSFRCYW5kd2lkdGgSGQoVVkhUX0JBTk'
    'RXSURUSF9ERUZBVUxUEAASGgoWVkhUX0JBTkRXSURUSF9ESVNBQkxFRBABEhgKFFZIVF9CQU5E'
    'V0lEVEhfODBfTUhaEAISGQoVVkhUX0JBTkRXSURUSF8xNjBfTUhaEAMSIAocVkhUX0JBTkRXSU'
    'RUSF84MF9QTFVTXzgwX01IWhAEIuUBCgxXaXJlbGVzc01vZGUSGQoVV0lSRUxFU1NfTU9ERV9E'
    'RUZBVUxUEAASCgoGQV9PTkxZEAESCgoGQl9PTkxZEAISCgoGR19PTkxZEAMSCgoGTl9PTkxZEA'
    'QSDQoJQl9HX01JWEVEEAUSDQoJQV9OX01JWEVEEAYSDQoJR19OX01JWEVEEAcSDwoLQl9HX05f'
    'TUlYRUQQCBIRCg1BX0FOX0FDX01JWEVEEAkSDwoLQU5fQUNfTUlYRUQQChISCg5CX0dfTl9BWF'
    '9NSVhFRBALEhQKEEFfQU5fQUNfQVhfTUlYRUQQDEoECAQQBUoECAYQB0oECAgQCUoECA4QD0oE'
    'CA8QEEoECBAQEUoECBEQEkoECBIQE0oECBUQFkoECBgQGUoECBkQGkoECBsQHEoECBwQHUoECB'
    '0QHkoECCAQIUoECCQQJUoECCYQJ0oECCgQKUoECCkQKkoGCOsHEOwHSgYI7gcQ7wdKBgjvBxDw'
    'B0oGCPAHEPEHSgYI8QcQ8gdKBgjzBxD0B0oGCPQHEPUHSgYI9wcQ+AdKBgj9BxD+B0oGCJEIEJ'
    'IISgYImwgQnAhKBgicCBCdCEoGCJ0IEJ4ISgYIoAgQoQhKBgjRDxDSD0oGCNIPENMPSgYI0w8Q'
    '1A9KBgjUDxDVD0oGCNUPENYPSgYI1g8Q1w9KBgjXDxDYD0oGCNgPENkP');

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
  ],
};

/// Descriptor for `AuthRadius`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRadiusDescriptor = $convert.base64Decode(
    'CgpBdXRoUmFkaXVzEhYKBnNlcnZlchgBIAEoCVIGc2VydmVyEhoKCHBhc3N3b3JkGAIgASgJUg'
    'hwYXNzd29yZBIfCglzZXJ2ZXJfY2EYAyABKAlCAhgBUghzZXJ2ZXJDYRIpChFzZXJ2ZXJfY2Ff'
    'YmFzZV82NBgEIAEoCVIOc2VydmVyQ2FCYXNlNjQ=');

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
  ],
};

/// Descriptor for `WifiSetupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSetupRequestDescriptor = $convert.base64Decode(
    'ChBXaWZpU2V0dXBSZXF1ZXN0EhIKBHNraXAYASABKAhSBHNraXASIQoMbmV0d29ya19uYW1lGA'
    'IgASgJUgtuZXR3b3JrTmFtZRIpChBuZXR3b3JrX3Bhc3N3b3JkGAMgASgJUg9uZXR3b3JrUGFz'
    'c3dvcmQ=');

@$core.Deprecated('Use wifiGetPingMetricsRequestDescriptor instead')
const WifiGetPingMetricsRequest$json = {
  '1': 'WifiGetPingMetricsRequest',
};

/// Descriptor for `WifiGetPingMetricsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetPingMetricsRequestDescriptor = $convert.base64Decode(
    'ChlXaWZpR2V0UGluZ01ldHJpY3NSZXF1ZXN0');

@$core.Deprecated('Use wifiGetDiagnosticsRequestDescriptor instead')
const WifiGetDiagnosticsRequest$json = {
  '1': 'WifiGetDiagnosticsRequest',
};

/// Descriptor for `WifiGetDiagnosticsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetDiagnosticsRequestDescriptor = $convert.base64Decode(
    'ChlXaWZpR2V0RGlhZ25vc3RpY3NSZXF1ZXN0');

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
    {'1': 'wifi_set_config', '3': 3001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSetConfigResponse', '9': 0, '10': 'wifiSetConfig'},
    {'1': 'wifi_get_clients', '3': 3002, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetClientsResponse', '9': 0, '10': 'wifiGetClients'},
    {'1': 'wifi_setup', '3': 3003, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSetupResponse', '9': 0, '10': 'wifiSetup'},
    {'1': 'wifi_get_status', '3': 3004, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetStatusResponse', '9': 0, '10': 'wifiGetStatus'},
    {'1': 'wifi_authenticate', '3': 3005, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiAuthenticateResponse', '9': 0, '10': 'wifiAuthenticate'},
    {'1': 'wifi_get_history', '3': 3006, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetHistoryResponse', '9': 0, '10': 'wifiGetHistory'},
    {'1': 'wifi_get_ping_metrics', '3': 3007, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetPingMetricsResponse', '9': 0, '10': 'wifiGetPingMetrics'},
    {'1': 'wifi_get_diagnostics', '3': 3008, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetDiagnosticsResponse', '9': 0, '10': 'wifiGetDiagnostics'},
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
    {'1': 'wifi_get_persistent_stats', '3': 3022, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetPersistentStatsResponse', '9': 0, '10': 'wifiGetPersistentStats'},
    {'1': 'transceiver_if_loopback_test', '3': 4001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.TransceiverIFLoopbackTestResponse', '9': 0, '10': 'transceiverIfLoopbackTest'},
    {'1': 'transceiver_get_status', '3': 4003, '4': 1, '5': 11, '6': '.SpaceX.API.Device.TransceiverGetStatusResponse', '9': 0, '10': 'transceiverGetStatus'},
    {'1': 'transceiver_get_telemetry', '3': 4004, '4': 1, '5': 11, '6': '.SpaceX.API.Device.TransceiverGetTelemetryResponse', '9': 0, '10': 'transceiverGetTelemetry'},
  ],
  '8': [
    {'1': 'response'},
  ],
  '9': [
    {'1': 1018, '2': 1019},
    {'1': 1026, '2': 1027},
    {'1': 2025, '2': 2026},
    {'1': 3011, '2': 3012},
    {'1': 3014, '2': 3015},
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
    'ZWxlbRJDCglkaXNoX3N0b3cY0g8gASgLMiMuU3BhY2VYLkFQSS5EZXZpY2UuRGlzaFN0b3dSZX'
    'Nwb25zZUgAUghkaXNoU3RvdxJWChBkaXNoX2dldF9jb250ZXh0GNMPIAEoCzIpLlNwYWNlWC5B'
    'UEkuRGV2aWNlLkRpc2hHZXRDb250ZXh0UmVzcG9uc2VIAFIOZGlzaEdldENvbnRleHQSUwoPZG'
    'lzaF9nZXRfc3RhdHVzGNQPIAEoCzIoLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hHZXRTdGF0dXNS'
    'ZXNwb25zZUgAUg1kaXNoR2V0U3RhdHVzElsKEWRpc2hfYXV0aGVudGljYXRlGNUPIAEoCzIrLl'
    'NwYWNlWC5BUEkuRGV2aWNlLkRpc2hBdXRoZW50aWNhdGVSZXNwb25zZUgAUhBkaXNoQXV0aGVu'
    'dGljYXRlElYKEGRpc2hfZ2V0X2hpc3RvcnkY1g8gASgLMikuU3BhY2VYLkFQSS5EZXZpY2UuRG'
    'lzaEdldEhpc3RvcnlSZXNwb25zZUgAUg5kaXNoR2V0SGlzdG9yeRJKCgxkaXNoX3NldF9lbWMY'
    '1w8gASgLMiUuU3BhY2VYLkFQSS5EZXZpY2UuRGlzaFNldEVtY1Jlc3BvbnNlSABSCmRpc2hTZX'
    'RFbWMSbAoYZGlzaF9nZXRfb2JzdHJ1Y3Rpb25fbWFwGNgPIAEoCzIwLlNwYWNlWC5BUEkuRGV2'
    'aWNlLkRpc2hHZXRPYnN0cnVjdGlvbk1hcFJlc3BvbnNlSABSFWRpc2hHZXRPYnN0cnVjdGlvbk'
    '1hcBJKCgxkaXNoX2dldF9lbWMY2Q8gASgLMiUuU3BhY2VYLkFQSS5EZXZpY2UuRGlzaEdldEVt'
    'Y1Jlc3BvbnNlSABSCmRpc2hHZXRFbWMSUwoPZGlzaF9zZXRfY29uZmlnGNoPIAEoCzIoLlNwYW'
    'NlWC5BUEkuRGV2aWNlLkRpc2hTZXRDb25maWdSZXNwb25zZUgAUg1kaXNoU2V0Q29uZmlnElMK'
    'D2Rpc2hfZ2V0X2NvbmZpZxjbDyABKAsyKC5TcGFjZVguQVBJLkRldmljZS5EaXNoR2V0Q29uZm'
    'lnUmVzcG9uc2VIAFINZGlzaEdldENvbmZpZxJgChRzdGFydF9kaXNoX3NlbGZfdGVzdBjcDyAB'
    'KAsyLC5TcGFjZVguQVBJLkRldmljZS5TdGFydERpc2hTZWxmVGVzdFJlc3BvbnNlSABSEXN0YX'
    'J0RGlzaFNlbGZUZXN0ElYKEGRpc2hfaW5oaWJpdF9ncHMY3Q8gASgLMikuU3BhY2VYLkFQSS5E'
    'ZXZpY2UuRGlzaEluaGliaXRHcHNSZXNwb25zZUgAUg5kaXNoSW5oaWJpdEdwcxJTCg93aWZpX3'
    'NldF9jb25maWcYuRcgASgLMiguU3BhY2VYLkFQSS5EZXZpY2UuV2lmaVNldENvbmZpZ1Jlc3Bv'
    'bnNlSABSDXdpZmlTZXRDb25maWcSVgoQd2lmaV9nZXRfY2xpZW50cxi6FyABKAsyKS5TcGFjZV'
    'guQVBJLkRldmljZS5XaWZpR2V0Q2xpZW50c1Jlc3BvbnNlSABSDndpZmlHZXRDbGllbnRzEkYK'
    'CndpZmlfc2V0dXAYuxcgASgLMiQuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaVNldHVwUmVzcG9uc2'
    'VIAFIJd2lmaVNldHVwElMKD3dpZmlfZ2V0X3N0YXR1cxi8FyABKAsyKC5TcGFjZVguQVBJLkRl'
    'dmljZS5XaWZpR2V0U3RhdHVzUmVzcG9uc2VIAFINd2lmaUdldFN0YXR1cxJbChF3aWZpX2F1dG'
    'hlbnRpY2F0ZRi9FyABKAsyKy5TcGFjZVguQVBJLkRldmljZS5XaWZpQXV0aGVudGljYXRlUmVz'
    'cG9uc2VIAFIQd2lmaUF1dGhlbnRpY2F0ZRJWChB3aWZpX2dldF9oaXN0b3J5GL4XIAEoCzIpLl'
    'NwYWNlWC5BUEkuRGV2aWNlLldpZmlHZXRIaXN0b3J5UmVzcG9uc2VIAFIOd2lmaUdldEhpc3Rv'
    'cnkSYwoVd2lmaV9nZXRfcGluZ19tZXRyaWNzGL8XIAEoCzItLlNwYWNlWC5BUEkuRGV2aWNlLl'
    'dpZmlHZXRQaW5nTWV0cmljc1Jlc3BvbnNlSABSEndpZmlHZXRQaW5nTWV0cmljcxJiChR3aWZp'
    'X2dldF9kaWFnbm9zdGljcxjAFyABKAsyLS5TcGFjZVguQVBJLkRldmljZS5XaWZpR2V0RGlhZ2'
    '5vc3RpY3NSZXNwb25zZUgAUhJ3aWZpR2V0RGlhZ25vc3RpY3MSUwoPd2lmaV9nZXRfY29uZmln'
    'GMEXIAEoCzIoLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlHZXRDb25maWdSZXNwb25zZUgAUg13aW'
    'ZpR2V0Q29uZmlnEnAKGndpZmlfc2V0X21lc2hfZGV2aWNlX3RydXN0GMQXIAEoCzIxLlNwYWNl'
    'WC5BUEkuRGV2aWNlLldpZmlTZXRNZXNoRGV2aWNlVHJ1c3RSZXNwb25zZUgAUhZ3aWZpU2V0TW'
    'VzaERldmljZVRydXN0EmQKFHdpZmlfc2V0X21lc2hfY29uZmlnGMUXIAEoCzIsLlNwYWNlWC5B'
    'UEkuRGV2aWNlLldpZmlTZXRNZXNoQ29uZmlnUmVzcG9uc2VCAhgBSABSEXdpZmlTZXRNZXNoQ2'
    '9uZmlnEmkKF3dpZmlfZ2V0X2NsaWVudF9oaXN0b3J5GMcXIAEoCzIvLlNwYWNlWC5BUEkuRGV2'
    'aWNlLldpZmlHZXRDbGllbnRIaXN0b3J5UmVzcG9uc2VIAFIUd2lmaUdldENsaWVudEhpc3Rvcn'
    'kSUAoOd2lmaV9zZWxmX3Rlc3QYyBcgASgLMicuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaVNlbGZU'
    'ZXN0UmVzcG9uc2VIAFIMd2lmaVNlbGZUZXN0Em8KGXdpZmlfZ2V0X3BlcnNpc3RlbnRfc3RhdH'
    'MYzhcgASgLMjEuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUdldFBlcnNpc3RlbnRTdGF0c1Jlc3Bv'
    'bnNlSABSFndpZmlHZXRQZXJzaXN0ZW50U3RhdHMSeAocdHJhbnNjZWl2ZXJfaWZfbG9vcGJhY2'
    'tfdGVzdBihHyABKAsyNC5TcGFjZVguQVBJLkRldmljZS5UcmFuc2NlaXZlcklGTG9vcGJhY2tU'
    'ZXN0UmVzcG9uc2VIAFIZdHJhbnNjZWl2ZXJJZkxvb3BiYWNrVGVzdBJoChZ0cmFuc2NlaXZlcl'
    '9nZXRfc3RhdHVzGKMfIAEoCzIvLlNwYWNlWC5BUEkuRGV2aWNlLlRyYW5zY2VpdmVyR2V0U3Rh'
    'dHVzUmVzcG9uc2VIAFIUdHJhbnNjZWl2ZXJHZXRTdGF0dXMScQoZdHJhbnNjZWl2ZXJfZ2V0X3'
    'RlbGVtZXRyeRikHyABKAsyMi5TcGFjZVguQVBJLkRldmljZS5UcmFuc2NlaXZlckdldFRlbGVt'
    'ZXRyeVJlc3BvbnNlSABSF3RyYW5zY2VpdmVyR2V0VGVsZW1ldHJ5QgoKCHJlc3BvbnNlSgYI+g'
    'cQ+wdKBgiCCBCDCEoGCOkPEOoPSgYIwxcQxBdKBgjGFxDHFw==');

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
    '9ob3VzZWQSMAoEYm9vdBjpByABKAsyGy5TcGFjZVguQVBJLkRldmljZS5Cb290SW5mb1IEYm9v'
    'dA==');

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
    {'1': 'syslog', '3': 1, '4': 1, '5': 9, '10': 'syslog'},
    {'1': 'offline_log', '3': 2, '4': 1, '5': 9, '10': 'offlineLog'},
    {'1': 'persistent_log', '3': 3, '4': 1, '5': 9, '10': 'persistentLog'},
  ],
};

/// Descriptor for `GetLogResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLogResponseDescriptor = $convert.base64Decode(
    'Cg5HZXRMb2dSZXNwb25zZRIWCgZzeXNsb2cYASABKAlSBnN5c2xvZxIfCgtvZmZsaW5lX2xvZx'
    'gCIAEoCVIKb2ZmbGluZUxvZxIlCg5wZXJzaXN0ZW50X2xvZxgDIAEoCVINcGVyc2lzdGVudExv'
    'Zw==');

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
    {'1': 'thermal_status', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiNetworkInterface.ThermalStatus', '10': 'thermalStatus'},
    {'1': 'invalid_packet_counts', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiNetworkInterface.InvalidPacketCounts', '10': 'invalidPacketCounts'},
    {'1': 'channel', '3': 3, '4': 1, '5': 13, '10': 'channel'},
    {'1': 'link_quality', '3': 4, '4': 1, '5': 1, '10': 'linkQuality'},
    {'1': 'signal_level', '3': 5, '4': 1, '5': 1, '10': 'signalLevel'},
    {'1': 'noise_level', '3': 6, '4': 1, '5': 1, '10': 'noiseLevel'},
    {'1': 'missed_beacons', '3': 8, '4': 1, '5': 13, '10': 'missedBeacons'},
    {'1': 'antennae_status', '3': 9, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiNetworkInterface.AntennaeStatus', '10': 'antennaeStatus'},
  ],
  '3': [WifiNetworkInterface_AntennaeStatus$json, WifiNetworkInterface_InvalidPacketCounts$json, WifiNetworkInterface_ThermalStatus$json],
  '9': [
    {'1': 7, '2': 8},
  ],
};

@$core.Deprecated('Use wifiNetworkInterfaceDescriptor instead')
const WifiNetworkInterface_AntennaeStatus$json = {
  '1': 'AntennaeStatus',
  '2': [
    {'1': 'rssi1', '3': 1, '4': 1, '5': 2, '10': 'rssi1'},
    {'1': 'rssi2', '3': 2, '4': 1, '5': 2, '10': 'rssi2'},
    {'1': 'rssi3', '3': 3, '4': 1, '5': 2, '10': 'rssi3'},
    {'1': 'rssi4', '3': 4, '4': 1, '5': 2, '10': 'rssi4'},
  ],
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

@$core.Deprecated('Use wifiNetworkInterfaceDescriptor instead')
const WifiNetworkInterface_ThermalStatus$json = {
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

/// Descriptor for `WifiNetworkInterface`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiNetworkInterfaceDescriptor = $convert.base64Decode(
    'ChRXaWZpTmV0d29ya0ludGVyZmFjZRJcCg50aGVybWFsX3N0YXR1cxgBIAEoCzI1LlNwYWNlWC'
    '5BUEkuRGV2aWNlLldpZmlOZXR3b3JrSW50ZXJmYWNlLlRoZXJtYWxTdGF0dXNSDXRoZXJtYWxT'
    'dGF0dXMSbwoVaW52YWxpZF9wYWNrZXRfY291bnRzGAIgASgLMjsuU3BhY2VYLkFQSS5EZXZpY2'
    'UuV2lmaU5ldHdvcmtJbnRlcmZhY2UuSW52YWxpZFBhY2tldENvdW50c1ITaW52YWxpZFBhY2tl'
    'dENvdW50cxIYCgdjaGFubmVsGAMgASgNUgdjaGFubmVsEiEKDGxpbmtfcXVhbGl0eRgEIAEoAV'
    'ILbGlua1F1YWxpdHkSIQoMc2lnbmFsX2xldmVsGAUgASgBUgtzaWduYWxMZXZlbBIfCgtub2lz'
    'ZV9sZXZlbBgGIAEoAVIKbm9pc2VMZXZlbBIlCg5taXNzZWRfYmVhY29ucxgIIAEoDVINbWlzc2'
    'VkQmVhY29ucxJfCg9hbnRlbm5hZV9zdGF0dXMYCSABKAsyNi5TcGFjZVguQVBJLkRldmljZS5X'
    'aWZpTmV0d29ya0ludGVyZmFjZS5BbnRlbm5hZVN0YXR1c1IOYW50ZW5uYWVTdGF0dXMaaAoOQW'
    '50ZW5uYWVTdGF0dXMSFAoFcnNzaTEYASABKAJSBXJzc2kxEhQKBXJzc2kyGAIgASgCUgVyc3Np'
    'MhIUCgVyc3NpMxgDIAEoAlIFcnNzaTMSFAoFcnNzaTQYBCABKAJSBXJzc2k0GuQBChNJbnZhbG'
    'lkUGFja2V0Q291bnRzEiYKD3J4X2ludmFsaWRfbndpZBgBIAEoDVINcnhJbnZhbGlkTndpZBIo'
    'ChByeF9pbnZhbGlkX2NyeXB0GAIgASgNUg5yeEludmFsaWRDcnlwdBImCg9yeF9pbnZhbGlkX2'
    'ZyYWcYAyABKA1SDXJ4SW52YWxpZEZyYWcSMAoUdHhfZXhjZXNzaXZlX3JldHJpZXMYBCABKA1S'
    'EnR4RXhjZXNzaXZlUmV0cmllcxIhCgxpbnZhbGlkX21pc2MYBSABKA1SC2ludmFsaWRNaXNjGp'
    'sBCg1UaGVybWFsU3RhdHVzEhQKBWxldmVsGAEgASgNUgVsZXZlbBIWCgR0ZW1wGAIgASgNQgIY'
    'AVIEdGVtcBIUCgV0ZW1wMhgDIAEoAVIFdGVtcDISJwoPcG93ZXJfcmVkdWN0aW9uGAQgASgNUg'
    '5wb3dlclJlZHVjdGlvbhIdCgpkdXR5X2N5Y2xlGAUgASgNUglkdXR5Q3ljbGVKBAgHEAg=');

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
    '9kaXNhYmxlbWVudENvZGU=');

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
    'blNlY29uZHNSHWluaXRpYWxpemF0aW9uRHVyYXRpb25TZWNvbmRzEjYKBmNvbmZpZxjQDyABKA'
    'syHS5TcGFjZVguQVBJLkRldmljZS5EaXNoQ29uZmlnUgZjb25maWdKBgjpBxDqB0oGCO4HEO8H'
    'SgYI9QcQ9gc=');

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
    {'1': 'moving_fast_while_not_aviation', '3': 13, '4': 1, '5': 8, '10': 'movingFastWhileNotAviation'},
    {'1': 'dbf_telem_stale', '3': 14, '4': 1, '5': 8, '10': 'dbfTelemStale'},
  ],
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
    '1vdmluZ193aGlsZV9ub3RfbW9iaWxlGAwgASgIUhRtb3ZpbmdXaGlsZU5vdE1vYmlsZRJCCh5t'
    'b3ZpbmdfZmFzdF93aGlsZV9ub3RfYXZpYXRpb24YDSABKAhSGm1vdmluZ0Zhc3RXaGlsZU5vdE'
    'F2aWF0aW9uEiYKD2RiZl90ZWxlbV9zdGFsZRgOIAEoCFINZGJmVGVsZW1TdGFsZQ==');

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
    {'1': 'min_elevation_deg', '3': 4, '4': 1, '5': 2, '10': 'minElevationDeg'},
  ],
};

/// Descriptor for `DishGetObstructionMapResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGetObstructionMapResponseDescriptor = $convert.base64Decode(
    'Ch1EaXNoR2V0T2JzdHJ1Y3Rpb25NYXBSZXNwb25zZRIZCghudW1fcm93cxgBIAEoDVIHbnVtUm'
    '93cxIZCghudW1fY29scxgCIAEoDVIHbnVtQ29scxIQCgNzbnIYAyADKAJSA3NuchIqChFtaW5f'
    'ZWxldmF0aW9uX2RlZxgEIAEoAlIPbWluRWxldmF0aW9uRGVn');

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
    'BJLkRldmljZS5XaWZpQ2xpZW50LkZxY29kZWxJbmZvUgtmcWNvZGVsSW5mbxqUAwoLRnFjb2Rl'
    'bEluZm8SIAoMZW5xc19oaV9wcmlvGAEgASgEUgplbnFzSGlQcmlvEiEKDGVucXNfZnFjb2RlbB'
    'gCIAEoBFILZW5xc0ZxY29kZWwSGQoIZW5xc19uZXcYAyABKARSB2VucXNOZXcSGQoIZW5xc19v'
    'bGQYBCABKARSB2VucXNPbGQSIQoMZW5xc19kcm9wcGVkGAUgASgEUgtlbnFzRHJvcHBlZBIZCg'
    'hkZXFzX25ldxgGIAEoBFIHZGVxc05ldxIZCghkZXFzX29sZBgHIAEoBFIHZGVxc09sZBIiCg1k'
    'ZXFzX2Zsb3dfbmV3GAggASgEUgtkZXFzRmxvd05ldxIxChVkZXFzX2Zsb3dfb2xkX2RlZmljaX'
    'QYCSABKARSEmRlcXNGbG93T2xkRGVmaWNpdBI3ChhkZXFzX2Zsb3dfb2xkX3N0YXJ2YXRpb24Y'
    'CiABKARSFWRlcXNGbG93T2xkU3RhcnZhdGlvbhIhCgxkZXFzX2Ryb3BwZWQYCyABKARSC2RlcX'
    'NEcm9wcGVkGqgBCgtQaW5nTWV0cmljcxIrChJpbl91bmhhcHB5X2hvdXJfMnMYASABKAhSD2lu'
    'VW5oYXBweUhvdXIycxIrChJpbl91bmhhcHB5X2hvdXJfNXMYAiABKAhSD2luVW5oYXBweUhvdX'
    'I1cxIgCgxkcm9wX3JhdGVfNW0YAyABKAJSCmRyb3BSYXRlNW0SHQoKbGF0ZW5jeV81bRgEIAEo'
    'AlIJbGF0ZW5jeTVtGtwDCgdSeFN0YXRzEhQKBWJ5dGVzGAEgASgEUgVieXRlcxIhCgxjb3VudF'
    '9lcnJvcnMYAiABKARSC2NvdW50RXJyb3JzEhAKA25zcxgDIAEoBVIDbnNzEhAKA21jcxgFIAEo'
    'DVIDbWNzEhwKCWJhbmR3aWR0aBgGIAEoDVIJYmFuZHdpZHRoEhkKCGd1YXJkX25zGAcgASgNUg'
    'dndWFyZE5zEhsKCXJhdGVfbWJwcxgIIAEoDVIIcmF0ZU1icHMSNwoYYWlydGltZV9mcmFjdGlv'
    'bl9sYXN0XzFzGAkgASgCUhVhaXJ0aW1lRnJhY3Rpb25MYXN0MXMSJwoPc2FtcGxlZF9wYWNrZX'
    'RzGAogASgNUg5zYW1wbGVkUGFja2V0cxI2ChdzYW1wbGVkX3BhY2tldHNfcmV0cmllZBgLIAEo'
    'DVIVc2FtcGxlZFBhY2tldHNSZXRyaWVkEjYKF3NhbXBsZWRfcGFja2V0c19kcm9wcGVkGAwgAS'
    'gNUhVzYW1wbGVkUGFja2V0c0Ryb3BwZWQSGQoIcGh5X21vZGUYDSABKA1SB3BoeU1vZGUSKwoS'
    'cmF0ZV9tYnBzX2xhc3RfMzBzGA4gASgCUg9yYXRlTWJwc0xhc3QzMHNKBAgEEAUaxQIKB1R4U3'
    'RhdHMSFAoFYnl0ZXMYASABKARSBWJ5dGVzEiMKDXN1Y2Nlc3NfYnl0ZXMYAiABKARSDHN1Y2Nl'
    'c3NCeXRlcxIQCgNuc3MYAyABKAVSA25zcxIQCgNtY3MYBSABKA1SA21jcxIcCgliYW5kd2lkdG'
    'gYBiABKA1SCWJhbmR3aWR0aBIZCghndWFyZF9ucxgHIAEoDVIHZ3VhcmROcxIbCglyYXRlX21i'
    'cHMYCCABKA1SCHJhdGVNYnBzEjcKGGFpcnRpbWVfZnJhY3Rpb25fbGFzdF8xcxgJIAEoAlIVYW'
    'lydGltZUZyYWN0aW9uTGFzdDFzEhkKCHBoeV9tb2RlGAogASgNUgdwaHlNb2RlEisKEnJhdGVf'
    'bWJwc19sYXN0XzMwcxgLIAEoAlIPcmF0ZU1icHNMYXN0MzBzSgQIBBAFIk0KCUludGVyZmFjZR'
    'ILCgdVTktOT1dOEAASBwoDRVRIEAESCwoHUkZfMkdIWhACEgsKB1JGXzVHSFoQAxIQCgxSRl81'
    'R0haX0hJR0gQBCJCCgRSb2xlEhAKDFJPTEVfVU5LTk9XThAAEgoKBkNMSUVOVBABEgwKCFJFUE'
    'VBVEVSEAISDgoKQ09OVFJPTExFUhAD');

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
    'JhdGVfNW0Y/QcgASgCUg5waW5nRHJvcFJhdGU1bRI2CgZjb25maWcY0A8gASgLMh0uU3BhY2VY'
    'LkFQSS5EZXZpY2UuV2lmaUNvbmZpZ1IGY29uZmlnEjgKB2NsaWVudHMYuBcgAygLMh0uU3BhY2'
    'VYLkFQSS5EZXZpY2UuV2lmaUNsaWVudFIHY2xpZW50cxIpChBoYXNfY2xpZW50X2luZGV4GLkX'
    'IAEoCFIOaGFzQ2xpZW50SW5kZXgSIgoMY2xpZW50X2luZGV4GLoXIAEoBVILY2xpZW50SW5kZX'
    'gSRQoMcmFkaXVzX3N0YXRzGLsXIAEoCzIhLlNwYWNlWC5BUEkuRGV2aWNlLlJhZGl1c1N0YXRz'
    'TWFwUgtyYWRpdXNTdGF0c0oECAIQA0oECAUQBkoECAYQB0oECAcQCEoGCOkHEOoHSgYI6gcQ6w'
    'dKBgjuBxDvB0oGCO8HEPAH');

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
    'VzaFVucmVsaWFibGVCYWNraGF1bEoECAYQB0oECAcQCEoECAgQCUoECAkQClIraW5jb25zaXN0'
    'ZW50XzJnaHpfYW50ZW5uYWVfcGVyZm9ybWFuY2VfMTVkYlIraW5jb25zaXN0ZW50XzVnaHpfYW'
    '50ZW5uYWVfcGVyZm9ybWFuY2VfMTVkYlIjcG9vcl8yZ2h6X2FudGVubmFlX3BlcmZvcm1hbmNl'
    'XzgwZGJSI3Bvb3JfNWdoel9hbnRlbm5hZV9wZXJmb3JtYW5jZV84MGRi');

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
    {'1': 'latency_mean_ms_1d', '3': 5, '4': 1, '5': 2, '10': 'latencyMeanMs1d'},
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
    'ABKAJSD2xhdGVuY3lNZWFuTXMxaBIrChJsYXRlbmN5X21lYW5fbXNfMWQYBSABKAJSD2xhdGVu'
    'Y3lNZWFuTXMxZBIbCglkcm9wX3JhdGUYBiABKAJSCGRyb3BSYXRlEiAKDGRyb3BfcmF0ZV81bR'
    'gHIAEoAlIKZHJvcFJhdGU1bRIgCgxkcm9wX3JhdGVfMWgYCCABKAJSCmRyb3BSYXRlMWgSIAoM'
    'ZHJvcF9yYXRlXzFkGAkgASgCUgpkcm9wUmF0ZTFkEjsKGnNlY29uZHNfc2luY2VfbGFzdF9zdW'
    'NjZXNzGAogASgCUhdzZWNvbmRzU2luY2VMYXN0U3VjY2VzcxI+ChxzZWNvbmRzX3NpbmNlX2xh'
    'c3RfMXNfb3V0YWdlGAsgASgCUhhzZWNvbmRzU2luY2VMYXN0MXNPdXRhZ2USPgocc2Vjb25kc1'
    '9zaW5jZV9sYXN0XzVzX291dGFnZRgMIAEoAlIYc2Vjb25kc1NpbmNlTGFzdDVzT3V0YWdlEikK'
    'EWhhcHB5X2hvdXJzXzFzXzFkGA0gASgCUg5oYXBweUhvdXJzMXMxZBIpChFoYXBweV9ob3Vyc1'
    '81c18xZBgOIAEoAlIOaGFwcHlIb3VyczVzMWQSPgocc2Vjb25kc19zaW5jZV9sYXN0XzJzX291'
    'dGFnZRgPIAEoAlIYc2Vjb25kc1NpbmNlTGFzdDJzT3V0YWdlEikKEWhhcHB5X2hvdXJzXzJzXz'
    'FkGBAgASgCUg5oYXBweUhvdXJzMnMxZBJACh1zZWNvbmRzX3NpbmNlX2xhc3RfMTVzX291dGFn'
    'ZRgSIAEoAlIZc2Vjb25kc1NpbmNlTGFzdDE1c091dGFnZRJACh1zZWNvbmRzX3NpbmNlX2xhc3'
    'RfNjBzX291dGFnZRgTIAEoAlIZc2Vjb25kc1NpbmNlTGFzdDYwc091dGFnZRJCCh5zZWNvbmRz'
    'X3NpbmNlX2xhc3RfMzAwc19vdXRhZ2UYFCABKAJSGnNlY29uZHNTaW5jZUxhc3QzMDBzT3V0YW'
    'dl');

@$core.Deprecated('Use wifiGetDiagnosticsResponseDescriptor instead')
const WifiGetDiagnosticsResponse$json = {
  '1': 'WifiGetDiagnosticsResponse',
  '2': [
    {'1': 'network_scan', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiScanResults', '10': 'networkScan'},
    {'1': 'wifi_networks', '3': 2, '4': 3, '5': 11, '6': '.SpaceX.API.Device.WifiNetwork', '10': 'wifiNetworks'},
  ],
};

/// Descriptor for `WifiGetDiagnosticsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetDiagnosticsResponseDescriptor = $convert.base64Decode(
    'ChpXaWZpR2V0RGlhZ25vc3RpY3NSZXNwb25zZRJFCgxuZXR3b3JrX3NjYW4YASABKAsyIi5TcG'
    'FjZVguQVBJLkRldmljZS5XaWZpU2NhblJlc3VsdHNSC25ldHdvcmtTY2FuEkMKDXdpZmlfbmV0'
    'd29ya3MYAiADKAsyHi5TcGFjZVguQVBJLkRldmljZS5XaWZpTmV0d29ya1IMd2lmaU5ldHdvcm'
    'tz');

@$core.Deprecated('Use wifiScanResultsDescriptor instead')
const WifiScanResults$json = {
  '1': 'WifiScanResults',
  '2': [
    {'1': 'networks', '3': 1, '4': 3, '5': 11, '6': '.SpaceX.API.Device.WifiScanResults.Network', '10': 'networks'},
  ],
  '3': [WifiScanResults_Network$json],
};

@$core.Deprecated('Use wifiScanResultsDescriptor instead')
const WifiScanResults_Network$json = {
  '1': 'Network',
  '2': [
    {'1': 'source', '3': 1, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiScanResults.Network.Source', '10': 'source'},
    {'1': 'ssid', '3': 2, '4': 1, '5': 9, '10': 'ssid'},
    {'1': 'bssid', '3': 3, '4': 1, '5': 9, '10': 'bssid'},
    {'1': 'frequency_ghz', '3': 4, '4': 1, '5': 9, '10': 'frequencyGhz'},
    {'1': 'channel', '3': 5, '4': 1, '5': 5, '10': 'channel'},
    {'1': 'signal_level_dbm', '3': 6, '4': 1, '5': 5, '10': 'signalLevelDbm'},
    {'1': 'noise_level_dbm', '3': 7, '4': 1, '5': 5, '10': 'noiseLevelDbm'},
    {'1': 'has_encryption_key', '3': 8, '4': 1, '5': 8, '10': 'hasEncryptionKey'},
    {'1': 'phy_mode_str', '3': 9, '4': 1, '5': 9, '10': 'phyModeStr'},
  ],
  '4': [WifiScanResults_Network_Source$json],
};

@$core.Deprecated('Use wifiScanResultsDescriptor instead')
const WifiScanResults_Network_Source$json = {
  '1': 'Source',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'SCAN_2_4GHZ', '2': 1},
    {'1': 'SCAN_5GHZ', '2': 2},
  ],
};

/// Descriptor for `WifiScanResults`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiScanResultsDescriptor = $convert.base64Decode(
    'Cg9XaWZpU2NhblJlc3VsdHMSRgoIbmV0d29ya3MYASADKAsyKi5TcGFjZVguQVBJLkRldmljZS'
    '5XaWZpU2NhblJlc3VsdHMuTmV0d29ya1IIbmV0d29ya3MalgMKB05ldHdvcmsSSQoGc291cmNl'
    'GAEgASgOMjEuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaVNjYW5SZXN1bHRzLk5ldHdvcmsuU291cm'
    'NlUgZzb3VyY2USEgoEc3NpZBgCIAEoCVIEc3NpZBIUCgVic3NpZBgDIAEoCVIFYnNzaWQSIwoN'
    'ZnJlcXVlbmN5X2doehgEIAEoCVIMZnJlcXVlbmN5R2h6EhgKB2NoYW5uZWwYBSABKAVSB2NoYW'
    '5uZWwSKAoQc2lnbmFsX2xldmVsX2RibRgGIAEoBVIOc2lnbmFsTGV2ZWxEYm0SJgoPbm9pc2Vf'
    'bGV2ZWxfZGJtGAcgASgFUg1ub2lzZUxldmVsRGJtEiwKEmhhc19lbmNyeXB0aW9uX2tleRgIIA'
    'EoCFIQaGFzRW5jcnlwdGlvbktleRIgCgxwaHlfbW9kZV9zdHIYCSABKAlSCnBoeU1vZGVTdHIi'
    'NQoGU291cmNlEgsKB1VOS05PV04QABIPCgtTQ0FOXzJfNEdIWhABEg0KCVNDQU5fNUdIWhAC');

@$core.Deprecated('Use wifiNetworkDescriptor instead')
const WifiNetwork$json = {
  '1': 'WifiNetwork',
  '2': [
    {'1': 'band', '3': 1, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiNetwork.Band', '10': 'band'},
    {'1': 'ssid', '3': 2, '4': 1, '5': 9, '10': 'ssid'},
    {'1': 'channel', '3': 3, '4': 1, '5': 13, '10': 'channel'},
    {'1': 'encryption_type_str', '3': 4, '4': 1, '5': 9, '10': 'encryptionTypeStr'},
  ],
  '4': [WifiNetwork_Band$json],
};

@$core.Deprecated('Use wifiNetworkDescriptor instead')
const WifiNetwork_Band$json = {
  '1': 'Band',
  '2': [
    {'1': 'WIFI_UNKNOWN', '2': 0},
    {'1': 'WIFI_2_4GHZ', '2': 1},
    {'1': 'WIFI_5GHZ', '2': 2},
  ],
};

/// Descriptor for `WifiNetwork`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiNetworkDescriptor = $convert.base64Decode(
    'CgtXaWZpTmV0d29yaxI3CgRiYW5kGAEgASgOMiMuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaU5ldH'
    'dvcmsuQmFuZFIEYmFuZBISCgRzc2lkGAIgASgJUgRzc2lkEhgKB2NoYW5uZWwYAyABKA1SB2No'
    'YW5uZWwSLgoTZW5jcnlwdGlvbl90eXBlX3N0chgEIAEoCVIRZW5jcnlwdGlvblR5cGVTdHIiOA'
    'oEQmFuZBIQCgxXSUZJX1VOS05PV04QABIPCgtXSUZJXzJfNEdIWhABEg0KCVdJRklfNUdIWhAC');

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
  ],
};

/// Descriptor for `WifiSelfTestResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSelfTestResponseDescriptor = $convert.base64Decode(
    'ChRXaWZpU2VsZlRlc3RSZXNwb25zZRI8CglzZWxmX3Rlc3QYASABKAsyHy5TcGFjZVguQVBJLk'
    'RldmljZS5XaWZpU2VsZlRlc3RSCHNlbGZUZXN0');

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
  ],
};

/// Descriptor for `WifiCloudStatusEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiCloudStatusEventDescriptor = $convert.base64Decode(
    'ChRXaWZpQ2xvdWRTdGF0dXNFdmVudBItChNkaXJlY3RfbGlua190b19kaXNoGAEgASgIUhBkaX'
    'JlY3RMaW5rVG9EaXNoEikKEGhhcmR3YXJlX3ZlcnNpb24YAiABKAlSD2hhcmR3YXJlVmVyc2lv'
    'bg==');

