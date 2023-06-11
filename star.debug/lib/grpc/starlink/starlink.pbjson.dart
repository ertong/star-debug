///
//  Generated code. Do not modify.
//  source: starlink.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use capabilityDescriptor instead')
const Capability$json = const {
  '1': 'Capability',
  '2': const [
    const {'1': 'READ', '2': 0},
    const {'1': 'WRITE', '2': 1},
    const {'1': 'DEBUG', '2': 2},
    const {'1': 'ADMIN', '2': 3},
    const {'1': 'SETUP', '2': 4},
    const {'1': 'SET_SKU', '2': 5},
    const {'1': 'REFRESH', '2': 6},
    const {'1': 'READ_PRIVATE', '2': 7},
    const {'1': 'FUSE', '2': 8},
    const {'1': 'RESET', '2': 9},
    const {'1': 'TEST', '2': 10},
    const {'1': 'WRITE_PERSISTENT', '2': 11},
    const {'1': 'SSH', '2': 12},
    const {'1': 'READ_INTERNAL', '2': 13},
    const {'1': 'LOCAL', '2': 14},
  ],
};

/// Descriptor for `Capability`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List capabilityDescriptor = $convert.base64Decode('CgpDYXBhYmlsaXR5EggKBFJFQUQQABIJCgVXUklURRABEgkKBURFQlVHEAISCQoFQURNSU4QAxIJCgVTRVRVUBAEEgsKB1NFVF9TS1UQBRILCgdSRUZSRVNIEAYSEAoMUkVBRF9QUklWQVRFEAcSCAoERlVTRRAIEgkKBVJFU0VUEAkSCAoEVEVTVBAKEhQKEFdSSVRFX1BFUlNJU1RFTlQQCxIHCgNTU0gQDBIRCg1SRUFEX0lOVEVSTkFMEA0SCQoFTE9DQUwQDg==');
@$core.Deprecated('Use positionSourceDescriptor instead')
const PositionSource$json = const {
  '1': 'PositionSource',
  '2': const [
    const {'1': 'AUTO', '2': 0},
    const {'1': 'NONE', '2': 1},
    const {'1': 'UT_INFO', '2': 2},
    const {'1': 'EXTERNAL', '2': 3},
    const {'1': 'GPS', '2': 4},
    const {'1': 'STARLINK', '2': 5},
  ],
};

/// Descriptor for `PositionSource`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List positionSourceDescriptor = $convert.base64Decode('Cg5Qb3NpdGlvblNvdXJjZRIICgRBVVRPEAASCAoETk9ORRABEgsKB1VUX0lORk8QAhIMCghFWFRFUk5BTBADEgcKA0dQUxAEEgwKCFNUQVJMSU5LEAU=');
@$core.Deprecated('Use meshAuthDescriptor instead')
const MeshAuth$json = const {
  '1': 'MeshAuth',
  '2': const [
    const {'1': 'MESH_AUTH_UNKNOWN', '2': 0},
    const {'1': 'MESH_AUTH_NEW', '2': 1},
    const {'1': 'MESH_AUTH_TRUSTED', '2': 2},
    const {'1': 'MESH_AUTH_UNTRUSTED', '2': 3},
  ],
};

/// Descriptor for `MeshAuth`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List meshAuthDescriptor = $convert.base64Decode('CghNZXNoQXV0aBIVChFNRVNIX0FVVEhfVU5LTk9XThAAEhEKDU1FU0hfQVVUSF9ORVcQARIVChFNRVNIX0FVVEhfVFJVU1RFRBACEhcKE01FU0hfQVVUSF9VTlRSVVNURUQQAw==');
@$core.Deprecated('Use ifaceTypeDescriptor instead')
const IfaceType$json = const {
  '1': 'IfaceType',
  '2': const [
    const {'1': 'IFACE_TYPE_UNKNOWN', '2': 0},
    const {'1': 'IFACE_TYPE_ETH', '2': 1},
    const {'1': 'IFACE_TYPE_RF_2GHZ', '2': 2},
    const {'1': 'IFACE_TYPE_RF_5GHZ', '2': 5},
    const {'1': 'IFACE_TYPE_RF_5GHZ_HIGH', '2': 6},
  ],
};

/// Descriptor for `IfaceType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List ifaceTypeDescriptor = $convert.base64Decode('CglJZmFjZVR5cGUSFgoSSUZBQ0VfVFlQRV9VTktOT1dOEAASEgoOSUZBQ0VfVFlQRV9FVEgQARIWChJJRkFDRV9UWVBFX1JGXzJHSFoQAhIWChJJRkFDRV9UWVBFX1JGXzVHSFoQBRIbChdJRkFDRV9UWVBFX1JGXzVHSFpfSElHSBAG');
@$core.Deprecated('Use txPowerLevelDescriptor instead')
const TxPowerLevel$json = const {
  '1': 'TxPowerLevel',
  '2': const [
    const {'1': 'TX_POWER_LEVEL_100', '2': 0},
    const {'1': 'TX_POWER_LEVEL_80', '2': 1},
    const {'1': 'TX_POWER_LEVEL_50', '2': 2},
    const {'1': 'TX_POWER_LEVEL_25', '2': 3},
    const {'1': 'TX_POWER_LEVEL_12', '2': 4},
    const {'1': 'TX_POWER_LEVEL_6', '2': 5},
  ],
};

/// Descriptor for `TxPowerLevel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List txPowerLevelDescriptor = $convert.base64Decode('CgxUeFBvd2VyTGV2ZWwSFgoSVFhfUE9XRVJfTEVWRUxfMTAwEAASFQoRVFhfUE9XRVJfTEVWRUxfODAQARIVChFUWF9QT1dFUl9MRVZFTF81MBACEhUKEVRYX1BPV0VSX0xFVkVMXzI1EAMSFQoRVFhfUE9XRVJfTEVWRUxfMTIQBBIUChBUWF9QT1dFUl9MRVZFTF82EAU=');
@$core.Deprecated('Use bootReasonDescriptor instead')
const BootReason$json = const {
  '1': 'BootReason',
  '2': const [
    const {'1': 'BOOT_REASON_UNKNOWN', '2': 0},
    const {'1': 'FORGOTTEN', '2': 1},
    const {'1': 'POWER_CYCLE', '2': 2},
    const {'1': 'COMMAND', '2': 3},
    const {'1': 'SOFTWARE_UPDATE', '2': 4},
    const {'1': 'CONFIG_UPDATE', '2': 5},
    const {'1': 'UPTIME_FDIR', '2': 6},
    const {'1': 'REPEATER_FDIR', '2': 7},
    const {'1': 'AVIATION_ETH_WAN_FDIR', '2': 8},
  ],
};

/// Descriptor for `BootReason`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List bootReasonDescriptor = $convert.base64Decode('CgpCb290UmVhc29uEhcKE0JPT1RfUkVBU09OX1VOS05PV04QABINCglGT1JHT1RURU4QARIPCgtQT1dFUl9DWUNMRRACEgsKB0NPTU1BTkQQAxITCg9TT0ZUV0FSRV9VUERBVEUQBBIRCg1DT05GSUdfVVBEQVRFEAUSDwoLVVBUSU1FX0ZESVIQBhIRCg1SRVBFQVRFUl9GRElSEAcSGQoVQVZJQVRJT05fRVRIX1dBTl9GRElSEAg=');
@$core.Deprecated('Use speedtestErrorDescriptor instead')
const SpeedtestError$json = const {
  '1': 'SpeedtestError',
  '2': const [
    const {'1': 'SPEEDTEST_ERROR_NONE', '2': 0},
    const {'1': 'SPEEDTEST_ERROR_UNKNOWN', '2': 1},
    const {'1': 'SPEEDTEST_ERROR_TOKEN', '2': 2},
    const {'1': 'SPEEDTEST_ERROR_API', '2': 3},
    const {'1': 'SPEEDTEST_ERROR_NO_RESULT', '2': 4},
    const {'1': 'SPEEDTEST_ERROR_OFFLINE', '2': 5},
  ],
};

/// Descriptor for `SpeedtestError`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List speedtestErrorDescriptor = $convert.base64Decode('Cg5TcGVlZHRlc3RFcnJvchIYChRTUEVFRFRFU1RfRVJST1JfTk9ORRAAEhsKF1NQRUVEVEVTVF9FUlJPUl9VTktOT1dOEAESGQoVU1BFRURURVNUX0VSUk9SX1RPS0VOEAISFwoTU1BFRURURVNUX0VSUk9SX0FQSRADEh0KGVNQRUVEVEVTVF9FUlJPUl9OT19SRVNVTFQQBBIbChdTUEVFRFRFU1RfRVJST1JfT0ZGTElORRAF');
@$core.Deprecated('Use userMobilityClassDescriptor instead')
const UserMobilityClass$json = const {
  '1': 'UserMobilityClass',
  '2': const [
    const {'1': 'STATIONARY', '2': 0},
    const {'1': 'NOMADIC', '2': 1},
    const {'1': 'MOBILE', '2': 2},
  ],
};

/// Descriptor for `UserMobilityClass`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List userMobilityClassDescriptor = $convert.base64Decode('ChFVc2VyTW9iaWxpdHlDbGFzcxIOCgpTVEFUSU9OQVJZEAASCwoHTk9NQURJQxABEgoKBk1PQklMRRAC');
@$core.Deprecated('Use userClassOfServiceDescriptor instead')
const UserClassOfService$json = const {
  '1': 'UserClassOfService',
  '2': const [
    const {'1': 'UNKNOWN_USER_CLASS_OF_SERVICE', '2': 0},
    const {'1': 'CONSUMER', '2': 1},
    const {'1': 'BUSINESS', '2': 2},
    const {'1': 'BUSINESS_PLUS', '2': 3},
    const {'1': 'COMMERCIAL_AVIATION', '2': 4},
  ],
};

/// Descriptor for `UserClassOfService`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List userClassOfServiceDescriptor = $convert.base64Decode('ChJVc2VyQ2xhc3NPZlNlcnZpY2USIQodVU5LTk9XTl9VU0VSX0NMQVNTX09GX1NFUlZJQ0UQABIMCghDT05TVU1FUhABEgwKCEJVU0lORVNTEAISEQoNQlVTSU5FU1NfUExVUxADEhcKE0NPTU1FUkNJQUxfQVZJQVRJT04QBA==');
@$core.Deprecated('Use softwareUpdateStateDescriptor instead')
const SoftwareUpdateState$json = const {
  '1': 'SoftwareUpdateState',
  '2': const [
    const {'1': 'SOFTWARE_UPDATE_STATE_UNKNOWN', '2': 0},
    const {'1': 'IDLE', '2': 1},
    const {'1': 'FETCHING', '2': 2},
    const {'1': 'PRE_CHECK', '2': 3},
    const {'1': 'WRITING', '2': 4},
    const {'1': 'POST_CHECK', '2': 5},
    const {'1': 'REBOOT_REQUIRED', '2': 6},
    const {'1': 'DISABLED', '2': 7},
    const {'1': 'FAULTED', '2': 8},
  ],
};

/// Descriptor for `SoftwareUpdateState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List softwareUpdateStateDescriptor = $convert.base64Decode('ChNTb2Z0d2FyZVVwZGF0ZVN0YXRlEiEKHVNPRlRXQVJFX1VQREFURV9TVEFURV9VTktOT1dOEAASCAoESURMRRABEgwKCEZFVENISU5HEAISDQoJUFJFX0NIRUNLEAMSCwoHV1JJVElORxAEEg4KClBPU1RfQ0hFQ0sQBRITCg9SRUJPT1RfUkVRVUlSRUQQBhIMCghESVNBQkxFRBAHEgsKB0ZBVUxURUQQCA==');
@$core.Deprecated('Use hasActuatorsDescriptor instead')
const HasActuators$json = const {
  '1': 'HasActuators',
  '2': const [
    const {'1': 'HAS_ACTUATORS_UNKNOWN', '2': 0},
    const {'1': 'HAS_ACTUATORS_YES', '2': 1},
    const {'1': 'HAS_ACTUATORS_NO', '2': 2},
  ],
};

/// Descriptor for `HasActuators`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List hasActuatorsDescriptor = $convert.base64Decode('CgxIYXNBY3R1YXRvcnMSGQoVSEFTX0FDVFVBVE9SU19VTktOT1dOEAASFQoRSEFTX0FDVFVBVE9SU19ZRVMQARIUChBIQVNfQUNUVUFUT1JTX05PEAI=');
@$core.Deprecated('Use actuatorStateDescriptor instead')
const ActuatorState$json = const {
  '1': 'ActuatorState',
  '2': const [
    const {'1': 'ACTUATOR_STATE_IDLE', '2': 0},
    const {'1': 'ACTUATOR_STATE_FULL_TILT', '2': 1},
    const {'1': 'ACTUATOR_STATE_ROTATE', '2': 2},
    const {'1': 'ACTUATOR_STATE_TILT', '2': 3},
    const {'1': 'ACTUATOR_STATE_UNWRAP_POSITIVE', '2': 4},
    const {'1': 'ACTUATOR_STATE_UNWRAP_NEGATIVE', '2': 5},
    const {'1': 'ACTUATOR_STATE_TILT_TO_STOWED', '2': 6},
    const {'1': 'ACTUATOR_STATE_FAULTED', '2': 7},
    const {'1': 'ACTUATOR_STATE_WAIT_TIL_STATIC', '2': 8},
    const {'1': 'ACTUATOR_STATE_DRIVE_TO_MOBILE_POSITION', '2': 9},
    const {'1': 'ACTUATOR_STATE_MOBILE_WAIT', '2': 10},
  ],
};

/// Descriptor for `ActuatorState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List actuatorStateDescriptor = $convert.base64Decode('Cg1BY3R1YXRvclN0YXRlEhcKE0FDVFVBVE9SX1NUQVRFX0lETEUQABIcChhBQ1RVQVRPUl9TVEFURV9GVUxMX1RJTFQQARIZChVBQ1RVQVRPUl9TVEFURV9ST1RBVEUQAhIXChNBQ1RVQVRPUl9TVEFURV9USUxUEAMSIgoeQUNUVUFUT1JfU1RBVEVfVU5XUkFQX1BPU0lUSVZFEAQSIgoeQUNUVUFUT1JfU1RBVEVfVU5XUkFQX05FR0FUSVZFEAUSIQodQUNUVUFUT1JfU1RBVEVfVElMVF9UT19TVE9XRUQQBhIaChZBQ1RVQVRPUl9TVEFURV9GQVVMVEVEEAcSIgoeQUNUVUFUT1JfU1RBVEVfV0FJVF9USUxfU1RBVElDEAgSKwonQUNUVUFUT1JfU1RBVEVfRFJJVkVfVE9fTU9CSUxFX1BPU0lUSU9OEAkSHgoaQUNUVUFUT1JfU1RBVEVfTU9CSUxFX1dBSVQQCg==');
@$core.Deprecated('Use attitudeEstimationStateDescriptor instead')
const AttitudeEstimationState$json = const {
  '1': 'AttitudeEstimationState',
  '2': const [
    const {'1': 'FILTER_RESET', '2': 0},
    const {'1': 'FILTER_UNCONVERGED', '2': 1},
    const {'1': 'FILTER_CONVERGED', '2': 2},
    const {'1': 'FILTER_FAULTED', '2': 3},
    const {'1': 'FILTER_INVALID', '2': 4},
  ],
};

/// Descriptor for `AttitudeEstimationState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List attitudeEstimationStateDescriptor = $convert.base64Decode('ChdBdHRpdHVkZUVzdGltYXRpb25TdGF0ZRIQCgxGSUxURVJfUkVTRVQQABIWChJGSUxURVJfVU5DT05WRVJHRUQQARIUChBGSUxURVJfQ09OVkVSR0VEEAISEgoORklMVEVSX0ZBVUxURUQQAxISCg5GSUxURVJfSU5WQUxJRBAE');
@$core.Deprecated('Use transceiverModulatorStateDescriptor instead')
const TransceiverModulatorState$json = const {
  '1': 'TransceiverModulatorState',
  '2': const [
    const {'1': 'MODSTATE_UNKNOWN', '2': 0},
    const {'1': 'MODSTATE_ENABLED', '2': 1},
    const {'1': 'MODSTATE_DISABLED', '2': 2},
  ],
};

/// Descriptor for `TransceiverModulatorState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List transceiverModulatorStateDescriptor = $convert.base64Decode('ChlUcmFuc2NlaXZlck1vZHVsYXRvclN0YXRlEhQKEE1PRFNUQVRFX1VOS05PV04QABIUChBNT0RTVEFURV9FTkFCTEVEEAESFQoRTU9EU1RBVEVfRElTQUJMRUQQAg==');
@$core.Deprecated('Use transceiverTxRxStateDescriptor instead')
const TransceiverTxRxState$json = const {
  '1': 'TransceiverTxRxState',
  '2': const [
    const {'1': 'TXRX_UNKNOWN', '2': 0},
    const {'1': 'TXRX_ENABLED', '2': 1},
    const {'1': 'TXRX_DISABLED', '2': 2},
  ],
};

/// Descriptor for `TransceiverTxRxState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List transceiverTxRxStateDescriptor = $convert.base64Decode('ChRUcmFuc2NlaXZlclR4UnhTdGF0ZRIQCgxUWFJYX1VOS05PV04QABIQCgxUWFJYX0VOQUJMRUQQARIRCg1UWFJYX0RJU0FCTEVEEAI=');
@$core.Deprecated('Use dishStateDescriptor instead')
const DishState$json = const {
  '1': 'DishState',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'CONNECTED', '2': 1},
    const {'1': 'SEARCHING', '2': 2},
    const {'1': 'BOOTING', '2': 3},
  ],
};

/// Descriptor for `DishState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List dishStateDescriptor = $convert.base64Decode('CglEaXNoU3RhdGUSCwoHVU5LTk9XThAAEg0KCUNPTk5FQ1RFRBABEg0KCVNFQVJDSElORxACEgsKB0JPT1RJTkcQAw==');
@$core.Deprecated('Use transceiverTransmitBlankingStateDescriptor instead')
const TransceiverTransmitBlankingState$json = const {
  '1': 'TransceiverTransmitBlankingState',
  '2': const [
    const {'1': 'TB_UNKNOWN', '2': 0},
    const {'1': 'TB_ENABLED', '2': 1},
    const {'1': 'TB_DISABLED', '2': 2},
  ],
};

/// Descriptor for `TransceiverTransmitBlankingState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List transceiverTransmitBlankingStateDescriptor = $convert.base64Decode('CiBUcmFuc2NlaXZlclRyYW5zbWl0QmxhbmtpbmdTdGF0ZRIOCgpUQl9VTktOT1dOEAASDgoKVEJfRU5BQkxFRBABEg8KC1RCX0RJU0FCTEVEEAI=');
@$core.Deprecated('Use requestDescriptor instead')
const Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'target_id', '3': 13, '4': 1, '5': 9, '10': 'targetId'},
    const {'1': 'epoch_id', '3': 14, '4': 1, '5': 4, '10': 'epochId'},
    const {'1': 'signed_request', '3': 15, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SignedData', '9': 0, '10': 'signedRequest'},
    const {'1': 'reboot', '3': 1001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.RebootRequest', '9': 0, '10': 'reboot'},
    const {'1': 'speed_test', '3': 1003, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SpeedTestRequest', '9': 0, '10': 'speedTest'},
    const {'1': 'get_status', '3': 1004, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetStatusRequest', '9': 0, '10': 'getStatus'},
    const {'1': 'authenticate', '3': 1005, '4': 1, '5': 11, '6': '.SpaceX.API.Device.AuthenticateRequest', '9': 0, '10': 'authenticate'},
    const {'1': 'get_next_id', '3': 1006, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetNextIdRequest', '9': 0, '10': 'getNextId'},
    const {'1': 'get_history', '3': 1007, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetHistoryRequest', '9': 0, '10': 'getHistory'},
    const {'1': 'get_device_info', '3': 1008, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetDeviceInfoRequest', '9': 0, '10': 'getDeviceInfo'},
    const {'1': 'get_ping', '3': 1009, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetPingRequest', '9': 0, '10': 'getPing'},
    const {'1': 'set_trusted_keys', '3': 1010, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SetTrustedKeysRequest', '9': 0, '10': 'setTrustedKeys'},
    const {'1': 'factory_reset', '3': 1011, '4': 1, '5': 11, '6': '.SpaceX.API.Device.FactoryResetRequest', '9': 0, '10': 'factoryReset'},
    const {'1': 'get_log', '3': 1012, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetLogRequest', '9': 0, '10': 'getLog'},
    const {'1': 'set_sku', '3': 1013, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SetSkuRequest', '9': 0, '10': 'setSku'},
    const {'1': 'update', '3': 1014, '4': 1, '5': 11, '6': '.SpaceX.API.Device.UpdateRequest', '9': 0, '10': 'update'},
    const {'1': 'get_network_interfaces', '3': 1015, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetNetworkInterfacesRequest', '9': 0, '10': 'getNetworkInterfaces'},
    const {'1': 'ping_host', '3': 1016, '4': 1, '5': 11, '6': '.SpaceX.API.Device.PingHostRequest', '9': 0, '10': 'pingHost'},
    const {'1': 'get_location', '3': 1017, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetLocationRequest', '9': 0, '10': 'getLocation'},
    const {'1': 'get_heap_dump', '3': 1019, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetHeapDumpRequest', '9': 0, '10': 'getHeapDump'},
    const {'1': 'restart_control', '3': 1020, '4': 1, '5': 11, '6': '.SpaceX.API.Device.RestartControlRequest', '9': 0, '10': 'restartControl'},
    const {'1': 'fuse', '3': 1021, '4': 1, '5': 11, '6': '.SpaceX.API.Device.FuseRequest', '9': 0, '10': 'fuse'},
    const {'1': 'get_persistent_stats', '3': 1022, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetPersistentStatsRequest', '9': 0, '10': 'getPersistentStats'},
    const {'1': 'get_connections', '3': 1023, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetConnectionsRequest', '9': 0, '10': 'getConnections'},
    const {'1': 'start_speedtest', '3': 1027, '4': 1, '5': 11, '6': '.SpaceX.API.Device.StartSpeedtestRequest', '9': 0, '10': 'startSpeedtest'},
    const {'1': 'get_speedtest_status', '3': 1028, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetSpeedtestStatusRequest', '9': 0, '10': 'getSpeedtestStatus'},
    const {'1': 'report_client_speedtest', '3': 1029, '4': 1, '5': 11, '6': '.SpaceX.API.Device.ReportClientSpeedtestRequest', '9': 0, '10': 'reportClientSpeedtest'},
    const {
      '1': 'initiate_remote_ssh',
      '3': 1030,
      '4': 1,
      '5': 11,
      '6': '.SpaceX.API.Device.InitiateRemoteSshRequest',
      '8': const {'3': true},
      '9': 0,
      '10': 'initiateRemoteSsh',
    },
    const {'1': 'self_test', '3': 1031, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SelfTestRequest', '9': 0, '10': 'selfTest'},
    const {'1': 'set_test_mode', '3': 1032, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SetTestModeRequest', '9': 0, '10': 'setTestMode'},
    const {'1': 'software_update', '3': 1033, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SoftwareUpdateRequest', '9': 0, '10': 'softwareUpdate'},
    const {'1': 'enable_debug_telem', '3': 1034, '4': 1, '5': 11, '6': '.SpaceX.API.Device.EnableDebugTelemRequest', '9': 0, '10': 'enableDebugTelem'},
    const {'1': 'dish_stow', '3': 2002, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishStowRequest', '9': 0, '10': 'dishStow'},
    const {'1': 'dish_get_context', '3': 2003, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetContextRequest', '9': 0, '10': 'dishGetContext'},
    const {'1': 'dish_set_emc', '3': 2007, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishSetEmcRequest', '9': 0, '10': 'dishSetEmc'},
    const {'1': 'dish_get_obstruction_map', '3': 2008, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetObstructionMapRequest', '9': 0, '10': 'dishGetObstructionMap'},
    const {'1': 'dish_get_emc', '3': 2009, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetEmcRequest', '9': 0, '10': 'dishGetEmc'},
    const {'1': 'dish_set_config', '3': 2010, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishSetConfigRequest', '9': 0, '10': 'dishSetConfig'},
    const {'1': 'dish_get_config', '3': 2011, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetConfigRequest', '9': 0, '10': 'dishGetConfig'},
    const {'1': 'start_dish_self_test', '3': 2012, '4': 1, '5': 11, '6': '.SpaceX.API.Device.StartDishSelfTestRequest', '9': 0, '10': 'startDishSelfTest'},
    const {'1': 'dish_power_save', '3': 2013, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishPowerSaveRequest', '9': 0, '10': 'dishPowerSave'},
    const {'1': 'dish_inhibit_gps', '3': 2014, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishInhibitGpsRequest', '9': 0, '10': 'dishInhibitGps'},
    const {'1': 'wifi_set_config', '3': 3001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSetConfigRequest', '9': 0, '10': 'wifiSetConfig'},
    const {'1': 'wifi_get_clients', '3': 3002, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetClientsRequest', '9': 0, '10': 'wifiGetClients'},
    const {'1': 'wifi_setup', '3': 3003, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSetupRequest', '9': 0, '10': 'wifiSetup'},
    const {'1': 'wifi_get_ping_metrics', '3': 3007, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetPingMetricsRequest', '9': 0, '10': 'wifiGetPingMetrics'},
    const {'1': 'wifi_get_diagnostics', '3': 3008, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetDiagnosticsRequest', '9': 0, '10': 'wifiGetDiagnostics'},
    const {'1': 'wifi_get_config', '3': 3009, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetConfigRequest', '9': 0, '10': 'wifiGetConfig'},
    const {'1': 'wifi_set_mesh_device_trust', '3': 3012, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSetMeshDeviceTrustRequest', '9': 0, '10': 'wifiSetMeshDeviceTrust'},
    const {
      '1': 'wifi_set_mesh_config',
      '3': 3013,
      '4': 1,
      '5': 11,
      '6': '.SpaceX.API.Device.WifiSetMeshConfigRequest',
      '8': const {'3': true},
      '9': 0,
      '10': 'wifiSetMeshConfig',
    },
    const {'1': 'wifi_get_client_history', '3': 3015, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetClientHistoryRequest', '9': 0, '10': 'wifiGetClientHistory'},
    const {'1': 'wifi_set_aviation_conformed', '3': 3016, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSetAviationConformedRequest', '9': 0, '10': 'wifiSetAviationConformed'},
    const {'1': 'wifi_set_client_given_name', '3': 3017, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSetClientGivenNameRequest', '9': 0, '10': 'wifiSetClientGivenName'},
    const {'1': 'wifi_self_test', '3': 3018, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSelfTestRequest', '9': 0, '10': 'wifiSelfTest'},
    const {'1': 'wifi_calibration_mode', '3': 3019, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiCalibrationModeRequest', '9': 0, '10': 'wifiCalibrationMode'},
    const {'1': 'transceiver_if_loopback_test', '3': 4001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.TransceiverIFLoopbackTestRequest', '9': 0, '10': 'transceiverIfLoopbackTest'},
    const {'1': 'transceiver_get_status', '3': 4003, '4': 1, '5': 11, '6': '.SpaceX.API.Device.TransceiverGetStatusRequest', '9': 0, '10': 'transceiverGetStatus'},
    const {'1': 'transceiver_get_telemetry', '3': 4004, '4': 1, '5': 11, '6': '.SpaceX.API.Device.TransceiverGetTelemetryRequest', '9': 0, '10': 'transceiverGetTelemetry'},
  ],
  '8': const [
    const {'1': 'request'},
  ],
  '9': const [
    const {'1': 1018, '2': 1019},
    const {'1': 1025, '2': 1026},
    const {'1': 1026, '2': 1027},
    const {'1': 3011, '2': 3012},
    const {'1': 3014, '2': 3015},
  ],
};

/// Descriptor for `Request`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestDescriptor = $convert.base64Decode('CgdSZXF1ZXN0Eg4KAmlkGAEgASgEUgJpZBIbCgl0YXJnZXRfaWQYDSABKAlSCHRhcmdldElkEhkKCGVwb2NoX2lkGA4gASgEUgdlcG9jaElkEkYKDnNpZ25lZF9yZXF1ZXN0GA8gASgLMh0uU3BhY2VYLkFQSS5EZXZpY2UuU2lnbmVkRGF0YUgAUg1zaWduZWRSZXF1ZXN0EjsKBnJlYm9vdBjpByABKAsyIC5TcGFjZVguQVBJLkRldmljZS5SZWJvb3RSZXF1ZXN0SABSBnJlYm9vdBJFCgpzcGVlZF90ZXN0GOsHIAEoCzIjLlNwYWNlWC5BUEkuRGV2aWNlLlNwZWVkVGVzdFJlcXVlc3RIAFIJc3BlZWRUZXN0EkUKCmdldF9zdGF0dXMY7AcgASgLMiMuU3BhY2VYLkFQSS5EZXZpY2UuR2V0U3RhdHVzUmVxdWVzdEgAUglnZXRTdGF0dXMSTQoMYXV0aGVudGljYXRlGO0HIAEoCzImLlNwYWNlWC5BUEkuRGV2aWNlLkF1dGhlbnRpY2F0ZVJlcXVlc3RIAFIMYXV0aGVudGljYXRlEkYKC2dldF9uZXh0X2lkGO4HIAEoCzIjLlNwYWNlWC5BUEkuRGV2aWNlLkdldE5leHRJZFJlcXVlc3RIAFIJZ2V0TmV4dElkEkgKC2dldF9oaXN0b3J5GO8HIAEoCzIkLlNwYWNlWC5BUEkuRGV2aWNlLkdldEhpc3RvcnlSZXF1ZXN0SABSCmdldEhpc3RvcnkSUgoPZ2V0X2RldmljZV9pbmZvGPAHIAEoCzInLlNwYWNlWC5BUEkuRGV2aWNlLkdldERldmljZUluZm9SZXF1ZXN0SABSDWdldERldmljZUluZm8SPwoIZ2V0X3BpbmcY8QcgASgLMiEuU3BhY2VYLkFQSS5EZXZpY2UuR2V0UGluZ1JlcXVlc3RIAFIHZ2V0UGluZxJVChBzZXRfdHJ1c3RlZF9rZXlzGPIHIAEoCzIoLlNwYWNlWC5BUEkuRGV2aWNlLlNldFRydXN0ZWRLZXlzUmVxdWVzdEgAUg5zZXRUcnVzdGVkS2V5cxJOCg1mYWN0b3J5X3Jlc2V0GPMHIAEoCzImLlNwYWNlWC5BUEkuRGV2aWNlLkZhY3RvcnlSZXNldFJlcXVlc3RIAFIMZmFjdG9yeVJlc2V0EjwKB2dldF9sb2cY9AcgASgLMiAuU3BhY2VYLkFQSS5EZXZpY2UuR2V0TG9nUmVxdWVzdEgAUgZnZXRMb2cSPAoHc2V0X3NrdRj1ByABKAsyIC5TcGFjZVguQVBJLkRldmljZS5TZXRTa3VSZXF1ZXN0SABSBnNldFNrdRI7CgZ1cGRhdGUY9gcgASgLMiAuU3BhY2VYLkFQSS5EZXZpY2UuVXBkYXRlUmVxdWVzdEgAUgZ1cGRhdGUSZwoWZ2V0X25ldHdvcmtfaW50ZXJmYWNlcxj3ByABKAsyLi5TcGFjZVguQVBJLkRldmljZS5HZXROZXR3b3JrSW50ZXJmYWNlc1JlcXVlc3RIAFIUZ2V0TmV0d29ya0ludGVyZmFjZXMSQgoJcGluZ19ob3N0GPgHIAEoCzIiLlNwYWNlWC5BUEkuRGV2aWNlLlBpbmdIb3N0UmVxdWVzdEgAUghwaW5nSG9zdBJLCgxnZXRfbG9jYXRpb24Y+QcgASgLMiUuU3BhY2VYLkFQSS5EZXZpY2UuR2V0TG9jYXRpb25SZXF1ZXN0SABSC2dldExvY2F0aW9uEkwKDWdldF9oZWFwX2R1bXAY+wcgASgLMiUuU3BhY2VYLkFQSS5EZXZpY2UuR2V0SGVhcER1bXBSZXF1ZXN0SABSC2dldEhlYXBEdW1wElQKD3Jlc3RhcnRfY29udHJvbBj8ByABKAsyKC5TcGFjZVguQVBJLkRldmljZS5SZXN0YXJ0Q29udHJvbFJlcXVlc3RIAFIOcmVzdGFydENvbnRyb2wSNQoEZnVzZRj9ByABKAsyHi5TcGFjZVguQVBJLkRldmljZS5GdXNlUmVxdWVzdEgAUgRmdXNlEmEKFGdldF9wZXJzaXN0ZW50X3N0YXRzGP4HIAEoCzIsLlNwYWNlWC5BUEkuRGV2aWNlLkdldFBlcnNpc3RlbnRTdGF0c1JlcXVlc3RIAFISZ2V0UGVyc2lzdGVudFN0YXRzElQKD2dldF9jb25uZWN0aW9ucxj/ByABKAsyKC5TcGFjZVguQVBJLkRldmljZS5HZXRDb25uZWN0aW9uc1JlcXVlc3RIAFIOZ2V0Q29ubmVjdGlvbnMSVAoPc3RhcnRfc3BlZWR0ZXN0GIMIIAEoCzIoLlNwYWNlWC5BUEkuRGV2aWNlLlN0YXJ0U3BlZWR0ZXN0UmVxdWVzdEgAUg5zdGFydFNwZWVkdGVzdBJhChRnZXRfc3BlZWR0ZXN0X3N0YXR1cxiECCABKAsyLC5TcGFjZVguQVBJLkRldmljZS5HZXRTcGVlZHRlc3RTdGF0dXNSZXF1ZXN0SABSEmdldFNwZWVkdGVzdFN0YXR1cxJqChdyZXBvcnRfY2xpZW50X3NwZWVkdGVzdBiFCCABKAsyLy5TcGFjZVguQVBJLkRldmljZS5SZXBvcnRDbGllbnRTcGVlZHRlc3RSZXF1ZXN0SABSFXJlcG9ydENsaWVudFNwZWVkdGVzdBJiChNpbml0aWF0ZV9yZW1vdGVfc3NoGIYIIAEoCzIrLlNwYWNlWC5BUEkuRGV2aWNlLkluaXRpYXRlUmVtb3RlU3NoUmVxdWVzdEICGAFIAFIRaW5pdGlhdGVSZW1vdGVTc2gSQgoJc2VsZl90ZXN0GIcIIAEoCzIiLlNwYWNlWC5BUEkuRGV2aWNlLlNlbGZUZXN0UmVxdWVzdEgAUghzZWxmVGVzdBJMCg1zZXRfdGVzdF9tb2RlGIgIIAEoCzIlLlNwYWNlWC5BUEkuRGV2aWNlLlNldFRlc3RNb2RlUmVxdWVzdEgAUgtzZXRUZXN0TW9kZRJUCg9zb2Z0d2FyZV91cGRhdGUYiQggASgLMiguU3BhY2VYLkFQSS5EZXZpY2UuU29mdHdhcmVVcGRhdGVSZXF1ZXN0SABSDnNvZnR3YXJlVXBkYXRlElsKEmVuYWJsZV9kZWJ1Z190ZWxlbRiKCCABKAsyKi5TcGFjZVguQVBJLkRldmljZS5FbmFibGVEZWJ1Z1RlbGVtUmVxdWVzdEgAUhBlbmFibGVEZWJ1Z1RlbGVtEkIKCWRpc2hfc3RvdxjSDyABKAsyIi5TcGFjZVguQVBJLkRldmljZS5EaXNoU3Rvd1JlcXVlc3RIAFIIZGlzaFN0b3cSVQoQZGlzaF9nZXRfY29udGV4dBjTDyABKAsyKC5TcGFjZVguQVBJLkRldmljZS5EaXNoR2V0Q29udGV4dFJlcXVlc3RIAFIOZGlzaEdldENvbnRleHQSSQoMZGlzaF9zZXRfZW1jGNcPIAEoCzIkLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hTZXRFbWNSZXF1ZXN0SABSCmRpc2hTZXRFbWMSawoYZGlzaF9nZXRfb2JzdHJ1Y3Rpb25fbWFwGNgPIAEoCzIvLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hHZXRPYnN0cnVjdGlvbk1hcFJlcXVlc3RIAFIVZGlzaEdldE9ic3RydWN0aW9uTWFwEkkKDGRpc2hfZ2V0X2VtYxjZDyABKAsyJC5TcGFjZVguQVBJLkRldmljZS5EaXNoR2V0RW1jUmVxdWVzdEgAUgpkaXNoR2V0RW1jElIKD2Rpc2hfc2V0X2NvbmZpZxjaDyABKAsyJy5TcGFjZVguQVBJLkRldmljZS5EaXNoU2V0Q29uZmlnUmVxdWVzdEgAUg1kaXNoU2V0Q29uZmlnElIKD2Rpc2hfZ2V0X2NvbmZpZxjbDyABKAsyJy5TcGFjZVguQVBJLkRldmljZS5EaXNoR2V0Q29uZmlnUmVxdWVzdEgAUg1kaXNoR2V0Q29uZmlnEl8KFHN0YXJ0X2Rpc2hfc2VsZl90ZXN0GNwPIAEoCzIrLlNwYWNlWC5BUEkuRGV2aWNlLlN0YXJ0RGlzaFNlbGZUZXN0UmVxdWVzdEgAUhFzdGFydERpc2hTZWxmVGVzdBJSCg9kaXNoX3Bvd2VyX3NhdmUY3Q8gASgLMicuU3BhY2VYLkFQSS5EZXZpY2UuRGlzaFBvd2VyU2F2ZVJlcXVlc3RIAFINZGlzaFBvd2VyU2F2ZRJVChBkaXNoX2luaGliaXRfZ3BzGN4PIAEoCzIoLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hJbmhpYml0R3BzUmVxdWVzdEgAUg5kaXNoSW5oaWJpdEdwcxJSCg93aWZpX3NldF9jb25maWcYuRcgASgLMicuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaVNldENvbmZpZ1JlcXVlc3RIAFINd2lmaVNldENvbmZpZxJVChB3aWZpX2dldF9jbGllbnRzGLoXIAEoCzIoLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlHZXRDbGllbnRzUmVxdWVzdEgAUg53aWZpR2V0Q2xpZW50cxJFCgp3aWZpX3NldHVwGLsXIAEoCzIjLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlTZXR1cFJlcXVlc3RIAFIJd2lmaVNldHVwEmIKFXdpZmlfZ2V0X3BpbmdfbWV0cmljcxi/FyABKAsyLC5TcGFjZVguQVBJLkRldmljZS5XaWZpR2V0UGluZ01ldHJpY3NSZXF1ZXN0SABSEndpZmlHZXRQaW5nTWV0cmljcxJhChR3aWZpX2dldF9kaWFnbm9zdGljcxjAFyABKAsyLC5TcGFjZVguQVBJLkRldmljZS5XaWZpR2V0RGlhZ25vc3RpY3NSZXF1ZXN0SABSEndpZmlHZXREaWFnbm9zdGljcxJSCg93aWZpX2dldF9jb25maWcYwRcgASgLMicuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUdldENvbmZpZ1JlcXVlc3RIAFINd2lmaUdldENvbmZpZxJvChp3aWZpX3NldF9tZXNoX2RldmljZV90cnVzdBjEFyABKAsyMC5TcGFjZVguQVBJLkRldmljZS5XaWZpU2V0TWVzaERldmljZVRydXN0UmVxdWVzdEgAUhZ3aWZpU2V0TWVzaERldmljZVRydXN0EmMKFHdpZmlfc2V0X21lc2hfY29uZmlnGMUXIAEoCzIrLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlTZXRNZXNoQ29uZmlnUmVxdWVzdEICGAFIAFIRd2lmaVNldE1lc2hDb25maWcSaAoXd2lmaV9nZXRfY2xpZW50X2hpc3RvcnkYxxcgASgLMi4uU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUdldENsaWVudEhpc3RvcnlSZXF1ZXN0SABSFHdpZmlHZXRDbGllbnRIaXN0b3J5EnQKG3dpZmlfc2V0X2F2aWF0aW9uX2NvbmZvcm1lZBjIFyABKAsyMi5TcGFjZVguQVBJLkRldmljZS5XaWZpU2V0QXZpYXRpb25Db25mb3JtZWRSZXF1ZXN0SABSGHdpZmlTZXRBdmlhdGlvbkNvbmZvcm1lZBJvChp3aWZpX3NldF9jbGllbnRfZ2l2ZW5fbmFtZRjJFyABKAsyMC5TcGFjZVguQVBJLkRldmljZS5XaWZpU2V0Q2xpZW50R2l2ZW5OYW1lUmVxdWVzdEgAUhZ3aWZpU2V0Q2xpZW50R2l2ZW5OYW1lEk8KDndpZmlfc2VsZl90ZXN0GMoXIAEoCzImLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlTZWxmVGVzdFJlcXVlc3RIAFIMd2lmaVNlbGZUZXN0EmQKFXdpZmlfY2FsaWJyYXRpb25fbW9kZRjLFyABKAsyLS5TcGFjZVguQVBJLkRldmljZS5XaWZpQ2FsaWJyYXRpb25Nb2RlUmVxdWVzdEgAUhN3aWZpQ2FsaWJyYXRpb25Nb2RlEncKHHRyYW5zY2VpdmVyX2lmX2xvb3BiYWNrX3Rlc3QYoR8gASgLMjMuU3BhY2VYLkFQSS5EZXZpY2UuVHJhbnNjZWl2ZXJJRkxvb3BiYWNrVGVzdFJlcXVlc3RIAFIZdHJhbnNjZWl2ZXJJZkxvb3BiYWNrVGVzdBJnChZ0cmFuc2NlaXZlcl9nZXRfc3RhdHVzGKMfIAEoCzIuLlNwYWNlWC5BUEkuRGV2aWNlLlRyYW5zY2VpdmVyR2V0U3RhdHVzUmVxdWVzdEgAUhR0cmFuc2NlaXZlckdldFN0YXR1cxJwChl0cmFuc2NlaXZlcl9nZXRfdGVsZW1ldHJ5GKQfIAEoCzIxLlNwYWNlWC5BUEkuRGV2aWNlLlRyYW5zY2VpdmVyR2V0VGVsZW1ldHJ5UmVxdWVzdEgAUhd0cmFuc2NlaXZlckdldFRlbGVtZXRyeUIJCgdyZXF1ZXN0SgYI+gcQ+wdKBgiBCBCCCEoGCIIIEIMISgYIwxcQxBdKBgjGFxDHFw==');
@$core.Deprecated('Use signedDataDescriptor instead')
const SignedData$json = const {
  '1': 'SignedData',
  '2': const [
    const {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
    const {'1': 'signature', '3': 2, '4': 1, '5': 12, '10': 'signature'},
  ],
};

/// Descriptor for `SignedData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signedDataDescriptor = $convert.base64Decode('CgpTaWduZWREYXRhEhIKBGRhdGEYASABKAxSBGRhdGESHAoJc2lnbmF0dXJlGAIgASgMUglzaWduYXR1cmU=');
@$core.Deprecated('Use rebootRequestDescriptor instead')
const RebootRequest$json = const {
  '1': 'RebootRequest',
};

/// Descriptor for `RebootRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rebootRequestDescriptor = $convert.base64Decode('Cg1SZWJvb3RSZXF1ZXN0');
@$core.Deprecated('Use speedTestRequestDescriptor instead')
const SpeedTestRequest$json = const {
  '1': 'SpeedTestRequest',
  '2': const [
    const {'1': 'client_speedtest', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SpeedTestStats', '10': 'clientSpeedtest'},
    const {'1': 'client_rssi', '3': 2, '4': 1, '5': 2, '10': 'clientRssi'},
    const {'1': 'client_platform', '3': 3, '4': 1, '5': 11, '6': '.SpaceX.API.Device.ClientPlatform', '10': 'clientPlatform'},
    const {'1': 'id', '3': 4, '4': 1, '5': 13, '10': 'id'},
  ],
};

/// Descriptor for `SpeedTestRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List speedTestRequestDescriptor = $convert.base64Decode('ChBTcGVlZFRlc3RSZXF1ZXN0EkwKEGNsaWVudF9zcGVlZHRlc3QYASABKAsyIS5TcGFjZVguQVBJLkRldmljZS5TcGVlZFRlc3RTdGF0c1IPY2xpZW50U3BlZWR0ZXN0Eh8KC2NsaWVudF9yc3NpGAIgASgCUgpjbGllbnRSc3NpEkoKD2NsaWVudF9wbGF0Zm9ybRgDIAEoCzIhLlNwYWNlWC5BUEkuRGV2aWNlLkNsaWVudFBsYXRmb3JtUg5jbGllbnRQbGF0Zm9ybRIOCgJpZBgEIAEoDVICaWQ=');
@$core.Deprecated('Use speedTestStatsDescriptor instead')
const SpeedTestStats$json = const {
  '1': 'SpeedTestStats',
  '2': const [
    const {'1': 'upload_mbps', '3': 1, '4': 1, '5': 2, '10': 'uploadMbps'},
    const {'1': 'download_mbps', '3': 2, '4': 1, '5': 2, '10': 'downloadMbps'},
    const {
      '1': 'latency_ms',
      '3': 3,
      '4': 1,
      '5': 2,
      '8': const {'3': true},
      '10': 'latencyMs',
    },
    const {'1': 'start_time', '3': 4, '4': 1, '5': 4, '10': 'startTime'},
    const {'1': 'upload_start_time', '3': 5, '4': 1, '5': 3, '10': 'uploadStartTime'},
    const {'1': 'download_start_time', '3': 6, '4': 1, '5': 3, '10': 'downloadStartTime'},
    const {'1': 'target', '3': 7, '4': 1, '5': 14, '6': '.SpaceX.API.Device.SpeedTestStats.Target', '10': 'target'},
    const {'1': 'tcp_streams', '3': 8, '4': 1, '5': 13, '10': 'tcpStreams'},
  ],
  '4': const [SpeedTestStats_Target$json],
};

@$core.Deprecated('Use speedTestStatsDescriptor instead')
const SpeedTestStats_Target$json = const {
  '1': 'Target',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'FASTCOM', '2': 1},
    const {'1': 'CLOUDFLARE', '2': 2},
  ],
};

/// Descriptor for `SpeedTestStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List speedTestStatsDescriptor = $convert.base64Decode('Cg5TcGVlZFRlc3RTdGF0cxIfCgt1cGxvYWRfbWJwcxgBIAEoAlIKdXBsb2FkTWJwcxIjCg1kb3dubG9hZF9tYnBzGAIgASgCUgxkb3dubG9hZE1icHMSIQoKbGF0ZW5jeV9tcxgDIAEoAkICGAFSCWxhdGVuY3lNcxIdCgpzdGFydF90aW1lGAQgASgEUglzdGFydFRpbWUSKgoRdXBsb2FkX3N0YXJ0X3RpbWUYBSABKANSD3VwbG9hZFN0YXJ0VGltZRIuChNkb3dubG9hZF9zdGFydF90aW1lGAYgASgDUhFkb3dubG9hZFN0YXJ0VGltZRJACgZ0YXJnZXQYByABKA4yKC5TcGFjZVguQVBJLkRldmljZS5TcGVlZFRlc3RTdGF0cy5UYXJnZXRSBnRhcmdldBIfCgt0Y3Bfc3RyZWFtcxgIIAEoDVIKdGNwU3RyZWFtcyIyCgZUYXJnZXQSCwoHVU5LTk9XThAAEgsKB0ZBU1RDT00QARIOCgpDTE9VREZMQVJFEAI=');
@$core.Deprecated('Use clientPlatformDescriptor instead')
const ClientPlatform$json = const {
  '1': 'ClientPlatform',
  '2': const [
    const {'1': 'platform', '3': 1, '4': 1, '5': 14, '6': '.SpaceX.API.Device.ClientPlatform.Platform', '10': 'platform'},
    const {'1': 'major_version', '3': 2, '4': 1, '5': 2, '10': 'majorVersion'},
    const {'1': 'minor_version', '3': 3, '4': 1, '5': 2, '10': 'minorVersion'},
  ],
  '4': const [ClientPlatform_Platform$json],
};

@$core.Deprecated('Use clientPlatformDescriptor instead')
const ClientPlatform_Platform$json = const {
  '1': 'Platform',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'IOS', '2': 1},
    const {'1': 'ANDROID', '2': 2},
    const {'1': 'WEB', '2': 3},
  ],
};

/// Descriptor for `ClientPlatform`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientPlatformDescriptor = $convert.base64Decode('Cg5DbGllbnRQbGF0Zm9ybRJGCghwbGF0Zm9ybRgBIAEoDjIqLlNwYWNlWC5BUEkuRGV2aWNlLkNsaWVudFBsYXRmb3JtLlBsYXRmb3JtUghwbGF0Zm9ybRIjCg1tYWpvcl92ZXJzaW9uGAIgASgCUgxtYWpvclZlcnNpb24SIwoNbWlub3JfdmVyc2lvbhgDIAEoAlIMbWlub3JWZXJzaW9uIjYKCFBsYXRmb3JtEgsKB1VOS05PV04QABIHCgNJT1MQARILCgdBTkRST0lEEAISBwoDV0VCEAM=');
@$core.Deprecated('Use getStatusRequestDescriptor instead')
const GetStatusRequest$json = const {
  '1': 'GetStatusRequest',
};

/// Descriptor for `GetStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStatusRequestDescriptor = $convert.base64Decode('ChBHZXRTdGF0dXNSZXF1ZXN0');
@$core.Deprecated('Use authenticateRequestDescriptor instead')
const AuthenticateRequest$json = const {
  '1': 'AuthenticateRequest',
  '2': const [
    const {'1': 'challenge', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SignedData', '10': 'challenge'},
  ],
};

/// Descriptor for `AuthenticateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authenticateRequestDescriptor = $convert.base64Decode('ChNBdXRoZW50aWNhdGVSZXF1ZXN0EjsKCWNoYWxsZW5nZRgBIAEoCzIdLlNwYWNlWC5BUEkuRGV2aWNlLlNpZ25lZERhdGFSCWNoYWxsZW5nZQ==');
@$core.Deprecated('Use getNextIdRequestDescriptor instead')
const GetNextIdRequest$json = const {
  '1': 'GetNextIdRequest',
};

/// Descriptor for `GetNextIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNextIdRequestDescriptor = $convert.base64Decode('ChBHZXROZXh0SWRSZXF1ZXN0');
@$core.Deprecated('Use getHistoryRequestDescriptor instead')
const GetHistoryRequest$json = const {
  '1': 'GetHistoryRequest',
};

/// Descriptor for `GetHistoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getHistoryRequestDescriptor = $convert.base64Decode('ChFHZXRIaXN0b3J5UmVxdWVzdA==');
@$core.Deprecated('Use getDeviceInfoRequestDescriptor instead')
const GetDeviceInfoRequest$json = const {
  '1': 'GetDeviceInfoRequest',
};

/// Descriptor for `GetDeviceInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDeviceInfoRequestDescriptor = $convert.base64Decode('ChRHZXREZXZpY2VJbmZvUmVxdWVzdA==');
@$core.Deprecated('Use getPingRequestDescriptor instead')
const GetPingRequest$json = const {
  '1': 'GetPingRequest',
};

/// Descriptor for `GetPingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPingRequestDescriptor = $convert.base64Decode('Cg5HZXRQaW5nUmVxdWVzdA==');
@$core.Deprecated('Use setTrustedKeysRequestDescriptor instead')
const SetTrustedKeysRequest$json = const {
  '1': 'SetTrustedKeysRequest',
  '2': const [
    const {'1': 'keys', '3': 1, '4': 3, '5': 11, '6': '.SpaceX.API.Device.PublicKey', '10': 'keys'},
  ],
};

/// Descriptor for `SetTrustedKeysRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setTrustedKeysRequestDescriptor = $convert.base64Decode('ChVTZXRUcnVzdGVkS2V5c1JlcXVlc3QSMAoEa2V5cxgBIAMoCzIcLlNwYWNlWC5BUEkuRGV2aWNlLlB1YmxpY0tleVIEa2V5cw==');
@$core.Deprecated('Use publicKeyDescriptor instead')
const PublicKey$json = const {
  '1': 'PublicKey',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'capabilities', '3': 2, '4': 3, '5': 14, '6': '.SpaceX.API.Device.Capability', '10': 'capabilities'},
  ],
};

/// Descriptor for `PublicKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List publicKeyDescriptor = $convert.base64Decode('CglQdWJsaWNLZXkSEAoDa2V5GAEgASgJUgNrZXkSQQoMY2FwYWJpbGl0aWVzGAIgAygOMh0uU3BhY2VYLkFQSS5EZXZpY2UuQ2FwYWJpbGl0eVIMY2FwYWJpbGl0aWVz');
@$core.Deprecated('Use factoryResetRequestDescriptor instead')
const FactoryResetRequest$json = const {
  '1': 'FactoryResetRequest',
};

/// Descriptor for `FactoryResetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List factoryResetRequestDescriptor = $convert.base64Decode('ChNGYWN0b3J5UmVzZXRSZXF1ZXN0');
@$core.Deprecated('Use getLogRequestDescriptor instead')
const GetLogRequest$json = const {
  '1': 'GetLogRequest',
};

/// Descriptor for `GetLogRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLogRequestDescriptor = $convert.base64Decode('Cg1HZXRMb2dSZXF1ZXN0');
@$core.Deprecated('Use setSkuRequestDescriptor instead')
const SetSkuRequest$json = const {
  '1': 'SetSkuRequest',
  '2': const [
    const {'1': 'sku', '3': 1, '4': 1, '5': 9, '10': 'sku'},
    const {'1': 'country_code', '3': 2, '4': 1, '5': 9, '10': 'countryCode'},
    const {'1': 'apply_country_code', '3': 4, '4': 1, '5': 8, '10': 'applyCountryCode'},
    const {'1': 'pin_country_code', '3': 5, '4': 1, '5': 8, '10': 'pinCountryCode'},
    const {'1': 'custom_power_table', '3': 6, '4': 1, '5': 8, '10': 'customPowerTable'},
  ],
};

/// Descriptor for `SetSkuRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setSkuRequestDescriptor = $convert.base64Decode('Cg1TZXRTa3VSZXF1ZXN0EhAKA3NrdRgBIAEoCVIDc2t1EiEKDGNvdW50cnlfY29kZRgCIAEoCVILY291bnRyeUNvZGUSLAoSYXBwbHlfY291bnRyeV9jb2RlGAQgASgIUhBhcHBseUNvdW50cnlDb2RlEigKEHBpbl9jb3VudHJ5X2NvZGUYBSABKAhSDnBpbkNvdW50cnlDb2RlEiwKEmN1c3RvbV9wb3dlcl90YWJsZRgGIAEoCFIQY3VzdG9tUG93ZXJUYWJsZQ==');
@$core.Deprecated('Use updateRequestDescriptor instead')
const UpdateRequest$json = const {
  '1': 'UpdateRequest',
};

/// Descriptor for `UpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateRequestDescriptor = $convert.base64Decode('Cg1VcGRhdGVSZXF1ZXN0');
@$core.Deprecated('Use getNetworkInterfacesRequestDescriptor instead')
const GetNetworkInterfacesRequest$json = const {
  '1': 'GetNetworkInterfacesRequest',
};

/// Descriptor for `GetNetworkInterfacesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNetworkInterfacesRequestDescriptor = $convert.base64Decode('ChtHZXROZXR3b3JrSW50ZXJmYWNlc1JlcXVlc3Q=');
@$core.Deprecated('Use pingHostRequestDescriptor instead')
const PingHostRequest$json = const {
  '1': 'PingHostRequest',
  '2': const [
    const {'1': 'address', '3': 3, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `PingHostRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingHostRequestDescriptor = $convert.base64Decode('Cg9QaW5nSG9zdFJlcXVlc3QSGAoHYWRkcmVzcxgDIAEoCVIHYWRkcmVzcw==');
@$core.Deprecated('Use getLocationRequestDescriptor instead')
const GetLocationRequest$json = const {
  '1': 'GetLocationRequest',
  '2': const [
    const {'1': 'source', '3': 1, '4': 1, '5': 14, '6': '.SpaceX.API.Device.PositionSource', '10': 'source'},
  ],
};

/// Descriptor for `GetLocationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLocationRequestDescriptor = $convert.base64Decode('ChJHZXRMb2NhdGlvblJlcXVlc3QSOQoGc291cmNlGAEgASgOMiEuU3BhY2VYLkFQSS5EZXZpY2UuUG9zaXRpb25Tb3VyY2VSBnNvdXJjZQ==');
@$core.Deprecated('Use getHeapDumpRequestDescriptor instead')
const GetHeapDumpRequest$json = const {
  '1': 'GetHeapDumpRequest',
};

/// Descriptor for `GetHeapDumpRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getHeapDumpRequestDescriptor = $convert.base64Decode('ChJHZXRIZWFwRHVtcFJlcXVlc3Q=');
@$core.Deprecated('Use restartControlRequestDescriptor instead')
const RestartControlRequest$json = const {
  '1': 'RestartControlRequest',
};

/// Descriptor for `RestartControlRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List restartControlRequestDescriptor = $convert.base64Decode('ChVSZXN0YXJ0Q29udHJvbFJlcXVlc3Q=');
@$core.Deprecated('Use fuseRequestDescriptor instead')
const FuseRequest$json = const {
  '1': 'FuseRequest',
};

/// Descriptor for `FuseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fuseRequestDescriptor = $convert.base64Decode('CgtGdXNlUmVxdWVzdA==');
@$core.Deprecated('Use getPersistentStatsRequestDescriptor instead')
const GetPersistentStatsRequest$json = const {
  '1': 'GetPersistentStatsRequest',
};

/// Descriptor for `GetPersistentStatsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPersistentStatsRequestDescriptor = $convert.base64Decode('ChlHZXRQZXJzaXN0ZW50U3RhdHNSZXF1ZXN0');
@$core.Deprecated('Use getConnectionsRequestDescriptor instead')
const GetConnectionsRequest$json = const {
  '1': 'GetConnectionsRequest',
};

/// Descriptor for `GetConnectionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getConnectionsRequestDescriptor = $convert.base64Decode('ChVHZXRDb25uZWN0aW9uc1JlcXVlc3Q=');
@$core.Deprecated('Use startSpeedtestRequestDescriptor instead')
const StartSpeedtestRequest$json = const {
  '1': 'StartSpeedtestRequest',
};

/// Descriptor for `StartSpeedtestRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startSpeedtestRequestDescriptor = $convert.base64Decode('ChVTdGFydFNwZWVkdGVzdFJlcXVlc3Q=');
@$core.Deprecated('Use getSpeedtestStatusRequestDescriptor instead')
const GetSpeedtestStatusRequest$json = const {
  '1': 'GetSpeedtestStatusRequest',
};

/// Descriptor for `GetSpeedtestStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSpeedtestStatusRequestDescriptor = $convert.base64Decode('ChlHZXRTcGVlZHRlc3RTdGF0dXNSZXF1ZXN0');
@$core.Deprecated('Use reportClientSpeedtestRequestDescriptor instead')
const ReportClientSpeedtestRequest$json = const {
  '1': 'ReportClientSpeedtestRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'client_speedtest', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SpeedTestStats', '10': 'clientSpeedtest'},
    const {'1': 'client_rssi', '3': 3, '4': 1, '5': 2, '10': 'clientRssi'},
    const {'1': 'client_platform', '3': 4, '4': 1, '5': 11, '6': '.SpaceX.API.Device.ClientPlatform', '10': 'clientPlatform'},
    const {'1': 'wifi_speedtest', '3': 5, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SpeedTestStats', '10': 'wifiSpeedtest'},
  ],
};

/// Descriptor for `ReportClientSpeedtestRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportClientSpeedtestRequestDescriptor = $convert.base64Decode('ChxSZXBvcnRDbGllbnRTcGVlZHRlc3RSZXF1ZXN0Eg4KAmlkGAEgASgNUgJpZBJMChBjbGllbnRfc3BlZWR0ZXN0GAIgASgLMiEuU3BhY2VYLkFQSS5EZXZpY2UuU3BlZWRUZXN0U3RhdHNSD2NsaWVudFNwZWVkdGVzdBIfCgtjbGllbnRfcnNzaRgDIAEoAlIKY2xpZW50UnNzaRJKCg9jbGllbnRfcGxhdGZvcm0YBCABKAsyIS5TcGFjZVguQVBJLkRldmljZS5DbGllbnRQbGF0Zm9ybVIOY2xpZW50UGxhdGZvcm0SSAoOd2lmaV9zcGVlZHRlc3QYBSABKAsyIS5TcGFjZVguQVBJLkRldmljZS5TcGVlZFRlc3RTdGF0c1INd2lmaVNwZWVkdGVzdA==');
@$core.Deprecated('Use initiateRemoteSshRequestDescriptor instead')
const InitiateRemoteSshRequest$json = const {
  '1': 'InitiateRemoteSshRequest',
};

/// Descriptor for `InitiateRemoteSshRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List initiateRemoteSshRequestDescriptor = $convert.base64Decode('ChhJbml0aWF0ZVJlbW90ZVNzaFJlcXVlc3Q=');
@$core.Deprecated('Use selfTestRequestDescriptor instead')
const SelfTestRequest$json = const {
  '1': 'SelfTestRequest',
  '2': const [
    const {'1': 'detailed', '3': 1, '4': 1, '5': 8, '10': 'detailed'},
  ],
};

/// Descriptor for `SelfTestRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List selfTestRequestDescriptor = $convert.base64Decode('Cg9TZWxmVGVzdFJlcXVlc3QSGgoIZGV0YWlsZWQYASABKAhSCGRldGFpbGVk');
@$core.Deprecated('Use setTestModeRequestDescriptor instead')
const SetTestModeRequest$json = const {
  '1': 'SetTestModeRequest',
  '2': const [
    const {'1': 'rf_mode', '3': 1, '4': 1, '5': 14, '6': '.SpaceX.API.Device.SetTestModeRequest.RfMode', '10': 'rfMode'},
    const {'1': 'disable_loss_of_comm_fdir', '3': 1001, '4': 1, '5': 8, '10': 'disableLossOfCommFdir'},
    const {'1': 'enable_rules_override', '3': 1002, '4': 1, '5': 8, '10': 'enableRulesOverride'},
  ],
  '4': const [SetTestModeRequest_RfMode$json],
};

@$core.Deprecated('Use setTestModeRequestDescriptor instead')
const SetTestModeRequest_RfMode$json = const {
  '1': 'RfMode',
  '2': const [
    const {'1': 'RX', '2': 0},
    const {'1': 'IDLE', '2': 1},
    const {'1': 'TX', '2': 2},
    const {'1': 'CAL', '2': 3},
    const {'1': 'USER', '2': 4},
    const {'1': 'NORMAL', '2': 420},
  ],
};

/// Descriptor for `SetTestModeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setTestModeRequestDescriptor = $convert.base64Decode('ChJTZXRUZXN0TW9kZVJlcXVlc3QSRQoHcmZfbW9kZRgBIAEoDjIsLlNwYWNlWC5BUEkuRGV2aWNlLlNldFRlc3RNb2RlUmVxdWVzdC5SZk1vZGVSBnJmTW9kZRI5ChlkaXNhYmxlX2xvc3Nfb2ZfY29tbV9mZGlyGOkHIAEoCFIVZGlzYWJsZUxvc3NPZkNvbW1GZGlyEjMKFWVuYWJsZV9ydWxlc19vdmVycmlkZRjqByABKAhSE2VuYWJsZVJ1bGVzT3ZlcnJpZGUiQgoGUmZNb2RlEgYKAlJYEAASCAoESURMRRABEgYKAlRYEAISBwoDQ0FMEAMSCAoEVVNFUhAEEgsKBk5PUk1BTBCkAw==');
@$core.Deprecated('Use softwareUpdateRequestDescriptor instead')
const SoftwareUpdateRequest$json = const {
  '1': 'SoftwareUpdateRequest',
  '2': const [
    const {'1': 'stream_id', '3': 1, '4': 1, '5': 4, '10': 'streamId'},
    const {'1': 'data', '3': 2, '4': 1, '5': 12, '10': 'data'},
    const {'1': 'open', '3': 3, '4': 1, '5': 8, '10': 'open'},
    const {'1': 'close', '3': 4, '4': 1, '5': 8, '10': 'close'},
  ],
};

/// Descriptor for `SoftwareUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List softwareUpdateRequestDescriptor = $convert.base64Decode('ChVTb2Z0d2FyZVVwZGF0ZVJlcXVlc3QSGwoJc3RyZWFtX2lkGAEgASgEUghzdHJlYW1JZBISCgRkYXRhGAIgASgMUgRkYXRhEhIKBG9wZW4YAyABKAhSBG9wZW4SFAoFY2xvc2UYBCABKAhSBWNsb3Nl');
@$core.Deprecated('Use enableDebugTelemRequestDescriptor instead')
const EnableDebugTelemRequest$json = const {
  '1': 'EnableDebugTelemRequest',
  '2': const [
    const {'1': 'duration_m', '3': 1, '4': 1, '5': 13, '10': 'durationM'},
  ],
};

/// Descriptor for `EnableDebugTelemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enableDebugTelemRequestDescriptor = $convert.base64Decode('ChdFbmFibGVEZWJ1Z1RlbGVtUmVxdWVzdBIdCgpkdXJhdGlvbl9tGAEgASgNUglkdXJhdGlvbk0=');
@$core.Deprecated('Use dishStowRequestDescriptor instead')
const DishStowRequest$json = const {
  '1': 'DishStowRequest',
  '2': const [
    const {'1': 'unstow', '3': 1, '4': 1, '5': 8, '10': 'unstow'},
  ],
};

/// Descriptor for `DishStowRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishStowRequestDescriptor = $convert.base64Decode('Cg9EaXNoU3Rvd1JlcXVlc3QSFgoGdW5zdG93GAEgASgIUgZ1bnN0b3c=');
@$core.Deprecated('Use dishGetContextRequestDescriptor instead')
const DishGetContextRequest$json = const {
  '1': 'DishGetContextRequest',
};

/// Descriptor for `DishGetContextRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGetContextRequestDescriptor = $convert.base64Decode('ChVEaXNoR2V0Q29udGV4dFJlcXVlc3Q=');
@$core.Deprecated('Use dishSetEmcRequestDescriptor instead')
const DishSetEmcRequest$json = const {
  '1': 'DishSetEmcRequest',
  '2': const [
    const {'1': 'theta', '3': 1, '4': 1, '5': 1, '10': 'theta'},
    const {'1': 'phi', '3': 2, '4': 1, '5': 1, '10': 'phi'},
    const {'1': 'rx_chan', '3': 3, '4': 1, '5': 13, '10': 'rxChan'},
    const {'1': 'tx_chan', '3': 4, '4': 1, '5': 13, '10': 'txChan'},
    const {'1': 'modulation', '3': 5, '4': 1, '5': 13, '10': 'modulation'},
    const {'1': 'desired_tilt_angle', '3': 7, '4': 1, '5': 1, '10': 'desiredTiltAngle'},
    const {'1': 'chan_override', '3': 8, '4': 1, '5': 8, '10': 'chanOverride'},
    const {'1': 'theta_enabled', '3': 9, '4': 1, '5': 8, '10': 'thetaEnabled'},
    const {'1': 'phi_enabled', '3': 10, '4': 1, '5': 8, '10': 'phiEnabled'},
    const {'1': 'idle', '3': 11, '4': 1, '5': 8, '10': 'idle'},
    const {'1': 'fast_switching', '3': 12, '4': 1, '5': 8, '10': 'fastSwitching'},
    const {'1': 'sky_search', '3': 13, '4': 1, '5': 8, '10': 'skySearch'},
    const {'1': 'force_pll_unlock', '3': 14, '4': 1, '5': 8, '10': 'forcePllUnlock'},
    const {'1': 'force_eirp_failure', '3': 15, '4': 1, '5': 8, '10': 'forceEirpFailure'},
    const {'1': 'snow_active_override', '3': 16, '4': 1, '5': 8, '10': 'snowActiveOverride'},
    const {'1': 'manual_tilting', '3': 18, '4': 1, '5': 8, '10': 'manualTilting'},
    const {'1': 'tilt_to_stowed', '3': 19, '4': 1, '5': 8, '10': 'tiltToStowed'},
    const {'1': 'reboot', '3': 20, '4': 1, '5': 8, '10': 'reboot'},
    const {'1': 'continuous_motor_test', '3': 21, '4': 1, '5': 8, '10': 'continuousMotorTest'},
    const {'1': 'distance_override_meters', '3': 22, '4': 1, '5': 1, '10': 'distanceOverrideMeters'},
    const {'1': 'amplitude_taper_override', '3': 23, '4': 1, '5': 13, '10': 'amplitudeTaperOverride'},
    const {'1': 'country_code_override', '3': 24, '4': 1, '5': 13, '10': 'countryCodeOverride'},
    const {'1': 'tx_duty_cycle_override', '3': 25, '4': 1, '5': 5, '10': 'txDutyCycleOverride'},
    const {'1': 'rx_duty_cycle_override', '3': 26, '4': 1, '5': 5, '10': 'rxDutyCycleOverride'},
    const {'1': 'eirp_legal_limit_dbw_override', '3': 27, '4': 1, '5': 1, '10': 'eirpLegalLimitDbwOverride'},
  ],
};

/// Descriptor for `DishSetEmcRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishSetEmcRequestDescriptor = $convert.base64Decode('ChFEaXNoU2V0RW1jUmVxdWVzdBIUCgV0aGV0YRgBIAEoAVIFdGhldGESEAoDcGhpGAIgASgBUgNwaGkSFwoHcnhfY2hhbhgDIAEoDVIGcnhDaGFuEhcKB3R4X2NoYW4YBCABKA1SBnR4Q2hhbhIeCgptb2R1bGF0aW9uGAUgASgNUgptb2R1bGF0aW9uEiwKEmRlc2lyZWRfdGlsdF9hbmdsZRgHIAEoAVIQZGVzaXJlZFRpbHRBbmdsZRIjCg1jaGFuX292ZXJyaWRlGAggASgIUgxjaGFuT3ZlcnJpZGUSIwoNdGhldGFfZW5hYmxlZBgJIAEoCFIMdGhldGFFbmFibGVkEh8KC3BoaV9lbmFibGVkGAogASgIUgpwaGlFbmFibGVkEhIKBGlkbGUYCyABKAhSBGlkbGUSJQoOZmFzdF9zd2l0Y2hpbmcYDCABKAhSDWZhc3RTd2l0Y2hpbmcSHQoKc2t5X3NlYXJjaBgNIAEoCFIJc2t5U2VhcmNoEigKEGZvcmNlX3BsbF91bmxvY2sYDiABKAhSDmZvcmNlUGxsVW5sb2NrEiwKEmZvcmNlX2VpcnBfZmFpbHVyZRgPIAEoCFIQZm9yY2VFaXJwRmFpbHVyZRIwChRzbm93X2FjdGl2ZV9vdmVycmlkZRgQIAEoCFISc25vd0FjdGl2ZU92ZXJyaWRlEiUKDm1hbnVhbF90aWx0aW5nGBIgASgIUg1tYW51YWxUaWx0aW5nEiQKDnRpbHRfdG9fc3Rvd2VkGBMgASgIUgx0aWx0VG9TdG93ZWQSFgoGcmVib290GBQgASgIUgZyZWJvb3QSMgoVY29udGludW91c19tb3Rvcl90ZXN0GBUgASgIUhNjb250aW51b3VzTW90b3JUZXN0EjgKGGRpc3RhbmNlX292ZXJyaWRlX21ldGVycxgWIAEoAVIWZGlzdGFuY2VPdmVycmlkZU1ldGVycxI4ChhhbXBsaXR1ZGVfdGFwZXJfb3ZlcnJpZGUYFyABKA1SFmFtcGxpdHVkZVRhcGVyT3ZlcnJpZGUSMgoVY291bnRyeV9jb2RlX292ZXJyaWRlGBggASgNUhNjb3VudHJ5Q29kZU92ZXJyaWRlEjMKFnR4X2R1dHlfY3ljbGVfb3ZlcnJpZGUYGSABKAVSE3R4RHV0eUN5Y2xlT3ZlcnJpZGUSMwoWcnhfZHV0eV9jeWNsZV9vdmVycmlkZRgaIAEoBVITcnhEdXR5Q3ljbGVPdmVycmlkZRJACh1laXJwX2xlZ2FsX2xpbWl0X2Rid19vdmVycmlkZRgbIAEoAVIZZWlycExlZ2FsTGltaXREYndPdmVycmlkZQ==');
@$core.Deprecated('Use dishGetObstructionMapRequestDescriptor instead')
const DishGetObstructionMapRequest$json = const {
  '1': 'DishGetObstructionMapRequest',
};

/// Descriptor for `DishGetObstructionMapRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGetObstructionMapRequestDescriptor = $convert.base64Decode('ChxEaXNoR2V0T2JzdHJ1Y3Rpb25NYXBSZXF1ZXN0');
@$core.Deprecated('Use dishGetEmcRequestDescriptor instead')
const DishGetEmcRequest$json = const {
  '1': 'DishGetEmcRequest',
};

/// Descriptor for `DishGetEmcRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGetEmcRequestDescriptor = $convert.base64Decode('ChFEaXNoR2V0RW1jUmVxdWVzdA==');
@$core.Deprecated('Use dishSetConfigRequestDescriptor instead')
const DishSetConfigRequest$json = const {
  '1': 'DishSetConfigRequest',
  '2': const [
    const {'1': 'dish_config', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishConfig', '10': 'dishConfig'},
  ],
};

/// Descriptor for `DishSetConfigRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishSetConfigRequestDescriptor = $convert.base64Decode('ChREaXNoU2V0Q29uZmlnUmVxdWVzdBI+CgtkaXNoX2NvbmZpZxgBIAEoCzIdLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hDb25maWdSCmRpc2hDb25maWc=');
@$core.Deprecated('Use dishConfigDescriptor instead')
const DishConfig$json = const {
  '1': 'DishConfig',
  '2': const [
    const {'1': 'snow_melt_mode', '3': 1, '4': 1, '5': 14, '6': '.SpaceX.API.Device.DishConfig.SnowMeltMode', '10': 'snowMeltMode'},
    const {'1': 'location_request_mode', '3': 2, '4': 1, '5': 14, '6': '.SpaceX.API.Device.DishConfig.LocationRequestMode', '10': 'locationRequestMode'},
    const {'1': 'level_dish_mode', '3': 3, '4': 1, '5': 14, '6': '.SpaceX.API.Device.DishConfig.LevelDishMode', '10': 'levelDishMode'},
    const {'1': 'power_save_start_minutes', '3': 4, '4': 1, '5': 13, '10': 'powerSaveStartMinutes'},
    const {'1': 'power_save_duration_minutes', '3': 5, '4': 1, '5': 13, '10': 'powerSaveDurationMinutes'},
    const {'1': 'power_save_mode', '3': 6, '4': 1, '5': 8, '10': 'powerSaveMode'},
    const {'1': 'apply_snow_melt_mode', '3': 1001, '4': 1, '5': 8, '10': 'applySnowMeltMode'},
    const {'1': 'apply_location_request_mode', '3': 2001, '4': 1, '5': 8, '10': 'applyLocationRequestMode'},
    const {'1': 'apply_level_dish_mode', '3': 3001, '4': 1, '5': 8, '10': 'applyLevelDishMode'},
    const {'1': 'apply_power_save_start_minutes', '3': 4001, '4': 1, '5': 8, '10': 'applyPowerSaveStartMinutes'},
    const {'1': 'apply_power_save_duration_minutes', '3': 5001, '4': 1, '5': 8, '10': 'applyPowerSaveDurationMinutes'},
    const {'1': 'apply_power_save_mode', '3': 6001, '4': 1, '5': 8, '10': 'applyPowerSaveMode'},
  ],
  '4': const [DishConfig_LevelDishMode$json, DishConfig_LocationRequestMode$json, DishConfig_SnowMeltMode$json],
};

@$core.Deprecated('Use dishConfigDescriptor instead')
const DishConfig_LevelDishMode$json = const {
  '1': 'LevelDishMode',
  '2': const [
    const {'1': 'TILT_LIKE_NORMAL', '2': 0},
    const {'1': 'FORCE_LEVEL', '2': 1},
  ],
};

@$core.Deprecated('Use dishConfigDescriptor instead')
const DishConfig_LocationRequestMode$json = const {
  '1': 'LocationRequestMode',
  '2': const [
    const {'1': 'NONE', '2': 0},
    const {'1': 'LOCAL', '2': 1},
  ],
};

@$core.Deprecated('Use dishConfigDescriptor instead')
const DishConfig_SnowMeltMode$json = const {
  '1': 'SnowMeltMode',
  '2': const [
    const {'1': 'AUTO', '2': 0},
    const {'1': 'ALWAYS_ON', '2': 1},
    const {'1': 'ALWAYS_OFF', '2': 2},
  ],
};

/// Descriptor for `DishConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishConfigDescriptor = $convert.base64Decode('CgpEaXNoQ29uZmlnElAKDnNub3dfbWVsdF9tb2RlGAEgASgOMiouU3BhY2VYLkFQSS5EZXZpY2UuRGlzaENvbmZpZy5Tbm93TWVsdE1vZGVSDHNub3dNZWx0TW9kZRJlChVsb2NhdGlvbl9yZXF1ZXN0X21vZGUYAiABKA4yMS5TcGFjZVguQVBJLkRldmljZS5EaXNoQ29uZmlnLkxvY2F0aW9uUmVxdWVzdE1vZGVSE2xvY2F0aW9uUmVxdWVzdE1vZGUSUwoPbGV2ZWxfZGlzaF9tb2RlGAMgASgOMisuU3BhY2VYLkFQSS5EZXZpY2UuRGlzaENvbmZpZy5MZXZlbERpc2hNb2RlUg1sZXZlbERpc2hNb2RlEjcKGHBvd2VyX3NhdmVfc3RhcnRfbWludXRlcxgEIAEoDVIVcG93ZXJTYXZlU3RhcnRNaW51dGVzEj0KG3Bvd2VyX3NhdmVfZHVyYXRpb25fbWludXRlcxgFIAEoDVIYcG93ZXJTYXZlRHVyYXRpb25NaW51dGVzEiYKD3Bvd2VyX3NhdmVfbW9kZRgGIAEoCFINcG93ZXJTYXZlTW9kZRIwChRhcHBseV9zbm93X21lbHRfbW9kZRjpByABKAhSEWFwcGx5U25vd01lbHRNb2RlEj4KG2FwcGx5X2xvY2F0aW9uX3JlcXVlc3RfbW9kZRjRDyABKAhSGGFwcGx5TG9jYXRpb25SZXF1ZXN0TW9kZRIyChVhcHBseV9sZXZlbF9kaXNoX21vZGUYuRcgASgIUhJhcHBseUxldmVsRGlzaE1vZGUSQwoeYXBwbHlfcG93ZXJfc2F2ZV9zdGFydF9taW51dGVzGKEfIAEoCFIaYXBwbHlQb3dlclNhdmVTdGFydE1pbnV0ZXMSSQohYXBwbHlfcG93ZXJfc2F2ZV9kdXJhdGlvbl9taW51dGVzGIknIAEoCFIdYXBwbHlQb3dlclNhdmVEdXJhdGlvbk1pbnV0ZXMSMgoVYXBwbHlfcG93ZXJfc2F2ZV9tb2RlGPEuIAEoCFISYXBwbHlQb3dlclNhdmVNb2RlIjYKDUxldmVsRGlzaE1vZGUSFAoQVElMVF9MSUtFX05PUk1BTBAAEg8KC0ZPUkNFX0xFVkVMEAEiKgoTTG9jYXRpb25SZXF1ZXN0TW9kZRIICgROT05FEAASCQoFTE9DQUwQASI3CgxTbm93TWVsdE1vZGUSCAoEQVVUTxAAEg0KCUFMV0FZU19PThABEg4KCkFMV0FZU19PRkYQAg==');
@$core.Deprecated('Use dishGetConfigRequestDescriptor instead')
const DishGetConfigRequest$json = const {
  '1': 'DishGetConfigRequest',
};

/// Descriptor for `DishGetConfigRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGetConfigRequestDescriptor = $convert.base64Decode('ChREaXNoR2V0Q29uZmlnUmVxdWVzdA==');
@$core.Deprecated('Use startDishSelfTestRequestDescriptor instead')
const StartDishSelfTestRequest$json = const {
  '1': 'StartDishSelfTestRequest',
};

/// Descriptor for `StartDishSelfTestRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startDishSelfTestRequestDescriptor = $convert.base64Decode('ChhTdGFydERpc2hTZWxmVGVzdFJlcXVlc3Q=');
@$core.Deprecated('Use dishPowerSaveRequestDescriptor instead')
const DishPowerSaveRequest$json = const {
  '1': 'DishPowerSaveRequest',
  '2': const [
    const {'1': 'power_save_start_minutes', '3': 1, '4': 1, '5': 13, '10': 'powerSaveStartMinutes'},
    const {'1': 'power_save_duration_minutes', '3': 2, '4': 1, '5': 13, '10': 'powerSaveDurationMinutes'},
    const {'1': 'enable_power_save', '3': 3, '4': 1, '5': 8, '10': 'enablePowerSave'},
  ],
};

/// Descriptor for `DishPowerSaveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishPowerSaveRequestDescriptor = $convert.base64Decode('ChREaXNoUG93ZXJTYXZlUmVxdWVzdBI3Chhwb3dlcl9zYXZlX3N0YXJ0X21pbnV0ZXMYASABKA1SFXBvd2VyU2F2ZVN0YXJ0TWludXRlcxI9Chtwb3dlcl9zYXZlX2R1cmF0aW9uX21pbnV0ZXMYAiABKA1SGHBvd2VyU2F2ZUR1cmF0aW9uTWludXRlcxIqChFlbmFibGVfcG93ZXJfc2F2ZRgDIAEoCFIPZW5hYmxlUG93ZXJTYXZl');
@$core.Deprecated('Use dishInhibitGpsRequestDescriptor instead')
const DishInhibitGpsRequest$json = const {
  '1': 'DishInhibitGpsRequest',
  '2': const [
    const {'1': 'inhibit_gps', '3': 1, '4': 1, '5': 8, '10': 'inhibitGps'},
  ],
};

/// Descriptor for `DishInhibitGpsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishInhibitGpsRequestDescriptor = $convert.base64Decode('ChVEaXNoSW5oaWJpdEdwc1JlcXVlc3QSHwoLaW5oaWJpdF9ncHMYASABKAhSCmluaGliaXRHcHM=');
@$core.Deprecated('Use wifiSetConfigRequestDescriptor instead')
const WifiSetConfigRequest$json = const {
  '1': 'WifiSetConfigRequest',
  '2': const [
    const {'1': 'wifi_config', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiConfig', '10': 'wifiConfig'},
  ],
};

/// Descriptor for `WifiSetConfigRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSetConfigRequestDescriptor = $convert.base64Decode('ChRXaWZpU2V0Q29uZmlnUmVxdWVzdBI+Cgt3aWZpX2NvbmZpZxgBIAEoCzIdLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlDb25maWdSCndpZmlDb25maWc=');
@$core.Deprecated('Use wifiConfigDescriptor instead')
const WifiConfig$json = const {
  '1': 'WifiConfig',
  '2': const [
    const {'1': 'network_name', '3': 1, '4': 1, '5': 9, '10': 'networkName'},
    const {'1': 'network_password', '3': 2, '4': 1, '5': 9, '10': 'networkPassword'},
    const {'1': 'country_code', '3': 3, '4': 1, '5': 9, '10': 'countryCode'},
    const {
      '1': 'lan_ipv4',
      '3': 5,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'lanIpv4',
    },
    const {'1': 'setup_complete', '3': 7, '4': 1, '5': 8, '10': 'setupComplete'},
    const {'1': 'version', '3': 9, '4': 1, '5': 13, '10': 'version'},
    const {
      '1': 'wifi_security',
      '3': 10,
      '4': 1,
      '5': 14,
      '6': '.SpaceX.API.Device.WifiConfig.Security',
      '8': const {'3': true},
      '10': 'wifiSecurity',
    },
    const {
      '1': 'network_name_5ghz',
      '3': 11,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'networkName5ghz',
    },
    const {
      '1': 'mac_wan',
      '3': 12,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'macWan',
    },
    const {
      '1': 'mac_lan',
      '3': 13,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'macLan',
    },
    const {'1': 'channel_2ghz', '3': 19, '4': 1, '5': 13, '10': 'channel2ghz'},
    const {'1': 'channel_5ghz', '3': 20, '4': 1, '5': 13, '10': 'channel5ghz'},
    const {'1': 'dynamic_keys', '3': 22, '4': 3, '5': 11, '6': '.SpaceX.API.Device.PublicKey', '10': 'dynamicKeys'},
    const {'1': 'is_repeater', '3': 23, '4': 1, '5': 8, '10': 'isRepeater'},
    const {'1': 'boot_count', '3': 26, '4': 1, '5': 5, '10': 'bootCount'},
    const {'1': 'nameservers', '3': 30, '4': 3, '5': 9, '10': 'nameservers'},
    const {'1': 'bypass_mode', '3': 31, '4': 1, '5': 8, '10': 'bypassMode'},
    const {'1': 'mesh_configs', '3': 33, '4': 3, '5': 11, '6': '.SpaceX.API.Device.WifiConfig.MeshConfigsEntry', '10': 'meshConfigs'},
    const {
      '1': 'enable_remote_ssh',
      '3': 34,
      '4': 1,
      '5': 8,
      '8': const {'3': true},
      '10': 'enableRemoteSsh',
    },
    const {
      '1': 'last_remote_ssh_access',
      '3': 35,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'lastRemoteSshAccess',
    },
    const {
      '1': 'apply_lan_ipv4',
      '3': 37,
      '4': 1,
      '5': 8,
      '8': const {'3': true},
      '10': 'applyLanIpv4',
    },
    const {'1': 'apply_dynamic_keys', '3': 39, '4': 1, '5': 8, '10': 'applyDynamicKeys'},
    const {'1': 'dfs_enabled', '3': 42, '4': 1, '5': 8, '10': 'dfsEnabled'},
    const {'1': 'incarnation', '3': 43, '4': 1, '5': 4, '10': 'incarnation'},
    const {'1': 'wireless_mode_2ghz', '3': 44, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiConfig.WirelessMode', '10': 'wirelessMode2ghz'},
    const {'1': 'wireless_mode_5ghz', '3': 45, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiConfig.WirelessMode', '10': 'wirelessMode5ghz'},
    const {'1': 'ht_bandwidth_2ghz', '3': 46, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiConfig.HTBandwidth', '10': 'htBandwidth2ghz'},
    const {'1': 'ht_bandwidth_5ghz', '3': 47, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiConfig.HTBandwidth', '10': 'htBandwidth5ghz'},
    const {'1': 'vht_bandwidth', '3': 48, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiConfig.VHTBandwidth', '10': 'vhtBandwidth'},
    const {'1': 'is_aviation', '3': 49, '4': 1, '5': 8, '10': 'isAviation'},
    const {'1': 'secure_dns', '3': 50, '4': 1, '5': 8, '10': 'secureDns'},
    const {'1': 'ap_mode', '3': 51, '4': 1, '5': 8, '10': 'apMode'},
    const {'1': 'disable_mesh_onboarding', '3': 52, '4': 1, '5': 8, '10': 'disableMeshOnboarding'},
    const {'1': 'pin_country_code', '3': 53, '4': 1, '5': 8, '10': 'pinCountryCode'},
    const {'1': 'custom_power_table', '3': 54, '4': 1, '5': 8, '10': 'customPowerTable'},
    const {'1': 'use_public_services', '3': 55, '4': 1, '5': 8, '10': 'usePublicServices'},
    const {'1': 'disable_automated_speedtests', '3': 56, '4': 1, '5': 8, '10': 'disableAutomatedSpeedtests'},
    const {'1': 'channel_5ghz_high', '3': 57, '4': 1, '5': 13, '10': 'channel5ghzHigh'},
    const {'1': 'wireless_mode_5ghz_high', '3': 58, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiConfig.WirelessMode', '10': 'wirelessMode5ghzHigh'},
    const {'1': 'ht_bandwidth_5ghz_high', '3': 59, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiConfig.HTBandwidth', '10': 'htBandwidth5ghzHigh'},
    const {'1': 'vht_bandwidth_5ghz_high', '3': 60, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiConfig.VHTBandwidth', '10': 'vhtBandwidth5ghzHigh'},
    const {'1': 'enable_umbilical_vlan', '3': 61, '4': 1, '5': 8, '10': 'enableUmbilicalVlan'},
    const {'1': 'client_names', '3': 62, '4': 3, '5': 11, '6': '.SpaceX.API.Device.ClientName', '10': 'clientNames'},
    const {'1': 'outdoor_mode', '3': 63, '4': 1, '5': 8, '10': 'outdoorMode'},
    const {'1': 'disable_2ghz', '3': 64, '4': 1, '5': 8, '10': 'disable2ghz'},
    const {'1': 'disable_5ghz', '3': 65, '4': 1, '5': 8, '10': 'disable5ghz'},
    const {'1': 'disable_5ghz_high', '3': 66, '4': 1, '5': 8, '10': 'disable5ghzHigh'},
    const {'1': 'disable_x_mesh_backhaul', '3': 67, '4': 1, '5': 8, '10': 'disableXMeshBackhaul'},
    const {
      '1': 'golden_bssid',
      '3': 68,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'goldenBssid',
    },
    const {
      '1': 'golden_iface_type',
      '3': 69,
      '4': 1,
      '5': 14,
      '6': '.SpaceX.API.Device.IfaceType',
      '8': const {'3': true},
      '10': 'goldenIfaceType',
    },
    const {'1': 'tx_power_level_2ghz', '3': 70, '4': 1, '5': 14, '6': '.SpaceX.API.Device.TxPowerLevel', '10': 'txPowerLevel2ghz'},
    const {'1': 'tx_power_level_5ghz', '3': 71, '4': 1, '5': 14, '6': '.SpaceX.API.Device.TxPowerLevel', '10': 'txPowerLevel5ghz'},
    const {'1': 'tx_power_level_5ghz_high', '3': 72, '4': 1, '5': 14, '6': '.SpaceX.API.Device.TxPowerLevel', '10': 'txPowerLevel5ghzHigh'},
    const {'1': 'disable_pending_update_reboot', '3': 73, '4': 1, '5': 8, '10': 'disablePendingUpdateReboot'},
    const {
      '1': 'apply_network_name',
      '3': 1001,
      '4': 1,
      '5': 8,
      '8': const {'3': true},
      '10': 'applyNetworkName',
    },
    const {
      '1': 'apply_network_password',
      '3': 1002,
      '4': 1,
      '5': 8,
      '8': const {'3': true},
      '10': 'applyNetworkPassword',
    },
    const {
      '1': 'apply_wifi_security',
      '3': 1004,
      '4': 1,
      '5': 8,
      '8': const {'3': true},
      '10': 'applyWifiSecurity',
    },
    const {
      '1': 'apply_network_name_5ghz',
      '3': 1005,
      '4': 1,
      '5': 8,
      '8': const {'3': true},
      '10': 'applyNetworkName5ghz',
    },
    const {'1': 'apply_setup_complete', '3': 1010, '4': 1, '5': 8, '10': 'applySetupComplete'},
    const {'1': 'apply_channel_2ghz', '3': 1013, '4': 1, '5': 8, '10': 'applyChannel2ghz'},
    const {'1': 'apply_channel_5ghz', '3': 1014, '4': 1, '5': 8, '10': 'applyChannel5ghz'},
    const {'1': 'apply_channel_5ghz_high', '3': 1016, '4': 1, '5': 8, '10': 'applyChannel5ghzHigh'},
    const {'1': 'apply_is_repeater', '3': 1031, '4': 1, '5': 8, '10': 'applyIsRepeater'},
    const {'1': 'apply_mesh_configs', '3': 1033, '4': 1, '5': 8, '10': 'applyMeshConfigs'},
    const {'1': 'apply_nameservers', '3': 1054, '4': 1, '5': 8, '10': 'applyNameservers'},
    const {'1': 'apply_bypass_mode', '3': 1055, '4': 1, '5': 8, '10': 'applyBypassMode'},
    const {
      '1': 'apply_enable_remote_ssh',
      '3': 1057,
      '4': 1,
      '5': 8,
      '8': const {'3': true},
      '10': 'applyEnableRemoteSsh',
    },
    const {'1': 'apply_dfs_enabled', '3': 1058, '4': 1, '5': 8, '10': 'applyDfsEnabled'},
    const {'1': 'apply_wireless_mode_2ghz', '3': 1059, '4': 1, '5': 8, '10': 'applyWirelessMode2ghz'},
    const {'1': 'apply_wireless_mode_5ghz', '3': 1060, '4': 1, '5': 8, '10': 'applyWirelessMode5ghz'},
    const {'1': 'apply_ht_bandwidth_2ghz', '3': 1061, '4': 1, '5': 8, '10': 'applyHtBandwidth2ghz'},
    const {'1': 'apply_ht_bandwidth_5ghz', '3': 1062, '4': 1, '5': 8, '10': 'applyHtBandwidth5ghz'},
    const {'1': 'apply_vht_bandwidth', '3': 1063, '4': 1, '5': 8, '10': 'applyVhtBandwidth'},
    const {'1': 'apply_is_aviation', '3': 1064, '4': 1, '5': 8, '10': 'applyIsAviation'},
    const {'1': 'apply_secure_dns', '3': 1065, '4': 1, '5': 8, '10': 'applySecureDns'},
    const {'1': 'apply_ap_mode', '3': 1066, '4': 1, '5': 8, '10': 'applyApMode'},
    const {'1': 'apply_disable_mesh_onboarding', '3': 1067, '4': 1, '5': 8, '10': 'applyDisableMeshOnboarding'},
    const {'1': 'apply_use_public_services', '3': 1068, '4': 1, '5': 8, '10': 'applyUsePublicServices'},
    const {'1': 'apply_disable_automated_speedtests', '3': 1069, '4': 1, '5': 8, '10': 'applyDisableAutomatedSpeedtests'},
    const {'1': 'apply_wireless_mode_5ghz_high', '3': 1070, '4': 1, '5': 8, '10': 'applyWirelessMode5ghzHigh'},
    const {'1': 'apply_ht_bandwidth_5ghz_high', '3': 1071, '4': 1, '5': 8, '10': 'applyHtBandwidth5ghzHigh'},
    const {'1': 'apply_vht_bandwidth_5ghz_high', '3': 1072, '4': 1, '5': 8, '10': 'applyVhtBandwidth5ghzHigh'},
    const {'1': 'apply_enable_umbilical_vlan', '3': 1073, '4': 1, '5': 8, '10': 'applyEnableUmbilicalVlan'},
    const {'1': 'apply_client_names', '3': 1074, '4': 1, '5': 8, '10': 'applyClientNames'},
    const {'1': 'apply_outdoor_mode', '3': 1075, '4': 1, '5': 8, '10': 'applyOutdoorMode'},
    const {'1': 'apply_disable_2ghz', '3': 1076, '4': 1, '5': 8, '10': 'applyDisable2ghz'},
    const {'1': 'apply_disable_5ghz', '3': 1077, '4': 1, '5': 8, '10': 'applyDisable5ghz'},
    const {'1': 'apply_disable_5ghz_high', '3': 1078, '4': 1, '5': 8, '10': 'applyDisable5ghzHigh'},
    const {'1': 'apply_disable_x_mesh_backhaul', '3': 1079, '4': 1, '5': 8, '10': 'applyDisableXMeshBackhaul'},
    const {
      '1': 'apply_golden_bssid',
      '3': 1080,
      '4': 1,
      '5': 8,
      '8': const {'3': true},
      '10': 'applyGoldenBssid',
    },
    const {
      '1': 'apply_golden_iface_type',
      '3': 1081,
      '4': 1,
      '5': 8,
      '8': const {'3': true},
      '10': 'applyGoldenIfaceType',
    },
    const {'1': 'apply_tx_power_level_2ghz', '3': 1082, '4': 1, '5': 8, '10': 'applyTxPowerLevel2ghz'},
    const {'1': 'apply_tx_power_level_5ghz', '3': 1083, '4': 1, '5': 8, '10': 'applyTxPowerLevel5ghz'},
    const {'1': 'apply_tx_power_level_5ghz_high', '3': 1084, '4': 1, '5': 8, '10': 'applyTxPowerLevel5ghzHigh'},
    const {'1': 'apply_country_code', '3': 1085, '4': 1, '5': 8, '10': 'applyCountryCode'},
    const {'1': 'apply_pin_country_code', '3': 1086, '4': 1, '5': 8, '10': 'applyPinCountryCode'},
    const {'1': 'apply_custom_power_table', '3': 1087, '4': 1, '5': 8, '10': 'applyCustomPowerTable'},
    const {'1': 'apply_disable_pending_update_reboot', '3': 1088, '4': 1, '5': 8, '10': 'applyDisablePendingUpdateReboot'},
    const {'1': 'networks', '3': 1100, '4': 3, '5': 11, '6': '.SpaceX.API.Device.WifiConfig.Network', '10': 'networks'},
    const {'1': 'apply_networks', '3': 1101, '4': 1, '5': 8, '10': 'applyNetworks'},
    const {'1': 'boot', '3': 3001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.BootInfo', '10': 'boot'},
    const {'1': 'mesh_configs_updates', '3': 3033, '4': 3, '5': 11, '6': '.SpaceX.API.Device.WifiConfig.MeshConfigsUpdatesEntry', '10': 'meshConfigsUpdates'},
  ],
  '3': const [WifiConfig_MeshConfigsEntry$json, WifiConfig_MeshConfigsUpdatesEntry$json, WifiConfig_BasicServiceSet$json, WifiConfig_Network$json],
  '4': const [WifiConfig_Band$json, WifiConfig_HTBandwidth$json, WifiConfig_Security$json, WifiConfig_VHTBandwidth$json, WifiConfig_WirelessMode$json],
  '9': const [
    const {'1': 4, '2': 5},
    const {'1': 6, '2': 7},
    const {'1': 8, '2': 9},
    const {'1': 14, '2': 15},
    const {'1': 15, '2': 16},
    const {'1': 16, '2': 17},
    const {'1': 17, '2': 18},
    const {'1': 18, '2': 19},
    const {'1': 21, '2': 22},
    const {'1': 24, '2': 25},
    const {'1': 25, '2': 26},
    const {'1': 27, '2': 28},
    const {'1': 28, '2': 29},
    const {'1': 29, '2': 30},
    const {'1': 32, '2': 33},
    const {'1': 36, '2': 37},
    const {'1': 38, '2': 39},
    const {'1': 40, '2': 41},
    const {'1': 41, '2': 42},
    const {'1': 1003, '2': 1004},
    const {'1': 1006, '2': 1007},
    const {'1': 1007, '2': 1008},
    const {'1': 1008, '2': 1009},
    const {'1': 1009, '2': 1010},
    const {'1': 1011, '2': 1012},
    const {'1': 1012, '2': 1013},
    const {'1': 1015, '2': 1016},
    const {'1': 1021, '2': 1022},
    const {'1': 1041, '2': 1042},
    const {'1': 1051, '2': 1052},
    const {'1': 1052, '2': 1053},
    const {'1': 1053, '2': 1054},
    const {'1': 1056, '2': 1057},
    const {'1': 2001, '2': 2002},
    const {'1': 2002, '2': 2003},
    const {'1': 2003, '2': 2004},
    const {'1': 2004, '2': 2005},
    const {'1': 2005, '2': 2006},
    const {'1': 2006, '2': 2007},
    const {'1': 2007, '2': 2008},
    const {'1': 2008, '2': 2009},
  ],
};

@$core.Deprecated('Use wifiConfigDescriptor instead')
const WifiConfig_MeshConfigsEntry$json = const {
  '1': 'MeshConfigsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.MeshConfig', '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use wifiConfigDescriptor instead')
const WifiConfig_MeshConfigsUpdatesEntry$json = const {
  '1': 'MeshConfigsUpdatesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.MeshConfig', '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use wifiConfigDescriptor instead')
const WifiConfig_BasicServiceSet$json = const {
  '1': 'BasicServiceSet',
  '2': const [
    const {'1': 'bssid', '3': 1003, '4': 1, '5': 9, '10': 'bssid'},
    const {'1': 'ssid', '3': 1005, '4': 1, '5': 9, '10': 'ssid'},
    const {'1': 'band', '3': 1011, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiConfig.Band', '10': 'band'},
    const {'1': 'disable', '3': 1013, '4': 1, '5': 8, '10': 'disable'},
    const {'1': 'hidden', '3': 1015, '4': 1, '5': 8, '10': 'hidden'},
    const {'1': 'iface_name', '3': 1017, '4': 1, '5': 9, '10': 'ifaceName'},
    const {'1': 'auth_open', '3': 2001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.AuthOpen', '9': 0, '10': 'authOpen'},
    const {'1': 'auth_wpa2', '3': 2002, '4': 1, '5': 11, '6': '.SpaceX.API.Device.AuthWpa2', '9': 0, '10': 'authWpa2'},
    const {'1': 'auth_wpa3', '3': 2003, '4': 1, '5': 11, '6': '.SpaceX.API.Device.AuthWpa3', '9': 0, '10': 'authWpa3'},
    const {'1': 'auth_wpa2_wpa3', '3': 2004, '4': 1, '5': 11, '6': '.SpaceX.API.Device.AuthWpa2Wpa3', '9': 0, '10': 'authWpa2Wpa3'},
    const {'1': 'auth_radius', '3': 2005, '4': 1, '5': 11, '6': '.SpaceX.API.Device.AuthRadius', '9': 0, '10': 'authRadius'},
  ],
  '8': const [
    const {'1': 'auth'},
  ],
  '9': const [
    const {'1': 1000, '2': 1001},
    const {'1': 1001, '2': 1002},
    const {'1': 1002, '2': 1003},
    const {'1': 1004, '2': 1005},
    const {'1': 1006, '2': 1007},
    const {'1': 1012, '2': 1013},
    const {'1': 1014, '2': 1015},
    const {'1': 1016, '2': 1017},
    const {'1': 2000, '2': 2001},
  ],
};

@$core.Deprecated('Use wifiConfigDescriptor instead')
const WifiConfig_Network$json = const {
  '1': 'Network',
  '2': const [
    const {'1': 'ipv4', '3': 1003, '4': 1, '5': 9, '10': 'ipv4'},
    const {'1': 'basic_service_sets', '3': 1007, '4': 3, '5': 11, '6': '.SpaceX.API.Device.WifiConfig.BasicServiceSet', '10': 'basicServiceSets'},
    const {'1': 'client_isolation', '3': 1008, '4': 1, '5': 8, '10': 'clientIsolation'},
    const {'1': 'guest', '3': 1009, '4': 1, '5': 8, '10': 'guest'},
    const {'1': 'landing', '3': 1010, '4': 1, '5': 9, '10': 'landing'},
    const {'1': 'domain', '3': 1011, '4': 1, '5': 9, '10': 'domain'},
    const {'1': 'dhcpv4_start', '3': 1012, '4': 1, '5': 13, '10': 'dhcpv4Start'},
  ],
  '9': const [
    const {'1': 1000, '2': 1001},
    const {'1': 1001, '2': 1002},
    const {'1': 1002, '2': 1003},
    const {'1': 1004, '2': 1005},
    const {'1': 1005, '2': 1006},
    const {'1': 1006, '2': 1007},
  ],
};

@$core.Deprecated('Use wifiConfigDescriptor instead')
const WifiConfig_Band$json = const {
  '1': 'Band',
  '2': const [
    const {'1': 'RF_UNKNOWN', '2': 0},
    const {'1': 'RF_2GHZ', '2': 2},
    const {'1': 'RF_5GHZ', '2': 5},
    const {'1': 'RF_5GHZ_HIGH', '2': 6},
  ],
};

@$core.Deprecated('Use wifiConfigDescriptor instead')
const WifiConfig_HTBandwidth$json = const {
  '1': 'HTBandwidth',
  '2': const [
    const {'1': 'HT_BANDWIDTH_DEFAULT', '2': 0},
    const {'1': 'HT_BANDWIDTH_20_MHZ', '2': 1},
    const {'1': 'HT_BANDWIDTH_20_OR_40_MHZ', '2': 2},
  ],
};

@$core.Deprecated('Use wifiConfigDescriptor instead')
const WifiConfig_Security$json = const {
  '1': 'Security',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'WPA2', '2': 1},
    const {'1': 'WPA3', '2': 2},
    const {'1': 'WPA2WPA3', '2': 3},
  ],
};

@$core.Deprecated('Use wifiConfigDescriptor instead')
const WifiConfig_VHTBandwidth$json = const {
  '1': 'VHTBandwidth',
  '2': const [
    const {'1': 'VHT_BANDWIDTH_DEFAULT', '2': 0},
    const {'1': 'VHT_BANDWIDTH_DISABLED', '2': 1},
    const {'1': 'VHT_BANDWIDTH_80_MHZ', '2': 2},
    const {'1': 'VHT_BANDWIDTH_160_MHZ', '2': 3},
    const {'1': 'VHT_BANDWIDTH_80_PLUS_80_MHZ', '2': 4},
  ],
};

@$core.Deprecated('Use wifiConfigDescriptor instead')
const WifiConfig_WirelessMode$json = const {
  '1': 'WirelessMode',
  '2': const [
    const {'1': 'WIRELESS_MODE_DEFAULT', '2': 0},
    const {'1': 'A_ONLY', '2': 1},
    const {'1': 'B_ONLY', '2': 2},
    const {'1': 'G_ONLY', '2': 3},
    const {'1': 'N_ONLY', '2': 4},
    const {'1': 'B_G_MIXED', '2': 5},
    const {'1': 'A_N_MIXED', '2': 6},
    const {'1': 'G_N_MIXED', '2': 7},
    const {'1': 'B_G_N_MIXED', '2': 8},
    const {'1': 'A_AN_AC_MIXED', '2': 9},
    const {'1': 'AN_AC_MIXED', '2': 10},
    const {'1': 'B_G_N_AX_MIXED', '2': 11},
    const {'1': 'A_AN_AC_AX_MIXED', '2': 12},
  ],
};

/// Descriptor for `WifiConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiConfigDescriptor = $convert.base64Decode('CgpXaWZpQ29uZmlnEiEKDG5ldHdvcmtfbmFtZRgBIAEoCVILbmV0d29ya05hbWUSKQoQbmV0d29ya19wYXNzd29yZBgCIAEoCVIPbmV0d29ya1Bhc3N3b3JkEiEKDGNvdW50cnlfY29kZRgDIAEoCVILY291bnRyeUNvZGUSHQoIbGFuX2lwdjQYBSABKAlCAhgBUgdsYW5JcHY0EiUKDnNldHVwX2NvbXBsZXRlGAcgASgIUg1zZXR1cENvbXBsZXRlEhgKB3ZlcnNpb24YCSABKA1SB3ZlcnNpb24STwoNd2lmaV9zZWN1cml0eRgKIAEoDjImLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlDb25maWcuU2VjdXJpdHlCAhgBUgx3aWZpU2VjdXJpdHkSLgoRbmV0d29ya19uYW1lXzVnaHoYCyABKAlCAhgBUg9uZXR3b3JrTmFtZTVnaHoSGwoHbWFjX3dhbhgMIAEoCUICGAFSBm1hY1dhbhIbCgdtYWNfbGFuGA0gASgJQgIYAVIGbWFjTGFuEiEKDGNoYW5uZWxfMmdoehgTIAEoDVILY2hhbm5lbDJnaHoSIQoMY2hhbm5lbF81Z2h6GBQgASgNUgtjaGFubmVsNWdoehI/CgxkeW5hbWljX2tleXMYFiADKAsyHC5TcGFjZVguQVBJLkRldmljZS5QdWJsaWNLZXlSC2R5bmFtaWNLZXlzEh8KC2lzX3JlcGVhdGVyGBcgASgIUgppc1JlcGVhdGVyEh0KCmJvb3RfY291bnQYGiABKAVSCWJvb3RDb3VudBIgCgtuYW1lc2VydmVycxgeIAMoCVILbmFtZXNlcnZlcnMSHwoLYnlwYXNzX21vZGUYHyABKAhSCmJ5cGFzc01vZGUSUQoMbWVzaF9jb25maWdzGCEgAygLMi4uU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUNvbmZpZy5NZXNoQ29uZmlnc0VudHJ5UgttZXNoQ29uZmlncxIuChFlbmFibGVfcmVtb3RlX3NzaBgiIAEoCEICGAFSD2VuYWJsZVJlbW90ZVNzaBI3ChZsYXN0X3JlbW90ZV9zc2hfYWNjZXNzGCMgASgDQgIYAVITbGFzdFJlbW90ZVNzaEFjY2VzcxIoCg5hcHBseV9sYW5faXB2NBglIAEoCEICGAFSDGFwcGx5TGFuSXB2NBIsChJhcHBseV9keW5hbWljX2tleXMYJyABKAhSEGFwcGx5RHluYW1pY0tleXMSHwoLZGZzX2VuYWJsZWQYKiABKAhSCmRmc0VuYWJsZWQSIAoLaW5jYXJuYXRpb24YKyABKARSC2luY2FybmF0aW9uElgKEndpcmVsZXNzX21vZGVfMmdoehgsIAEoDjIqLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlDb25maWcuV2lyZWxlc3NNb2RlUhB3aXJlbGVzc01vZGUyZ2h6ElgKEndpcmVsZXNzX21vZGVfNWdoehgtIAEoDjIqLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlDb25maWcuV2lyZWxlc3NNb2RlUhB3aXJlbGVzc01vZGU1Z2h6ElUKEWh0X2JhbmR3aWR0aF8yZ2h6GC4gASgOMikuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUNvbmZpZy5IVEJhbmR3aWR0aFIPaHRCYW5kd2lkdGgyZ2h6ElUKEWh0X2JhbmR3aWR0aF81Z2h6GC8gASgOMikuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUNvbmZpZy5IVEJhbmR3aWR0aFIPaHRCYW5kd2lkdGg1Z2h6Ek8KDXZodF9iYW5kd2lkdGgYMCABKA4yKi5TcGFjZVguQVBJLkRldmljZS5XaWZpQ29uZmlnLlZIVEJhbmR3aWR0aFIMdmh0QmFuZHdpZHRoEh8KC2lzX2F2aWF0aW9uGDEgASgIUgppc0F2aWF0aW9uEh0KCnNlY3VyZV9kbnMYMiABKAhSCXNlY3VyZURucxIXCgdhcF9tb2RlGDMgASgIUgZhcE1vZGUSNgoXZGlzYWJsZV9tZXNoX29uYm9hcmRpbmcYNCABKAhSFWRpc2FibGVNZXNoT25ib2FyZGluZxIoChBwaW5fY291bnRyeV9jb2RlGDUgASgIUg5waW5Db3VudHJ5Q29kZRIsChJjdXN0b21fcG93ZXJfdGFibGUYNiABKAhSEGN1c3RvbVBvd2VyVGFibGUSLgoTdXNlX3B1YmxpY19zZXJ2aWNlcxg3IAEoCFIRdXNlUHVibGljU2VydmljZXMSQAocZGlzYWJsZV9hdXRvbWF0ZWRfc3BlZWR0ZXN0cxg4IAEoCFIaZGlzYWJsZUF1dG9tYXRlZFNwZWVkdGVzdHMSKgoRY2hhbm5lbF81Z2h6X2hpZ2gYOSABKA1SD2NoYW5uZWw1Z2h6SGlnaBJhChd3aXJlbGVzc19tb2RlXzVnaHpfaGlnaBg6IAEoDjIqLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlDb25maWcuV2lyZWxlc3NNb2RlUhR3aXJlbGVzc01vZGU1Z2h6SGlnaBJeChZodF9iYW5kd2lkdGhfNWdoel9oaWdoGDsgASgOMikuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUNvbmZpZy5IVEJhbmR3aWR0aFITaHRCYW5kd2lkdGg1Z2h6SGlnaBJhChd2aHRfYmFuZHdpZHRoXzVnaHpfaGlnaBg8IAEoDjIqLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlDb25maWcuVkhUQmFuZHdpZHRoUhR2aHRCYW5kd2lkdGg1Z2h6SGlnaBIyChVlbmFibGVfdW1iaWxpY2FsX3ZsYW4YPSABKAhSE2VuYWJsZVVtYmlsaWNhbFZsYW4SQAoMY2xpZW50X25hbWVzGD4gAygLMh0uU3BhY2VYLkFQSS5EZXZpY2UuQ2xpZW50TmFtZVILY2xpZW50TmFtZXMSIQoMb3V0ZG9vcl9tb2RlGD8gASgIUgtvdXRkb29yTW9kZRIhCgxkaXNhYmxlXzJnaHoYQCABKAhSC2Rpc2FibGUyZ2h6EiEKDGRpc2FibGVfNWdoehhBIAEoCFILZGlzYWJsZTVnaHoSKgoRZGlzYWJsZV81Z2h6X2hpZ2gYQiABKAhSD2Rpc2FibGU1Z2h6SGlnaBI1ChdkaXNhYmxlX3hfbWVzaF9iYWNraGF1bBhDIAEoCFIUZGlzYWJsZVhNZXNoQmFja2hhdWwSJQoMZ29sZGVuX2Jzc2lkGEQgASgJQgIYAVILZ29sZGVuQnNzaWQSTAoRZ29sZGVuX2lmYWNlX3R5cGUYRSABKA4yHC5TcGFjZVguQVBJLkRldmljZS5JZmFjZVR5cGVCAhgBUg9nb2xkZW5JZmFjZVR5cGUSTgoTdHhfcG93ZXJfbGV2ZWxfMmdoehhGIAEoDjIfLlNwYWNlWC5BUEkuRGV2aWNlLlR4UG93ZXJMZXZlbFIQdHhQb3dlckxldmVsMmdoehJOChN0eF9wb3dlcl9sZXZlbF81Z2h6GEcgASgOMh8uU3BhY2VYLkFQSS5EZXZpY2UuVHhQb3dlckxldmVsUhB0eFBvd2VyTGV2ZWw1Z2h6ElcKGHR4X3Bvd2VyX2xldmVsXzVnaHpfaGlnaBhIIAEoDjIfLlNwYWNlWC5BUEkuRGV2aWNlLlR4UG93ZXJMZXZlbFIUdHhQb3dlckxldmVsNWdoekhpZ2gSQQodZGlzYWJsZV9wZW5kaW5nX3VwZGF0ZV9yZWJvb3QYSSABKAhSGmRpc2FibGVQZW5kaW5nVXBkYXRlUmVib290EjEKEmFwcGx5X25ldHdvcmtfbmFtZRjpByABKAhCAhgBUhBhcHBseU5ldHdvcmtOYW1lEjkKFmFwcGx5X25ldHdvcmtfcGFzc3dvcmQY6gcgASgIQgIYAVIUYXBwbHlOZXR3b3JrUGFzc3dvcmQSMwoTYXBwbHlfd2lmaV9zZWN1cml0eRjsByABKAhCAhgBUhFhcHBseVdpZmlTZWN1cml0eRI6ChdhcHBseV9uZXR3b3JrX25hbWVfNWdoehjtByABKAhCAhgBUhRhcHBseU5ldHdvcmtOYW1lNWdoehIxChRhcHBseV9zZXR1cF9jb21wbGV0ZRjyByABKAhSEmFwcGx5U2V0dXBDb21wbGV0ZRItChJhcHBseV9jaGFubmVsXzJnaHoY9QcgASgIUhBhcHBseUNoYW5uZWwyZ2h6Ei0KEmFwcGx5X2NoYW5uZWxfNWdoehj2ByABKAhSEGFwcGx5Q2hhbm5lbDVnaHoSNgoXYXBwbHlfY2hhbm5lbF81Z2h6X2hpZ2gY+AcgASgIUhRhcHBseUNoYW5uZWw1Z2h6SGlnaBIrChFhcHBseV9pc19yZXBlYXRlchiHCCABKAhSD2FwcGx5SXNSZXBlYXRlchItChJhcHBseV9tZXNoX2NvbmZpZ3MYiQggASgIUhBhcHBseU1lc2hDb25maWdzEiwKEWFwcGx5X25hbWVzZXJ2ZXJzGJ4IIAEoCFIQYXBwbHlOYW1lc2VydmVycxIrChFhcHBseV9ieXBhc3NfbW9kZRifCCABKAhSD2FwcGx5QnlwYXNzTW9kZRI6ChdhcHBseV9lbmFibGVfcmVtb3RlX3NzaBihCCABKAhCAhgBUhRhcHBseUVuYWJsZVJlbW90ZVNzaBIrChFhcHBseV9kZnNfZW5hYmxlZBiiCCABKAhSD2FwcGx5RGZzRW5hYmxlZBI4ChhhcHBseV93aXJlbGVzc19tb2RlXzJnaHoYowggASgIUhVhcHBseVdpcmVsZXNzTW9kZTJnaHoSOAoYYXBwbHlfd2lyZWxlc3NfbW9kZV81Z2h6GKQIIAEoCFIVYXBwbHlXaXJlbGVzc01vZGU1Z2h6EjYKF2FwcGx5X2h0X2JhbmR3aWR0aF8yZ2h6GKUIIAEoCFIUYXBwbHlIdEJhbmR3aWR0aDJnaHoSNgoXYXBwbHlfaHRfYmFuZHdpZHRoXzVnaHoYpgggASgIUhRhcHBseUh0QmFuZHdpZHRoNWdoehIvChNhcHBseV92aHRfYmFuZHdpZHRoGKcIIAEoCFIRYXBwbHlWaHRCYW5kd2lkdGgSKwoRYXBwbHlfaXNfYXZpYXRpb24YqAggASgIUg9hcHBseUlzQXZpYXRpb24SKQoQYXBwbHlfc2VjdXJlX2RucxipCCABKAhSDmFwcGx5U2VjdXJlRG5zEiMKDWFwcGx5X2FwX21vZGUYqgggASgIUgthcHBseUFwTW9kZRJCCh1hcHBseV9kaXNhYmxlX21lc2hfb25ib2FyZGluZxirCCABKAhSGmFwcGx5RGlzYWJsZU1lc2hPbmJvYXJkaW5nEjoKGWFwcGx5X3VzZV9wdWJsaWNfc2VydmljZXMYrAggASgIUhZhcHBseVVzZVB1YmxpY1NlcnZpY2VzEkwKImFwcGx5X2Rpc2FibGVfYXV0b21hdGVkX3NwZWVkdGVzdHMYrQggASgIUh9hcHBseURpc2FibGVBdXRvbWF0ZWRTcGVlZHRlc3RzEkEKHWFwcGx5X3dpcmVsZXNzX21vZGVfNWdoel9oaWdoGK4IIAEoCFIZYXBwbHlXaXJlbGVzc01vZGU1Z2h6SGlnaBI/ChxhcHBseV9odF9iYW5kd2lkdGhfNWdoel9oaWdoGK8IIAEoCFIYYXBwbHlIdEJhbmR3aWR0aDVnaHpIaWdoEkEKHWFwcGx5X3ZodF9iYW5kd2lkdGhfNWdoel9oaWdoGLAIIAEoCFIZYXBwbHlWaHRCYW5kd2lkdGg1Z2h6SGlnaBI+ChthcHBseV9lbmFibGVfdW1iaWxpY2FsX3ZsYW4YsQggASgIUhhhcHBseUVuYWJsZVVtYmlsaWNhbFZsYW4SLQoSYXBwbHlfY2xpZW50X25hbWVzGLIIIAEoCFIQYXBwbHlDbGllbnROYW1lcxItChJhcHBseV9vdXRkb29yX21vZGUYswggASgIUhBhcHBseU91dGRvb3JNb2RlEi0KEmFwcGx5X2Rpc2FibGVfMmdoehi0CCABKAhSEGFwcGx5RGlzYWJsZTJnaHoSLQoSYXBwbHlfZGlzYWJsZV81Z2h6GLUIIAEoCFIQYXBwbHlEaXNhYmxlNWdoehI2ChdhcHBseV9kaXNhYmxlXzVnaHpfaGlnaBi2CCABKAhSFGFwcGx5RGlzYWJsZTVnaHpIaWdoEkEKHWFwcGx5X2Rpc2FibGVfeF9tZXNoX2JhY2toYXVsGLcIIAEoCFIZYXBwbHlEaXNhYmxlWE1lc2hCYWNraGF1bBIxChJhcHBseV9nb2xkZW5fYnNzaWQYuAggASgIQgIYAVIQYXBwbHlHb2xkZW5Cc3NpZBI6ChdhcHBseV9nb2xkZW5faWZhY2VfdHlwZRi5CCABKAhCAhgBUhRhcHBseUdvbGRlbklmYWNlVHlwZRI5ChlhcHBseV90eF9wb3dlcl9sZXZlbF8yZ2h6GLoIIAEoCFIVYXBwbHlUeFBvd2VyTGV2ZWwyZ2h6EjkKGWFwcGx5X3R4X3Bvd2VyX2xldmVsXzVnaHoYuwggASgIUhVhcHBseVR4UG93ZXJMZXZlbDVnaHoSQgoeYXBwbHlfdHhfcG93ZXJfbGV2ZWxfNWdoel9oaWdoGLwIIAEoCFIZYXBwbHlUeFBvd2VyTGV2ZWw1Z2h6SGlnaBItChJhcHBseV9jb3VudHJ5X2NvZGUYvQggASgIUhBhcHBseUNvdW50cnlDb2RlEjQKFmFwcGx5X3Bpbl9jb3VudHJ5X2NvZGUYvgggASgIUhNhcHBseVBpbkNvdW50cnlDb2RlEjgKGGFwcGx5X2N1c3RvbV9wb3dlcl90YWJsZRi/CCABKAhSFWFwcGx5Q3VzdG9tUG93ZXJUYWJsZRJNCiNhcHBseV9kaXNhYmxlX3BlbmRpbmdfdXBkYXRlX3JlYm9vdBjACCABKAhSH2FwcGx5RGlzYWJsZVBlbmRpbmdVcGRhdGVSZWJvb3QSQgoIbmV0d29ya3MYzAggAygLMiUuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUNvbmZpZy5OZXR3b3JrUghuZXR3b3JrcxImCg5hcHBseV9uZXR3b3JrcxjNCCABKAhSDWFwcGx5TmV0d29ya3MSMAoEYm9vdBi5FyABKAsyGy5TcGFjZVguQVBJLkRldmljZS5Cb290SW5mb1IEYm9vdBJoChRtZXNoX2NvbmZpZ3NfdXBkYXRlcxjZFyADKAsyNS5TcGFjZVguQVBJLkRldmljZS5XaWZpQ29uZmlnLk1lc2hDb25maWdzVXBkYXRlc0VudHJ5UhJtZXNoQ29uZmlnc1VwZGF0ZXMaXQoQTWVzaENvbmZpZ3NFbnRyeRIQCgNrZXkYASABKAlSA2tleRIzCgV2YWx1ZRgCIAEoCzIdLlNwYWNlWC5BUEkuRGV2aWNlLk1lc2hDb25maWdSBXZhbHVlOgI4ARpkChdNZXNoQ29uZmlnc1VwZGF0ZXNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIzCgV2YWx1ZRgCIAEoCzIdLlNwYWNlWC5BUEkuRGV2aWNlLk1lc2hDb25maWdSBXZhbHVlOgI4ARreBAoPQmFzaWNTZXJ2aWNlU2V0EhUKBWJzc2lkGOsHIAEoCVIFYnNzaWQSEwoEc3NpZBjtByABKAlSBHNzaWQSNwoEYmFuZBjzByABKA4yIi5TcGFjZVguQVBJLkRldmljZS5XaWZpQ29uZmlnLkJhbmRSBGJhbmQSGQoHZGlzYWJsZRj1ByABKAhSB2Rpc2FibGUSFwoGaGlkZGVuGPcHIAEoCFIGaGlkZGVuEh4KCmlmYWNlX25hbWUY+QcgASgJUglpZmFjZU5hbWUSOwoJYXV0aF9vcGVuGNEPIAEoCzIbLlNwYWNlWC5BUEkuRGV2aWNlLkF1dGhPcGVuSABSCGF1dGhPcGVuEjsKCWF1dGhfd3BhMhjSDyABKAsyGy5TcGFjZVguQVBJLkRldmljZS5BdXRoV3BhMkgAUghhdXRoV3BhMhI7CglhdXRoX3dwYTMY0w8gASgLMhsuU3BhY2VYLkFQSS5EZXZpY2UuQXV0aFdwYTNIAFIIYXV0aFdwYTMSSAoOYXV0aF93cGEyX3dwYTMY1A8gASgLMh8uU3BhY2VYLkFQSS5EZXZpY2UuQXV0aFdwYTJXcGEzSABSDGF1dGhXcGEyV3BhMxJBCgthdXRoX3JhZGl1cxjVDyABKAsyHS5TcGFjZVguQVBJLkRldmljZS5BdXRoUmFkaXVzSABSCmF1dGhSYWRpdXNCBgoEYXV0aEoGCOgHEOkHSgYI6QcQ6gdKBgjqBxDrB0oGCOwHEO0HSgYI7gcQ7wdKBgj0BxD1B0oGCPYHEPcHSgYI+AcQ+QdKBgjQDxDRDxrHAgoHTmV0d29yaxITCgRpcHY0GOsHIAEoCVIEaXB2NBJcChJiYXNpY19zZXJ2aWNlX3NldHMY7wcgAygLMi0uU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUNvbmZpZy5CYXNpY1NlcnZpY2VTZXRSEGJhc2ljU2VydmljZVNldHMSKgoQY2xpZW50X2lzb2xhdGlvbhjwByABKAhSD2NsaWVudElzb2xhdGlvbhIVCgVndWVzdBjxByABKAhSBWd1ZXN0EhkKB2xhbmRpbmcY8gcgASgJUgdsYW5kaW5nEhcKBmRvbWFpbhjzByABKAlSBmRvbWFpbhIiCgxkaGNwdjRfc3RhcnQY9AcgASgNUgtkaGNwdjRTdGFydEoGCOgHEOkHSgYI6QcQ6gdKBgjqBxDrB0oGCOwHEO0HSgYI7QcQ7gdKBgjuBxDvByJCCgRCYW5kEg4KClJGX1VOS05PV04QABILCgdSRl8yR0haEAISCwoHUkZfNUdIWhAFEhAKDFJGXzVHSFpfSElHSBAGIl8KC0hUQmFuZHdpZHRoEhgKFEhUX0JBTkRXSURUSF9ERUZBVUxUEAASFwoTSFRfQkFORFdJRFRIXzIwX01IWhABEh0KGUhUX0JBTkRXSURUSF8yMF9PUl80MF9NSFoQAiI5CghTZWN1cml0eRILCgdVTktOT1dOEAASCAoEV1BBMhABEggKBFdQQTMQAhIMCghXUEEyV1BBMxADIpwBCgxWSFRCYW5kd2lkdGgSGQoVVkhUX0JBTkRXSURUSF9ERUZBVUxUEAASGgoWVkhUX0JBTkRXSURUSF9ESVNBQkxFRBABEhgKFFZIVF9CQU5EV0lEVEhfODBfTUhaEAISGQoVVkhUX0JBTkRXSURUSF8xNjBfTUhaEAMSIAocVkhUX0JBTkRXSURUSF84MF9QTFVTXzgwX01IWhAEIuUBCgxXaXJlbGVzc01vZGUSGQoVV0lSRUxFU1NfTU9ERV9ERUZBVUxUEAASCgoGQV9PTkxZEAESCgoGQl9PTkxZEAISCgoGR19PTkxZEAMSCgoGTl9PTkxZEAQSDQoJQl9HX01JWEVEEAUSDQoJQV9OX01JWEVEEAYSDQoJR19OX01JWEVEEAcSDwoLQl9HX05fTUlYRUQQCBIRCg1BX0FOX0FDX01JWEVEEAkSDwoLQU5fQUNfTUlYRUQQChISCg5CX0dfTl9BWF9NSVhFRBALEhQKEEFfQU5fQUNfQVhfTUlYRUQQDEoECAQQBUoECAYQB0oECAgQCUoECA4QD0oECA8QEEoECBAQEUoECBEQEkoECBIQE0oECBUQFkoECBgQGUoECBkQGkoECBsQHEoECBwQHUoECB0QHkoECCAQIUoECCQQJUoECCYQJ0oECCgQKUoECCkQKkoGCOsHEOwHSgYI7gcQ7wdKBgjvBxDwB0oGCPAHEPEHSgYI8QcQ8gdKBgjzBxD0B0oGCPQHEPUHSgYI9wcQ+AdKBgj9BxD+B0oGCJEIEJIISgYImwgQnAhKBgicCBCdCEoGCJ0IEJ4ISgYIoAgQoQhKBgjRDxDSD0oGCNIPENMPSgYI0w8Q1A9KBgjUDxDVD0oGCNUPENYPSgYI1g8Q1w9KBgjXDxDYD0oGCNgPENkP');
@$core.Deprecated('Use meshConfigDescriptor instead')
const MeshConfig$json = const {
  '1': 'MeshConfig',
  '2': const [
    const {'1': 'display_name', '3': 1, '4': 1, '5': 9, '10': 'displayName'},
    const {'1': 'apply_display_name', '3': 2, '4': 1, '5': 8, '10': 'applyDisplayName'},
    const {'1': 'auth', '3': 3, '4': 1, '5': 14, '6': '.SpaceX.API.Device.MeshAuth', '10': 'auth'},
    const {'1': 'apply_auth', '3': 4, '4': 1, '5': 8, '10': 'applyAuth'},
    const {'1': 'last_connected', '3': 5, '4': 1, '5': 3, '10': 'lastConnected'},
    const {'1': 'incarnation', '3': 7, '4': 1, '5': 4, '10': 'incarnation'},
  ],
  '9': const [
    const {'1': 6, '2': 7},
    const {'1': 8, '2': 9},
  ],
};

/// Descriptor for `MeshConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List meshConfigDescriptor = $convert.base64Decode('CgpNZXNoQ29uZmlnEiEKDGRpc3BsYXlfbmFtZRgBIAEoCVILZGlzcGxheU5hbWUSLAoSYXBwbHlfZGlzcGxheV9uYW1lGAIgASgIUhBhcHBseURpc3BsYXlOYW1lEi8KBGF1dGgYAyABKA4yGy5TcGFjZVguQVBJLkRldmljZS5NZXNoQXV0aFIEYXV0aBIdCgphcHBseV9hdXRoGAQgASgIUglhcHBseUF1dGgSJQoObGFzdF9jb25uZWN0ZWQYBSABKANSDWxhc3RDb25uZWN0ZWQSIAoLaW5jYXJuYXRpb24YByABKARSC2luY2FybmF0aW9uSgQIBhAHSgQICBAJ');
@$core.Deprecated('Use clientNameDescriptor instead')
const ClientName$json = const {
  '1': 'ClientName',
  '2': const [
    const {'1': 'mac_address', '3': 1, '4': 1, '5': 9, '10': 'macAddress'},
    const {'1': 'given_name', '3': 2, '4': 1, '5': 9, '10': 'givenName'},
  ],
};

/// Descriptor for `ClientName`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientNameDescriptor = $convert.base64Decode('CgpDbGllbnROYW1lEh8KC21hY19hZGRyZXNzGAEgASgJUgptYWNBZGRyZXNzEh0KCmdpdmVuX25hbWUYAiABKAlSCWdpdmVuTmFtZQ==');
@$core.Deprecated('Use bootInfoDescriptor instead')
const BootInfo$json = const {
  '1': 'BootInfo',
  '2': const [
    const {'1': 'count_by_reason', '3': 1, '4': 3, '5': 11, '6': '.SpaceX.API.Device.BootInfo.CountByReasonEntry', '10': 'countByReason'},
    const {'1': 'last_reason', '3': 2, '4': 1, '5': 14, '6': '.SpaceX.API.Device.BootReason', '10': 'lastReason'},
    const {'1': 'last_count', '3': 3, '4': 1, '5': 5, '10': 'lastCount'},
    const {'1': 'count_by_reason_delta', '3': 4, '4': 3, '5': 11, '6': '.SpaceX.API.Device.BootInfo.CountByReasonDeltaEntry', '10': 'countByReasonDelta'},
  ],
  '3': const [BootInfo_CountByReasonEntry$json, BootInfo_CountByReasonDeltaEntry$json],
};

@$core.Deprecated('Use bootInfoDescriptor instead')
const BootInfo_CountByReasonEntry$json = const {
  '1': 'CountByReasonEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use bootInfoDescriptor instead')
const BootInfo_CountByReasonDeltaEntry$json = const {
  '1': 'CountByReasonDeltaEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `BootInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bootInfoDescriptor = $convert.base64Decode('CghCb290SW5mbxJWCg9jb3VudF9ieV9yZWFzb24YASADKAsyLi5TcGFjZVguQVBJLkRldmljZS5Cb290SW5mby5Db3VudEJ5UmVhc29uRW50cnlSDWNvdW50QnlSZWFzb24SPgoLbGFzdF9yZWFzb24YAiABKA4yHS5TcGFjZVguQVBJLkRldmljZS5Cb290UmVhc29uUgpsYXN0UmVhc29uEh0KCmxhc3RfY291bnQYAyABKAVSCWxhc3RDb3VudBJmChVjb3VudF9ieV9yZWFzb25fZGVsdGEYBCADKAsyMy5TcGFjZVguQVBJLkRldmljZS5Cb290SW5mby5Db3VudEJ5UmVhc29uRGVsdGFFbnRyeVISY291bnRCeVJlYXNvbkRlbHRhGkAKEkNvdW50QnlSZWFzb25FbnRyeRIQCgNrZXkYASABKAVSA2tleRIUCgV2YWx1ZRgCIAEoBVIFdmFsdWU6AjgBGkUKF0NvdW50QnlSZWFzb25EZWx0YUVudHJ5EhAKA2tleRgBIAEoBVIDa2V5EhQKBXZhbHVlGAIgASgFUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use authOpenDescriptor instead')
const AuthOpen$json = const {
  '1': 'AuthOpen',
};

/// Descriptor for `AuthOpen`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authOpenDescriptor = $convert.base64Decode('CghBdXRoT3Blbg==');
@$core.Deprecated('Use authWpa2Descriptor instead')
const AuthWpa2$json = const {
  '1': 'AuthWpa2',
  '2': const [
    const {'1': 'password', '3': 1, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `AuthWpa2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authWpa2Descriptor = $convert.base64Decode('CghBdXRoV3BhMhIaCghwYXNzd29yZBgBIAEoCVIIcGFzc3dvcmQ=');
@$core.Deprecated('Use authWpa3Descriptor instead')
const AuthWpa3$json = const {
  '1': 'AuthWpa3',
  '2': const [
    const {'1': 'password', '3': 1, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `AuthWpa3`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authWpa3Descriptor = $convert.base64Decode('CghBdXRoV3BhMxIaCghwYXNzd29yZBgBIAEoCVIIcGFzc3dvcmQ=');
@$core.Deprecated('Use authWpa2Wpa3Descriptor instead')
const AuthWpa2Wpa3$json = const {
  '1': 'AuthWpa2Wpa3',
  '2': const [
    const {'1': 'password', '3': 1, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `AuthWpa2Wpa3`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authWpa2Wpa3Descriptor = $convert.base64Decode('CgxBdXRoV3BhMldwYTMSGgoIcGFzc3dvcmQYASABKAlSCHBhc3N3b3Jk');
@$core.Deprecated('Use authRadiusDescriptor instead')
const AuthRadius$json = const {
  '1': 'AuthRadius',
  '2': const [
    const {'1': 'server', '3': 1, '4': 1, '5': 9, '10': 'server'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {
      '1': 'server_ca',
      '3': 3,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'serverCa',
    },
    const {'1': 'server_ca_base_64', '3': 4, '4': 1, '5': 9, '10': 'serverCaBase64'},
  ],
};

/// Descriptor for `AuthRadius`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRadiusDescriptor = $convert.base64Decode('CgpBdXRoUmFkaXVzEhYKBnNlcnZlchgBIAEoCVIGc2VydmVyEhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZBIfCglzZXJ2ZXJfY2EYAyABKAlCAhgBUghzZXJ2ZXJDYRIpChFzZXJ2ZXJfY2FfYmFzZV82NBgEIAEoCVIOc2VydmVyQ2FCYXNlNjQ=');
@$core.Deprecated('Use wifiGetClientsRequestDescriptor instead')
const WifiGetClientsRequest$json = const {
  '1': 'WifiGetClientsRequest',
};

/// Descriptor for `WifiGetClientsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetClientsRequestDescriptor = $convert.base64Decode('ChVXaWZpR2V0Q2xpZW50c1JlcXVlc3Q=');
@$core.Deprecated('Use wifiSetupRequestDescriptor instead')
const WifiSetupRequest$json = const {
  '1': 'WifiSetupRequest',
  '2': const [
    const {'1': 'skip', '3': 1, '4': 1, '5': 8, '10': 'skip'},
    const {'1': 'network_name', '3': 2, '4': 1, '5': 9, '10': 'networkName'},
    const {'1': 'network_password', '3': 3, '4': 1, '5': 9, '10': 'networkPassword'},
  ],
};

/// Descriptor for `WifiSetupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSetupRequestDescriptor = $convert.base64Decode('ChBXaWZpU2V0dXBSZXF1ZXN0EhIKBHNraXAYASABKAhSBHNraXASIQoMbmV0d29ya19uYW1lGAIgASgJUgtuZXR3b3JrTmFtZRIpChBuZXR3b3JrX3Bhc3N3b3JkGAMgASgJUg9uZXR3b3JrUGFzc3dvcmQ=');
@$core.Deprecated('Use wifiGetPingMetricsRequestDescriptor instead')
const WifiGetPingMetricsRequest$json = const {
  '1': 'WifiGetPingMetricsRequest',
};

/// Descriptor for `WifiGetPingMetricsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetPingMetricsRequestDescriptor = $convert.base64Decode('ChlXaWZpR2V0UGluZ01ldHJpY3NSZXF1ZXN0');
@$core.Deprecated('Use wifiGetDiagnosticsRequestDescriptor instead')
const WifiGetDiagnosticsRequest$json = const {
  '1': 'WifiGetDiagnosticsRequest',
};

/// Descriptor for `WifiGetDiagnosticsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetDiagnosticsRequestDescriptor = $convert.base64Decode('ChlXaWZpR2V0RGlhZ25vc3RpY3NSZXF1ZXN0');
@$core.Deprecated('Use wifiGetConfigRequestDescriptor instead')
const WifiGetConfigRequest$json = const {
  '1': 'WifiGetConfigRequest',
};

/// Descriptor for `WifiGetConfigRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetConfigRequestDescriptor = $convert.base64Decode('ChRXaWZpR2V0Q29uZmlnUmVxdWVzdA==');
@$core.Deprecated('Use wifiSetMeshDeviceTrustRequestDescriptor instead')
const WifiSetMeshDeviceTrustRequest$json = const {
  '1': 'WifiSetMeshDeviceTrustRequest',
  '2': const [
    const {'1': 'device_id', '3': 1, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'auth', '3': 2, '4': 1, '5': 14, '6': '.SpaceX.API.Device.MeshAuth', '10': 'auth'},
  ],
};

/// Descriptor for `WifiSetMeshDeviceTrustRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSetMeshDeviceTrustRequestDescriptor = $convert.base64Decode('Ch1XaWZpU2V0TWVzaERldmljZVRydXN0UmVxdWVzdBIbCglkZXZpY2VfaWQYASABKAlSCGRldmljZUlkEi8KBGF1dGgYAiABKA4yGy5TcGFjZVguQVBJLkRldmljZS5NZXNoQXV0aFIEYXV0aA==');
@$core.Deprecated('Use wifiSetMeshConfigRequestDescriptor instead')
const WifiSetMeshConfigRequest$json = const {
  '1': 'WifiSetMeshConfigRequest',
  '2': const [
    const {'1': 'mesh_config', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.MeshConfig', '10': 'meshConfig'},
    const {'1': 'device_id', '3': 2, '4': 1, '5': 9, '10': 'deviceId'},
  ],
};

/// Descriptor for `WifiSetMeshConfigRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSetMeshConfigRequestDescriptor = $convert.base64Decode('ChhXaWZpU2V0TWVzaENvbmZpZ1JlcXVlc3QSPgoLbWVzaF9jb25maWcYASABKAsyHS5TcGFjZVguQVBJLkRldmljZS5NZXNoQ29uZmlnUgptZXNoQ29uZmlnEhsKCWRldmljZV9pZBgCIAEoCVIIZGV2aWNlSWQ=');
@$core.Deprecated('Use wifiGetClientHistoryRequestDescriptor instead')
const WifiGetClientHistoryRequest$json = const {
  '1': 'WifiGetClientHistoryRequest',
  '2': const [
    const {'1': 'mac_address', '3': 1, '4': 1, '5': 9, '10': 'macAddress'},
  ],
};

/// Descriptor for `WifiGetClientHistoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetClientHistoryRequestDescriptor = $convert.base64Decode('ChtXaWZpR2V0Q2xpZW50SGlzdG9yeVJlcXVlc3QSHwoLbWFjX2FkZHJlc3MYASABKAlSCm1hY0FkZHJlc3M=');
@$core.Deprecated('Use wifiSetAviationConformedRequestDescriptor instead')
const WifiSetAviationConformedRequest$json = const {
  '1': 'WifiSetAviationConformedRequest',
};

/// Descriptor for `WifiSetAviationConformedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSetAviationConformedRequestDescriptor = $convert.base64Decode('Ch9XaWZpU2V0QXZpYXRpb25Db25mb3JtZWRSZXF1ZXN0');
@$core.Deprecated('Use wifiSetClientGivenNameRequestDescriptor instead')
const WifiSetClientGivenNameRequest$json = const {
  '1': 'WifiSetClientGivenNameRequest',
  '2': const [
    const {'1': 'client_name', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.ClientName', '10': 'clientName'},
  ],
};

/// Descriptor for `WifiSetClientGivenNameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSetClientGivenNameRequestDescriptor = $convert.base64Decode('Ch1XaWZpU2V0Q2xpZW50R2l2ZW5OYW1lUmVxdWVzdBI+CgtjbGllbnRfbmFtZRgBIAEoCzIdLlNwYWNlWC5BUEkuRGV2aWNlLkNsaWVudE5hbWVSCmNsaWVudE5hbWU=');
@$core.Deprecated('Use wifiSelfTestRequestDescriptor instead')
const WifiSelfTestRequest$json = const {
  '1': 'WifiSelfTestRequest',
};

/// Descriptor for `WifiSelfTestRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSelfTestRequestDescriptor = $convert.base64Decode('ChNXaWZpU2VsZlRlc3RSZXF1ZXN0');
@$core.Deprecated('Use wifiCalibrationModeRequestDescriptor instead')
const WifiCalibrationModeRequest$json = const {
  '1': 'WifiCalibrationModeRequest',
};

/// Descriptor for `WifiCalibrationModeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiCalibrationModeRequestDescriptor = $convert.base64Decode('ChpXaWZpQ2FsaWJyYXRpb25Nb2RlUmVxdWVzdA==');
@$core.Deprecated('Use transceiverIFLoopbackTestRequestDescriptor instead')
const TransceiverIFLoopbackTestRequest$json = const {
  '1': 'TransceiverIFLoopbackTestRequest',
  '2': const [
    const {'1': 'enable_if_loopback', '3': 1, '4': 1, '5': 8, '10': 'enableIfLoopback'},
  ],
};

/// Descriptor for `TransceiverIFLoopbackTestRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transceiverIFLoopbackTestRequestDescriptor = $convert.base64Decode('CiBUcmFuc2NlaXZlcklGTG9vcGJhY2tUZXN0UmVxdWVzdBIsChJlbmFibGVfaWZfbG9vcGJhY2sYASABKAhSEGVuYWJsZUlmTG9vcGJhY2s=');
@$core.Deprecated('Use transceiverGetStatusRequestDescriptor instead')
const TransceiverGetStatusRequest$json = const {
  '1': 'TransceiverGetStatusRequest',
};

/// Descriptor for `TransceiverGetStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transceiverGetStatusRequestDescriptor = $convert.base64Decode('ChtUcmFuc2NlaXZlckdldFN0YXR1c1JlcXVlc3Q=');
@$core.Deprecated('Use transceiverGetTelemetryRequestDescriptor instead')
const TransceiverGetTelemetryRequest$json = const {
  '1': 'TransceiverGetTelemetryRequest',
};

/// Descriptor for `TransceiverGetTelemetryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transceiverGetTelemetryRequestDescriptor = $convert.base64Decode('Ch5UcmFuc2NlaXZlckdldFRlbGVtZXRyeVJlcXVlc3Q=');
@$core.Deprecated('Use responseDescriptor instead')
const Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'status', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Status.Status', '10': 'status'},
    const {'1': 'api_version', '3': 3, '4': 1, '5': 4, '10': 'apiVersion'},
    const {'1': 'reboot', '3': 1001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.RebootResponse', '9': 0, '10': 'reboot'},
    const {'1': 'speed_test', '3': 1003, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SpeedTestResponse', '9': 0, '10': 'speedTest'},
    const {'1': 'get_device_info', '3': 1004, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetDeviceInfoResponse', '9': 0, '10': 'getDeviceInfo'},
    const {'1': 'get_next_id', '3': 1006, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetNextIdResponse', '9': 0, '10': 'getNextId'},
    const {'1': 'get_ping', '3': 1009, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetPingResponse', '9': 0, '10': 'getPing'},
    const {'1': 'set_trusted_keys', '3': 1010, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SetTrustedKeysResponse', '9': 0, '10': 'setTrustedKeys'},
    const {'1': 'factory_reset', '3': 1011, '4': 1, '5': 11, '6': '.SpaceX.API.Device.FactoryResetResponse', '9': 0, '10': 'factoryReset'},
    const {'1': 'get_log', '3': 1012, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetLogResponse', '9': 0, '10': 'getLog'},
    const {'1': 'set_sku', '3': 1013, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SetSkuResponse', '9': 0, '10': 'setSku'},
    const {'1': 'update', '3': 1014, '4': 1, '5': 11, '6': '.SpaceX.API.Device.UpdateResponse', '9': 0, '10': 'update'},
    const {'1': 'get_network_interfaces', '3': 1015, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetNetworkInterfacesResponse', '9': 0, '10': 'getNetworkInterfaces'},
    const {'1': 'ping_host', '3': 1016, '4': 1, '5': 11, '6': '.SpaceX.API.Device.PingHostResponse', '9': 0, '10': 'pingHost'},
    const {'1': 'get_location', '3': 1017, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetLocationResponse', '9': 0, '10': 'getLocation'},
    const {'1': 'get_heap_dump', '3': 1019, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetHeapDumpResponse', '9': 0, '10': 'getHeapDump'},
    const {'1': 'restart_control', '3': 1020, '4': 1, '5': 11, '6': '.SpaceX.API.Device.RestartControlResponse', '9': 0, '10': 'restartControl'},
    const {'1': 'fuse', '3': 1021, '4': 1, '5': 11, '6': '.SpaceX.API.Device.FuseResponse', '9': 0, '10': 'fuse'},
    const {'1': 'get_connections', '3': 1023, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetConnectionsResponse', '9': 0, '10': 'getConnections'},
    const {'1': 'start_speedtest', '3': 1027, '4': 1, '5': 11, '6': '.SpaceX.API.Device.StartSpeedtestResponse', '9': 0, '10': 'startSpeedtest'},
    const {'1': 'get_speedtest_status', '3': 1028, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetSpeedtestStatusResponse', '9': 0, '10': 'getSpeedtestStatus'},
    const {'1': 'report_client_speedtest', '3': 1029, '4': 1, '5': 11, '6': '.SpaceX.API.Device.ReportClientSpeedtestResponse', '9': 0, '10': 'reportClientSpeedtest'},
    const {
      '1': 'initiate_remote_ssh',
      '3': 1030,
      '4': 1,
      '5': 11,
      '6': '.SpaceX.API.Device.InitiateRemoteSshResponse',
      '8': const {'3': true},
      '9': 0,
      '10': 'initiateRemoteSsh',
    },
    const {'1': 'self_test', '3': 1031, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SelfTestResponse', '9': 0, '10': 'selfTest'},
    const {'1': 'set_test_mode', '3': 1032, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SetTestModeResponse', '9': 0, '10': 'setTestMode'},
    const {'1': 'software_update', '3': 1033, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SoftwareUpdateResponse', '9': 0, '10': 'softwareUpdate'},
    const {'1': 'enable_debug_telem', '3': 1034, '4': 1, '5': 11, '6': '.SpaceX.API.Device.EnableDebugTelemResponse', '9': 0, '10': 'enableDebugTelem'},
    const {'1': 'dish_stow', '3': 2002, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishStowResponse', '9': 0, '10': 'dishStow'},
    const {'1': 'dish_get_context', '3': 2003, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetContextResponse', '9': 0, '10': 'dishGetContext'},
    const {'1': 'dish_get_status', '3': 2004, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetStatusResponse', '9': 0, '10': 'dishGetStatus'},
    const {'1': 'dish_authenticate', '3': 2005, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishAuthenticateResponse', '9': 0, '10': 'dishAuthenticate'},
    const {'1': 'dish_get_history', '3': 2006, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetHistoryResponse', '9': 0, '10': 'dishGetHistory'},
    const {'1': 'dish_set_emc', '3': 2007, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishSetEmcResponse', '9': 0, '10': 'dishSetEmc'},
    const {'1': 'dish_get_obstruction_map', '3': 2008, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetObstructionMapResponse', '9': 0, '10': 'dishGetObstructionMap'},
    const {'1': 'dish_get_emc', '3': 2009, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetEmcResponse', '9': 0, '10': 'dishGetEmc'},
    const {'1': 'dish_set_config', '3': 2010, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishSetConfigResponse', '9': 0, '10': 'dishSetConfig'},
    const {'1': 'dish_get_config', '3': 2011, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetConfigResponse', '9': 0, '10': 'dishGetConfig'},
    const {'1': 'start_dish_self_test', '3': 2012, '4': 1, '5': 11, '6': '.SpaceX.API.Device.StartDishSelfTestResponse', '9': 0, '10': 'startDishSelfTest'},
    const {'1': 'dish_inhibit_gps', '3': 2013, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishInhibitGpsResponse', '9': 0, '10': 'dishInhibitGps'},
    const {'1': 'wifi_set_config', '3': 3001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSetConfigResponse', '9': 0, '10': 'wifiSetConfig'},
    const {'1': 'wifi_get_clients', '3': 3002, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetClientsResponse', '9': 0, '10': 'wifiGetClients'},
    const {'1': 'wifi_setup', '3': 3003, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSetupResponse', '9': 0, '10': 'wifiSetup'},
    const {'1': 'wifi_get_status', '3': 3004, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetStatusResponse', '9': 0, '10': 'wifiGetStatus'},
    const {'1': 'wifi_authenticate', '3': 3005, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiAuthenticateResponse', '9': 0, '10': 'wifiAuthenticate'},
    const {'1': 'wifi_get_history', '3': 3006, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetHistoryResponse', '9': 0, '10': 'wifiGetHistory'},
    const {'1': 'wifi_get_ping_metrics', '3': 3007, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetPingMetricsResponse', '9': 0, '10': 'wifiGetPingMetrics'},
    const {'1': 'wifi_get_diagnostics', '3': 3008, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetDiagnosticsResponse', '9': 0, '10': 'wifiGetDiagnostics'},
    const {'1': 'wifi_get_config', '3': 3009, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetConfigResponse', '9': 0, '10': 'wifiGetConfig'},
    const {'1': 'wifi_set_mesh_device_trust', '3': 3012, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSetMeshDeviceTrustResponse', '9': 0, '10': 'wifiSetMeshDeviceTrust'},
    const {
      '1': 'wifi_set_mesh_config',
      '3': 3013,
      '4': 1,
      '5': 11,
      '6': '.SpaceX.API.Device.WifiSetMeshConfigResponse',
      '8': const {'3': true},
      '9': 0,
      '10': 'wifiSetMeshConfig',
    },
    const {'1': 'wifi_get_client_history', '3': 3015, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetClientHistoryResponse', '9': 0, '10': 'wifiGetClientHistory'},
    const {'1': 'wifi_self_test', '3': 3016, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSelfTestResponse', '9': 0, '10': 'wifiSelfTest'},
    const {'1': 'wifi_get_persistent_stats', '3': 3022, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetPersistentStatsResponse', '9': 0, '10': 'wifiGetPersistentStats'},
    const {'1': 'transceiver_if_loopback_test', '3': 4001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.TransceiverIFLoopbackTestResponse', '9': 0, '10': 'transceiverIfLoopbackTest'},
    const {'1': 'transceiver_get_status', '3': 4003, '4': 1, '5': 11, '6': '.SpaceX.API.Device.TransceiverGetStatusResponse', '9': 0, '10': 'transceiverGetStatus'},
    const {'1': 'transceiver_get_telemetry', '3': 4004, '4': 1, '5': 11, '6': '.SpaceX.API.Device.TransceiverGetTelemetryResponse', '9': 0, '10': 'transceiverGetTelemetry'},
  ],
  '8': const [
    const {'1': 'response'},
  ],
  '9': const [
    const {'1': 1018, '2': 1019},
    const {'1': 1026, '2': 1027},
    const {'1': 2025, '2': 2026},
    const {'1': 3011, '2': 3012},
    const {'1': 3014, '2': 3015},
  ],
};

/// Descriptor for `Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseDescriptor = $convert.base64Decode('CghSZXNwb25zZRIOCgJpZBgBIAEoBFICaWQSMQoGc3RhdHVzGAIgASgLMhkuU3BhY2VYLkFQSS5TdGF0dXMuU3RhdHVzUgZzdGF0dXMSHwoLYXBpX3ZlcnNpb24YAyABKARSCmFwaVZlcnNpb24SPAoGcmVib290GOkHIAEoCzIhLlNwYWNlWC5BUEkuRGV2aWNlLlJlYm9vdFJlc3BvbnNlSABSBnJlYm9vdBJGCgpzcGVlZF90ZXN0GOsHIAEoCzIkLlNwYWNlWC5BUEkuRGV2aWNlLlNwZWVkVGVzdFJlc3BvbnNlSABSCXNwZWVkVGVzdBJTCg9nZXRfZGV2aWNlX2luZm8Y7AcgASgLMiguU3BhY2VYLkFQSS5EZXZpY2UuR2V0RGV2aWNlSW5mb1Jlc3BvbnNlSABSDWdldERldmljZUluZm8SRwoLZ2V0X25leHRfaWQY7gcgASgLMiQuU3BhY2VYLkFQSS5EZXZpY2UuR2V0TmV4dElkUmVzcG9uc2VIAFIJZ2V0TmV4dElkEkAKCGdldF9waW5nGPEHIAEoCzIiLlNwYWNlWC5BUEkuRGV2aWNlLkdldFBpbmdSZXNwb25zZUgAUgdnZXRQaW5nElYKEHNldF90cnVzdGVkX2tleXMY8gcgASgLMikuU3BhY2VYLkFQSS5EZXZpY2UuU2V0VHJ1c3RlZEtleXNSZXNwb25zZUgAUg5zZXRUcnVzdGVkS2V5cxJPCg1mYWN0b3J5X3Jlc2V0GPMHIAEoCzInLlNwYWNlWC5BUEkuRGV2aWNlLkZhY3RvcnlSZXNldFJlc3BvbnNlSABSDGZhY3RvcnlSZXNldBI9CgdnZXRfbG9nGPQHIAEoCzIhLlNwYWNlWC5BUEkuRGV2aWNlLkdldExvZ1Jlc3BvbnNlSABSBmdldExvZxI9CgdzZXRfc2t1GPUHIAEoCzIhLlNwYWNlWC5BUEkuRGV2aWNlLlNldFNrdVJlc3BvbnNlSABSBnNldFNrdRI8CgZ1cGRhdGUY9gcgASgLMiEuU3BhY2VYLkFQSS5EZXZpY2UuVXBkYXRlUmVzcG9uc2VIAFIGdXBkYXRlEmgKFmdldF9uZXR3b3JrX2ludGVyZmFjZXMY9wcgASgLMi8uU3BhY2VYLkFQSS5EZXZpY2UuR2V0TmV0d29ya0ludGVyZmFjZXNSZXNwb25zZUgAUhRnZXROZXR3b3JrSW50ZXJmYWNlcxJDCglwaW5nX2hvc3QY+AcgASgLMiMuU3BhY2VYLkFQSS5EZXZpY2UuUGluZ0hvc3RSZXNwb25zZUgAUghwaW5nSG9zdBJMCgxnZXRfbG9jYXRpb24Y+QcgASgLMiYuU3BhY2VYLkFQSS5EZXZpY2UuR2V0TG9jYXRpb25SZXNwb25zZUgAUgtnZXRMb2NhdGlvbhJNCg1nZXRfaGVhcF9kdW1wGPsHIAEoCzImLlNwYWNlWC5BUEkuRGV2aWNlLkdldEhlYXBEdW1wUmVzcG9uc2VIAFILZ2V0SGVhcER1bXASVQoPcmVzdGFydF9jb250cm9sGPwHIAEoCzIpLlNwYWNlWC5BUEkuRGV2aWNlLlJlc3RhcnRDb250cm9sUmVzcG9uc2VIAFIOcmVzdGFydENvbnRyb2wSNgoEZnVzZRj9ByABKAsyHy5TcGFjZVguQVBJLkRldmljZS5GdXNlUmVzcG9uc2VIAFIEZnVzZRJVCg9nZXRfY29ubmVjdGlvbnMY/wcgASgLMikuU3BhY2VYLkFQSS5EZXZpY2UuR2V0Q29ubmVjdGlvbnNSZXNwb25zZUgAUg5nZXRDb25uZWN0aW9ucxJVCg9zdGFydF9zcGVlZHRlc3QYgwggASgLMikuU3BhY2VYLkFQSS5EZXZpY2UuU3RhcnRTcGVlZHRlc3RSZXNwb25zZUgAUg5zdGFydFNwZWVkdGVzdBJiChRnZXRfc3BlZWR0ZXN0X3N0YXR1cxiECCABKAsyLS5TcGFjZVguQVBJLkRldmljZS5HZXRTcGVlZHRlc3RTdGF0dXNSZXNwb25zZUgAUhJnZXRTcGVlZHRlc3RTdGF0dXMSawoXcmVwb3J0X2NsaWVudF9zcGVlZHRlc3QYhQggASgLMjAuU3BhY2VYLkFQSS5EZXZpY2UuUmVwb3J0Q2xpZW50U3BlZWR0ZXN0UmVzcG9uc2VIAFIVcmVwb3J0Q2xpZW50U3BlZWR0ZXN0EmMKE2luaXRpYXRlX3JlbW90ZV9zc2gYhgggASgLMiwuU3BhY2VYLkFQSS5EZXZpY2UuSW5pdGlhdGVSZW1vdGVTc2hSZXNwb25zZUICGAFIAFIRaW5pdGlhdGVSZW1vdGVTc2gSQwoJc2VsZl90ZXN0GIcIIAEoCzIjLlNwYWNlWC5BUEkuRGV2aWNlLlNlbGZUZXN0UmVzcG9uc2VIAFIIc2VsZlRlc3QSTQoNc2V0X3Rlc3RfbW9kZRiICCABKAsyJi5TcGFjZVguQVBJLkRldmljZS5TZXRUZXN0TW9kZVJlc3BvbnNlSABSC3NldFRlc3RNb2RlElUKD3NvZnR3YXJlX3VwZGF0ZRiJCCABKAsyKS5TcGFjZVguQVBJLkRldmljZS5Tb2Z0d2FyZVVwZGF0ZVJlc3BvbnNlSABSDnNvZnR3YXJlVXBkYXRlElwKEmVuYWJsZV9kZWJ1Z190ZWxlbRiKCCABKAsyKy5TcGFjZVguQVBJLkRldmljZS5FbmFibGVEZWJ1Z1RlbGVtUmVzcG9uc2VIAFIQZW5hYmxlRGVidWdUZWxlbRJDCglkaXNoX3N0b3cY0g8gASgLMiMuU3BhY2VYLkFQSS5EZXZpY2UuRGlzaFN0b3dSZXNwb25zZUgAUghkaXNoU3RvdxJWChBkaXNoX2dldF9jb250ZXh0GNMPIAEoCzIpLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hHZXRDb250ZXh0UmVzcG9uc2VIAFIOZGlzaEdldENvbnRleHQSUwoPZGlzaF9nZXRfc3RhdHVzGNQPIAEoCzIoLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hHZXRTdGF0dXNSZXNwb25zZUgAUg1kaXNoR2V0U3RhdHVzElsKEWRpc2hfYXV0aGVudGljYXRlGNUPIAEoCzIrLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hBdXRoZW50aWNhdGVSZXNwb25zZUgAUhBkaXNoQXV0aGVudGljYXRlElYKEGRpc2hfZ2V0X2hpc3RvcnkY1g8gASgLMikuU3BhY2VYLkFQSS5EZXZpY2UuRGlzaEdldEhpc3RvcnlSZXNwb25zZUgAUg5kaXNoR2V0SGlzdG9yeRJKCgxkaXNoX3NldF9lbWMY1w8gASgLMiUuU3BhY2VYLkFQSS5EZXZpY2UuRGlzaFNldEVtY1Jlc3BvbnNlSABSCmRpc2hTZXRFbWMSbAoYZGlzaF9nZXRfb2JzdHJ1Y3Rpb25fbWFwGNgPIAEoCzIwLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hHZXRPYnN0cnVjdGlvbk1hcFJlc3BvbnNlSABSFWRpc2hHZXRPYnN0cnVjdGlvbk1hcBJKCgxkaXNoX2dldF9lbWMY2Q8gASgLMiUuU3BhY2VYLkFQSS5EZXZpY2UuRGlzaEdldEVtY1Jlc3BvbnNlSABSCmRpc2hHZXRFbWMSUwoPZGlzaF9zZXRfY29uZmlnGNoPIAEoCzIoLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hTZXRDb25maWdSZXNwb25zZUgAUg1kaXNoU2V0Q29uZmlnElMKD2Rpc2hfZ2V0X2NvbmZpZxjbDyABKAsyKC5TcGFjZVguQVBJLkRldmljZS5EaXNoR2V0Q29uZmlnUmVzcG9uc2VIAFINZGlzaEdldENvbmZpZxJgChRzdGFydF9kaXNoX3NlbGZfdGVzdBjcDyABKAsyLC5TcGFjZVguQVBJLkRldmljZS5TdGFydERpc2hTZWxmVGVzdFJlc3BvbnNlSABSEXN0YXJ0RGlzaFNlbGZUZXN0ElYKEGRpc2hfaW5oaWJpdF9ncHMY3Q8gASgLMikuU3BhY2VYLkFQSS5EZXZpY2UuRGlzaEluaGliaXRHcHNSZXNwb25zZUgAUg5kaXNoSW5oaWJpdEdwcxJTCg93aWZpX3NldF9jb25maWcYuRcgASgLMiguU3BhY2VYLkFQSS5EZXZpY2UuV2lmaVNldENvbmZpZ1Jlc3BvbnNlSABSDXdpZmlTZXRDb25maWcSVgoQd2lmaV9nZXRfY2xpZW50cxi6FyABKAsyKS5TcGFjZVguQVBJLkRldmljZS5XaWZpR2V0Q2xpZW50c1Jlc3BvbnNlSABSDndpZmlHZXRDbGllbnRzEkYKCndpZmlfc2V0dXAYuxcgASgLMiQuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaVNldHVwUmVzcG9uc2VIAFIJd2lmaVNldHVwElMKD3dpZmlfZ2V0X3N0YXR1cxi8FyABKAsyKC5TcGFjZVguQVBJLkRldmljZS5XaWZpR2V0U3RhdHVzUmVzcG9uc2VIAFINd2lmaUdldFN0YXR1cxJbChF3aWZpX2F1dGhlbnRpY2F0ZRi9FyABKAsyKy5TcGFjZVguQVBJLkRldmljZS5XaWZpQXV0aGVudGljYXRlUmVzcG9uc2VIAFIQd2lmaUF1dGhlbnRpY2F0ZRJWChB3aWZpX2dldF9oaXN0b3J5GL4XIAEoCzIpLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlHZXRIaXN0b3J5UmVzcG9uc2VIAFIOd2lmaUdldEhpc3RvcnkSYwoVd2lmaV9nZXRfcGluZ19tZXRyaWNzGL8XIAEoCzItLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlHZXRQaW5nTWV0cmljc1Jlc3BvbnNlSABSEndpZmlHZXRQaW5nTWV0cmljcxJiChR3aWZpX2dldF9kaWFnbm9zdGljcxjAFyABKAsyLS5TcGFjZVguQVBJLkRldmljZS5XaWZpR2V0RGlhZ25vc3RpY3NSZXNwb25zZUgAUhJ3aWZpR2V0RGlhZ25vc3RpY3MSUwoPd2lmaV9nZXRfY29uZmlnGMEXIAEoCzIoLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlHZXRDb25maWdSZXNwb25zZUgAUg13aWZpR2V0Q29uZmlnEnAKGndpZmlfc2V0X21lc2hfZGV2aWNlX3RydXN0GMQXIAEoCzIxLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlTZXRNZXNoRGV2aWNlVHJ1c3RSZXNwb25zZUgAUhZ3aWZpU2V0TWVzaERldmljZVRydXN0EmQKFHdpZmlfc2V0X21lc2hfY29uZmlnGMUXIAEoCzIsLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlTZXRNZXNoQ29uZmlnUmVzcG9uc2VCAhgBSABSEXdpZmlTZXRNZXNoQ29uZmlnEmkKF3dpZmlfZ2V0X2NsaWVudF9oaXN0b3J5GMcXIAEoCzIvLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlHZXRDbGllbnRIaXN0b3J5UmVzcG9uc2VIAFIUd2lmaUdldENsaWVudEhpc3RvcnkSUAoOd2lmaV9zZWxmX3Rlc3QYyBcgASgLMicuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaVNlbGZUZXN0UmVzcG9uc2VIAFIMd2lmaVNlbGZUZXN0Em8KGXdpZmlfZ2V0X3BlcnNpc3RlbnRfc3RhdHMYzhcgASgLMjEuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUdldFBlcnNpc3RlbnRTdGF0c1Jlc3BvbnNlSABSFndpZmlHZXRQZXJzaXN0ZW50U3RhdHMSeAocdHJhbnNjZWl2ZXJfaWZfbG9vcGJhY2tfdGVzdBihHyABKAsyNC5TcGFjZVguQVBJLkRldmljZS5UcmFuc2NlaXZlcklGTG9vcGJhY2tUZXN0UmVzcG9uc2VIAFIZdHJhbnNjZWl2ZXJJZkxvb3BiYWNrVGVzdBJoChZ0cmFuc2NlaXZlcl9nZXRfc3RhdHVzGKMfIAEoCzIvLlNwYWNlWC5BUEkuRGV2aWNlLlRyYW5zY2VpdmVyR2V0U3RhdHVzUmVzcG9uc2VIAFIUdHJhbnNjZWl2ZXJHZXRTdGF0dXMScQoZdHJhbnNjZWl2ZXJfZ2V0X3RlbGVtZXRyeRikHyABKAsyMi5TcGFjZVguQVBJLkRldmljZS5UcmFuc2NlaXZlckdldFRlbGVtZXRyeVJlc3BvbnNlSABSF3RyYW5zY2VpdmVyR2V0VGVsZW1ldHJ5QgoKCHJlc3BvbnNlSgYI+gcQ+wdKBgiCCBCDCEoGCOkPEOoPSgYIwxcQxBdKBgjGFxDHFw==');
@$core.Deprecated('Use statusDescriptor instead')
const Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 5, '10': 'code'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `Status`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusDescriptor = $convert.base64Decode('CgZTdGF0dXMSEgoEY29kZRgBIAEoBVIEY29kZRIYCgdtZXNzYWdlGAIgASgJUgdtZXNzYWdl');
@$core.Deprecated('Use rebootResponseDescriptor instead')
const RebootResponse$json = const {
  '1': 'RebootResponse',
};

/// Descriptor for `RebootResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rebootResponseDescriptor = $convert.base64Decode('Cg5SZWJvb3RSZXNwb25zZQ==');
@$core.Deprecated('Use speedTestResponseDescriptor instead')
const SpeedTestResponse$json = const {
  '1': 'SpeedTestResponse',
  '2': const [
    const {
      '1': 'download_bps',
      '3': 1,
      '4': 1,
      '5': 2,
      '8': const {'3': true},
      '10': 'downloadBps',
    },
    const {
      '1': 'upload_bps',
      '3': 2,
      '4': 1,
      '5': 2,
      '8': const {'3': true},
      '10': 'uploadBps',
    },
    const {
      '1': 'latency_s',
      '3': 3,
      '4': 1,
      '5': 2,
      '8': const {'3': true},
      '10': 'latencyS',
    },
    const {
      '1': 'download_mbps',
      '3': 4,
      '4': 1,
      '5': 2,
      '8': const {'3': true},
      '10': 'downloadMbps',
    },
    const {
      '1': 'upload_mbps',
      '3': 5,
      '4': 1,
      '5': 2,
      '8': const {'3': true},
      '10': 'uploadMbps',
    },
    const {
      '1': 'latency_ms',
      '3': 6,
      '4': 1,
      '5': 2,
      '8': const {'3': true},
      '10': 'latencyMs',
    },
    const {'1': 'download_mbps_1_tcp_conn', '3': 7, '4': 1, '5': 2, '10': 'downloadMbps1TcpConn'},
    const {'1': 'upload_mbps_1_tcp_conn', '3': 8, '4': 1, '5': 2, '10': 'uploadMbps1TcpConn'},
    const {'1': 'download_mbps_4_tcp_conn', '3': 9, '4': 1, '5': 2, '10': 'downloadMbps4TcpConn'},
    const {'1': 'upload_mbps_4_tcp_conn', '3': 10, '4': 1, '5': 2, '10': 'uploadMbps4TcpConn'},
    const {'1': 'download_mbps_16_tcp_conn', '3': 11, '4': 1, '5': 2, '10': 'downloadMbps16TcpConn'},
    const {'1': 'upload_mbps_16_tcp_conn', '3': 12, '4': 1, '5': 2, '10': 'uploadMbps16TcpConn'},
    const {'1': 'download_mbps_64_tcp_conn', '3': 13, '4': 1, '5': 2, '10': 'downloadMbps64TcpConn'},
    const {'1': 'upload_mbps_64_tcp_conn', '3': 14, '4': 1, '5': 2, '10': 'uploadMbps64TcpConn'},
    const {'1': 'router_speedtest', '3': 15, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SpeedTestStats', '10': 'routerSpeedtest'},
  ],
};

/// Descriptor for `SpeedTestResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List speedTestResponseDescriptor = $convert.base64Decode('ChFTcGVlZFRlc3RSZXNwb25zZRIlCgxkb3dubG9hZF9icHMYASABKAJCAhgBUgtkb3dubG9hZEJwcxIhCgp1cGxvYWRfYnBzGAIgASgCQgIYAVIJdXBsb2FkQnBzEh8KCWxhdGVuY3lfcxgDIAEoAkICGAFSCGxhdGVuY3lTEicKDWRvd25sb2FkX21icHMYBCABKAJCAhgBUgxkb3dubG9hZE1icHMSIwoLdXBsb2FkX21icHMYBSABKAJCAhgBUgp1cGxvYWRNYnBzEiEKCmxhdGVuY3lfbXMYBiABKAJCAhgBUglsYXRlbmN5TXMSNgoYZG93bmxvYWRfbWJwc18xX3RjcF9jb25uGAcgASgCUhRkb3dubG9hZE1icHMxVGNwQ29ubhIyChZ1cGxvYWRfbWJwc18xX3RjcF9jb25uGAggASgCUhJ1cGxvYWRNYnBzMVRjcENvbm4SNgoYZG93bmxvYWRfbWJwc180X3RjcF9jb25uGAkgASgCUhRkb3dubG9hZE1icHM0VGNwQ29ubhIyChZ1cGxvYWRfbWJwc180X3RjcF9jb25uGAogASgCUhJ1cGxvYWRNYnBzNFRjcENvbm4SOAoZZG93bmxvYWRfbWJwc18xNl90Y3BfY29ubhgLIAEoAlIVZG93bmxvYWRNYnBzMTZUY3BDb25uEjQKF3VwbG9hZF9tYnBzXzE2X3RjcF9jb25uGAwgASgCUhN1cGxvYWRNYnBzMTZUY3BDb25uEjgKGWRvd25sb2FkX21icHNfNjRfdGNwX2Nvbm4YDSABKAJSFWRvd25sb2FkTWJwczY0VGNwQ29ubhI0Chd1cGxvYWRfbWJwc182NF90Y3BfY29ubhgOIAEoAlITdXBsb2FkTWJwczY0VGNwQ29ubhJMChByb3V0ZXJfc3BlZWR0ZXN0GA8gASgLMiEuU3BhY2VYLkFQSS5EZXZpY2UuU3BlZWRUZXN0U3RhdHNSD3JvdXRlclNwZWVkdGVzdA==');
@$core.Deprecated('Use getDeviceInfoResponseDescriptor instead')
const GetDeviceInfoResponse$json = const {
  '1': 'GetDeviceInfoResponse',
  '2': const [
    const {'1': 'device_info', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DeviceInfo', '10': 'deviceInfo'},
  ],
};

/// Descriptor for `GetDeviceInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDeviceInfoResponseDescriptor = $convert.base64Decode('ChVHZXREZXZpY2VJbmZvUmVzcG9uc2USPgoLZGV2aWNlX2luZm8YASABKAsyHS5TcGFjZVguQVBJLkRldmljZS5EZXZpY2VJbmZvUgpkZXZpY2VJbmZv');
@$core.Deprecated('Use deviceInfoDescriptor instead')
const DeviceInfo$json = const {
  '1': 'DeviceInfo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'hardware_version', '3': 2, '4': 1, '5': 9, '10': 'hardwareVersion'},
    const {'1': 'software_version', '3': 3, '4': 1, '5': 9, '10': 'softwareVersion'},
    const {'1': 'country_code', '3': 4, '4': 1, '5': 9, '10': 'countryCode'},
    const {'1': 'utc_offset_s', '3': 5, '4': 1, '5': 5, '10': 'utcOffsetS'},
    const {'1': 'software_partitions_equal', '3': 6, '4': 1, '5': 8, '10': 'softwarePartitionsEqual'},
    const {'1': 'is_dev', '3': 7, '4': 1, '5': 8, '10': 'isDev'},
    const {'1': 'bootcount', '3': 8, '4': 1, '5': 5, '10': 'bootcount'},
    const {'1': 'anti_rollback_version', '3': 9, '4': 1, '5': 5, '10': 'antiRollbackVersion'},
    const {'1': 'is_hitl', '3': 10, '4': 1, '5': 8, '10': 'isHitl'},
    const {'1': 'manufactured_version', '3': 11, '4': 1, '5': 9, '10': 'manufacturedVersion'},
    const {'1': 'generation_number', '3': 12, '4': 1, '5': 3, '10': 'generationNumber'},
    const {'1': 'dish_cohoused', '3': 13, '4': 1, '5': 8, '10': 'dishCohoused'},
    const {'1': 'boot', '3': 1001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.BootInfo', '10': 'boot'},
  ],
};

/// Descriptor for `DeviceInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceInfoDescriptor = $convert.base64Decode('CgpEZXZpY2VJbmZvEg4KAmlkGAEgASgJUgJpZBIpChBoYXJkd2FyZV92ZXJzaW9uGAIgASgJUg9oYXJkd2FyZVZlcnNpb24SKQoQc29mdHdhcmVfdmVyc2lvbhgDIAEoCVIPc29mdHdhcmVWZXJzaW9uEiEKDGNvdW50cnlfY29kZRgEIAEoCVILY291bnRyeUNvZGUSIAoMdXRjX29mZnNldF9zGAUgASgFUgp1dGNPZmZzZXRTEjoKGXNvZnR3YXJlX3BhcnRpdGlvbnNfZXF1YWwYBiABKAhSF3NvZnR3YXJlUGFydGl0aW9uc0VxdWFsEhUKBmlzX2RldhgHIAEoCFIFaXNEZXYSHAoJYm9vdGNvdW50GAggASgFUglib290Y291bnQSMgoVYW50aV9yb2xsYmFja192ZXJzaW9uGAkgASgFUhNhbnRpUm9sbGJhY2tWZXJzaW9uEhcKB2lzX2hpdGwYCiABKAhSBmlzSGl0bBIxChRtYW51ZmFjdHVyZWRfdmVyc2lvbhgLIAEoCVITbWFudWZhY3R1cmVkVmVyc2lvbhIrChFnZW5lcmF0aW9uX251bWJlchgMIAEoA1IQZ2VuZXJhdGlvbk51bWJlchIjCg1kaXNoX2NvaG91c2VkGA0gASgIUgxkaXNoQ29ob3VzZWQSMAoEYm9vdBjpByABKAsyGy5TcGFjZVguQVBJLkRldmljZS5Cb290SW5mb1IEYm9vdA==');
@$core.Deprecated('Use getNextIdResponseDescriptor instead')
const GetNextIdResponse$json = const {
  '1': 'GetNextIdResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'epoch_id', '3': 2, '4': 1, '5': 4, '10': 'epochId'},
  ],
};

/// Descriptor for `GetNextIdResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNextIdResponseDescriptor = $convert.base64Decode('ChFHZXROZXh0SWRSZXNwb25zZRIOCgJpZBgBIAEoBFICaWQSGQoIZXBvY2hfaWQYAiABKARSB2Vwb2NoSWQ=');
@$core.Deprecated('Use getPingResponseDescriptor instead')
const GetPingResponse$json = const {
  '1': 'GetPingResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.SpaceX.API.Device.GetPingResponse.ResultsEntry', '10': 'results'},
  ],
  '3': const [GetPingResponse_ResultsEntry$json],
};

@$core.Deprecated('Use getPingResponseDescriptor instead')
const GetPingResponse_ResultsEntry$json = const {
  '1': 'ResultsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.PingResult', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `GetPingResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPingResponseDescriptor = $convert.base64Decode('Cg9HZXRQaW5nUmVzcG9uc2USSQoHcmVzdWx0cxgBIAMoCzIvLlNwYWNlWC5BUEkuRGV2aWNlLkdldFBpbmdSZXNwb25zZS5SZXN1bHRzRW50cnlSB3Jlc3VsdHMaWQoMUmVzdWx0c0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EjMKBXZhbHVlGAIgASgLMh0uU3BhY2VYLkFQSS5EZXZpY2UuUGluZ1Jlc3VsdFIFdmFsdWU6AjgB');
@$core.Deprecated('Use pingResultDescriptor instead')
const PingResult$json = const {
  '1': 'PingResult',
  '2': const [
    const {'1': 'dropRate', '3': 1, '4': 1, '5': 2, '10': 'dropRate'},
    const {'1': 'latencyMs', '3': 2, '4': 1, '5': 2, '10': 'latencyMs'},
    const {'1': 'target', '3': 3, '4': 1, '5': 11, '6': '.SpaceX.API.Device.PingTarget', '10': 'target'},
  ],
};

/// Descriptor for `PingResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingResultDescriptor = $convert.base64Decode('CgpQaW5nUmVzdWx0EhoKCGRyb3BSYXRlGAEgASgCUghkcm9wUmF0ZRIcCglsYXRlbmN5TXMYAiABKAJSCWxhdGVuY3lNcxI1CgZ0YXJnZXQYAyABKAsyHS5TcGFjZVguQVBJLkRldmljZS5QaW5nVGFyZ2V0UgZ0YXJnZXQ=');
@$core.Deprecated('Use pingTargetDescriptor instead')
const PingTarget$json = const {
  '1': 'PingTarget',
  '2': const [
    const {'1': 'service', '3': 1, '4': 1, '5': 9, '10': 'service'},
    const {'1': 'location', '3': 2, '4': 1, '5': 9, '10': 'location'},
    const {'1': 'address', '3': 3, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `PingTarget`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingTargetDescriptor = $convert.base64Decode('CgpQaW5nVGFyZ2V0EhgKB3NlcnZpY2UYASABKAlSB3NlcnZpY2USGgoIbG9jYXRpb24YAiABKAlSCGxvY2F0aW9uEhgKB2FkZHJlc3MYAyABKAlSB2FkZHJlc3M=');
@$core.Deprecated('Use setTrustedKeysResponseDescriptor instead')
const SetTrustedKeysResponse$json = const {
  '1': 'SetTrustedKeysResponse',
};

/// Descriptor for `SetTrustedKeysResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setTrustedKeysResponseDescriptor = $convert.base64Decode('ChZTZXRUcnVzdGVkS2V5c1Jlc3BvbnNl');
@$core.Deprecated('Use factoryResetResponseDescriptor instead')
const FactoryResetResponse$json = const {
  '1': 'FactoryResetResponse',
};

/// Descriptor for `FactoryResetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List factoryResetResponseDescriptor = $convert.base64Decode('ChRGYWN0b3J5UmVzZXRSZXNwb25zZQ==');
@$core.Deprecated('Use getLogResponseDescriptor instead')
const GetLogResponse$json = const {
  '1': 'GetLogResponse',
  '2': const [
    const {'1': 'syslog', '3': 1, '4': 1, '5': 9, '10': 'syslog'},
    const {'1': 'offline_log', '3': 2, '4': 1, '5': 9, '10': 'offlineLog'},
    const {'1': 'persistent_log', '3': 3, '4': 1, '5': 9, '10': 'persistentLog'},
  ],
};

/// Descriptor for `GetLogResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLogResponseDescriptor = $convert.base64Decode('Cg5HZXRMb2dSZXNwb25zZRIWCgZzeXNsb2cYASABKAlSBnN5c2xvZxIfCgtvZmZsaW5lX2xvZxgCIAEoCVIKb2ZmbGluZUxvZxIlCg5wZXJzaXN0ZW50X2xvZxgDIAEoCVINcGVyc2lzdGVudExvZw==');
@$core.Deprecated('Use setSkuResponseDescriptor instead')
const SetSkuResponse$json = const {
  '1': 'SetSkuResponse',
};

/// Descriptor for `SetSkuResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setSkuResponseDescriptor = $convert.base64Decode('Cg5TZXRTa3VSZXNwb25zZQ==');
@$core.Deprecated('Use updateResponseDescriptor instead')
const UpdateResponse$json = const {
  '1': 'UpdateResponse',
};

/// Descriptor for `UpdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateResponseDescriptor = $convert.base64Decode('Cg5VcGRhdGVSZXNwb25zZQ==');
@$core.Deprecated('Use getNetworkInterfacesResponseDescriptor instead')
const GetNetworkInterfacesResponse$json = const {
  '1': 'GetNetworkInterfacesResponse',
  '2': const [
    const {'1': 'network_interfaces', '3': 1006, '4': 3, '5': 11, '6': '.SpaceX.API.Device.NetworkInterface', '10': 'networkInterfaces'},
  ],
};

/// Descriptor for `GetNetworkInterfacesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNetworkInterfacesResponseDescriptor = $convert.base64Decode('ChxHZXROZXR3b3JrSW50ZXJmYWNlc1Jlc3BvbnNlElMKEm5ldHdvcmtfaW50ZXJmYWNlcxjuByADKAsyIy5TcGFjZVguQVBJLkRldmljZS5OZXR3b3JrSW50ZXJmYWNlUhFuZXR3b3JrSW50ZXJmYWNlcw==');
@$core.Deprecated('Use networkInterfaceDescriptor instead')
const NetworkInterface$json = const {
  '1': 'NetworkInterface',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'rx_stats', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.NetworkInterface.RxStats', '10': 'rxStats'},
    const {'1': 'tx_stats', '3': 3, '4': 1, '5': 11, '6': '.SpaceX.API.Device.NetworkInterface.TxStats', '10': 'txStats'},
    const {'1': 'up', '3': 4, '4': 1, '5': 8, '10': 'up'},
    const {'1': 'mac_address', '3': 5, '4': 1, '5': 9, '10': 'macAddress'},
    const {'1': 'ipv4_addresses', '3': 6, '4': 3, '5': 9, '10': 'ipv4Addresses'},
    const {'1': 'ipv6_addresses', '3': 7, '4': 3, '5': 9, '10': 'ipv6Addresses'},
    const {'1': 'ethernet', '3': 1000, '4': 1, '5': 11, '6': '.SpaceX.API.Device.EthernetNetworkInterface', '9': 0, '10': 'ethernet'},
    const {'1': 'wifi', '3': 1001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiNetworkInterface', '9': 0, '10': 'wifi'},
    const {'1': 'bridge', '3': 1002, '4': 1, '5': 11, '6': '.SpaceX.API.Device.BridgeNetworkInterface', '9': 0, '10': 'bridge'},
  ],
  '3': const [NetworkInterface_RxStats$json, NetworkInterface_TxStats$json],
  '8': const [
    const {'1': 'interface'},
  ],
};

@$core.Deprecated('Use networkInterfaceDescriptor instead')
const NetworkInterface_RxStats$json = const {
  '1': 'RxStats',
  '2': const [
    const {'1': 'bytes', '3': 1, '4': 1, '5': 4, '10': 'bytes'},
    const {'1': 'packets', '3': 2, '4': 1, '5': 4, '10': 'packets'},
    const {'1': 'frame_errors', '3': 3, '4': 1, '5': 4, '10': 'frameErrors'},
  ],
};

@$core.Deprecated('Use networkInterfaceDescriptor instead')
const NetworkInterface_TxStats$json = const {
  '1': 'TxStats',
  '2': const [
    const {'1': 'bytes', '3': 1, '4': 1, '5': 4, '10': 'bytes'},
    const {'1': 'packets', '3': 2, '4': 1, '5': 4, '10': 'packets'},
  ],
};

/// Descriptor for `NetworkInterface`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List networkInterfaceDescriptor = $convert.base64Decode('ChBOZXR3b3JrSW50ZXJmYWNlEhIKBG5hbWUYASABKAlSBG5hbWUSRgoIcnhfc3RhdHMYAiABKAsyKy5TcGFjZVguQVBJLkRldmljZS5OZXR3b3JrSW50ZXJmYWNlLlJ4U3RhdHNSB3J4U3RhdHMSRgoIdHhfc3RhdHMYAyABKAsyKy5TcGFjZVguQVBJLkRldmljZS5OZXR3b3JrSW50ZXJmYWNlLlR4U3RhdHNSB3R4U3RhdHMSDgoCdXAYBCABKAhSAnVwEh8KC21hY19hZGRyZXNzGAUgASgJUgptYWNBZGRyZXNzEiUKDmlwdjRfYWRkcmVzc2VzGAYgAygJUg1pcHY0QWRkcmVzc2VzEiUKDmlwdjZfYWRkcmVzc2VzGAcgAygJUg1pcHY2QWRkcmVzc2VzEkoKCGV0aGVybmV0GOgHIAEoCzIrLlNwYWNlWC5BUEkuRGV2aWNlLkV0aGVybmV0TmV0d29ya0ludGVyZmFjZUgAUghldGhlcm5ldBI+CgR3aWZpGOkHIAEoCzInLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlOZXR3b3JrSW50ZXJmYWNlSABSBHdpZmkSRAoGYnJpZGdlGOoHIAEoCzIpLlNwYWNlWC5BUEkuRGV2aWNlLkJyaWRnZU5ldHdvcmtJbnRlcmZhY2VIAFIGYnJpZGdlGlwKB1J4U3RhdHMSFAoFYnl0ZXMYASABKARSBWJ5dGVzEhgKB3BhY2tldHMYAiABKARSB3BhY2tldHMSIQoMZnJhbWVfZXJyb3JzGAMgASgEUgtmcmFtZUVycm9ycxo5CgdUeFN0YXRzEhQKBWJ5dGVzGAEgASgEUgVieXRlcxIYCgdwYWNrZXRzGAIgASgEUgdwYWNrZXRzQgsKCWludGVyZmFjZQ==');
@$core.Deprecated('Use ethernetNetworkInterfaceDescriptor instead')
const EthernetNetworkInterface$json = const {
  '1': 'EthernetNetworkInterface',
  '2': const [
    const {'1': 'link_detected', '3': 1, '4': 1, '5': 8, '10': 'linkDetected'},
    const {'1': 'speed_mbps', '3': 2, '4': 1, '5': 13, '10': 'speedMbps'},
    const {'1': 'autonegotiation_on', '3': 3, '4': 1, '5': 8, '10': 'autonegotiationOn'},
    const {'1': 'duplex', '3': 4, '4': 1, '5': 14, '6': '.SpaceX.API.Device.EthernetNetworkInterface.Duplex', '10': 'duplex'},
  ],
  '4': const [EthernetNetworkInterface_Duplex$json],
};

@$core.Deprecated('Use ethernetNetworkInterfaceDescriptor instead')
const EthernetNetworkInterface_Duplex$json = const {
  '1': 'Duplex',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'HALF', '2': 1},
    const {'1': 'FULL', '2': 2},
  ],
};

/// Descriptor for `EthernetNetworkInterface`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ethernetNetworkInterfaceDescriptor = $convert.base64Decode('ChhFdGhlcm5ldE5ldHdvcmtJbnRlcmZhY2USIwoNbGlua19kZXRlY3RlZBgBIAEoCFIMbGlua0RldGVjdGVkEh0KCnNwZWVkX21icHMYAiABKA1SCXNwZWVkTWJwcxItChJhdXRvbmVnb3RpYXRpb25fb24YAyABKAhSEWF1dG9uZWdvdGlhdGlvbk9uEkoKBmR1cGxleBgEIAEoDjIyLlNwYWNlWC5BUEkuRGV2aWNlLkV0aGVybmV0TmV0d29ya0ludGVyZmFjZS5EdXBsZXhSBmR1cGxleCIpCgZEdXBsZXgSCwoHVU5LTk9XThAAEggKBEhBTEYQARIICgRGVUxMEAI=');
@$core.Deprecated('Use wifiNetworkInterfaceDescriptor instead')
const WifiNetworkInterface$json = const {
  '1': 'WifiNetworkInterface',
  '2': const [
    const {'1': 'thermal_status', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiNetworkInterface.ThermalStatus', '10': 'thermalStatus'},
    const {'1': 'invalid_packet_counts', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiNetworkInterface.InvalidPacketCounts', '10': 'invalidPacketCounts'},
    const {'1': 'channel', '3': 3, '4': 1, '5': 13, '10': 'channel'},
    const {'1': 'link_quality', '3': 4, '4': 1, '5': 1, '10': 'linkQuality'},
    const {'1': 'signal_level', '3': 5, '4': 1, '5': 1, '10': 'signalLevel'},
    const {'1': 'noise_level', '3': 6, '4': 1, '5': 1, '10': 'noiseLevel'},
    const {'1': 'missed_beacons', '3': 8, '4': 1, '5': 13, '10': 'missedBeacons'},
    const {'1': 'antennae_status', '3': 9, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiNetworkInterface.AntennaeStatus', '10': 'antennaeStatus'},
  ],
  '3': const [WifiNetworkInterface_AntennaeStatus$json, WifiNetworkInterface_InvalidPacketCounts$json, WifiNetworkInterface_ThermalStatus$json],
  '9': const [
    const {'1': 7, '2': 8},
  ],
};

@$core.Deprecated('Use wifiNetworkInterfaceDescriptor instead')
const WifiNetworkInterface_AntennaeStatus$json = const {
  '1': 'AntennaeStatus',
  '2': const [
    const {'1': 'rssi1', '3': 1, '4': 1, '5': 2, '10': 'rssi1'},
    const {'1': 'rssi2', '3': 2, '4': 1, '5': 2, '10': 'rssi2'},
    const {'1': 'rssi3', '3': 3, '4': 1, '5': 2, '10': 'rssi3'},
    const {'1': 'rssi4', '3': 4, '4': 1, '5': 2, '10': 'rssi4'},
  ],
};

@$core.Deprecated('Use wifiNetworkInterfaceDescriptor instead')
const WifiNetworkInterface_InvalidPacketCounts$json = const {
  '1': 'InvalidPacketCounts',
  '2': const [
    const {'1': 'rx_invalid_nwid', '3': 1, '4': 1, '5': 13, '10': 'rxInvalidNwid'},
    const {'1': 'rx_invalid_crypt', '3': 2, '4': 1, '5': 13, '10': 'rxInvalidCrypt'},
    const {'1': 'rx_invalid_frag', '3': 3, '4': 1, '5': 13, '10': 'rxInvalidFrag'},
    const {'1': 'tx_excessive_retries', '3': 4, '4': 1, '5': 13, '10': 'txExcessiveRetries'},
    const {'1': 'invalid_misc', '3': 5, '4': 1, '5': 13, '10': 'invalidMisc'},
  ],
};

@$core.Deprecated('Use wifiNetworkInterfaceDescriptor instead')
const WifiNetworkInterface_ThermalStatus$json = const {
  '1': 'ThermalStatus',
  '2': const [
    const {'1': 'level', '3': 1, '4': 1, '5': 13, '10': 'level'},
    const {
      '1': 'temp',
      '3': 2,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'temp',
    },
    const {'1': 'temp2', '3': 3, '4': 1, '5': 1, '10': 'temp2'},
    const {'1': 'power_reduction', '3': 4, '4': 1, '5': 13, '10': 'powerReduction'},
    const {'1': 'duty_cycle', '3': 5, '4': 1, '5': 13, '10': 'dutyCycle'},
  ],
};

/// Descriptor for `WifiNetworkInterface`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiNetworkInterfaceDescriptor = $convert.base64Decode('ChRXaWZpTmV0d29ya0ludGVyZmFjZRJcCg50aGVybWFsX3N0YXR1cxgBIAEoCzI1LlNwYWNlWC5BUEkuRGV2aWNlLldpZmlOZXR3b3JrSW50ZXJmYWNlLlRoZXJtYWxTdGF0dXNSDXRoZXJtYWxTdGF0dXMSbwoVaW52YWxpZF9wYWNrZXRfY291bnRzGAIgASgLMjsuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaU5ldHdvcmtJbnRlcmZhY2UuSW52YWxpZFBhY2tldENvdW50c1ITaW52YWxpZFBhY2tldENvdW50cxIYCgdjaGFubmVsGAMgASgNUgdjaGFubmVsEiEKDGxpbmtfcXVhbGl0eRgEIAEoAVILbGlua1F1YWxpdHkSIQoMc2lnbmFsX2xldmVsGAUgASgBUgtzaWduYWxMZXZlbBIfCgtub2lzZV9sZXZlbBgGIAEoAVIKbm9pc2VMZXZlbBIlCg5taXNzZWRfYmVhY29ucxgIIAEoDVINbWlzc2VkQmVhY29ucxJfCg9hbnRlbm5hZV9zdGF0dXMYCSABKAsyNi5TcGFjZVguQVBJLkRldmljZS5XaWZpTmV0d29ya0ludGVyZmFjZS5BbnRlbm5hZVN0YXR1c1IOYW50ZW5uYWVTdGF0dXMaaAoOQW50ZW5uYWVTdGF0dXMSFAoFcnNzaTEYASABKAJSBXJzc2kxEhQKBXJzc2kyGAIgASgCUgVyc3NpMhIUCgVyc3NpMxgDIAEoAlIFcnNzaTMSFAoFcnNzaTQYBCABKAJSBXJzc2k0GuQBChNJbnZhbGlkUGFja2V0Q291bnRzEiYKD3J4X2ludmFsaWRfbndpZBgBIAEoDVINcnhJbnZhbGlkTndpZBIoChByeF9pbnZhbGlkX2NyeXB0GAIgASgNUg5yeEludmFsaWRDcnlwdBImCg9yeF9pbnZhbGlkX2ZyYWcYAyABKA1SDXJ4SW52YWxpZEZyYWcSMAoUdHhfZXhjZXNzaXZlX3JldHJpZXMYBCABKA1SEnR4RXhjZXNzaXZlUmV0cmllcxIhCgxpbnZhbGlkX21pc2MYBSABKA1SC2ludmFsaWRNaXNjGpsBCg1UaGVybWFsU3RhdHVzEhQKBWxldmVsGAEgASgNUgVsZXZlbBIWCgR0ZW1wGAIgASgNQgIYAVIEdGVtcBIUCgV0ZW1wMhgDIAEoAVIFdGVtcDISJwoPcG93ZXJfcmVkdWN0aW9uGAQgASgNUg5wb3dlclJlZHVjdGlvbhIdCgpkdXR5X2N5Y2xlGAUgASgNUglkdXR5Q3ljbGVKBAgHEAg=');
@$core.Deprecated('Use bridgeNetworkInterfaceDescriptor instead')
const BridgeNetworkInterface$json = const {
  '1': 'BridgeNetworkInterface',
  '2': const [
    const {'1': 'member_names', '3': 1, '4': 3, '5': 9, '10': 'memberNames'},
  ],
};

/// Descriptor for `BridgeNetworkInterface`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bridgeNetworkInterfaceDescriptor = $convert.base64Decode('ChZCcmlkZ2VOZXR3b3JrSW50ZXJmYWNlEiEKDG1lbWJlcl9uYW1lcxgBIAMoCVILbWVtYmVyTmFtZXM=');
@$core.Deprecated('Use pingHostResponseDescriptor instead')
const PingHostResponse$json = const {
  '1': 'PingHostResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.PingResult', '10': 'result'},
  ],
};

/// Descriptor for `PingHostResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingHostResponseDescriptor = $convert.base64Decode('ChBQaW5nSG9zdFJlc3BvbnNlEjUKBnJlc3VsdBgBIAEoCzIdLlNwYWNlWC5BUEkuRGV2aWNlLlBpbmdSZXN1bHRSBnJlc3VsdA==');
@$core.Deprecated('Use getLocationResponseDescriptor instead')
const GetLocationResponse$json = const {
  '1': 'GetLocationResponse',
  '2': const [
    const {'1': 'lla', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.LLAPosition', '10': 'lla'},
    const {'1': 'source', '3': 3, '4': 1, '5': 14, '6': '.SpaceX.API.Device.PositionSource', '10': 'source'},
    const {'1': 'sigma_m', '3': 4, '4': 1, '5': 1, '10': 'sigmaM'},
  ],
  '9': const [
    const {'1': 2, '2': 3},
  ],
  '10': const ['ecef'],
};

/// Descriptor for `GetLocationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLocationResponseDescriptor = $convert.base64Decode('ChNHZXRMb2NhdGlvblJlc3BvbnNlEjAKA2xsYRgBIAEoCzIeLlNwYWNlWC5BUEkuRGV2aWNlLkxMQVBvc2l0aW9uUgNsbGESOQoGc291cmNlGAMgASgOMiEuU3BhY2VYLkFQSS5EZXZpY2UuUG9zaXRpb25Tb3VyY2VSBnNvdXJjZRIXCgdzaWdtYV9tGAQgASgBUgZzaWdtYU1KBAgCEANSBGVjZWY=');
@$core.Deprecated('Use lLAPositionDescriptor instead')
const LLAPosition$json = const {
  '1': 'LLAPosition',
  '2': const [
    const {'1': 'lat', '3': 1, '4': 1, '5': 1, '10': 'lat'},
    const {'1': 'lon', '3': 2, '4': 1, '5': 1, '10': 'lon'},
    const {'1': 'alt', '3': 3, '4': 1, '5': 1, '10': 'alt'},
  ],
};

/// Descriptor for `LLAPosition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lLAPositionDescriptor = $convert.base64Decode('CgtMTEFQb3NpdGlvbhIQCgNsYXQYASABKAFSA2xhdBIQCgNsb24YAiABKAFSA2xvbhIQCgNhbHQYAyABKAFSA2FsdA==');
@$core.Deprecated('Use getHeapDumpResponseDescriptor instead')
const GetHeapDumpResponse$json = const {
  '1': 'GetHeapDumpResponse',
  '2': const [
    const {'1': 'heap_dump', '3': 1, '4': 1, '5': 9, '10': 'heapDump'},
  ],
};

/// Descriptor for `GetHeapDumpResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getHeapDumpResponseDescriptor = $convert.base64Decode('ChNHZXRIZWFwRHVtcFJlc3BvbnNlEhsKCWhlYXBfZHVtcBgBIAEoCVIIaGVhcER1bXA=');
@$core.Deprecated('Use restartControlResponseDescriptor instead')
const RestartControlResponse$json = const {
  '1': 'RestartControlResponse',
};

/// Descriptor for `RestartControlResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List restartControlResponseDescriptor = $convert.base64Decode('ChZSZXN0YXJ0Q29udHJvbFJlc3BvbnNl');
@$core.Deprecated('Use fuseResponseDescriptor instead')
const FuseResponse$json = const {
  '1': 'FuseResponse',
};

/// Descriptor for `FuseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fuseResponseDescriptor = $convert.base64Decode('CgxGdXNlUmVzcG9uc2U=');
@$core.Deprecated('Use getConnectionsResponseDescriptor instead')
const GetConnectionsResponse$json = const {
  '1': 'GetConnectionsResponse',
  '2': const [
    const {'1': 'services', '3': 1, '4': 3, '5': 11, '6': '.SpaceX.API.Device.GetConnectionsResponse.ServicesEntry', '10': 'services'},
  ],
  '3': const [GetConnectionsResponse_ServicesEntry$json, GetConnectionsResponse_ServiceConnection$json],
};

@$core.Deprecated('Use getConnectionsResponseDescriptor instead')
const GetConnectionsResponse_ServicesEntry$json = const {
  '1': 'ServicesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetConnectionsResponse.ServiceConnection', '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use getConnectionsResponseDescriptor instead')
const GetConnectionsResponse_ServiceConnection$json = const {
  '1': 'ServiceConnection',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'seconds_since_success', '3': 2, '4': 1, '5': 5, '10': 'secondsSinceSuccess'},
  ],
};

/// Descriptor for `GetConnectionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getConnectionsResponseDescriptor = $convert.base64Decode('ChZHZXRDb25uZWN0aW9uc1Jlc3BvbnNlElMKCHNlcnZpY2VzGAEgAygLMjcuU3BhY2VYLkFQSS5EZXZpY2UuR2V0Q29ubmVjdGlvbnNSZXNwb25zZS5TZXJ2aWNlc0VudHJ5UghzZXJ2aWNlcxp4Cg1TZXJ2aWNlc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5ElEKBXZhbHVlGAIgASgLMjsuU3BhY2VYLkFQSS5EZXZpY2UuR2V0Q29ubmVjdGlvbnNSZXNwb25zZS5TZXJ2aWNlQ29ubmVjdGlvblIFdmFsdWU6AjgBGmEKEVNlcnZpY2VDb25uZWN0aW9uEhgKB2FkZHJlc3MYASABKAlSB2FkZHJlc3MSMgoVc2Vjb25kc19zaW5jZV9zdWNjZXNzGAIgASgFUhNzZWNvbmRzU2luY2VTdWNjZXNz');
@$core.Deprecated('Use startSpeedtestResponseDescriptor instead')
const StartSpeedtestResponse$json = const {
  '1': 'StartSpeedtestResponse',
};

/// Descriptor for `StartSpeedtestResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startSpeedtestResponseDescriptor = $convert.base64Decode('ChZTdGFydFNwZWVkdGVzdFJlc3BvbnNl');
@$core.Deprecated('Use getSpeedtestStatusResponseDescriptor instead')
const GetSpeedtestStatusResponse$json = const {
  '1': 'GetSpeedtestStatusResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SpeedtestStatus', '10': 'status'},
  ],
};

/// Descriptor for `GetSpeedtestStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSpeedtestStatusResponseDescriptor = $convert.base64Decode('ChpHZXRTcGVlZHRlc3RTdGF0dXNSZXNwb25zZRI6CgZzdGF0dXMYASABKAsyIi5TcGFjZVguQVBJLkRldmljZS5TcGVlZHRlc3RTdGF0dXNSBnN0YXR1cw==');
@$core.Deprecated('Use speedtestStatusDescriptor instead')
const SpeedtestStatus$json = const {
  '1': 'SpeedtestStatus',
  '2': const [
    const {'1': 'running', '3': 1, '4': 1, '5': 8, '10': 'running'},
    const {'1': 'id', '3': 2, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'up', '3': 1000, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SpeedtestStatus.Direction', '10': 'up'},
    const {'1': 'down', '3': 1001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SpeedtestStatus.Direction', '10': 'down'},
  ],
  '3': const [SpeedtestStatus_Direction$json],
};

@$core.Deprecated('Use speedtestStatusDescriptor instead')
const SpeedtestStatus_Direction$json = const {
  '1': 'Direction',
  '2': const [
    const {'1': 'throughputs_mbps', '3': 1, '4': 3, '5': 2, '10': 'throughputsMbps'},
    const {'1': 'err', '3': 2, '4': 1, '5': 14, '6': '.SpaceX.API.Device.SpeedtestError', '10': 'err'},
  ],
};

/// Descriptor for `SpeedtestStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List speedtestStatusDescriptor = $convert.base64Decode('Cg9TcGVlZHRlc3RTdGF0dXMSGAoHcnVubmluZxgBIAEoCFIHcnVubmluZxIOCgJpZBgCIAEoDVICaWQSPQoCdXAY6AcgASgLMiwuU3BhY2VYLkFQSS5EZXZpY2UuU3BlZWR0ZXN0U3RhdHVzLkRpcmVjdGlvblICdXASQQoEZG93bhjpByABKAsyLC5TcGFjZVguQVBJLkRldmljZS5TcGVlZHRlc3RTdGF0dXMuRGlyZWN0aW9uUgRkb3duGmsKCURpcmVjdGlvbhIpChB0aHJvdWdocHV0c19tYnBzGAEgAygCUg90aHJvdWdocHV0c01icHMSMwoDZXJyGAIgASgOMiEuU3BhY2VYLkFQSS5EZXZpY2UuU3BlZWR0ZXN0RXJyb3JSA2Vycg==');
@$core.Deprecated('Use reportClientSpeedtestResponseDescriptor instead')
const ReportClientSpeedtestResponse$json = const {
  '1': 'ReportClientSpeedtestResponse',
};

/// Descriptor for `ReportClientSpeedtestResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportClientSpeedtestResponseDescriptor = $convert.base64Decode('Ch1SZXBvcnRDbGllbnRTcGVlZHRlc3RSZXNwb25zZQ==');
@$core.Deprecated('Use initiateRemoteSshResponseDescriptor instead')
const InitiateRemoteSshResponse$json = const {
  '1': 'InitiateRemoteSshResponse',
  '2': const [
    const {'1': 'port', '3': 1, '4': 1, '5': 13, '10': 'port'},
    const {'1': 'address', '3': 2, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'stsafe', '3': 3, '4': 1, '5': 12, '10': 'stsafe'},
  ],
};

/// Descriptor for `InitiateRemoteSshResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List initiateRemoteSshResponseDescriptor = $convert.base64Decode('ChlJbml0aWF0ZVJlbW90ZVNzaFJlc3BvbnNlEhIKBHBvcnQYASABKA1SBHBvcnQSGAoHYWRkcmVzcxgCIAEoCVIHYWRkcmVzcxIWCgZzdHNhZmUYAyABKAxSBnN0c2FmZQ==');
@$core.Deprecated('Use selfTestResponseDescriptor instead')
const SelfTestResponse$json = const {
  '1': 'SelfTestResponse',
  '2': const [
    const {'1': 'passed', '3': 1, '4': 1, '5': 8, '10': 'passed'},
    const {'1': 'report', '3': 2, '4': 1, '5': 9, '10': 'report'},
  ],
};

/// Descriptor for `SelfTestResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List selfTestResponseDescriptor = $convert.base64Decode('ChBTZWxmVGVzdFJlc3BvbnNlEhYKBnBhc3NlZBgBIAEoCFIGcGFzc2VkEhYKBnJlcG9ydBgCIAEoCVIGcmVwb3J0');
@$core.Deprecated('Use setTestModeResponseDescriptor instead')
const SetTestModeResponse$json = const {
  '1': 'SetTestModeResponse',
};

/// Descriptor for `SetTestModeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setTestModeResponseDescriptor = $convert.base64Decode('ChNTZXRUZXN0TW9kZVJlc3BvbnNl');
@$core.Deprecated('Use softwareUpdateResponseDescriptor instead')
const SoftwareUpdateResponse$json = const {
  '1': 'SoftwareUpdateResponse',
};

/// Descriptor for `SoftwareUpdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List softwareUpdateResponseDescriptor = $convert.base64Decode('ChZTb2Z0d2FyZVVwZGF0ZVJlc3BvbnNl');
@$core.Deprecated('Use enableDebugTelemResponseDescriptor instead')
const EnableDebugTelemResponse$json = const {
  '1': 'EnableDebugTelemResponse',
};

/// Descriptor for `EnableDebugTelemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enableDebugTelemResponseDescriptor = $convert.base64Decode('ChhFbmFibGVEZWJ1Z1RlbGVtUmVzcG9uc2U=');
@$core.Deprecated('Use dishStowResponseDescriptor instead')
const DishStowResponse$json = const {
  '1': 'DishStowResponse',
};

/// Descriptor for `DishStowResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishStowResponseDescriptor = $convert.base64Decode('ChBEaXNoU3Rvd1Jlc3BvbnNl');
@$core.Deprecated('Use dishGetContextResponseDescriptor instead')
const DishGetContextResponse$json = const {
  '1': 'DishGetContextResponse',
  '2': const [
    const {'1': 'device_info', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DeviceInfo', '10': 'deviceInfo'},
    const {'1': 'obstruction_fraction', '3': 2, '4': 1, '5': 2, '10': 'obstructionFraction'},
    const {'1': 'obstruction_valid_s', '3': 3, '4': 1, '5': 2, '10': 'obstructionValidS'},
    const {'1': 'cell_id', '3': 4, '4': 1, '5': 13, '10': 'cellId'},
    const {'1': 'pop_rack_id', '3': 5, '4': 1, '5': 13, '10': 'popRackId'},
    const {'1': 'seconds_to_slot_end', '3': 6, '4': 1, '5': 2, '10': 'secondsToSlotEnd'},
    const {'1': 'device_state', '3': 7, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DeviceState', '10': 'deviceState'},
    const {'1': 'initial_satellite_id', '3': 8, '4': 1, '5': 13, '10': 'initialSatelliteId'},
    const {'1': 'initial_gateway_id', '3': 9, '4': 1, '5': 13, '10': 'initialGatewayId'},
    const {'1': 'on_backup_beam', '3': 10, '4': 1, '5': 8, '10': 'onBackupBeam'},
    const {'1': 'debug_telemetry_enabled', '3': 11, '4': 1, '5': 8, '10': 'debugTelemetryEnabled'},
    const {'1': 'obstruction_current', '3': 12, '4': 1, '5': 8, '10': 'obstructionCurrent'},
    const {'1': 'pop_ping_drop_rate_15s_mean', '3': 13, '4': 1, '5': 2, '10': 'popPingDropRate15sMean'},
    const {'1': 'pop_ping_latency_ms_15s_mean', '3': 14, '4': 1, '5': 2, '10': 'popPingLatencyMs15sMean'},
    const {'1': 'seconds_since_last_1s_outage', '3': 15, '4': 1, '5': 2, '10': 'secondsSinceLast1sOutage'},
    const {'1': 'seconds_since_last_2s_outage', '3': 16, '4': 1, '5': 2, '10': 'secondsSinceLast2sOutage'},
    const {'1': 'seconds_since_last_5s_outage', '3': 17, '4': 1, '5': 2, '10': 'secondsSinceLast5sOutage'},
    const {'1': 'seconds_since_last_15s_outage', '3': 18, '4': 1, '5': 2, '10': 'secondsSinceLast15sOutage'},
    const {'1': 'seconds_since_last_60s_outage', '3': 19, '4': 1, '5': 2, '10': 'secondsSinceLast60sOutage'},
    const {'1': 'obstruction_time', '3': 20, '4': 1, '5': 2, '10': 'obstructionTime'},
  ],
};

/// Descriptor for `DishGetContextResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGetContextResponseDescriptor = $convert.base64Decode('ChZEaXNoR2V0Q29udGV4dFJlc3BvbnNlEj4KC2RldmljZV9pbmZvGAEgASgLMh0uU3BhY2VYLkFQSS5EZXZpY2UuRGV2aWNlSW5mb1IKZGV2aWNlSW5mbxIxChRvYnN0cnVjdGlvbl9mcmFjdGlvbhgCIAEoAlITb2JzdHJ1Y3Rpb25GcmFjdGlvbhIuChNvYnN0cnVjdGlvbl92YWxpZF9zGAMgASgCUhFvYnN0cnVjdGlvblZhbGlkUxIXCgdjZWxsX2lkGAQgASgNUgZjZWxsSWQSHgoLcG9wX3JhY2tfaWQYBSABKA1SCXBvcFJhY2tJZBItChNzZWNvbmRzX3RvX3Nsb3RfZW5kGAYgASgCUhBzZWNvbmRzVG9TbG90RW5kEkEKDGRldmljZV9zdGF0ZRgHIAEoCzIeLlNwYWNlWC5BUEkuRGV2aWNlLkRldmljZVN0YXRlUgtkZXZpY2VTdGF0ZRIwChRpbml0aWFsX3NhdGVsbGl0ZV9pZBgIIAEoDVISaW5pdGlhbFNhdGVsbGl0ZUlkEiwKEmluaXRpYWxfZ2F0ZXdheV9pZBgJIAEoDVIQaW5pdGlhbEdhdGV3YXlJZBIkCg5vbl9iYWNrdXBfYmVhbRgKIAEoCFIMb25CYWNrdXBCZWFtEjYKF2RlYnVnX3RlbGVtZXRyeV9lbmFibGVkGAsgASgIUhVkZWJ1Z1RlbGVtZXRyeUVuYWJsZWQSLwoTb2JzdHJ1Y3Rpb25fY3VycmVudBgMIAEoCFISb2JzdHJ1Y3Rpb25DdXJyZW50EjsKG3BvcF9waW5nX2Ryb3BfcmF0ZV8xNXNfbWVhbhgNIAEoAlIWcG9wUGluZ0Ryb3BSYXRlMTVzTWVhbhI9Chxwb3BfcGluZ19sYXRlbmN5X21zXzE1c19tZWFuGA4gASgCUhdwb3BQaW5nTGF0ZW5jeU1zMTVzTWVhbhI+ChxzZWNvbmRzX3NpbmNlX2xhc3RfMXNfb3V0YWdlGA8gASgCUhhzZWNvbmRzU2luY2VMYXN0MXNPdXRhZ2USPgocc2Vjb25kc19zaW5jZV9sYXN0XzJzX291dGFnZRgQIAEoAlIYc2Vjb25kc1NpbmNlTGFzdDJzT3V0YWdlEj4KHHNlY29uZHNfc2luY2VfbGFzdF81c19vdXRhZ2UYESABKAJSGHNlY29uZHNTaW5jZUxhc3Q1c091dGFnZRJACh1zZWNvbmRzX3NpbmNlX2xhc3RfMTVzX291dGFnZRgSIAEoAlIZc2Vjb25kc1NpbmNlTGFzdDE1c091dGFnZRJACh1zZWNvbmRzX3NpbmNlX2xhc3RfNjBzX291dGFnZRgTIAEoAlIZc2Vjb25kc1NpbmNlTGFzdDYwc091dGFnZRIpChBvYnN0cnVjdGlvbl90aW1lGBQgASgCUg9vYnN0cnVjdGlvblRpbWU=');
@$core.Deprecated('Use deviceStateDescriptor instead')
const DeviceState$json = const {
  '1': 'DeviceState',
  '2': const [
    const {'1': 'uptime_s', '3': 1, '4': 1, '5': 4, '10': 'uptimeS'},
  ],
};

/// Descriptor for `DeviceState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceStateDescriptor = $convert.base64Decode('CgtEZXZpY2VTdGF0ZRIZCgh1cHRpbWVfcxgBIAEoBFIHdXB0aW1lUw==');
@$core.Deprecated('Use dishGetStatusResponseDescriptor instead')
const DishGetStatusResponse$json = const {
  '1': 'DishGetStatusResponse',
  '2': const [
    const {'1': 'device_info', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DeviceInfo', '10': 'deviceInfo'},
    const {'1': 'device_state', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DeviceState', '10': 'deviceState'},
    const {'1': 'seconds_to_first_nonempty_slot', '3': 1002, '4': 1, '5': 2, '10': 'secondsToFirstNonemptySlot'},
    const {'1': 'pop_ping_drop_rate', '3': 1003, '4': 1, '5': 2, '10': 'popPingDropRate'},
    const {'1': 'obstruction_stats', '3': 1004, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishObstructionStats', '10': 'obstructionStats'},
    const {'1': 'alerts', '3': 1005, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishAlerts', '10': 'alerts'},
    const {'1': 'downlink_throughput_bps', '3': 1007, '4': 1, '5': 2, '10': 'downlinkThroughputBps'},
    const {'1': 'uplink_throughput_bps', '3': 1008, '4': 1, '5': 2, '10': 'uplinkThroughputBps'},
    const {'1': 'pop_ping_latency_ms', '3': 1009, '4': 1, '5': 2, '10': 'popPingLatencyMs'},
    const {'1': 'stow_requested', '3': 1010, '4': 1, '5': 8, '10': 'stowRequested'},
    const {'1': 'boresight_azimuth_deg', '3': 1011, '4': 1, '5': 2, '10': 'boresightAzimuthDeg'},
    const {'1': 'boresight_elevation_deg', '3': 1012, '4': 1, '5': 2, '10': 'boresightElevationDeg'},
    const {'1': 'outage', '3': 1014, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishOutage', '10': 'outage'},
    const {'1': 'gps_stats', '3': 1015, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGpsStats', '10': 'gpsStats'},
    const {'1': 'eth_speed_mbps', '3': 1016, '4': 1, '5': 5, '10': 'ethSpeedMbps'},
    const {'1': 'mobility_class', '3': 1017, '4': 1, '5': 14, '6': '.SpaceX.API.Device.UserMobilityClass', '10': 'mobilityClass'},
    const {'1': 'is_snr_above_noise_floor', '3': 1018, '4': 1, '5': 8, '10': 'isSnrAboveNoiseFloor'},
    const {'1': 'ready_states', '3': 1019, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishReadyStates', '10': 'readyStates'},
    const {'1': 'class_of_service', '3': 1020, '4': 1, '5': 14, '6': '.SpaceX.API.Device.UserClassOfService', '10': 'classOfService'},
    const {'1': 'software_update_state', '3': 1021, '4': 1, '5': 14, '6': '.SpaceX.API.Device.SoftwareUpdateState', '10': 'softwareUpdateState'},
    const {'1': 'is_snr_persistently_low', '3': 1022, '4': 1, '5': 8, '10': 'isSnrPersistentlyLow'},
    const {'1': 'has_actuators', '3': 1023, '4': 1, '5': 14, '6': '.SpaceX.API.Device.HasActuators', '10': 'hasActuators'},
    const {'1': 'disablement_code', '3': 1024, '4': 1, '5': 14, '6': '.SpaceX.API.Satellites.Network.UtDisablementCode', '10': 'disablementCode'},
    const {'1': 'has_signed_cals', '3': 1025, '4': 1, '5': 8, '10': 'hasSignedCals'},
    const {'1': 'software_update_stats', '3': 1026, '4': 1, '5': 11, '6': '.SpaceX.API.Device.SoftwareUpdateStats', '10': 'softwareUpdateStats'},
    const {'1': 'alignment_stats', '3': 1027, '4': 1, '5': 11, '6': '.SpaceX.API.Device.AlignmentStats', '10': 'alignmentStats'},
    const {'1': 'config', '3': 2000, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishConfig', '10': 'config'},
  ],
  '9': const [
    const {'1': 1001, '2': 1002},
    const {'1': 1006, '2': 1007},
    const {'1': 1013, '2': 1014},
  ],
};

/// Descriptor for `DishGetStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGetStatusResponseDescriptor = $convert.base64Decode('ChVEaXNoR2V0U3RhdHVzUmVzcG9uc2USPgoLZGV2aWNlX2luZm8YASABKAsyHS5TcGFjZVguQVBJLkRldmljZS5EZXZpY2VJbmZvUgpkZXZpY2VJbmZvEkEKDGRldmljZV9zdGF0ZRgCIAEoCzIeLlNwYWNlWC5BUEkuRGV2aWNlLkRldmljZVN0YXRlUgtkZXZpY2VTdGF0ZRJDCh5zZWNvbmRzX3RvX2ZpcnN0X25vbmVtcHR5X3Nsb3QY6gcgASgCUhpzZWNvbmRzVG9GaXJzdE5vbmVtcHR5U2xvdBIsChJwb3BfcGluZ19kcm9wX3JhdGUY6wcgASgCUg9wb3BQaW5nRHJvcFJhdGUSVQoRb2JzdHJ1Y3Rpb25fc3RhdHMY7AcgASgLMicuU3BhY2VYLkFQSS5EZXZpY2UuRGlzaE9ic3RydWN0aW9uU3RhdHNSEG9ic3RydWN0aW9uU3RhdHMSNgoGYWxlcnRzGO0HIAEoCzIdLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hBbGVydHNSBmFsZXJ0cxI3Chdkb3dubGlua190aHJvdWdocHV0X2JwcxjvByABKAJSFWRvd25saW5rVGhyb3VnaHB1dEJwcxIzChV1cGxpbmtfdGhyb3VnaHB1dF9icHMY8AcgASgCUhN1cGxpbmtUaHJvdWdocHV0QnBzEi4KE3BvcF9waW5nX2xhdGVuY3lfbXMY8QcgASgCUhBwb3BQaW5nTGF0ZW5jeU1zEiYKDnN0b3dfcmVxdWVzdGVkGPIHIAEoCFINc3Rvd1JlcXVlc3RlZBIzChVib3Jlc2lnaHRfYXppbXV0aF9kZWcY8wcgASgCUhNib3Jlc2lnaHRBemltdXRoRGVnEjcKF2JvcmVzaWdodF9lbGV2YXRpb25fZGVnGPQHIAEoAlIVYm9yZXNpZ2h0RWxldmF0aW9uRGVnEjYKBm91dGFnZRj2ByABKAsyHS5TcGFjZVguQVBJLkRldmljZS5EaXNoT3V0YWdlUgZvdXRhZ2USPQoJZ3BzX3N0YXRzGPcHIAEoCzIfLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hHcHNTdGF0c1IIZ3BzU3RhdHMSJQoOZXRoX3NwZWVkX21icHMY+AcgASgFUgxldGhTcGVlZE1icHMSTAoObW9iaWxpdHlfY2xhc3MY+QcgASgOMiQuU3BhY2VYLkFQSS5EZXZpY2UuVXNlck1vYmlsaXR5Q2xhc3NSDW1vYmlsaXR5Q2xhc3MSNwoYaXNfc25yX2Fib3ZlX25vaXNlX2Zsb29yGPoHIAEoCFIUaXNTbnJBYm92ZU5vaXNlRmxvb3ISRgoMcmVhZHlfc3RhdGVzGPsHIAEoCzIiLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hSZWFkeVN0YXRlc1ILcmVhZHlTdGF0ZXMSUAoQY2xhc3Nfb2Zfc2VydmljZRj8ByABKA4yJS5TcGFjZVguQVBJLkRldmljZS5Vc2VyQ2xhc3NPZlNlcnZpY2VSDmNsYXNzT2ZTZXJ2aWNlElsKFXNvZnR3YXJlX3VwZGF0ZV9zdGF0ZRj9ByABKA4yJi5TcGFjZVguQVBJLkRldmljZS5Tb2Z0d2FyZVVwZGF0ZVN0YXRlUhNzb2Z0d2FyZVVwZGF0ZVN0YXRlEjYKF2lzX3Nucl9wZXJzaXN0ZW50bHlfbG93GP4HIAEoCFIUaXNTbnJQZXJzaXN0ZW50bHlMb3cSRQoNaGFzX2FjdHVhdG9ycxj/ByABKA4yHy5TcGFjZVguQVBJLkRldmljZS5IYXNBY3R1YXRvcnNSDGhhc0FjdHVhdG9ycxJcChBkaXNhYmxlbWVudF9jb2RlGIAIIAEoDjIwLlNwYWNlWC5BUEkuU2F0ZWxsaXRlcy5OZXR3b3JrLlV0RGlzYWJsZW1lbnRDb2RlUg9kaXNhYmxlbWVudENvZGUSJwoPaGFzX3NpZ25lZF9jYWxzGIEIIAEoCFINaGFzU2lnbmVkQ2FscxJbChVzb2Z0d2FyZV91cGRhdGVfc3RhdHMYggggASgLMiYuU3BhY2VYLkFQSS5EZXZpY2UuU29mdHdhcmVVcGRhdGVTdGF0c1ITc29mdHdhcmVVcGRhdGVTdGF0cxJLCg9hbGlnbm1lbnRfc3RhdHMYgwggASgLMiEuU3BhY2VYLkFQSS5EZXZpY2UuQWxpZ25tZW50U3RhdHNSDmFsaWdubWVudFN0YXRzEjYKBmNvbmZpZxjQDyABKAsyHS5TcGFjZVguQVBJLkRldmljZS5EaXNoQ29uZmlnUgZjb25maWdKBgjpBxDqB0oGCO4HEO8HSgYI9QcQ9gc=');
@$core.Deprecated('Use dishObstructionStatsDescriptor instead')
const DishObstructionStats$json = const {
  '1': 'DishObstructionStats',
  '2': const [
    const {'1': 'fraction_obstructed', '3': 1, '4': 1, '5': 2, '10': 'fractionObstructed'},
    const {'1': 'valid_s', '3': 4, '4': 1, '5': 2, '10': 'validS'},
    const {'1': 'currently_obstructed', '3': 5, '4': 1, '5': 8, '10': 'currentlyObstructed'},
    const {'1': 'avg_prolonged_obstruction_duration_s', '3': 6, '4': 1, '5': 2, '10': 'avgProlongedObstructionDurationS'},
    const {'1': 'avg_prolonged_obstruction_interval_s', '3': 7, '4': 1, '5': 2, '10': 'avgProlongedObstructionIntervalS'},
    const {'1': 'avg_prolonged_obstruction_valid', '3': 8, '4': 1, '5': 8, '10': 'avgProlongedObstructionValid'},
    const {'1': 'time_obstructed', '3': 9, '4': 1, '5': 2, '10': 'timeObstructed'},
    const {'1': 'patches_valid', '3': 10, '4': 1, '5': 13, '10': 'patchesValid'},
  ],
  '9': const [
    const {'1': 2, '2': 3},
    const {'1': 3, '2': 4},
    const {'1': 1006, '2': 1007},
  ],
  '10': const ['wedge_abs_fraction_obstructed', 'wedge_fraction_obstructed'],
};

/// Descriptor for `DishObstructionStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishObstructionStatsDescriptor = $convert.base64Decode('ChREaXNoT2JzdHJ1Y3Rpb25TdGF0cxIvChNmcmFjdGlvbl9vYnN0cnVjdGVkGAEgASgCUhJmcmFjdGlvbk9ic3RydWN0ZWQSFwoHdmFsaWRfcxgEIAEoAlIGdmFsaWRTEjEKFGN1cnJlbnRseV9vYnN0cnVjdGVkGAUgASgIUhNjdXJyZW50bHlPYnN0cnVjdGVkEk4KJGF2Z19wcm9sb25nZWRfb2JzdHJ1Y3Rpb25fZHVyYXRpb25fcxgGIAEoAlIgYXZnUHJvbG9uZ2VkT2JzdHJ1Y3Rpb25EdXJhdGlvblMSTgokYXZnX3Byb2xvbmdlZF9vYnN0cnVjdGlvbl9pbnRlcnZhbF9zGAcgASgCUiBhdmdQcm9sb25nZWRPYnN0cnVjdGlvbkludGVydmFsUxJFCh9hdmdfcHJvbG9uZ2VkX29ic3RydWN0aW9uX3ZhbGlkGAggASgIUhxhdmdQcm9sb25nZWRPYnN0cnVjdGlvblZhbGlkEicKD3RpbWVfb2JzdHJ1Y3RlZBgJIAEoAlIOdGltZU9ic3RydWN0ZWQSIwoNcGF0Y2hlc192YWxpZBgKIAEoDVIMcGF0Y2hlc1ZhbGlkSgQIAhADSgQIAxAESgYI7gcQ7wdSHXdlZGdlX2Fic19mcmFjdGlvbl9vYnN0cnVjdGVkUhl3ZWRnZV9mcmFjdGlvbl9vYnN0cnVjdGVk');
@$core.Deprecated('Use dishAlertsDescriptor instead')
const DishAlerts$json = const {
  '1': 'DishAlerts',
  '2': const [
    const {'1': 'motors_stuck', '3': 1, '4': 1, '5': 8, '10': 'motorsStuck'},
    const {'1': 'thermal_shutdown', '3': 2, '4': 1, '5': 8, '10': 'thermalShutdown'},
    const {'1': 'thermal_throttle', '3': 3, '4': 1, '5': 8, '10': 'thermalThrottle'},
    const {'1': 'unexpected_location', '3': 4, '4': 1, '5': 8, '10': 'unexpectedLocation'},
    const {'1': 'mast_not_near_vertical', '3': 5, '4': 1, '5': 8, '10': 'mastNotNearVertical'},
    const {'1': 'slow_ethernet_speeds', '3': 6, '4': 1, '5': 8, '10': 'slowEthernetSpeeds'},
    const {'1': 'roaming', '3': 7, '4': 1, '5': 8, '10': 'roaming'},
    const {'1': 'install_pending', '3': 8, '4': 1, '5': 8, '10': 'installPending'},
    const {'1': 'is_heating', '3': 9, '4': 1, '5': 8, '10': 'isHeating'},
    const {'1': 'power_supply_thermal_throttle', '3': 10, '4': 1, '5': 8, '10': 'powerSupplyThermalThrottle'},
    const {'1': 'is_power_save_idle', '3': 11, '4': 1, '5': 8, '10': 'isPowerSaveIdle'},
    const {'1': 'moving_while_not_mobile', '3': 12, '4': 1, '5': 8, '10': 'movingWhileNotMobile'},
    const {'1': 'moving_fast_while_not_aviation', '3': 13, '4': 1, '5': 8, '10': 'movingFastWhileNotAviation'},
  ],
};

/// Descriptor for `DishAlerts`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishAlertsDescriptor = $convert.base64Decode('CgpEaXNoQWxlcnRzEiEKDG1vdG9yc19zdHVjaxgBIAEoCFILbW90b3JzU3R1Y2sSKQoQdGhlcm1hbF9zaHV0ZG93bhgCIAEoCFIPdGhlcm1hbFNodXRkb3duEikKEHRoZXJtYWxfdGhyb3R0bGUYAyABKAhSD3RoZXJtYWxUaHJvdHRsZRIvChN1bmV4cGVjdGVkX2xvY2F0aW9uGAQgASgIUhJ1bmV4cGVjdGVkTG9jYXRpb24SMwoWbWFzdF9ub3RfbmVhcl92ZXJ0aWNhbBgFIAEoCFITbWFzdE5vdE5lYXJWZXJ0aWNhbBIwChRzbG93X2V0aGVybmV0X3NwZWVkcxgGIAEoCFISc2xvd0V0aGVybmV0U3BlZWRzEhgKB3JvYW1pbmcYByABKAhSB3JvYW1pbmcSJwoPaW5zdGFsbF9wZW5kaW5nGAggASgIUg5pbnN0YWxsUGVuZGluZxIdCgppc19oZWF0aW5nGAkgASgIUglpc0hlYXRpbmcSQQodcG93ZXJfc3VwcGx5X3RoZXJtYWxfdGhyb3R0bGUYCiABKAhSGnBvd2VyU3VwcGx5VGhlcm1hbFRocm90dGxlEisKEmlzX3Bvd2VyX3NhdmVfaWRsZRgLIAEoCFIPaXNQb3dlclNhdmVJZGxlEjUKF21vdmluZ193aGlsZV9ub3RfbW9iaWxlGAwgASgIUhRtb3ZpbmdXaGlsZU5vdE1vYmlsZRJCCh5tb3ZpbmdfZmFzdF93aGlsZV9ub3RfYXZpYXRpb24YDSABKAhSGm1vdmluZ0Zhc3RXaGlsZU5vdEF2aWF0aW9u');
@$core.Deprecated('Use dishOutageDescriptor instead')
const DishOutage$json = const {
  '1': 'DishOutage',
  '2': const [
    const {'1': 'cause', '3': 1, '4': 1, '5': 14, '6': '.SpaceX.API.Device.DishOutage.Cause', '10': 'cause'},
    const {'1': 'start_timestamp_ns', '3': 2, '4': 1, '5': 3, '10': 'startTimestampNs'},
    const {'1': 'duration_ns', '3': 3, '4': 1, '5': 4, '10': 'durationNs'},
    const {'1': 'did_switch', '3': 4, '4': 1, '5': 8, '10': 'didSwitch'},
  ],
  '4': const [DishOutage_Cause$json],
};

@$core.Deprecated('Use dishOutageDescriptor instead')
const DishOutage_Cause$json = const {
  '1': 'Cause',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'BOOTING', '2': 1},
    const {'1': 'STOWED', '2': 2},
    const {'1': 'THERMAL_SHUTDOWN', '2': 3},
    const {'1': 'NO_SCHEDULE', '2': 4},
    const {'1': 'NO_SATS', '2': 5},
    const {'1': 'OBSTRUCTED', '2': 6},
    const {'1': 'NO_DOWNLINK', '2': 7},
    const {'1': 'NO_PINGS', '2': 8},
    const {'1': 'ACTUATOR_ACTIVITY', '2': 9},
    const {'1': 'CABLE_TEST', '2': 10},
    const {'1': 'SLEEPING', '2': 11},
    const {'1': 'MOVING_WHILE_NOT_ALLOWED', '2': 12},
  ],
};

/// Descriptor for `DishOutage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishOutageDescriptor = $convert.base64Decode('CgpEaXNoT3V0YWdlEjkKBWNhdXNlGAEgASgOMiMuU3BhY2VYLkFQSS5EZXZpY2UuRGlzaE91dGFnZS5DYXVzZVIFY2F1c2USLAoSc3RhcnRfdGltZXN0YW1wX25zGAIgASgDUhBzdGFydFRpbWVzdGFtcE5zEh8KC2R1cmF0aW9uX25zGAMgASgEUgpkdXJhdGlvbk5zEh0KCmRpZF9zd2l0Y2gYBCABKAhSCWRpZFN3aXRjaCLjAQoFQ2F1c2USCwoHVU5LTk9XThAAEgsKB0JPT1RJTkcQARIKCgZTVE9XRUQQAhIUChBUSEVSTUFMX1NIVVRET1dOEAMSDwoLTk9fU0NIRURVTEUQBBILCgdOT19TQVRTEAUSDgoKT0JTVFJVQ1RFRBAGEg8KC05PX0RPV05MSU5LEAcSDAoITk9fUElOR1MQCBIVChFBQ1RVQVRPUl9BQ1RJVklUWRAJEg4KCkNBQkxFX1RFU1QQChIMCghTTEVFUElORxALEhwKGE1PVklOR19XSElMRV9OT1RfQUxMT1dFRBAM');
@$core.Deprecated('Use dishGpsStatsDescriptor instead')
const DishGpsStats$json = const {
  '1': 'DishGpsStats',
  '2': const [
    const {'1': 'gps_valid', '3': 1, '4': 1, '5': 8, '10': 'gpsValid'},
    const {'1': 'gps_sats', '3': 2, '4': 1, '5': 13, '10': 'gpsSats'},
    const {'1': 'no_sats_after_ttff', '3': 3, '4': 1, '5': 8, '10': 'noSatsAfterTtff'},
    const {'1': 'inhibit_gps', '3': 4, '4': 1, '5': 8, '10': 'inhibitGps'},
  ],
};

/// Descriptor for `DishGpsStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGpsStatsDescriptor = $convert.base64Decode('CgxEaXNoR3BzU3RhdHMSGwoJZ3BzX3ZhbGlkGAEgASgIUghncHNWYWxpZBIZCghncHNfc2F0cxgCIAEoDVIHZ3BzU2F0cxIrChJub19zYXRzX2FmdGVyX3R0ZmYYAyABKAhSD25vU2F0c0FmdGVyVHRmZhIfCgtpbmhpYml0X2dwcxgEIAEoCFIKaW5oaWJpdEdwcw==');
@$core.Deprecated('Use dishReadyStatesDescriptor instead')
const DishReadyStates$json = const {
  '1': 'DishReadyStates',
  '2': const [
    const {'1': 'cady', '3': 1, '4': 1, '5': 8, '10': 'cady'},
    const {'1': 'scp', '3': 2, '4': 1, '5': 8, '10': 'scp'},
    const {'1': 'l1l2', '3': 3, '4': 1, '5': 8, '10': 'l1l2'},
    const {'1': 'xphy', '3': 4, '4': 1, '5': 8, '10': 'xphy'},
    const {'1': 'aap', '3': 5, '4': 1, '5': 8, '10': 'aap'},
    const {'1': 'rf', '3': 6, '4': 1, '5': 8, '10': 'rf'},
  ],
};

/// Descriptor for `DishReadyStates`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishReadyStatesDescriptor = $convert.base64Decode('Cg9EaXNoUmVhZHlTdGF0ZXMSEgoEY2FkeRgBIAEoCFIEY2FkeRIQCgNzY3AYAiABKAhSA3NjcBISCgRsMWwyGAMgASgIUgRsMWwyEhIKBHhwaHkYBCABKAhSBHhwaHkSEAoDYWFwGAUgASgIUgNhYXASDgoCcmYYBiABKAhSAnJm');
@$core.Deprecated('Use softwareUpdateStatsDescriptor instead')
const SoftwareUpdateStats$json = const {
  '1': 'SoftwareUpdateStats',
  '2': const [
    const {'1': 'software_update_state', '3': 1, '4': 1, '5': 14, '6': '.SpaceX.API.Device.SoftwareUpdateState', '10': 'softwareUpdateState'},
    const {'1': 'software_update_progress', '3': 2, '4': 1, '5': 2, '10': 'softwareUpdateProgress'},
  ],
};

/// Descriptor for `SoftwareUpdateStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List softwareUpdateStatsDescriptor = $convert.base64Decode('ChNTb2Z0d2FyZVVwZGF0ZVN0YXRzEloKFXNvZnR3YXJlX3VwZGF0ZV9zdGF0ZRgBIAEoDjImLlNwYWNlWC5BUEkuRGV2aWNlLlNvZnR3YXJlVXBkYXRlU3RhdGVSE3NvZnR3YXJlVXBkYXRlU3RhdGUSOAoYc29mdHdhcmVfdXBkYXRlX3Byb2dyZXNzGAIgASgCUhZzb2Z0d2FyZVVwZGF0ZVByb2dyZXNz');
@$core.Deprecated('Use alignmentStatsDescriptor instead')
const AlignmentStats$json = const {
  '1': 'AlignmentStats',
  '2': const [
    const {'1': 'has_actuators', '3': 1, '4': 1, '5': 14, '6': '.SpaceX.API.Device.HasActuators', '10': 'hasActuators'},
    const {'1': 'actuator_state', '3': 2, '4': 1, '5': 14, '6': '.SpaceX.API.Device.ActuatorState', '10': 'actuatorState'},
    const {'1': 'tilt_angle_deg', '3': 3, '4': 1, '5': 2, '10': 'tiltAngleDeg'},
    const {'1': 'boresight_azimuth_deg', '3': 4, '4': 1, '5': 2, '10': 'boresightAzimuthDeg'},
    const {'1': 'boresight_elevation_deg', '3': 5, '4': 1, '5': 2, '10': 'boresightElevationDeg'},
    const {'1': 'attitude_estimation_state', '3': 6, '4': 1, '5': 14, '6': '.SpaceX.API.Device.AttitudeEstimationState', '10': 'attitudeEstimationState'},
    const {'1': 'attitude_uncertainty_deg', '3': 7, '4': 1, '5': 2, '10': 'attitudeUncertaintyDeg'},
  ],
};

/// Descriptor for `AlignmentStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alignmentStatsDescriptor = $convert.base64Decode('Cg5BbGlnbm1lbnRTdGF0cxJECg1oYXNfYWN0dWF0b3JzGAEgASgOMh8uU3BhY2VYLkFQSS5EZXZpY2UuSGFzQWN0dWF0b3JzUgxoYXNBY3R1YXRvcnMSRwoOYWN0dWF0b3Jfc3RhdGUYAiABKA4yIC5TcGFjZVguQVBJLkRldmljZS5BY3R1YXRvclN0YXRlUg1hY3R1YXRvclN0YXRlEiQKDnRpbHRfYW5nbGVfZGVnGAMgASgCUgx0aWx0QW5nbGVEZWcSMgoVYm9yZXNpZ2h0X2F6aW11dGhfZGVnGAQgASgCUhNib3Jlc2lnaHRBemltdXRoRGVnEjYKF2JvcmVzaWdodF9lbGV2YXRpb25fZGVnGAUgASgCUhVib3Jlc2lnaHRFbGV2YXRpb25EZWcSZgoZYXR0aXR1ZGVfZXN0aW1hdGlvbl9zdGF0ZRgGIAEoDjIqLlNwYWNlWC5BUEkuRGV2aWNlLkF0dGl0dWRlRXN0aW1hdGlvblN0YXRlUhdhdHRpdHVkZUVzdGltYXRpb25TdGF0ZRI4ChhhdHRpdHVkZV91bmNlcnRhaW50eV9kZWcYByABKAJSFmF0dGl0dWRlVW5jZXJ0YWludHlEZWc=');
@$core.Deprecated('Use dishAuthenticateResponseDescriptor instead')
const DishAuthenticateResponse$json = const {
  '1': 'DishAuthenticateResponse',
  '2': const [
    const {'1': 'dish', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.ChallengeResponse', '10': 'dish'},
  ],
};

/// Descriptor for `DishAuthenticateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishAuthenticateResponseDescriptor = $convert.base64Decode('ChhEaXNoQXV0aGVudGljYXRlUmVzcG9uc2USOAoEZGlzaBgCIAEoCzIkLlNwYWNlWC5BUEkuRGV2aWNlLkNoYWxsZW5nZVJlc3BvbnNlUgRkaXNo');
@$core.Deprecated('Use challengeResponseDescriptor instead')
const ChallengeResponse$json = const {
  '1': 'ChallengeResponse',
  '2': const [
    const {'1': 'signature', '3': 1, '4': 1, '5': 12, '10': 'signature'},
    const {'1': 'certificate_chain', '3': 2, '4': 1, '5': 12, '10': 'certificateChain'},
  ],
};

/// Descriptor for `ChallengeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List challengeResponseDescriptor = $convert.base64Decode('ChFDaGFsbGVuZ2VSZXNwb25zZRIcCglzaWduYXR1cmUYASABKAxSCXNpZ25hdHVyZRIrChFjZXJ0aWZpY2F0ZV9jaGFpbhgCIAEoDFIQY2VydGlmaWNhdGVDaGFpbg==');
@$core.Deprecated('Use dishGetHistoryResponseDescriptor instead')
const DishGetHistoryResponse$json = const {
  '1': 'DishGetHistoryResponse',
  '2': const [
    const {'1': 'current', '3': 1, '4': 1, '5': 4, '10': 'current'},
    const {'1': 'pop_ping_drop_rate', '3': 1001, '4': 3, '5': 2, '10': 'popPingDropRate'},
    const {'1': 'pop_ping_latency_ms', '3': 1002, '4': 3, '5': 2, '10': 'popPingLatencyMs'},
    const {'1': 'downlink_throughput_bps', '3': 1003, '4': 3, '5': 2, '10': 'downlinkThroughputBps'},
    const {'1': 'uplink_throughput_bps', '3': 1004, '4': 3, '5': 2, '10': 'uplinkThroughputBps'},
    const {'1': 'outages', '3': 1009, '4': 3, '5': 11, '6': '.SpaceX.API.Device.DishOutage', '10': 'outages'},
  ],
  '9': const [
    const {'1': 1005, '2': 1006},
    const {'1': 1006, '2': 1007},
    const {'1': 1007, '2': 1008},
    const {'1': 1008, '2': 1009},
  ],
};

/// Descriptor for `DishGetHistoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGetHistoryResponseDescriptor = $convert.base64Decode('ChZEaXNoR2V0SGlzdG9yeVJlc3BvbnNlEhgKB2N1cnJlbnQYASABKARSB2N1cnJlbnQSLAoScG9wX3BpbmdfZHJvcF9yYXRlGOkHIAMoAlIPcG9wUGluZ0Ryb3BSYXRlEi4KE3BvcF9waW5nX2xhdGVuY3lfbXMY6gcgAygCUhBwb3BQaW5nTGF0ZW5jeU1zEjcKF2Rvd25saW5rX3Rocm91Z2hwdXRfYnBzGOsHIAMoAlIVZG93bmxpbmtUaHJvdWdocHV0QnBzEjMKFXVwbGlua190aHJvdWdocHV0X2JwcxjsByADKAJSE3VwbGlua1Rocm91Z2hwdXRCcHMSOAoHb3V0YWdlcxjxByADKAsyHS5TcGFjZVguQVBJLkRldmljZS5EaXNoT3V0YWdlUgdvdXRhZ2VzSgYI7QcQ7gdKBgjuBxDvB0oGCO8HEPAHSgYI8AcQ8Qc=');
@$core.Deprecated('Use dishSetEmcResponseDescriptor instead')
const DishSetEmcResponse$json = const {
  '1': 'DishSetEmcResponse',
};

/// Descriptor for `DishSetEmcResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishSetEmcResponseDescriptor = $convert.base64Decode('ChJEaXNoU2V0RW1jUmVzcG9uc2U=');
@$core.Deprecated('Use dishGetObstructionMapResponseDescriptor instead')
const DishGetObstructionMapResponse$json = const {
  '1': 'DishGetObstructionMapResponse',
  '2': const [
    const {'1': 'num_rows', '3': 1, '4': 1, '5': 13, '10': 'numRows'},
    const {'1': 'num_cols', '3': 2, '4': 1, '5': 13, '10': 'numCols'},
    const {'1': 'snr', '3': 3, '4': 3, '5': 2, '10': 'snr'},
    const {'1': 'min_elevation_deg', '3': 4, '4': 1, '5': 2, '10': 'minElevationDeg'},
  ],
};

/// Descriptor for `DishGetObstructionMapResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGetObstructionMapResponseDescriptor = $convert.base64Decode('Ch1EaXNoR2V0T2JzdHJ1Y3Rpb25NYXBSZXNwb25zZRIZCghudW1fcm93cxgBIAEoDVIHbnVtUm93cxIZCghudW1fY29scxgCIAEoDVIHbnVtQ29scxIQCgNzbnIYAyADKAJSA3NuchIqChFtaW5fZWxldmF0aW9uX2RlZxgEIAEoAlIPbWluRWxldmF0aW9uRGVn');
@$core.Deprecated('Use dishGetEmcResponseDescriptor instead')
const DishGetEmcResponse$json = const {
  '1': 'DishGetEmcResponse',
  '2': const [
    const {'1': 'uuid', '3': 2, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'timestamp', '3': 3, '4': 1, '5': 4, '10': 'timestamp'},
    const {'1': 'cplane_updates', '3': 11, '4': 1, '5': 13, '10': 'cplaneUpdates'},
    const {'1': 'gps_latitude', '3': 16, '4': 1, '5': 1, '10': 'gpsLatitude'},
    const {'1': 'gps_longitude', '3': 17, '4': 1, '5': 1, '10': 'gpsLongitude'},
    const {'1': 'gps_pdop', '3': 18, '4': 1, '5': 1, '10': 'gpsPdop'},
    const {'1': 'rf_mode', '3': 19, '4': 1, '5': 13, '10': 'rfMode'},
    const {'1': 'phi', '3': 20, '4': 1, '5': 1, '10': 'phi'},
    const {'1': 'theta', '3': 21, '4': 1, '5': 1, '10': 'theta'},
    const {'1': 'rx_channel', '3': 22, '4': 1, '5': 13, '10': 'rxChannel'},
    const {'1': 'tx_channel', '3': 23, '4': 1, '5': 13, '10': 'txChannel'},
    const {'1': 't_dbf_max', '3': 24, '4': 1, '5': 2, '10': 'tDbfMax'},
    const {'1': 't_center', '3': 25, '4': 1, '5': 1, '10': 'tCenter'},
    const {'1': 'auto_power_snow_melt_enabled', '3': 30, '4': 1, '5': 8, '10': 'autoPowerSnowMeltEnabled'},
    const {'1': 'voltage', '3': 32, '4': 1, '5': 1, '10': 'voltage'},
    const {'1': 'rx_beam_state', '3': 33, '4': 1, '5': 13, '10': 'rxBeamState'},
    const {'1': 'tx_beam_state', '3': 34, '4': 1, '5': 13, '10': 'txBeamState'},
    const {'1': 'half_duplex_state', '3': 35, '4': 1, '5': 13, '10': 'halfDuplexState'},
    const {'1': 'manual_tilt_enabled', '3': 36, '4': 1, '5': 8, '10': 'manualTiltEnabled'},
    const {'1': 'tilt_angle', '3': 37, '4': 1, '5': 1, '10': 'tiltAngle'},
    const {'1': 'pll_tx_lock_detected', '3': 38, '4': 1, '5': 13, '10': 'pllTxLockDetected'},
    const {'1': 'eirp_exceeded_threshold', '3': 39, '4': 1, '5': 8, '10': 'eirpExceededThreshold'},
    const {'1': 'eirp_scale_override', '3': 40, '4': 1, '5': 2, '10': 'eirpScaleOverride'},
    const {'1': 'idle_override_enabled', '3': 41, '4': 1, '5': 8, '10': 'idleOverrideEnabled'},
    const {'1': 'theta_override_enabled', '3': 42, '4': 1, '5': 8, '10': 'thetaOverrideEnabled'},
    const {'1': 'theta_override_value', '3': 43, '4': 1, '5': 1, '10': 'thetaOverrideValue'},
    const {'1': 'phi_override_enabled', '3': 44, '4': 1, '5': 8, '10': 'phiOverrideEnabled'},
    const {'1': 'phi_override_value', '3': 45, '4': 1, '5': 1, '10': 'phiOverrideValue'},
    const {'1': 'rx_chan_override_value', '3': 46, '4': 1, '5': 13, '10': 'rxChanOverrideValue'},
    const {'1': 'tx_chan_override_value', '3': 47, '4': 1, '5': 13, '10': 'txChanOverrideValue'},
    const {'1': 'sky_search_override_enabled', '3': 48, '4': 1, '5': 8, '10': 'skySearchOverrideEnabled'},
    const {'1': 'fast_switching_enabled', '3': 49, '4': 1, '5': 8, '10': 'fastSwitchingEnabled'},
    const {'1': 'modulation_override_value', '3': 50, '4': 1, '5': 13, '10': 'modulationOverrideValue'},
    const {'1': 'force_eirp_failure', '3': 51, '4': 1, '5': 8, '10': 'forceEirpFailure'},
    const {'1': 'force_pll_unlock', '3': 52, '4': 1, '5': 8, '10': 'forcePllUnlock'},
    const {'1': 'ut_ine_success', '3': 53, '4': 1, '5': 13, '10': 'utIneSuccess'},
    const {'1': 'rf_ready', '3': 54, '4': 1, '5': 8, '10': 'rfReady'},
    const {'1': 'tilt_to_stowed', '3': 55, '4': 1, '5': 8, '10': 'tiltToStowed'},
    const {'1': 'reboot', '3': 56, '4': 1, '5': 8, '10': 'reboot'},
    const {'1': 'continuous_motor_test', '3': 57, '4': 1, '5': 8, '10': 'continuousMotorTest'},
    const {'1': 'distance_override_meters', '3': 58, '4': 1, '5': 1, '10': 'distanceOverrideMeters'},
    const {'1': 'amplitude_taper_override', '3': 59, '4': 1, '5': 13, '10': 'amplitudeTaperOverride'},
    const {'1': 'amplitude_taper_enabled', '3': 60, '4': 1, '5': 8, '10': 'amplitudeTaperEnabled'},
    const {'1': 'amplitude_taper_scale', '3': 61, '4': 1, '5': 1, '10': 'amplitudeTaperScale'},
    const {'1': 'country_code_override', '3': 62, '4': 1, '5': 13, '10': 'countryCodeOverride'},
    const {'1': 'max_pointing_distance', '3': 63, '4': 1, '5': 1, '10': 'maxPointingDistance'},
    const {'1': 'distance_scaling_factor', '3': 64, '4': 1, '5': 1, '10': 'distanceScalingFactor'},
    const {'1': 'tx_duty_cycle_override', '3': 65, '4': 1, '5': 5, '10': 'txDutyCycleOverride'},
    const {'1': 'rx_duty_cycle_override', '3': 66, '4': 1, '5': 5, '10': 'rxDutyCycleOverride'},
    const {'1': 'tx_time_ms', '3': 67, '4': 1, '5': 2, '10': 'txTimeMs'},
    const {'1': 'rx_time_ms', '3': 68, '4': 1, '5': 2, '10': 'rxTimeMs'},
    const {'1': 'eirp_legal_limit_dbw', '3': 69, '4': 1, '5': 1, '10': 'eirpLegalLimitDbw'},
    const {'1': 'eirp_legal_limit_dbw_override', '3': 70, '4': 1, '5': 1, '10': 'eirpLegalLimitDbwOverride'},
  ],
  '9': const [
    const {'1': 26, '2': 30},
  ],
  '10': const ['additional_heating', 'baseline_heating', 'target_total_heating', 'total_heating'],
};

/// Descriptor for `DishGetEmcResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGetEmcResponseDescriptor = $convert.base64Decode('ChJEaXNoR2V0RW1jUmVzcG9uc2USEgoEdXVpZBgCIAEoCVIEdXVpZBIcCgl0aW1lc3RhbXAYAyABKARSCXRpbWVzdGFtcBIlCg5jcGxhbmVfdXBkYXRlcxgLIAEoDVINY3BsYW5lVXBkYXRlcxIhCgxncHNfbGF0aXR1ZGUYECABKAFSC2dwc0xhdGl0dWRlEiMKDWdwc19sb25naXR1ZGUYESABKAFSDGdwc0xvbmdpdHVkZRIZCghncHNfcGRvcBgSIAEoAVIHZ3BzUGRvcBIXCgdyZl9tb2RlGBMgASgNUgZyZk1vZGUSEAoDcGhpGBQgASgBUgNwaGkSFAoFdGhldGEYFSABKAFSBXRoZXRhEh0KCnJ4X2NoYW5uZWwYFiABKA1SCXJ4Q2hhbm5lbBIdCgp0eF9jaGFubmVsGBcgASgNUgl0eENoYW5uZWwSGgoJdF9kYmZfbWF4GBggASgCUgd0RGJmTWF4EhkKCHRfY2VudGVyGBkgASgBUgd0Q2VudGVyEj4KHGF1dG9fcG93ZXJfc25vd19tZWx0X2VuYWJsZWQYHiABKAhSGGF1dG9Qb3dlclNub3dNZWx0RW5hYmxlZBIYCgd2b2x0YWdlGCAgASgBUgd2b2x0YWdlEiIKDXJ4X2JlYW1fc3RhdGUYISABKA1SC3J4QmVhbVN0YXRlEiIKDXR4X2JlYW1fc3RhdGUYIiABKA1SC3R4QmVhbVN0YXRlEioKEWhhbGZfZHVwbGV4X3N0YXRlGCMgASgNUg9oYWxmRHVwbGV4U3RhdGUSLgoTbWFudWFsX3RpbHRfZW5hYmxlZBgkIAEoCFIRbWFudWFsVGlsdEVuYWJsZWQSHQoKdGlsdF9hbmdsZRglIAEoAVIJdGlsdEFuZ2xlEi8KFHBsbF90eF9sb2NrX2RldGVjdGVkGCYgASgNUhFwbGxUeExvY2tEZXRlY3RlZBI2ChdlaXJwX2V4Y2VlZGVkX3RocmVzaG9sZBgnIAEoCFIVZWlycEV4Y2VlZGVkVGhyZXNob2xkEi4KE2VpcnBfc2NhbGVfb3ZlcnJpZGUYKCABKAJSEWVpcnBTY2FsZU92ZXJyaWRlEjIKFWlkbGVfb3ZlcnJpZGVfZW5hYmxlZBgpIAEoCFITaWRsZU92ZXJyaWRlRW5hYmxlZBI0ChZ0aGV0YV9vdmVycmlkZV9lbmFibGVkGCogASgIUhR0aGV0YU92ZXJyaWRlRW5hYmxlZBIwChR0aGV0YV9vdmVycmlkZV92YWx1ZRgrIAEoAVISdGhldGFPdmVycmlkZVZhbHVlEjAKFHBoaV9vdmVycmlkZV9lbmFibGVkGCwgASgIUhJwaGlPdmVycmlkZUVuYWJsZWQSLAoScGhpX292ZXJyaWRlX3ZhbHVlGC0gASgBUhBwaGlPdmVycmlkZVZhbHVlEjMKFnJ4X2NoYW5fb3ZlcnJpZGVfdmFsdWUYLiABKA1SE3J4Q2hhbk92ZXJyaWRlVmFsdWUSMwoWdHhfY2hhbl9vdmVycmlkZV92YWx1ZRgvIAEoDVITdHhDaGFuT3ZlcnJpZGVWYWx1ZRI9Chtza3lfc2VhcmNoX292ZXJyaWRlX2VuYWJsZWQYMCABKAhSGHNreVNlYXJjaE92ZXJyaWRlRW5hYmxlZBI0ChZmYXN0X3N3aXRjaGluZ19lbmFibGVkGDEgASgIUhRmYXN0U3dpdGNoaW5nRW5hYmxlZBI6Chltb2R1bGF0aW9uX292ZXJyaWRlX3ZhbHVlGDIgASgNUhdtb2R1bGF0aW9uT3ZlcnJpZGVWYWx1ZRIsChJmb3JjZV9laXJwX2ZhaWx1cmUYMyABKAhSEGZvcmNlRWlycEZhaWx1cmUSKAoQZm9yY2VfcGxsX3VubG9jaxg0IAEoCFIOZm9yY2VQbGxVbmxvY2sSJAoOdXRfaW5lX3N1Y2Nlc3MYNSABKA1SDHV0SW5lU3VjY2VzcxIZCghyZl9yZWFkeRg2IAEoCFIHcmZSZWFkeRIkCg50aWx0X3RvX3N0b3dlZBg3IAEoCFIMdGlsdFRvU3Rvd2VkEhYKBnJlYm9vdBg4IAEoCFIGcmVib290EjIKFWNvbnRpbnVvdXNfbW90b3JfdGVzdBg5IAEoCFITY29udGludW91c01vdG9yVGVzdBI4ChhkaXN0YW5jZV9vdmVycmlkZV9tZXRlcnMYOiABKAFSFmRpc3RhbmNlT3ZlcnJpZGVNZXRlcnMSOAoYYW1wbGl0dWRlX3RhcGVyX292ZXJyaWRlGDsgASgNUhZhbXBsaXR1ZGVUYXBlck92ZXJyaWRlEjYKF2FtcGxpdHVkZV90YXBlcl9lbmFibGVkGDwgASgIUhVhbXBsaXR1ZGVUYXBlckVuYWJsZWQSMgoVYW1wbGl0dWRlX3RhcGVyX3NjYWxlGD0gASgBUhNhbXBsaXR1ZGVUYXBlclNjYWxlEjIKFWNvdW50cnlfY29kZV9vdmVycmlkZRg+IAEoDVITY291bnRyeUNvZGVPdmVycmlkZRIyChVtYXhfcG9pbnRpbmdfZGlzdGFuY2UYPyABKAFSE21heFBvaW50aW5nRGlzdGFuY2USNgoXZGlzdGFuY2Vfc2NhbGluZ19mYWN0b3IYQCABKAFSFWRpc3RhbmNlU2NhbGluZ0ZhY3RvchIzChZ0eF9kdXR5X2N5Y2xlX292ZXJyaWRlGEEgASgFUhN0eER1dHlDeWNsZU92ZXJyaWRlEjMKFnJ4X2R1dHlfY3ljbGVfb3ZlcnJpZGUYQiABKAVSE3J4RHV0eUN5Y2xlT3ZlcnJpZGUSHAoKdHhfdGltZV9tcxhDIAEoAlIIdHhUaW1lTXMSHAoKcnhfdGltZV9tcxhEIAEoAlIIcnhUaW1lTXMSLwoUZWlycF9sZWdhbF9saW1pdF9kYncYRSABKAFSEWVpcnBMZWdhbExpbWl0RGJ3EkAKHWVpcnBfbGVnYWxfbGltaXRfZGJ3X292ZXJyaWRlGEYgASgBUhllaXJwTGVnYWxMaW1pdERid092ZXJyaWRlSgQIGhAeUhJhZGRpdGlvbmFsX2hlYXRpbmdSEGJhc2VsaW5lX2hlYXRpbmdSFHRhcmdldF90b3RhbF9oZWF0aW5nUg10b3RhbF9oZWF0aW5n');
@$core.Deprecated('Use dishSetConfigResponseDescriptor instead')
const DishSetConfigResponse$json = const {
  '1': 'DishSetConfigResponse',
  '2': const [
    const {'1': 'updated_dish_config', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishConfig', '10': 'updatedDishConfig'},
  ],
};

/// Descriptor for `DishSetConfigResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishSetConfigResponseDescriptor = $convert.base64Decode('ChVEaXNoU2V0Q29uZmlnUmVzcG9uc2USTQoTdXBkYXRlZF9kaXNoX2NvbmZpZxgBIAEoCzIdLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hDb25maWdSEXVwZGF0ZWREaXNoQ29uZmln');
@$core.Deprecated('Use dishGetConfigResponseDescriptor instead')
const DishGetConfigResponse$json = const {
  '1': 'DishGetConfigResponse',
  '2': const [
    const {'1': 'dish_config', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishConfig', '10': 'dishConfig'},
  ],
};

/// Descriptor for `DishGetConfigResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGetConfigResponseDescriptor = $convert.base64Decode('ChVEaXNoR2V0Q29uZmlnUmVzcG9uc2USPgoLZGlzaF9jb25maWcYASABKAsyHS5TcGFjZVguQVBJLkRldmljZS5EaXNoQ29uZmlnUgpkaXNoQ29uZmln');
@$core.Deprecated('Use startDishSelfTestResponseDescriptor instead')
const StartDishSelfTestResponse$json = const {
  '1': 'StartDishSelfTestResponse',
};

/// Descriptor for `StartDishSelfTestResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startDishSelfTestResponseDescriptor = $convert.base64Decode('ChlTdGFydERpc2hTZWxmVGVzdFJlc3BvbnNl');
@$core.Deprecated('Use dishInhibitGpsResponseDescriptor instead')
const DishInhibitGpsResponse$json = const {
  '1': 'DishInhibitGpsResponse',
  '2': const [
    const {'1': 'inhibit_gps', '3': 1, '4': 1, '5': 8, '10': 'inhibitGps'},
  ],
};

/// Descriptor for `DishInhibitGpsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishInhibitGpsResponseDescriptor = $convert.base64Decode('ChZEaXNoSW5oaWJpdEdwc1Jlc3BvbnNlEh8KC2luaGliaXRfZ3BzGAEgASgIUgppbmhpYml0R3Bz');
@$core.Deprecated('Use wifiSetConfigResponseDescriptor instead')
const WifiSetConfigResponse$json = const {
  '1': 'WifiSetConfigResponse',
  '2': const [
    const {'1': 'updated_wifi_config', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiConfig', '10': 'updatedWifiConfig'},
  ],
};

/// Descriptor for `WifiSetConfigResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSetConfigResponseDescriptor = $convert.base64Decode('ChVXaWZpU2V0Q29uZmlnUmVzcG9uc2USTQoTdXBkYXRlZF93aWZpX2NvbmZpZxgBIAEoCzIdLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlDb25maWdSEXVwZGF0ZWRXaWZpQ29uZmln');
@$core.Deprecated('Use wifiGetClientsResponseDescriptor instead')
const WifiGetClientsResponse$json = const {
  '1': 'WifiGetClientsResponse',
  '2': const [
    const {'1': 'clients', '3': 1, '4': 3, '5': 11, '6': '.SpaceX.API.Device.WifiClient', '10': 'clients'},
    const {'1': 'has_client_index', '3': 2, '4': 1, '5': 8, '10': 'hasClientIndex'},
    const {'1': 'client_index', '3': 3, '4': 1, '5': 5, '10': 'clientIndex'},
  ],
};

/// Descriptor for `WifiGetClientsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetClientsResponseDescriptor = $convert.base64Decode('ChZXaWZpR2V0Q2xpZW50c1Jlc3BvbnNlEjcKB2NsaWVudHMYASADKAsyHS5TcGFjZVguQVBJLkRldmljZS5XaWZpQ2xpZW50UgdjbGllbnRzEigKEGhhc19jbGllbnRfaW5kZXgYAiABKAhSDmhhc0NsaWVudEluZGV4EiEKDGNsaWVudF9pbmRleBgDIAEoBVILY2xpZW50SW5kZXg=');
@$core.Deprecated('Use wifiClientDescriptor instead')
const WifiClient$json = const {
  '1': 'WifiClient',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'mac_address', '3': 2, '4': 1, '5': 9, '10': 'macAddress'},
    const {'1': 'ip_address', '3': 3, '4': 1, '5': 9, '10': 'ipAddress'},
    const {'1': 'signal_strength', '3': 4, '4': 1, '5': 2, '10': 'signalStrength'},
    const {'1': 'rx_stats', '3': 5, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiClient.RxStats', '10': 'rxStats'},
    const {'1': 'tx_stats', '3': 6, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiClient.TxStats', '10': 'txStats'},
    const {'1': 'associated_time_s', '3': 7, '4': 1, '5': 13, '10': 'associatedTimeS'},
    const {'1': 'mode_str', '3': 8, '4': 1, '5': 9, '10': 'modeStr'},
    const {'1': 'iface', '3': 9, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiClient.Interface', '10': 'iface'},
    const {'1': 'snr', '3': 10, '4': 1, '5': 2, '10': 'snr'},
    const {'1': 'psmode', '3': 11, '4': 1, '5': 5, '10': 'psmode'},
    const {'1': 'channel_width', '3': 12, '4': 1, '5': 13, '10': 'channelWidth'},
    const {'1': 'upstream_mac_address', '3': 13, '4': 1, '5': 9, '10': 'upstreamMacAddress'},
    const {'1': 'role', '3': 14, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiClient.Role', '10': 'role'},
    const {'1': 'device_id', '3': 15, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'swq_checks', '3': 16, '4': 1, '5': 13, '10': 'swqChecks'},
    const {'1': 'swq_checks_non_empty', '3': 17, '4': 1, '5': 13, '10': 'swqChecksNonEmpty'},
    const {'1': 'mib_steer_state', '3': 18, '4': 1, '5': 13, '10': 'mibSteerState'},
    const {'1': 'mib_steer_method', '3': 19, '4': 1, '5': 13, '10': 'mibSteerMethod'},
    const {'1': 'btm_requests', '3': 20, '4': 1, '5': 13, '10': 'btmRequests'},
    const {'1': 'btm_requests_success', '3': 21, '4': 1, '5': 13, '10': 'btmRequestsSuccess'},
    const {'1': 'domain', '3': 22, '4': 1, '5': 9, '10': 'domain'},
    const {'1': 'dot11v_support', '3': 23, '4': 1, '5': 8, '10': 'dot11vSupport'},
    const {'1': 'iface_name', '3': 26, '4': 1, '5': 9, '10': 'ifaceName'},
    const {'1': 'steer_req_success_last_1h', '3': 27, '4': 1, '5': 13, '10': 'steerReqSuccessLast1h'},
    const {'1': 'steer_req_fail_last_1h', '3': 28, '4': 1, '5': 13, '10': 'steerReqFailLast1h'},
    const {'1': 'steer_req_fail_and_dissoc_last_1h', '3': 29, '4': 1, '5': 13, '10': 'steerReqFailAndDissocLast1h'},
    const {'1': 'steer_state', '3': 30, '4': 1, '5': 13, '10': 'steerState'},
    const {'1': 'given_name', '3': 31, '4': 1, '5': 9, '10': 'givenName'},
    const {'1': 'hops_from_controller', '3': 32, '4': 1, '5': 13, '10': 'hopsFromController'},
    const {'1': 'est_tx_rate_mbps_from_controller', '3': 33, '4': 1, '5': 2, '10': 'estTxRateMbpsFromController'},
    const {'1': 'est_rx_rate_mbps_from_controller', '3': 34, '4': 1, '5': 2, '10': 'estRxRateMbpsFromController'},
    const {'1': 'hardware_version', '3': 37, '4': 1, '5': 9, '10': 'hardwareVersion'},
    const {'1': 'software_version', '3': 38, '4': 1, '5': 9, '10': 'softwareVersion'},
    const {'1': 'api_version', '3': 39, '4': 1, '5': 13, '10': 'apiVersion'},
    const {'1': 'ping_metrics', '3': 40, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiClient.PingMetrics', '10': 'pingMetrics'},
    const {'1': 'ipv6_addresses', '3': 41, '4': 3, '5': 9, '10': 'ipv6Addresses'},
  ],
  '3': const [WifiClient_PingMetrics$json, WifiClient_RxStats$json, WifiClient_TxStats$json],
  '4': const [WifiClient_Interface$json, WifiClient_Role$json],
};

@$core.Deprecated('Use wifiClientDescriptor instead')
const WifiClient_PingMetrics$json = const {
  '1': 'PingMetrics',
  '2': const [
    const {'1': 'in_unhappy_hour_2s', '3': 1, '4': 1, '5': 8, '10': 'inUnhappyHour2s'},
    const {'1': 'in_unhappy_hour_5s', '3': 2, '4': 1, '5': 8, '10': 'inUnhappyHour5s'},
    const {'1': 'drop_rate_5m', '3': 3, '4': 1, '5': 2, '10': 'dropRate5m'},
    const {'1': 'latency_5m', '3': 4, '4': 1, '5': 2, '10': 'latency5m'},
  ],
};

@$core.Deprecated('Use wifiClientDescriptor instead')
const WifiClient_RxStats$json = const {
  '1': 'RxStats',
  '2': const [
    const {'1': 'bytes', '3': 1, '4': 1, '5': 4, '10': 'bytes'},
    const {'1': 'count_errors', '3': 2, '4': 1, '5': 4, '10': 'countErrors'},
    const {'1': 'nss', '3': 3, '4': 1, '5': 5, '10': 'nss'},
    const {'1': 'mcs', '3': 5, '4': 1, '5': 13, '10': 'mcs'},
    const {'1': 'bandwidth', '3': 6, '4': 1, '5': 13, '10': 'bandwidth'},
    const {'1': 'guard_ns', '3': 7, '4': 1, '5': 13, '10': 'guardNs'},
    const {'1': 'rate_mbps', '3': 8, '4': 1, '5': 13, '10': 'rateMbps'},
    const {'1': 'airtime_fraction_last_1s', '3': 9, '4': 1, '5': 2, '10': 'airtimeFractionLast1s'},
    const {'1': 'sampled_packets', '3': 10, '4': 1, '5': 13, '10': 'sampledPackets'},
    const {'1': 'sampled_packets_retried', '3': 11, '4': 1, '5': 13, '10': 'sampledPacketsRetried'},
    const {'1': 'sampled_packets_dropped', '3': 12, '4': 1, '5': 13, '10': 'sampledPacketsDropped'},
    const {'1': 'phy_mode', '3': 13, '4': 1, '5': 13, '10': 'phyMode'},
  ],
  '9': const [
    const {'1': 4, '2': 5},
  ],
};

@$core.Deprecated('Use wifiClientDescriptor instead')
const WifiClient_TxStats$json = const {
  '1': 'TxStats',
  '2': const [
    const {'1': 'bytes', '3': 1, '4': 1, '5': 4, '10': 'bytes'},
    const {'1': 'success_bytes', '3': 2, '4': 1, '5': 4, '10': 'successBytes'},
    const {'1': 'nss', '3': 3, '4': 1, '5': 5, '10': 'nss'},
    const {'1': 'mcs', '3': 5, '4': 1, '5': 13, '10': 'mcs'},
    const {'1': 'bandwidth', '3': 6, '4': 1, '5': 13, '10': 'bandwidth'},
    const {'1': 'guard_ns', '3': 7, '4': 1, '5': 13, '10': 'guardNs'},
    const {'1': 'rate_mbps', '3': 8, '4': 1, '5': 13, '10': 'rateMbps'},
    const {'1': 'airtime_fraction_last_1s', '3': 9, '4': 1, '5': 2, '10': 'airtimeFractionLast1s'},
    const {'1': 'phy_mode', '3': 10, '4': 1, '5': 13, '10': 'phyMode'},
  ],
  '9': const [
    const {'1': 4, '2': 5},
  ],
};

@$core.Deprecated('Use wifiClientDescriptor instead')
const WifiClient_Interface$json = const {
  '1': 'Interface',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'ETH', '2': 1},
    const {'1': 'RF_2GHZ', '2': 2},
    const {'1': 'RF_5GHZ', '2': 3},
    const {'1': 'RF_5GHZ_HIGH', '2': 4},
  ],
};

@$core.Deprecated('Use wifiClientDescriptor instead')
const WifiClient_Role$json = const {
  '1': 'Role',
  '2': const [
    const {'1': 'ROLE_UNKNOWN', '2': 0},
    const {'1': 'CLIENT', '2': 1},
    const {'1': 'REPEATER', '2': 2},
    const {'1': 'CONTROLLER', '2': 3},
  ],
};

/// Descriptor for `WifiClient`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiClientDescriptor = $convert.base64Decode('CgpXaWZpQ2xpZW50EhIKBG5hbWUYASABKAlSBG5hbWUSHwoLbWFjX2FkZHJlc3MYAiABKAlSCm1hY0FkZHJlc3MSHQoKaXBfYWRkcmVzcxgDIAEoCVIJaXBBZGRyZXNzEicKD3NpZ25hbF9zdHJlbmd0aBgEIAEoAlIOc2lnbmFsU3RyZW5ndGgSQAoIcnhfc3RhdHMYBSABKAsyJS5TcGFjZVguQVBJLkRldmljZS5XaWZpQ2xpZW50LlJ4U3RhdHNSB3J4U3RhdHMSQAoIdHhfc3RhdHMYBiABKAsyJS5TcGFjZVguQVBJLkRldmljZS5XaWZpQ2xpZW50LlR4U3RhdHNSB3R4U3RhdHMSKgoRYXNzb2NpYXRlZF90aW1lX3MYByABKA1SD2Fzc29jaWF0ZWRUaW1lUxIZCghtb2RlX3N0chgIIAEoCVIHbW9kZVN0chI9CgVpZmFjZRgJIAEoDjInLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlDbGllbnQuSW50ZXJmYWNlUgVpZmFjZRIQCgNzbnIYCiABKAJSA3NuchIWCgZwc21vZGUYCyABKAVSBnBzbW9kZRIjCg1jaGFubmVsX3dpZHRoGAwgASgNUgxjaGFubmVsV2lkdGgSMAoUdXBzdHJlYW1fbWFjX2FkZHJlc3MYDSABKAlSEnVwc3RyZWFtTWFjQWRkcmVzcxI2CgRyb2xlGA4gASgOMiIuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUNsaWVudC5Sb2xlUgRyb2xlEhsKCWRldmljZV9pZBgPIAEoCVIIZGV2aWNlSWQSHQoKc3dxX2NoZWNrcxgQIAEoDVIJc3dxQ2hlY2tzEi8KFHN3cV9jaGVja3Nfbm9uX2VtcHR5GBEgASgNUhFzd3FDaGVja3NOb25FbXB0eRImCg9taWJfc3RlZXJfc3RhdGUYEiABKA1SDW1pYlN0ZWVyU3RhdGUSKAoQbWliX3N0ZWVyX21ldGhvZBgTIAEoDVIObWliU3RlZXJNZXRob2QSIQoMYnRtX3JlcXVlc3RzGBQgASgNUgtidG1SZXF1ZXN0cxIwChRidG1fcmVxdWVzdHNfc3VjY2VzcxgVIAEoDVISYnRtUmVxdWVzdHNTdWNjZXNzEhYKBmRvbWFpbhgWIAEoCVIGZG9tYWluEiUKDmRvdDExdl9zdXBwb3J0GBcgASgIUg1kb3QxMXZTdXBwb3J0Eh0KCmlmYWNlX25hbWUYGiABKAlSCWlmYWNlTmFtZRI4ChlzdGVlcl9yZXFfc3VjY2Vzc19sYXN0XzFoGBsgASgNUhVzdGVlclJlcVN1Y2Nlc3NMYXN0MWgSMgoWc3RlZXJfcmVxX2ZhaWxfbGFzdF8xaBgcIAEoDVISc3RlZXJSZXFGYWlsTGFzdDFoEkYKIXN0ZWVyX3JlcV9mYWlsX2FuZF9kaXNzb2NfbGFzdF8xaBgdIAEoDVIbc3RlZXJSZXFGYWlsQW5kRGlzc29jTGFzdDFoEh8KC3N0ZWVyX3N0YXRlGB4gASgNUgpzdGVlclN0YXRlEh0KCmdpdmVuX25hbWUYHyABKAlSCWdpdmVuTmFtZRIwChRob3BzX2Zyb21fY29udHJvbGxlchggIAEoDVISaG9wc0Zyb21Db250cm9sbGVyEkUKIGVzdF90eF9yYXRlX21icHNfZnJvbV9jb250cm9sbGVyGCEgASgCUhtlc3RUeFJhdGVNYnBzRnJvbUNvbnRyb2xsZXISRQogZXN0X3J4X3JhdGVfbWJwc19mcm9tX2NvbnRyb2xsZXIYIiABKAJSG2VzdFJ4UmF0ZU1icHNGcm9tQ29udHJvbGxlchIpChBoYXJkd2FyZV92ZXJzaW9uGCUgASgJUg9oYXJkd2FyZVZlcnNpb24SKQoQc29mdHdhcmVfdmVyc2lvbhgmIAEoCVIPc29mdHdhcmVWZXJzaW9uEh8KC2FwaV92ZXJzaW9uGCcgASgNUgphcGlWZXJzaW9uEkwKDHBpbmdfbWV0cmljcxgoIAEoCzIpLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlDbGllbnQuUGluZ01ldHJpY3NSC3BpbmdNZXRyaWNzEiUKDmlwdjZfYWRkcmVzc2VzGCkgAygJUg1pcHY2QWRkcmVzc2VzGqgBCgtQaW5nTWV0cmljcxIrChJpbl91bmhhcHB5X2hvdXJfMnMYASABKAhSD2luVW5oYXBweUhvdXIycxIrChJpbl91bmhhcHB5X2hvdXJfNXMYAiABKAhSD2luVW5oYXBweUhvdXI1cxIgCgxkcm9wX3JhdGVfNW0YAyABKAJSCmRyb3BSYXRlNW0SHQoKbGF0ZW5jeV81bRgEIAEoAlIJbGF0ZW5jeTVtGq8DCgdSeFN0YXRzEhQKBWJ5dGVzGAEgASgEUgVieXRlcxIhCgxjb3VudF9lcnJvcnMYAiABKARSC2NvdW50RXJyb3JzEhAKA25zcxgDIAEoBVIDbnNzEhAKA21jcxgFIAEoDVIDbWNzEhwKCWJhbmR3aWR0aBgGIAEoDVIJYmFuZHdpZHRoEhkKCGd1YXJkX25zGAcgASgNUgdndWFyZE5zEhsKCXJhdGVfbWJwcxgIIAEoDVIIcmF0ZU1icHMSNwoYYWlydGltZV9mcmFjdGlvbl9sYXN0XzFzGAkgASgCUhVhaXJ0aW1lRnJhY3Rpb25MYXN0MXMSJwoPc2FtcGxlZF9wYWNrZXRzGAogASgNUg5zYW1wbGVkUGFja2V0cxI2ChdzYW1wbGVkX3BhY2tldHNfcmV0cmllZBgLIAEoDVIVc2FtcGxlZFBhY2tldHNSZXRyaWVkEjYKF3NhbXBsZWRfcGFja2V0c19kcm9wcGVkGAwgASgNUhVzYW1wbGVkUGFja2V0c0Ryb3BwZWQSGQoIcGh5X21vZGUYDSABKA1SB3BoeU1vZGVKBAgEEAUamAIKB1R4U3RhdHMSFAoFYnl0ZXMYASABKARSBWJ5dGVzEiMKDXN1Y2Nlc3NfYnl0ZXMYAiABKARSDHN1Y2Nlc3NCeXRlcxIQCgNuc3MYAyABKAVSA25zcxIQCgNtY3MYBSABKA1SA21jcxIcCgliYW5kd2lkdGgYBiABKA1SCWJhbmR3aWR0aBIZCghndWFyZF9ucxgHIAEoDVIHZ3VhcmROcxIbCglyYXRlX21icHMYCCABKA1SCHJhdGVNYnBzEjcKGGFpcnRpbWVfZnJhY3Rpb25fbGFzdF8xcxgJIAEoAlIVYWlydGltZUZyYWN0aW9uTGFzdDFzEhkKCHBoeV9tb2RlGAogASgNUgdwaHlNb2RlSgQIBBAFIk0KCUludGVyZmFjZRILCgdVTktOT1dOEAASBwoDRVRIEAESCwoHUkZfMkdIWhACEgsKB1JGXzVHSFoQAxIQCgxSRl81R0haX0hJR0gQBCJCCgRSb2xlEhAKDFJPTEVfVU5LTk9XThAAEgoKBkNMSUVOVBABEgwKCFJFUEVBVEVSEAISDgoKQ09OVFJPTExFUhAD');
@$core.Deprecated('Use wifiSetupResponseDescriptor instead')
const WifiSetupResponse$json = const {
  '1': 'WifiSetupResponse',
};

/// Descriptor for `WifiSetupResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSetupResponseDescriptor = $convert.base64Decode('ChFXaWZpU2V0dXBSZXNwb25zZQ==');
@$core.Deprecated('Use wifiGetStatusResponseDescriptor instead')
const WifiGetStatusResponse$json = const {
  '1': 'WifiGetStatusResponse',
  '2': const [
    const {'1': 'captive_portal_enabled', '3': 1, '4': 1, '5': 8, '10': 'captivePortalEnabled'},
    const {'1': 'device_info', '3': 3, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DeviceInfo', '10': 'deviceInfo'},
    const {'1': 'device_state', '3': 4, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DeviceState', '10': 'deviceState'},
    const {'1': 'ipv4_wan_address', '3': 1003, '4': 1, '5': 9, '10': 'ipv4WanAddress'},
    const {'1': 'ping_drop_rate', '3': 1004, '4': 1, '5': 2, '10': 'pingDropRate'},
    const {'1': 'ping_latency_ms', '3': 1005, '4': 1, '5': 2, '10': 'pingLatencyMs'},
    const {
      '1': 'rf_2ghz_status',
      '3': 1008,
      '4': 1,
      '5': 11,
      '6': '.SpaceX.API.Device.WifiBandStatus',
      '8': const {'3': true},
      '10': 'rf2ghzStatus',
    },
    const {
      '1': 'rf_5ghz_status',
      '3': 1009,
      '4': 1,
      '5': 11,
      '6': '.SpaceX.API.Device.WifiBandStatus',
      '8': const {'3': true},
      '10': 'rf5ghzStatus',
    },
    const {'1': 'alerts', '3': 1010, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiAlerts', '10': 'alerts'},
    const {'1': 'is_aviation', '3': 1011, '4': 1, '5': 8, '10': 'isAviation'},
    const {'1': 'dish_ping_drop_rate', '3': 1012, '4': 1, '5': 2, '10': 'dishPingDropRate'},
    const {'1': 'dish_ping_latency_ms', '3': 1013, '4': 1, '5': 2, '10': 'dishPingLatencyMs'},
    const {'1': 'pop_ping_drop_rate', '3': 1014, '4': 1, '5': 2, '10': 'popPingDropRate'},
    const {'1': 'pop_ping_latency_ms', '3': 1015, '4': 1, '5': 2, '10': 'popPingLatencyMs'},
    const {'1': 'is_aviation_conformed', '3': 1016, '4': 1, '5': 8, '10': 'isAviationConformed'},
    const {'1': 'ipv6_wan_addresses', '3': 1017, '4': 3, '5': 9, '10': 'ipv6WanAddresses'},
    const {'1': 'dish_ping_drop_rate_5m', '3': 1018, '4': 1, '5': 2, '10': 'dishPingDropRate5m'},
    const {'1': 'dhcp_servers', '3': 1019, '4': 3, '5': 11, '6': '.SpaceX.API.Device.DhcpServer', '10': 'dhcpServers'},
    const {'1': 'config', '3': 2000, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiConfig', '10': 'config'},
    const {'1': 'clients', '3': 3000, '4': 3, '5': 11, '6': '.SpaceX.API.Device.WifiClient', '10': 'clients'},
    const {'1': 'has_client_index', '3': 3001, '4': 1, '5': 8, '10': 'hasClientIndex'},
    const {'1': 'client_index', '3': 3002, '4': 1, '5': 5, '10': 'clientIndex'},
  ],
  '9': const [
    const {'1': 2, '2': 3},
    const {'1': 5, '2': 6},
    const {'1': 6, '2': 7},
    const {'1': 7, '2': 8},
    const {'1': 1001, '2': 1002},
    const {'1': 1002, '2': 1003},
    const {'1': 1006, '2': 1007},
    const {'1': 1007, '2': 1008},
  ],
};

/// Descriptor for `WifiGetStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetStatusResponseDescriptor = $convert.base64Decode('ChVXaWZpR2V0U3RhdHVzUmVzcG9uc2USNAoWY2FwdGl2ZV9wb3J0YWxfZW5hYmxlZBgBIAEoCFIUY2FwdGl2ZVBvcnRhbEVuYWJsZWQSPgoLZGV2aWNlX2luZm8YAyABKAsyHS5TcGFjZVguQVBJLkRldmljZS5EZXZpY2VJbmZvUgpkZXZpY2VJbmZvEkEKDGRldmljZV9zdGF0ZRgEIAEoCzIeLlNwYWNlWC5BUEkuRGV2aWNlLkRldmljZVN0YXRlUgtkZXZpY2VTdGF0ZRIpChBpcHY0X3dhbl9hZGRyZXNzGOsHIAEoCVIOaXB2NFdhbkFkZHJlc3MSJQoOcGluZ19kcm9wX3JhdGUY7AcgASgCUgxwaW5nRHJvcFJhdGUSJwoPcGluZ19sYXRlbmN5X21zGO0HIAEoAlINcGluZ0xhdGVuY3lNcxJMCg5yZl8yZ2h6X3N0YXR1cxjwByABKAsyIS5TcGFjZVguQVBJLkRldmljZS5XaWZpQmFuZFN0YXR1c0ICGAFSDHJmMmdoelN0YXR1cxJMCg5yZl81Z2h6X3N0YXR1cxjxByABKAsyIS5TcGFjZVguQVBJLkRldmljZS5XaWZpQmFuZFN0YXR1c0ICGAFSDHJmNWdoelN0YXR1cxI2CgZhbGVydHMY8gcgASgLMh0uU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUFsZXJ0c1IGYWxlcnRzEiAKC2lzX2F2aWF0aW9uGPMHIAEoCFIKaXNBdmlhdGlvbhIuChNkaXNoX3BpbmdfZHJvcF9yYXRlGPQHIAEoAlIQZGlzaFBpbmdEcm9wUmF0ZRIwChRkaXNoX3BpbmdfbGF0ZW5jeV9tcxj1ByABKAJSEWRpc2hQaW5nTGF0ZW5jeU1zEiwKEnBvcF9waW5nX2Ryb3BfcmF0ZRj2ByABKAJSD3BvcFBpbmdEcm9wUmF0ZRIuChNwb3BfcGluZ19sYXRlbmN5X21zGPcHIAEoAlIQcG9wUGluZ0xhdGVuY3lNcxIzChVpc19hdmlhdGlvbl9jb25mb3JtZWQY+AcgASgIUhNpc0F2aWF0aW9uQ29uZm9ybWVkEi0KEmlwdjZfd2FuX2FkZHJlc3Nlcxj5ByADKAlSEGlwdjZXYW5BZGRyZXNzZXMSMwoWZGlzaF9waW5nX2Ryb3BfcmF0ZV81bRj6ByABKAJSEmRpc2hQaW5nRHJvcFJhdGU1bRJBCgxkaGNwX3NlcnZlcnMY+wcgAygLMh0uU3BhY2VYLkFQSS5EZXZpY2UuRGhjcFNlcnZlclILZGhjcFNlcnZlcnMSNgoGY29uZmlnGNAPIAEoCzIdLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlDb25maWdSBmNvbmZpZxI4CgdjbGllbnRzGLgXIAMoCzIdLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlDbGllbnRSB2NsaWVudHMSKQoQaGFzX2NsaWVudF9pbmRleBi5FyABKAhSDmhhc0NsaWVudEluZGV4EiIKDGNsaWVudF9pbmRleBi6FyABKAVSC2NsaWVudEluZGV4SgQIAhADSgQIBRAGSgQIBhAHSgQIBxAISgYI6QcQ6gdKBgjqBxDrB0oGCO4HEO8HSgYI7wcQ8Ac=');
@$core.Deprecated('Use wifiBandStatusDescriptor instead')
const WifiBandStatus$json = const {
  '1': 'WifiBandStatus',
  '2': const [
    const {'1': 'chan_busy_time_fraction', '3': 1, '4': 1, '5': 2, '10': 'chanBusyTimeFraction'},
    const {'1': 'tx_air_time_fraction', '3': 2, '4': 1, '5': 2, '10': 'txAirTimeFraction'},
    const {'1': 'rx_air_time_fraction', '3': 3, '4': 1, '5': 2, '10': 'rxAirTimeFraction'},
    const {'1': 'obss_air_time_fraction', '3': 4, '4': 1, '5': 2, '10': 'obssAirTimeFraction'},
    const {'1': 'edcca_air_time_fraction', '3': 5, '4': 1, '5': 2, '10': 'edccaAirTimeFraction'},
  ],
};

/// Descriptor for `WifiBandStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiBandStatusDescriptor = $convert.base64Decode('Cg5XaWZpQmFuZFN0YXR1cxI1ChdjaGFuX2J1c3lfdGltZV9mcmFjdGlvbhgBIAEoAlIUY2hhbkJ1c3lUaW1lRnJhY3Rpb24SLwoUdHhfYWlyX3RpbWVfZnJhY3Rpb24YAiABKAJSEXR4QWlyVGltZUZyYWN0aW9uEi8KFHJ4X2Fpcl90aW1lX2ZyYWN0aW9uGAMgASgCUhFyeEFpclRpbWVGcmFjdGlvbhIzChZvYnNzX2Fpcl90aW1lX2ZyYWN0aW9uGAQgASgCUhNvYnNzQWlyVGltZUZyYWN0aW9uEjUKF2VkY2NhX2Fpcl90aW1lX2ZyYWN0aW9uGAUgASgCUhRlZGNjYUFpclRpbWVGcmFjdGlvbg==');
@$core.Deprecated('Use wifiAlertsDescriptor instead')
const WifiAlerts$json = const {
  '1': 'WifiAlerts',
  '2': const [
    const {'1': 'thermal_throttle', '3': 1, '4': 1, '5': 8, '10': 'thermalThrottle'},
    const {'1': 'install_pending', '3': 2, '4': 1, '5': 8, '10': 'installPending'},
    const {'1': 'freshly_fused', '3': 3, '4': 1, '5': 8, '10': 'freshlyFused'},
    const {'1': 'lan_eth_slow_link_10', '3': 4, '4': 1, '5': 8, '10': 'lanEthSlowLink10'},
    const {'1': 'lan_eth_slow_link_100', '3': 5, '4': 1, '5': 8, '10': 'lanEthSlowLink100'},
    const {'1': 'wan_eth_poor_connection', '3': 10, '4': 1, '5': 8, '10': 'wanEthPoorConnection'},
    const {'1': 'mesh_topology_changing_often', '3': 11, '4': 1, '5': 8, '10': 'meshTopologyChangingOften'},
    const {'1': 'mesh_unreliable_backhaul', '3': 12, '4': 1, '5': 8, '10': 'meshUnreliableBackhaul'},
  ],
  '9': const [
    const {'1': 6, '2': 7},
    const {'1': 7, '2': 8},
    const {'1': 8, '2': 9},
    const {'1': 9, '2': 10},
  ],
  '10': const ['inconsistent_2ghz_antennae_performance_15db', 'inconsistent_5ghz_antennae_performance_15db', 'poor_2ghz_antennae_performance_80db', 'poor_5ghz_antennae_performance_80db'],
};

/// Descriptor for `WifiAlerts`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiAlertsDescriptor = $convert.base64Decode('CgpXaWZpQWxlcnRzEikKEHRoZXJtYWxfdGhyb3R0bGUYASABKAhSD3RoZXJtYWxUaHJvdHRsZRInCg9pbnN0YWxsX3BlbmRpbmcYAiABKAhSDmluc3RhbGxQZW5kaW5nEiMKDWZyZXNobHlfZnVzZWQYAyABKAhSDGZyZXNobHlGdXNlZBIuChRsYW5fZXRoX3Nsb3dfbGlua18xMBgEIAEoCFIQbGFuRXRoU2xvd0xpbmsxMBIwChVsYW5fZXRoX3Nsb3dfbGlua18xMDAYBSABKAhSEWxhbkV0aFNsb3dMaW5rMTAwEjUKF3dhbl9ldGhfcG9vcl9jb25uZWN0aW9uGAogASgIUhR3YW5FdGhQb29yQ29ubmVjdGlvbhI/ChxtZXNoX3RvcG9sb2d5X2NoYW5naW5nX29mdGVuGAsgASgIUhltZXNoVG9wb2xvZ3lDaGFuZ2luZ09mdGVuEjgKGG1lc2hfdW5yZWxpYWJsZV9iYWNraGF1bBgMIAEoCFIWbWVzaFVucmVsaWFibGVCYWNraGF1bEoECAYQB0oECAcQCEoECAgQCUoECAkQClIraW5jb25zaXN0ZW50XzJnaHpfYW50ZW5uYWVfcGVyZm9ybWFuY2VfMTVkYlIraW5jb25zaXN0ZW50XzVnaHpfYW50ZW5uYWVfcGVyZm9ybWFuY2VfMTVkYlIjcG9vcl8yZ2h6X2FudGVubmFlX3BlcmZvcm1hbmNlXzgwZGJSI3Bvb3JfNWdoel9hbnRlbm5hZV9wZXJmb3JtYW5jZV84MGRi');
@$core.Deprecated('Use dhcpServerDescriptor instead')
const DhcpServer$json = const {
  '1': 'DhcpServer',
  '2': const [
    const {'1': 'domain', '3': 1, '4': 1, '5': 9, '10': 'domain'},
    const {'1': 'subnet', '3': 2, '4': 1, '5': 9, '10': 'subnet'},
    const {'1': 'leases', '3': 3, '4': 3, '5': 11, '6': '.SpaceX.API.Device.DhcpLease', '10': 'leases'},
  ],
};

/// Descriptor for `DhcpServer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dhcpServerDescriptor = $convert.base64Decode('CgpEaGNwU2VydmVyEhYKBmRvbWFpbhgBIAEoCVIGZG9tYWluEhYKBnN1Ym5ldBgCIAEoCVIGc3VibmV0EjQKBmxlYXNlcxgDIAMoCzIcLlNwYWNlWC5BUEkuRGV2aWNlLkRoY3BMZWFzZVIGbGVhc2Vz');
@$core.Deprecated('Use dhcpLeaseDescriptor instead')
const DhcpLease$json = const {
  '1': 'DhcpLease',
  '2': const [
    const {'1': 'ip_address', '3': 1, '4': 1, '5': 9, '10': 'ipAddress'},
    const {'1': 'mac_address', '3': 2, '4': 1, '5': 9, '10': 'macAddress'},
    const {'1': 'hostname', '3': 3, '4': 1, '5': 9, '10': 'hostname'},
    const {'1': 'expires_time', '3': 4, '4': 1, '5': 9, '10': 'expiresTime'},
    const {'1': 'active', '3': 5, '4': 1, '5': 8, '10': 'active'},
  ],
};

/// Descriptor for `DhcpLease`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dhcpLeaseDescriptor = $convert.base64Decode('CglEaGNwTGVhc2USHQoKaXBfYWRkcmVzcxgBIAEoCVIJaXBBZGRyZXNzEh8KC21hY19hZGRyZXNzGAIgASgJUgptYWNBZGRyZXNzEhoKCGhvc3RuYW1lGAMgASgJUghob3N0bmFtZRIhCgxleHBpcmVzX3RpbWUYBCABKAlSC2V4cGlyZXNUaW1lEhYKBmFjdGl2ZRgFIAEoCFIGYWN0aXZl');
@$core.Deprecated('Use wifiAuthenticateResponseDescriptor instead')
const WifiAuthenticateResponse$json = const {
  '1': 'WifiAuthenticateResponse',
  '2': const [
    const {'1': 'wifi', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.ChallengeResponse', '10': 'wifi'},
    const {'1': 'dish', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.ChallengeResponse', '10': 'dish'},
  ],
};

/// Descriptor for `WifiAuthenticateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiAuthenticateResponseDescriptor = $convert.base64Decode('ChhXaWZpQXV0aGVudGljYXRlUmVzcG9uc2USOAoEd2lmaRgBIAEoCzIkLlNwYWNlWC5BUEkuRGV2aWNlLkNoYWxsZW5nZVJlc3BvbnNlUgR3aWZpEjgKBGRpc2gYAiABKAsyJC5TcGFjZVguQVBJLkRldmljZS5DaGFsbGVuZ2VSZXNwb25zZVIEZGlzaA==');
@$core.Deprecated('Use wifiGetHistoryResponseDescriptor instead')
const WifiGetHistoryResponse$json = const {
  '1': 'WifiGetHistoryResponse',
  '2': const [
    const {'1': 'current', '3': 1, '4': 1, '5': 4, '10': 'current'},
    const {'1': 'ping_drop_rate', '3': 1001, '4': 3, '5': 2, '10': 'pingDropRate'},
    const {'1': 'ping_latency_ms', '3': 1002, '4': 3, '5': 2, '10': 'pingLatencyMs'},
  ],
};

/// Descriptor for `WifiGetHistoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetHistoryResponseDescriptor = $convert.base64Decode('ChZXaWZpR2V0SGlzdG9yeVJlc3BvbnNlEhgKB2N1cnJlbnQYASABKARSB2N1cnJlbnQSJQoOcGluZ19kcm9wX3JhdGUY6QcgAygCUgxwaW5nRHJvcFJhdGUSJwoPcGluZ19sYXRlbmN5X21zGOoHIAMoAlINcGluZ0xhdGVuY3lNcw==');
@$core.Deprecated('Use wifiGetPingMetricsResponseDescriptor instead')
const WifiGetPingMetricsResponse$json = const {
  '1': 'WifiGetPingMetricsResponse',
  '2': const [
    const {'1': 'internet', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.PingMetrics', '10': 'internet'},
  ],
};

/// Descriptor for `WifiGetPingMetricsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetPingMetricsResponseDescriptor = $convert.base64Decode('ChpXaWZpR2V0UGluZ01ldHJpY3NSZXNwb25zZRI6CghpbnRlcm5ldBgBIAEoCzIeLlNwYWNlWC5BUEkuRGV2aWNlLlBpbmdNZXRyaWNzUghpbnRlcm5ldA==');
@$core.Deprecated('Use pingMetricsDescriptor instead')
const PingMetrics$json = const {
  '1': 'PingMetrics',
  '2': const [
    const {'1': 'latency_mean_ms', '3': 1, '4': 1, '5': 2, '10': 'latencyMeanMs'},
    const {'1': 'latency_stddev_ms', '3': 2, '4': 1, '5': 2, '10': 'latencyStddevMs'},
    const {'1': 'latency_mean_ms_5m', '3': 3, '4': 1, '5': 2, '10': 'latencyMeanMs5m'},
    const {'1': 'latency_mean_ms_1h', '3': 4, '4': 1, '5': 2, '10': 'latencyMeanMs1h'},
    const {'1': 'latency_mean_ms_1d', '3': 5, '4': 1, '5': 2, '10': 'latencyMeanMs1d'},
    const {'1': 'drop_rate', '3': 6, '4': 1, '5': 2, '10': 'dropRate'},
    const {'1': 'drop_rate_5m', '3': 7, '4': 1, '5': 2, '10': 'dropRate5m'},
    const {'1': 'drop_rate_1h', '3': 8, '4': 1, '5': 2, '10': 'dropRate1h'},
    const {'1': 'drop_rate_1d', '3': 9, '4': 1, '5': 2, '10': 'dropRate1d'},
    const {'1': 'seconds_since_last_success', '3': 10, '4': 1, '5': 2, '10': 'secondsSinceLastSuccess'},
    const {'1': 'seconds_since_last_1s_outage', '3': 11, '4': 1, '5': 2, '10': 'secondsSinceLast1sOutage'},
    const {'1': 'seconds_since_last_5s_outage', '3': 12, '4': 1, '5': 2, '10': 'secondsSinceLast5sOutage'},
    const {'1': 'happy_hours_1s_1d', '3': 13, '4': 1, '5': 2, '10': 'happyHours1s1d'},
    const {'1': 'happy_hours_5s_1d', '3': 14, '4': 1, '5': 2, '10': 'happyHours5s1d'},
    const {'1': 'seconds_since_last_2s_outage', '3': 15, '4': 1, '5': 2, '10': 'secondsSinceLast2sOutage'},
    const {'1': 'happy_hours_2s_1d', '3': 16, '4': 1, '5': 2, '10': 'happyHours2s1d'},
    const {'1': 'seconds_since_last_15s_outage', '3': 18, '4': 1, '5': 2, '10': 'secondsSinceLast15sOutage'},
    const {'1': 'seconds_since_last_60s_outage', '3': 19, '4': 1, '5': 2, '10': 'secondsSinceLast60sOutage'},
    const {'1': 'seconds_since_last_300s_outage', '3': 20, '4': 1, '5': 2, '10': 'secondsSinceLast300sOutage'},
  ],
};

/// Descriptor for `PingMetrics`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingMetricsDescriptor = $convert.base64Decode('CgtQaW5nTWV0cmljcxImCg9sYXRlbmN5X21lYW5fbXMYASABKAJSDWxhdGVuY3lNZWFuTXMSKgoRbGF0ZW5jeV9zdGRkZXZfbXMYAiABKAJSD2xhdGVuY3lTdGRkZXZNcxIrChJsYXRlbmN5X21lYW5fbXNfNW0YAyABKAJSD2xhdGVuY3lNZWFuTXM1bRIrChJsYXRlbmN5X21lYW5fbXNfMWgYBCABKAJSD2xhdGVuY3lNZWFuTXMxaBIrChJsYXRlbmN5X21lYW5fbXNfMWQYBSABKAJSD2xhdGVuY3lNZWFuTXMxZBIbCglkcm9wX3JhdGUYBiABKAJSCGRyb3BSYXRlEiAKDGRyb3BfcmF0ZV81bRgHIAEoAlIKZHJvcFJhdGU1bRIgCgxkcm9wX3JhdGVfMWgYCCABKAJSCmRyb3BSYXRlMWgSIAoMZHJvcF9yYXRlXzFkGAkgASgCUgpkcm9wUmF0ZTFkEjsKGnNlY29uZHNfc2luY2VfbGFzdF9zdWNjZXNzGAogASgCUhdzZWNvbmRzU2luY2VMYXN0U3VjY2VzcxI+ChxzZWNvbmRzX3NpbmNlX2xhc3RfMXNfb3V0YWdlGAsgASgCUhhzZWNvbmRzU2luY2VMYXN0MXNPdXRhZ2USPgocc2Vjb25kc19zaW5jZV9sYXN0XzVzX291dGFnZRgMIAEoAlIYc2Vjb25kc1NpbmNlTGFzdDVzT3V0YWdlEikKEWhhcHB5X2hvdXJzXzFzXzFkGA0gASgCUg5oYXBweUhvdXJzMXMxZBIpChFoYXBweV9ob3Vyc181c18xZBgOIAEoAlIOaGFwcHlIb3VyczVzMWQSPgocc2Vjb25kc19zaW5jZV9sYXN0XzJzX291dGFnZRgPIAEoAlIYc2Vjb25kc1NpbmNlTGFzdDJzT3V0YWdlEikKEWhhcHB5X2hvdXJzXzJzXzFkGBAgASgCUg5oYXBweUhvdXJzMnMxZBJACh1zZWNvbmRzX3NpbmNlX2xhc3RfMTVzX291dGFnZRgSIAEoAlIZc2Vjb25kc1NpbmNlTGFzdDE1c091dGFnZRJACh1zZWNvbmRzX3NpbmNlX2xhc3RfNjBzX291dGFnZRgTIAEoAlIZc2Vjb25kc1NpbmNlTGFzdDYwc091dGFnZRJCCh5zZWNvbmRzX3NpbmNlX2xhc3RfMzAwc19vdXRhZ2UYFCABKAJSGnNlY29uZHNTaW5jZUxhc3QzMDBzT3V0YWdl');
@$core.Deprecated('Use wifiGetDiagnosticsResponseDescriptor instead')
const WifiGetDiagnosticsResponse$json = const {
  '1': 'WifiGetDiagnosticsResponse',
  '2': const [
    const {'1': 'network_scan', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiScanResults', '10': 'networkScan'},
    const {'1': 'wifi_networks', '3': 2, '4': 3, '5': 11, '6': '.SpaceX.API.Device.WifiNetwork', '10': 'wifiNetworks'},
  ],
};

/// Descriptor for `WifiGetDiagnosticsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetDiagnosticsResponseDescriptor = $convert.base64Decode('ChpXaWZpR2V0RGlhZ25vc3RpY3NSZXNwb25zZRJFCgxuZXR3b3JrX3NjYW4YASABKAsyIi5TcGFjZVguQVBJLkRldmljZS5XaWZpU2NhblJlc3VsdHNSC25ldHdvcmtTY2FuEkMKDXdpZmlfbmV0d29ya3MYAiADKAsyHi5TcGFjZVguQVBJLkRldmljZS5XaWZpTmV0d29ya1IMd2lmaU5ldHdvcmtz');
@$core.Deprecated('Use wifiScanResultsDescriptor instead')
const WifiScanResults$json = const {
  '1': 'WifiScanResults',
  '2': const [
    const {'1': 'networks', '3': 1, '4': 3, '5': 11, '6': '.SpaceX.API.Device.WifiScanResults.Network', '10': 'networks'},
  ],
  '3': const [WifiScanResults_Network$json],
};

@$core.Deprecated('Use wifiScanResultsDescriptor instead')
const WifiScanResults_Network$json = const {
  '1': 'Network',
  '2': const [
    const {'1': 'source', '3': 1, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiScanResults.Network.Source', '10': 'source'},
    const {'1': 'ssid', '3': 2, '4': 1, '5': 9, '10': 'ssid'},
    const {'1': 'bssid', '3': 3, '4': 1, '5': 9, '10': 'bssid'},
    const {'1': 'frequency_ghz', '3': 4, '4': 1, '5': 9, '10': 'frequencyGhz'},
    const {'1': 'channel', '3': 5, '4': 1, '5': 5, '10': 'channel'},
    const {'1': 'signal_level_dbm', '3': 6, '4': 1, '5': 5, '10': 'signalLevelDbm'},
    const {'1': 'noise_level_dbm', '3': 7, '4': 1, '5': 5, '10': 'noiseLevelDbm'},
    const {'1': 'has_encryption_key', '3': 8, '4': 1, '5': 8, '10': 'hasEncryptionKey'},
    const {'1': 'phy_mode_str', '3': 9, '4': 1, '5': 9, '10': 'phyModeStr'},
  ],
  '4': const [WifiScanResults_Network_Source$json],
};

@$core.Deprecated('Use wifiScanResultsDescriptor instead')
const WifiScanResults_Network_Source$json = const {
  '1': 'Source',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'SCAN_2_4GHZ', '2': 1},
    const {'1': 'SCAN_5GHZ', '2': 2},
  ],
};

/// Descriptor for `WifiScanResults`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiScanResultsDescriptor = $convert.base64Decode('Cg9XaWZpU2NhblJlc3VsdHMSRgoIbmV0d29ya3MYASADKAsyKi5TcGFjZVguQVBJLkRldmljZS5XaWZpU2NhblJlc3VsdHMuTmV0d29ya1IIbmV0d29ya3MalgMKB05ldHdvcmsSSQoGc291cmNlGAEgASgOMjEuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaVNjYW5SZXN1bHRzLk5ldHdvcmsuU291cmNlUgZzb3VyY2USEgoEc3NpZBgCIAEoCVIEc3NpZBIUCgVic3NpZBgDIAEoCVIFYnNzaWQSIwoNZnJlcXVlbmN5X2doehgEIAEoCVIMZnJlcXVlbmN5R2h6EhgKB2NoYW5uZWwYBSABKAVSB2NoYW5uZWwSKAoQc2lnbmFsX2xldmVsX2RibRgGIAEoBVIOc2lnbmFsTGV2ZWxEYm0SJgoPbm9pc2VfbGV2ZWxfZGJtGAcgASgFUg1ub2lzZUxldmVsRGJtEiwKEmhhc19lbmNyeXB0aW9uX2tleRgIIAEoCFIQaGFzRW5jcnlwdGlvbktleRIgCgxwaHlfbW9kZV9zdHIYCSABKAlSCnBoeU1vZGVTdHIiNQoGU291cmNlEgsKB1VOS05PV04QABIPCgtTQ0FOXzJfNEdIWhABEg0KCVNDQU5fNUdIWhAC');
@$core.Deprecated('Use wifiNetworkDescriptor instead')
const WifiNetwork$json = const {
  '1': 'WifiNetwork',
  '2': const [
    const {'1': 'band', '3': 1, '4': 1, '5': 14, '6': '.SpaceX.API.Device.WifiNetwork.Band', '10': 'band'},
    const {'1': 'ssid', '3': 2, '4': 1, '5': 9, '10': 'ssid'},
    const {'1': 'channel', '3': 3, '4': 1, '5': 13, '10': 'channel'},
    const {'1': 'encryption_type_str', '3': 4, '4': 1, '5': 9, '10': 'encryptionTypeStr'},
  ],
  '4': const [WifiNetwork_Band$json],
};

@$core.Deprecated('Use wifiNetworkDescriptor instead')
const WifiNetwork_Band$json = const {
  '1': 'Band',
  '2': const [
    const {'1': 'WIFI_UNKNOWN', '2': 0},
    const {'1': 'WIFI_2_4GHZ', '2': 1},
    const {'1': 'WIFI_5GHZ', '2': 2},
  ],
};

/// Descriptor for `WifiNetwork`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiNetworkDescriptor = $convert.base64Decode('CgtXaWZpTmV0d29yaxI3CgRiYW5kGAEgASgOMiMuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaU5ldHdvcmsuQmFuZFIEYmFuZBISCgRzc2lkGAIgASgJUgRzc2lkEhgKB2NoYW5uZWwYAyABKA1SB2NoYW5uZWwSLgoTZW5jcnlwdGlvbl90eXBlX3N0chgEIAEoCVIRZW5jcnlwdGlvblR5cGVTdHIiOAoEQmFuZBIQCgxXSUZJX1VOS05PV04QABIPCgtXSUZJXzJfNEdIWhABEg0KCVdJRklfNUdIWhAC');
@$core.Deprecated('Use wifiGetConfigResponseDescriptor instead')
const WifiGetConfigResponse$json = const {
  '1': 'WifiGetConfigResponse',
  '2': const [
    const {'1': 'wifi_config', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiConfig', '10': 'wifiConfig'},
  ],
};

/// Descriptor for `WifiGetConfigResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetConfigResponseDescriptor = $convert.base64Decode('ChVXaWZpR2V0Q29uZmlnUmVzcG9uc2USPgoLd2lmaV9jb25maWcYASABKAsyHS5TcGFjZVguQVBJLkRldmljZS5XaWZpQ29uZmlnUgp3aWZpQ29uZmln');
@$core.Deprecated('Use wifiSetMeshDeviceTrustResponseDescriptor instead')
const WifiSetMeshDeviceTrustResponse$json = const {
  '1': 'WifiSetMeshDeviceTrustResponse',
};

/// Descriptor for `WifiSetMeshDeviceTrustResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSetMeshDeviceTrustResponseDescriptor = $convert.base64Decode('Ch5XaWZpU2V0TWVzaERldmljZVRydXN0UmVzcG9uc2U=');
@$core.Deprecated('Use wifiSetMeshConfigResponseDescriptor instead')
const WifiSetMeshConfigResponse$json = const {
  '1': 'WifiSetMeshConfigResponse',
};

/// Descriptor for `WifiSetMeshConfigResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSetMeshConfigResponseDescriptor = $convert.base64Decode('ChlXaWZpU2V0TWVzaENvbmZpZ1Jlc3BvbnNl');
@$core.Deprecated('Use wifiGetClientHistoryResponseDescriptor instead')
const WifiGetClientHistoryResponse$json = const {
  '1': 'WifiGetClientHistoryResponse',
  '2': const [
    const {'1': 'current', '3': 1, '4': 1, '5': 4, '10': 'current'},
    const {'1': 'tx_throughput_mbps', '3': 2, '4': 3, '5': 2, '10': 'txThroughputMbps'},
    const {'1': 'rx_throughput_mbps', '3': 3, '4': 3, '5': 2, '10': 'rxThroughputMbps'},
    const {'1': 'throughput_limited', '3': 4, '4': 3, '5': 14, '6': '.SpaceX.API.Device.WifiGetClientHistoryResponse.WifiLimitedReason', '10': 'throughputLimited'},
    const {'1': 'rx_rate_mbps', '3': 5, '4': 3, '5': 2, '10': 'rxRateMbps'},
    const {'1': 'rssi', '3': 6, '4': 1, '5': 12, '10': 'rssi'},
  ],
  '4': const [WifiGetClientHistoryResponse_WifiLimitedReason$json],
};

@$core.Deprecated('Use wifiGetClientHistoryResponseDescriptor instead')
const WifiGetClientHistoryResponse_WifiLimitedReason$json = const {
  '1': 'WifiLimitedReason',
  '2': const [
    const {'1': 'LIMIT_UNKNOWN', '2': 0},
    const {'1': 'LIMIT_NONE', '2': 1},
    const {'1': 'LIMIT_UNCLASSIFIED', '2': 2},
    const {'1': 'LIMIT_DROPPED_PACKETS', '2': 3},
  ],
};

/// Descriptor for `WifiGetClientHistoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetClientHistoryResponseDescriptor = $convert.base64Decode('ChxXaWZpR2V0Q2xpZW50SGlzdG9yeVJlc3BvbnNlEhgKB2N1cnJlbnQYASABKARSB2N1cnJlbnQSLAoSdHhfdGhyb3VnaHB1dF9tYnBzGAIgAygCUhB0eFRocm91Z2hwdXRNYnBzEiwKEnJ4X3Rocm91Z2hwdXRfbWJwcxgDIAMoAlIQcnhUaHJvdWdocHV0TWJwcxJwChJ0aHJvdWdocHV0X2xpbWl0ZWQYBCADKA4yQS5TcGFjZVguQVBJLkRldmljZS5XaWZpR2V0Q2xpZW50SGlzdG9yeVJlc3BvbnNlLldpZmlMaW1pdGVkUmVhc29uUhF0aHJvdWdocHV0TGltaXRlZBIgCgxyeF9yYXRlX21icHMYBSADKAJSCnJ4UmF0ZU1icHMSEgoEcnNzaRgGIAEoDFIEcnNzaSJpChFXaWZpTGltaXRlZFJlYXNvbhIRCg1MSU1JVF9VTktOT1dOEAASDgoKTElNSVRfTk9ORRABEhYKEkxJTUlUX1VOQ0xBU1NJRklFRBACEhkKFUxJTUlUX0RST1BQRURfUEFDS0VUUxAD');
@$core.Deprecated('Use wifiSelfTestResponseDescriptor instead')
const WifiSelfTestResponse$json = const {
  '1': 'WifiSelfTestResponse',
  '2': const [
    const {'1': 'self_test', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSelfTest', '10': 'selfTest'},
  ],
};

/// Descriptor for `WifiSelfTestResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSelfTestResponseDescriptor = $convert.base64Decode('ChRXaWZpU2VsZlRlc3RSZXNwb25zZRI8CglzZWxmX3Rlc3QYASABKAsyHy5TcGFjZVguQVBJLkRldmljZS5XaWZpU2VsZlRlc3RSCHNlbGZUZXN0');
@$core.Deprecated('Use wifiSelfTestDescriptor instead')
const WifiSelfTest$json = const {
  '1': 'WifiSelfTest',
  '2': const [
    const {'1': 'total_success', '3': 1, '4': 1, '5': 8, '10': 'totalSuccess'},
    const {'1': 'fused', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSelfTest.TestResult', '10': 'fused'},
    const {'1': 'eth_phys', '3': 3, '4': 3, '5': 11, '6': '.SpaceX.API.Device.WifiSelfTest.TestResult', '10': 'ethPhys'},
    const {'1': 'pcis', '3': 4, '4': 3, '5': 11, '6': '.SpaceX.API.Device.WifiSelfTest.TestResult', '10': 'pcis'},
  ],
  '3': const [WifiSelfTest_TestResult$json],
};

@$core.Deprecated('Use wifiSelfTestDescriptor instead')
const WifiSelfTest_TestResult$json = const {
  '1': 'TestResult',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'success', '3': 2, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'failure_reason', '3': 3, '4': 1, '5': 9, '10': 'failureReason'},
  ],
};

/// Descriptor for `WifiSelfTest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSelfTestDescriptor = $convert.base64Decode('CgxXaWZpU2VsZlRlc3QSIwoNdG90YWxfc3VjY2VzcxgBIAEoCFIMdG90YWxTdWNjZXNzEkAKBWZ1c2VkGAIgASgLMiouU3BhY2VYLkFQSS5EZXZpY2UuV2lmaVNlbGZUZXN0LlRlc3RSZXN1bHRSBWZ1c2VkEkUKCGV0aF9waHlzGAMgAygLMiouU3BhY2VYLkFQSS5EZXZpY2UuV2lmaVNlbGZUZXN0LlRlc3RSZXN1bHRSB2V0aFBoeXMSPgoEcGNpcxgEIAMoCzIqLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlTZWxmVGVzdC5UZXN0UmVzdWx0UgRwY2lzGmEKClRlc3RSZXN1bHQSEgoEbmFtZRgBIAEoCVIEbmFtZRIYCgdzdWNjZXNzGAIgASgIUgdzdWNjZXNzEiUKDmZhaWx1cmVfcmVhc29uGAMgASgJUg1mYWlsdXJlUmVhc29u');
@$core.Deprecated('Use wifiGetPersistentStatsResponseDescriptor instead')
const WifiGetPersistentStatsResponse$json = const {
  '1': 'WifiGetPersistentStatsResponse',
  '2': const [
    const {'1': 'stats', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiPersistentStats', '10': 'stats'},
  ],
};

/// Descriptor for `WifiGetPersistentStatsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetPersistentStatsResponseDescriptor = $convert.base64Decode('Ch5XaWZpR2V0UGVyc2lzdGVudFN0YXRzUmVzcG9uc2USPAoFc3RhdHMYASABKAsyJi5TcGFjZVguQVBJLkRldmljZS5XaWZpUGVyc2lzdGVudFN0YXRzUgVzdGF0cw==');
@$core.Deprecated('Use wifiPersistentStatsDescriptor instead')
const WifiPersistentStats$json = const {
  '1': 'WifiPersistentStats',
  '2': const [
    const {'1': 'factory_reset_button', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiPersistentStats.Event', '10': 'factoryResetButton'},
    const {'1': 'factory_reset_plug_unplug', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiPersistentStats.Event', '10': 'factoryResetPlugUnplug'},
    const {'1': 'factory_reset_command', '3': 3, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiPersistentStats.Event', '10': 'factoryResetCommand'},
    const {'1': 'factory_reset_failed_load_wifi_config', '3': 4, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiPersistentStats.Event', '10': 'factoryResetFailedLoadWifiConfig'},
    const {'1': 'reboot_from_software_update', '3': 5, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiPersistentStats.Event', '10': 'rebootFromSoftwareUpdate'},
  ],
  '3': const [WifiPersistentStats_Event$json],
};

@$core.Deprecated('Use wifiPersistentStatsDescriptor instead')
const WifiPersistentStats_Event$json = const {
  '1': 'Event',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 13, '10': 'count'},
    const {'1': 'last_occurred_timestamp', '3': 2, '4': 1, '5': 3, '10': 'lastOccurredTimestamp'},
  ],
};

/// Descriptor for `WifiPersistentStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiPersistentStatsDescriptor = $convert.base64Decode('ChNXaWZpUGVyc2lzdGVudFN0YXRzEl4KFGZhY3RvcnlfcmVzZXRfYnV0dG9uGAEgASgLMiwuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaVBlcnNpc3RlbnRTdGF0cy5FdmVudFISZmFjdG9yeVJlc2V0QnV0dG9uEmcKGWZhY3RvcnlfcmVzZXRfcGx1Z191bnBsdWcYAiABKAsyLC5TcGFjZVguQVBJLkRldmljZS5XaWZpUGVyc2lzdGVudFN0YXRzLkV2ZW50UhZmYWN0b3J5UmVzZXRQbHVnVW5wbHVnEmAKFWZhY3RvcnlfcmVzZXRfY29tbWFuZBgDIAEoCzIsLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlQZXJzaXN0ZW50U3RhdHMuRXZlbnRSE2ZhY3RvcnlSZXNldENvbW1hbmQSfQolZmFjdG9yeV9yZXNldF9mYWlsZWRfbG9hZF93aWZpX2NvbmZpZxgEIAEoCzIsLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlQZXJzaXN0ZW50U3RhdHMuRXZlbnRSIGZhY3RvcnlSZXNldEZhaWxlZExvYWRXaWZpQ29uZmlnEmsKG3JlYm9vdF9mcm9tX3NvZnR3YXJlX3VwZGF0ZRgFIAEoCzIsLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlQZXJzaXN0ZW50U3RhdHMuRXZlbnRSGHJlYm9vdEZyb21Tb2Z0d2FyZVVwZGF0ZRpVCgVFdmVudBIUCgVjb3VudBgBIAEoDVIFY291bnQSNgoXbGFzdF9vY2N1cnJlZF90aW1lc3RhbXAYAiABKANSFWxhc3RPY2N1cnJlZFRpbWVzdGFtcA==');
@$core.Deprecated('Use transceiverIFLoopbackTestResponseDescriptor instead')
const TransceiverIFLoopbackTestResponse$json = const {
  '1': 'TransceiverIFLoopbackTestResponse',
  '2': const [
    const {'1': 'ber_loopback_test', '3': 1, '4': 1, '5': 2, '10': 'berLoopbackTest'},
    const {'1': 'snr_loopback_test', '3': 2, '4': 1, '5': 2, '10': 'snrLoopbackTest'},
    const {'1': 'rssi_loopback_test', '3': 3, '4': 1, '5': 2, '10': 'rssiLoopbackTest'},
    const {'1': 'pll_lock', '3': 4, '4': 1, '5': 8, '10': 'pllLock'},
  ],
};

/// Descriptor for `TransceiverIFLoopbackTestResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transceiverIFLoopbackTestResponseDescriptor = $convert.base64Decode('CiFUcmFuc2NlaXZlcklGTG9vcGJhY2tUZXN0UmVzcG9uc2USKgoRYmVyX2xvb3BiYWNrX3Rlc3QYASABKAJSD2Jlckxvb3BiYWNrVGVzdBIqChFzbnJfbG9vcGJhY2tfdGVzdBgCIAEoAlIPc25yTG9vcGJhY2tUZXN0EiwKEnJzc2lfbG9vcGJhY2tfdGVzdBgDIAEoAlIQcnNzaUxvb3BiYWNrVGVzdBIZCghwbGxfbG9jaxgEIAEoCFIHcGxsTG9jaw==');
@$core.Deprecated('Use transceiverGetStatusResponseDescriptor instead')
const TransceiverGetStatusResponse$json = const {
  '1': 'TransceiverGetStatusResponse',
  '2': const [
    const {'1': 'mod_state', '3': 1, '4': 1, '5': 14, '6': '.SpaceX.API.Device.TransceiverModulatorState', '10': 'modState'},
    const {'1': 'demod_state', '3': 2, '4': 1, '5': 14, '6': '.SpaceX.API.Device.TransceiverModulatorState', '10': 'demodState'},
    const {'1': 'tx_state', '3': 3, '4': 1, '5': 14, '6': '.SpaceX.API.Device.TransceiverTxRxState', '10': 'txState'},
    const {'1': 'rx_state', '3': 4, '4': 1, '5': 14, '6': '.SpaceX.API.Device.TransceiverTxRxState', '10': 'rxState'},
    const {'1': 'state', '3': 1006, '4': 1, '5': 14, '6': '.SpaceX.API.Device.DishState', '10': 'state'},
    const {'1': 'faults', '3': 1007, '4': 1, '5': 11, '6': '.SpaceX.API.Device.TransceiverFaults', '10': 'faults'},
    const {'1': 'transmit_blanking_state', '3': 1008, '4': 1, '5': 14, '6': '.SpaceX.API.Device.TransceiverTransmitBlankingState', '10': 'transmitBlankingState'},
    const {'1': 'modem_asic_temp', '3': 1009, '4': 1, '5': 2, '10': 'modemAsicTemp'},
    const {'1': 'tx_if_temp', '3': 1010, '4': 1, '5': 2, '10': 'txIfTemp'},
  ],
};

/// Descriptor for `TransceiverGetStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transceiverGetStatusResponseDescriptor = $convert.base64Decode('ChxUcmFuc2NlaXZlckdldFN0YXR1c1Jlc3BvbnNlEkkKCW1vZF9zdGF0ZRgBIAEoDjIsLlNwYWNlWC5BUEkuRGV2aWNlLlRyYW5zY2VpdmVyTW9kdWxhdG9yU3RhdGVSCG1vZFN0YXRlEk0KC2RlbW9kX3N0YXRlGAIgASgOMiwuU3BhY2VYLkFQSS5EZXZpY2UuVHJhbnNjZWl2ZXJNb2R1bGF0b3JTdGF0ZVIKZGVtb2RTdGF0ZRJCCgh0eF9zdGF0ZRgDIAEoDjInLlNwYWNlWC5BUEkuRGV2aWNlLlRyYW5zY2VpdmVyVHhSeFN0YXRlUgd0eFN0YXRlEkIKCHJ4X3N0YXRlGAQgASgOMicuU3BhY2VYLkFQSS5EZXZpY2UuVHJhbnNjZWl2ZXJUeFJ4U3RhdGVSB3J4U3RhdGUSMwoFc3RhdGUY7gcgASgOMhwuU3BhY2VYLkFQSS5EZXZpY2UuRGlzaFN0YXRlUgVzdGF0ZRI9CgZmYXVsdHMY7wcgASgLMiQuU3BhY2VYLkFQSS5EZXZpY2UuVHJhbnNjZWl2ZXJGYXVsdHNSBmZhdWx0cxJsChd0cmFuc21pdF9ibGFua2luZ19zdGF0ZRjwByABKA4yMy5TcGFjZVguQVBJLkRldmljZS5UcmFuc2NlaXZlclRyYW5zbWl0QmxhbmtpbmdTdGF0ZVIVdHJhbnNtaXRCbGFua2luZ1N0YXRlEicKD21vZGVtX2FzaWNfdGVtcBjxByABKAJSDW1vZGVtQXNpY1RlbXASHQoKdHhfaWZfdGVtcBjyByABKAJSCHR4SWZUZW1w');
@$core.Deprecated('Use transceiverFaultsDescriptor instead')
const TransceiverFaults$json = const {
  '1': 'TransceiverFaults',
  '2': const [
    const {'1': 'over_temp_modem_asic_fault', '3': 1, '4': 1, '5': 8, '10': 'overTempModemAsicFault'},
    const {'1': 'over_temp_pcba_fault', '3': 2, '4': 1, '5': 8, '10': 'overTempPcbaFault'},
    const {'1': 'dc_voltage_fault', '3': 3, '4': 1, '5': 8, '10': 'dcVoltageFault'},
  ],
};

/// Descriptor for `TransceiverFaults`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transceiverFaultsDescriptor = $convert.base64Decode('ChFUcmFuc2NlaXZlckZhdWx0cxI6ChpvdmVyX3RlbXBfbW9kZW1fYXNpY19mYXVsdBgBIAEoCFIWb3ZlclRlbXBNb2RlbUFzaWNGYXVsdBIvChRvdmVyX3RlbXBfcGNiYV9mYXVsdBgCIAEoCFIRb3ZlclRlbXBQY2JhRmF1bHQSKAoQZGNfdm9sdGFnZV9mYXVsdBgDIAEoCFIOZGNWb2x0YWdlRmF1bHQ=');
@$core.Deprecated('Use transceiverGetTelemetryResponseDescriptor instead')
const TransceiverGetTelemetryResponse$json = const {
  '1': 'TransceiverGetTelemetryResponse',
  '2': const [
    const {'1': 'antenna_pointing_mode', '3': 1001, '4': 1, '5': 13, '10': 'antennaPointingMode'},
    const {'1': 'antenna_pitch', '3': 1002, '4': 1, '5': 2, '10': 'antennaPitch'},
    const {'1': 'antenna_roll', '3': 1003, '4': 1, '5': 2, '10': 'antennaRoll'},
    const {'1': 'antenna_rx_theta', '3': 1004, '4': 1, '5': 2, '10': 'antennaRxTheta'},
    const {'1': 'antenna_true_heading', '3': 1005, '4': 1, '5': 2, '10': 'antennaTrueHeading'},
    const {'1': 'rx_channel', '3': 1006, '4': 1, '5': 13, '10': 'rxChannel'},
    const {'1': 'current_cell_id', '3': 1007, '4': 1, '5': 13, '10': 'currentCellId'},
    const {'1': 'seconds_until_slot_end', '3': 1008, '4': 1, '5': 2, '10': 'secondsUntilSlotEnd'},
    const {'1': 'wb_rssi_peak_mag_db', '3': 1009, '4': 1, '5': 2, '10': 'wbRssiPeakMagDb'},
    const {'1': 'pop_ping_drop_rate', '3': 1010, '4': 1, '5': 2, '10': 'popPingDropRate'},
    const {'1': 'snr_db', '3': 1011, '4': 1, '5': 2, '10': 'snrDb'},
    const {'1': 'l1_snr_avg_db', '3': 1012, '4': 1, '5': 2, '10': 'l1SnrAvgDb'},
    const {'1': 'l1_snr_min_db', '3': 1013, '4': 1, '5': 2, '10': 'l1SnrMinDb'},
    const {'1': 'l1_snr_max_db', '3': 1014, '4': 1, '5': 2, '10': 'l1SnrMaxDb'},
    const {'1': 'lmac_satellite_id', '3': 1015, '4': 1, '5': 13, '10': 'lmacSatelliteId'},
    const {'1': 'target_satellite_id', '3': 1016, '4': 1, '5': 13, '10': 'targetSatelliteId'},
    const {'1': 'grant_mcs', '3': 1017, '4': 1, '5': 13, '10': 'grantMcs'},
    const {'1': 'grant_symbols_avg', '3': 1018, '4': 1, '5': 2, '10': 'grantSymbolsAvg'},
    const {'1': 'ded_grant', '3': 1019, '4': 1, '5': 13, '10': 'dedGrant'},
    const {'1': 'mobility_proactive_slot_change', '3': 1020, '4': 1, '5': 13, '10': 'mobilityProactiveSlotChange'},
    const {'1': 'mobility_reactive_slot_change', '3': 1021, '4': 1, '5': 13, '10': 'mobilityReactiveSlotChange'},
    const {'1': 'rfp_total_syn_failed', '3': 1022, '4': 1, '5': 13, '10': 'rfpTotalSynFailed'},
    const {'1': 'num_out_of_seq', '3': 1023, '4': 1, '5': 13, '10': 'numOutOfSeq'},
    const {'1': 'num_ulmap_drop', '3': 1024, '4': 1, '5': 13, '10': 'numUlmapDrop'},
    const {'1': 'current_seconds_of_schedule', '3': 1025, '4': 1, '5': 2, '10': 'currentSecondsOfSchedule'},
    const {'1': 'send_label_switch_to_ground_failed_calls', '3': 1026, '4': 1, '5': 13, '10': 'sendLabelSwitchToGroundFailedCalls'},
    const {'1': 'ema_velocity_x', '3': 1027, '4': 1, '5': 1, '10': 'emaVelocityX'},
    const {'1': 'ema_velocity_y', '3': 1028, '4': 1, '5': 1, '10': 'emaVelocityY'},
    const {'1': 'ema_velocity_z', '3': 1029, '4': 1, '5': 1, '10': 'emaVelocityZ'},
    const {'1': 'ce_rssi_db', '3': 1030, '4': 1, '5': 2, '10': 'ceRssiDb'},
  ],
};

/// Descriptor for `TransceiverGetTelemetryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transceiverGetTelemetryResponseDescriptor = $convert.base64Decode('Ch9UcmFuc2NlaXZlckdldFRlbGVtZXRyeVJlc3BvbnNlEjMKFWFudGVubmFfcG9pbnRpbmdfbW9kZRjpByABKA1SE2FudGVubmFQb2ludGluZ01vZGUSJAoNYW50ZW5uYV9waXRjaBjqByABKAJSDGFudGVubmFQaXRjaBIiCgxhbnRlbm5hX3JvbGwY6wcgASgCUgthbnRlbm5hUm9sbBIpChBhbnRlbm5hX3J4X3RoZXRhGOwHIAEoAlIOYW50ZW5uYVJ4VGhldGESMQoUYW50ZW5uYV90cnVlX2hlYWRpbmcY7QcgASgCUhJhbnRlbm5hVHJ1ZUhlYWRpbmcSHgoKcnhfY2hhbm5lbBjuByABKA1SCXJ4Q2hhbm5lbBInCg9jdXJyZW50X2NlbGxfaWQY7wcgASgNUg1jdXJyZW50Q2VsbElkEjQKFnNlY29uZHNfdW50aWxfc2xvdF9lbmQY8AcgASgCUhNzZWNvbmRzVW50aWxTbG90RW5kEi0KE3diX3Jzc2lfcGVha19tYWdfZGIY8QcgASgCUg93YlJzc2lQZWFrTWFnRGISLAoScG9wX3BpbmdfZHJvcF9yYXRlGPIHIAEoAlIPcG9wUGluZ0Ryb3BSYXRlEhYKBnNucl9kYhjzByABKAJSBXNuckRiEiIKDWwxX3Nucl9hdmdfZGIY9AcgASgCUgpsMVNuckF2Z0RiEiIKDWwxX3Nucl9taW5fZGIY9QcgASgCUgpsMVNuck1pbkRiEiIKDWwxX3Nucl9tYXhfZGIY9gcgASgCUgpsMVNuck1heERiEisKEWxtYWNfc2F0ZWxsaXRlX2lkGPcHIAEoDVIPbG1hY1NhdGVsbGl0ZUlkEi8KE3RhcmdldF9zYXRlbGxpdGVfaWQY+AcgASgNUhF0YXJnZXRTYXRlbGxpdGVJZBIcCglncmFudF9tY3MY+QcgASgNUghncmFudE1jcxIrChFncmFudF9zeW1ib2xzX2F2Zxj6ByABKAJSD2dyYW50U3ltYm9sc0F2ZxIcCglkZWRfZ3JhbnQY+wcgASgNUghkZWRHcmFudBJECh5tb2JpbGl0eV9wcm9hY3RpdmVfc2xvdF9jaGFuZ2UY/AcgASgNUhttb2JpbGl0eVByb2FjdGl2ZVNsb3RDaGFuZ2USQgodbW9iaWxpdHlfcmVhY3RpdmVfc2xvdF9jaGFuZ2UY/QcgASgNUhptb2JpbGl0eVJlYWN0aXZlU2xvdENoYW5nZRIwChRyZnBfdG90YWxfc3luX2ZhaWxlZBj+ByABKA1SEXJmcFRvdGFsU3luRmFpbGVkEiQKDm51bV9vdXRfb2Zfc2VxGP8HIAEoDVILbnVtT3V0T2ZTZXESJQoObnVtX3VsbWFwX2Ryb3AYgAggASgNUgxudW1VbG1hcERyb3ASPgobY3VycmVudF9zZWNvbmRzX29mX3NjaGVkdWxlGIEIIAEoAlIYY3VycmVudFNlY29uZHNPZlNjaGVkdWxlElUKKHNlbmRfbGFiZWxfc3dpdGNoX3RvX2dyb3VuZF9mYWlsZWRfY2FsbHMYggggASgNUiJzZW5kTGFiZWxTd2l0Y2hUb0dyb3VuZEZhaWxlZENhbGxzEiUKDmVtYV92ZWxvY2l0eV94GIMIIAEoAVIMZW1hVmVsb2NpdHlYEiUKDmVtYV92ZWxvY2l0eV95GIQIIAEoAVIMZW1hVmVsb2NpdHlZEiUKDmVtYV92ZWxvY2l0eV96GIUIIAEoAVIMZW1hVmVsb2NpdHlaEh0KCmNlX3Jzc2lfZGIYhgggASgCUghjZVJzc2lEYg==');
@$core.Deprecated('Use toDeviceDescriptor instead')
const ToDevice$json = const {
  '1': 'ToDevice',
  '2': const [
    const {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.Request', '9': 0, '10': 'request'},
    const {'1': 'health_check', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.HealthCheck', '9': 0, '10': 'healthCheck'},
  ],
  '8': const [
    const {'1': 'message'},
  ],
};

/// Descriptor for `ToDevice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List toDeviceDescriptor = $convert.base64Decode('CghUb0RldmljZRI2CgdyZXF1ZXN0GAEgASgLMhouU3BhY2VYLkFQSS5EZXZpY2UuUmVxdWVzdEgAUgdyZXF1ZXN0EkMKDGhlYWx0aF9jaGVjaxgCIAEoCzIeLlNwYWNlWC5BUEkuRGV2aWNlLkhlYWx0aENoZWNrSABSC2hlYWx0aENoZWNrQgkKB21lc3NhZ2U=');
@$core.Deprecated('Use healthCheckDescriptor instead')
const HealthCheck$json = const {
  '1': 'HealthCheck',
};

/// Descriptor for `HealthCheck`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List healthCheckDescriptor = $convert.base64Decode('CgtIZWFsdGhDaGVjaw==');
@$core.Deprecated('Use fromDeviceDescriptor instead')
const FromDevice$json = const {
  '1': 'FromDevice',
  '2': const [
    const {'1': 'response', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.Response', '9': 0, '10': 'response'},
    const {'1': 'event', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Device.Event', '9': 0, '10': 'event'},
    const {'1': 'health_check', '3': 3, '4': 1, '5': 11, '6': '.SpaceX.API.Device.HealthCheck', '9': 0, '10': 'healthCheck'},
  ],
  '8': const [
    const {'1': 'message'},
  ],
};

/// Descriptor for `FromDevice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fromDeviceDescriptor = $convert.base64Decode('CgpGcm9tRGV2aWNlEjkKCHJlc3BvbnNlGAEgASgLMhsuU3BhY2VYLkFQSS5EZXZpY2UuUmVzcG9uc2VIAFIIcmVzcG9uc2USMAoFZXZlbnQYAiABKAsyGC5TcGFjZVguQVBJLkRldmljZS5FdmVudEgAUgVldmVudBJDCgxoZWFsdGhfY2hlY2sYAyABKAsyHi5TcGFjZVguQVBJLkRldmljZS5IZWFsdGhDaGVja0gAUgtoZWFsdGhDaGVja0IJCgdtZXNzYWdl');
@$core.Deprecated('Use eventDescriptor instead')
const Event$json = const {
  '1': 'Event',
  '2': const [
    const {'1': 'wifi_new_client_connected', '3': 3001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiNewClientConnectedEvent', '9': 0, '10': 'wifiNewClientConnected'},
    const {'1': 'wifi_account_bonding', '3': 3002, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiAccountBondingEvent', '9': 0, '10': 'wifiAccountBonding'},
    const {'1': 'wifi_new_peer', '3': 3003, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiNewPeerEvent', '9': 0, '10': 'wifiNewPeer'},
    const {'1': 'wifi_cloud_status', '3': 3004, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiCloudStatusEvent', '9': 0, '10': 'wifiCloudStatus'},
  ],
  '8': const [
    const {'1': 'event'},
  ],
};

/// Descriptor for `Event`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventDescriptor = $convert.base64Decode('CgVFdmVudBJsChl3aWZpX25ld19jbGllbnRfY29ubmVjdGVkGLkXIAEoCzIuLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlOZXdDbGllbnRDb25uZWN0ZWRFdmVudEgAUhZ3aWZpTmV3Q2xpZW50Q29ubmVjdGVkEl8KFHdpZmlfYWNjb3VudF9ib25kaW5nGLoXIAEoCzIqLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlBY2NvdW50Qm9uZGluZ0V2ZW50SABSEndpZmlBY2NvdW50Qm9uZGluZxJKCg13aWZpX25ld19wZWVyGLsXIAEoCzIjLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlOZXdQZWVyRXZlbnRIAFILd2lmaU5ld1BlZXISVgoRd2lmaV9jbG91ZF9zdGF0dXMYvBcgASgLMicuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUNsb3VkU3RhdHVzRXZlbnRIAFIPd2lmaUNsb3VkU3RhdHVzQgcKBWV2ZW50');
@$core.Deprecated('Use wifiNewClientConnectedEventDescriptor instead')
const WifiNewClientConnectedEvent$json = const {
  '1': 'WifiNewClientConnectedEvent',
  '2': const [
    const {'1': 'client', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiClient', '10': 'client'},
  ],
};

/// Descriptor for `WifiNewClientConnectedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiNewClientConnectedEventDescriptor = $convert.base64Decode('ChtXaWZpTmV3Q2xpZW50Q29ubmVjdGVkRXZlbnQSNQoGY2xpZW50GAEgASgLMh0uU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUNsaWVudFIGY2xpZW50');
@$core.Deprecated('Use wifiAccountBondingEventDescriptor instead')
const WifiAccountBondingEvent$json = const {
  '1': 'WifiAccountBondingEvent',
  '2': const [
    const {'1': 'dish_id', '3': 1, '4': 1, '5': 9, '10': 'dishId'},
    const {'1': 'is_repeater', '3': 2, '4': 1, '5': 8, '10': 'isRepeater'},
    const {'1': 'hardware_version', '3': 3, '4': 1, '5': 9, '10': 'hardwareVersion'},
  ],
};

/// Descriptor for `WifiAccountBondingEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiAccountBondingEventDescriptor = $convert.base64Decode('ChdXaWZpQWNjb3VudEJvbmRpbmdFdmVudBIXCgdkaXNoX2lkGAEgASgJUgZkaXNoSWQSHwoLaXNfcmVwZWF0ZXIYAiABKAhSCmlzUmVwZWF0ZXISKQoQaGFyZHdhcmVfdmVyc2lvbhgDIAEoCVIPaGFyZHdhcmVWZXJzaW9u');
@$core.Deprecated('Use wifiNewPeerEventDescriptor instead')
const WifiNewPeerEvent$json = const {
  '1': 'WifiNewPeerEvent',
  '2': const [
    const {'1': 'peer_id', '3': 1, '4': 1, '5': 9, '10': 'peerId'},
  ],
};

/// Descriptor for `WifiNewPeerEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiNewPeerEventDescriptor = $convert.base64Decode('ChBXaWZpTmV3UGVlckV2ZW50EhcKB3BlZXJfaWQYASABKAlSBnBlZXJJZA==');
@$core.Deprecated('Use wifiCloudStatusEventDescriptor instead')
const WifiCloudStatusEvent$json = const {
  '1': 'WifiCloudStatusEvent',
  '2': const [
    const {'1': 'direct_link_to_dish', '3': 1, '4': 1, '5': 8, '10': 'directLinkToDish'},
    const {'1': 'hardware_version', '3': 2, '4': 1, '5': 9, '10': 'hardwareVersion'},
  ],
};

/// Descriptor for `WifiCloudStatusEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiCloudStatusEventDescriptor = $convert.base64Decode('ChRXaWZpQ2xvdWRTdGF0dXNFdmVudBItChNkaXJlY3RfbGlua190b19kaXNoGAEgASgIUhBkaXJlY3RMaW5rVG9EaXNoEikKEGhhcmR3YXJlX3ZlcnNpb24YAiABKAlSD2hhcmR3YXJlVmVyc2lvbg==');
