///
//  Generated code. Do not modify.
//  source: starlink.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
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
  ],
  '8': const [
    const {'1': 'event'},
  ],
};

/// Descriptor for `Event`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventDescriptor = $convert.base64Decode('CgVFdmVudBJsChl3aWZpX25ld19jbGllbnRfY29ubmVjdGVkGLkXIAEoCzIuLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlOZXdDbGllbnRDb25uZWN0ZWRFdmVudEgAUhZ3aWZpTmV3Q2xpZW50Q29ubmVjdGVkEl8KFHdpZmlfYWNjb3VudF9ib25kaW5nGLoXIAEoCzIqLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlBY2NvdW50Qm9uZGluZ0V2ZW50SABSEndpZmlBY2NvdW50Qm9uZGluZxJKCg13aWZpX25ld19wZWVyGLsXIAEoCzIjLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlOZXdQZWVyRXZlbnRIAFILd2lmaU5ld1BlZXJCBwoFZXZlbnQ=');
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
@$core.Deprecated('Use requestDescriptor instead')
const Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'target_id', '3': 13, '4': 1, '5': 9, '10': 'targetId'},
    const {'1': 'epoch_id', '3': 14, '4': 1, '5': 4, '10': 'epochId'},
    const {'1': 'reboot', '3': 1001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.RebootRequest', '9': 0, '10': 'reboot'},
    const {'1': 'get_status', '3': 1004, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetStatusRequest', '9': 0, '10': 'getStatus'},
    const {'1': 'get_device_info', '3': 1008, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetDeviceInfoRequest', '9': 0, '10': 'getDeviceInfo'},
    const {'1': 'get_location', '3': 1017, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetLocationRequest', '9': 0, '10': 'getLocation'},
    const {'1': 'get_persistent_stats', '3': 1022, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetPersistentStatsRequest', '9': 0, '10': 'getPersistentStats'},
    const {'1': 'get_connections', '3': 1023, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetConnectionsRequest', '9': 0, '10': 'getConnections'},
    const {'1': 'dish_stow', '3': 2002, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishStowRequest', '9': 0, '10': 'dishStow'},
    const {'1': 'dish_set_config', '3': 2010, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishSetConfigRequest', '9': 0, '10': 'dishSetConfig'},
    const {'1': 'dish_get_config', '3': 2011, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetConfigRequest', '9': 0, '10': 'dishGetConfig'},
    const {'1': 'dish_inhibit_gps', '3': 2014, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishInhibitGpsRequest', '9': 0, '10': 'dishInhibitGps'},
    const {'1': 'wifi_set_config', '3': 3001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSetConfigRequest', '9': 0, '10': 'wifiSetConfig'},
    const {'1': 'wifi_get_clients', '3': 3002, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetClientsRequest', '9': 0, '10': 'wifiGetClients'},
    const {'1': 'wifi_get_diagnostics', '3': 3008, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetDiagnosticsRequest', '9': 0, '10': 'wifiGetDiagnostics'},
    const {'1': 'wifi_get_config', '3': 3009, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetConfigRequest', '9': 0, '10': 'wifiGetConfig'},
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
final $typed_data.Uint8List requestDescriptor = $convert.base64Decode('CgdSZXF1ZXN0Eg4KAmlkGAEgASgEUgJpZBIbCgl0YXJnZXRfaWQYDSABKAlSCHRhcmdldElkEhkKCGVwb2NoX2lkGA4gASgEUgdlcG9jaElkEjsKBnJlYm9vdBjpByABKAsyIC5TcGFjZVguQVBJLkRldmljZS5SZWJvb3RSZXF1ZXN0SABSBnJlYm9vdBJFCgpnZXRfc3RhdHVzGOwHIAEoCzIjLlNwYWNlWC5BUEkuRGV2aWNlLkdldFN0YXR1c1JlcXVlc3RIAFIJZ2V0U3RhdHVzElIKD2dldF9kZXZpY2VfaW5mbxjwByABKAsyJy5TcGFjZVguQVBJLkRldmljZS5HZXREZXZpY2VJbmZvUmVxdWVzdEgAUg1nZXREZXZpY2VJbmZvEksKDGdldF9sb2NhdGlvbhj5ByABKAsyJS5TcGFjZVguQVBJLkRldmljZS5HZXRMb2NhdGlvblJlcXVlc3RIAFILZ2V0TG9jYXRpb24SYQoUZ2V0X3BlcnNpc3RlbnRfc3RhdHMY/gcgASgLMiwuU3BhY2VYLkFQSS5EZXZpY2UuR2V0UGVyc2lzdGVudFN0YXRzUmVxdWVzdEgAUhJnZXRQZXJzaXN0ZW50U3RhdHMSVAoPZ2V0X2Nvbm5lY3Rpb25zGP8HIAEoCzIoLlNwYWNlWC5BUEkuRGV2aWNlLkdldENvbm5lY3Rpb25zUmVxdWVzdEgAUg5nZXRDb25uZWN0aW9ucxJCCglkaXNoX3N0b3cY0g8gASgLMiIuU3BhY2VYLkFQSS5EZXZpY2UuRGlzaFN0b3dSZXF1ZXN0SABSCGRpc2hTdG93ElIKD2Rpc2hfc2V0X2NvbmZpZxjaDyABKAsyJy5TcGFjZVguQVBJLkRldmljZS5EaXNoU2V0Q29uZmlnUmVxdWVzdEgAUg1kaXNoU2V0Q29uZmlnElIKD2Rpc2hfZ2V0X2NvbmZpZxjbDyABKAsyJy5TcGFjZVguQVBJLkRldmljZS5EaXNoR2V0Q29uZmlnUmVxdWVzdEgAUg1kaXNoR2V0Q29uZmlnElUKEGRpc2hfaW5oaWJpdF9ncHMY3g8gASgLMiguU3BhY2VYLkFQSS5EZXZpY2UuRGlzaEluaGliaXRHcHNSZXF1ZXN0SABSDmRpc2hJbmhpYml0R3BzElIKD3dpZmlfc2V0X2NvbmZpZxi5FyABKAsyJy5TcGFjZVguQVBJLkRldmljZS5XaWZpU2V0Q29uZmlnUmVxdWVzdEgAUg13aWZpU2V0Q29uZmlnElUKEHdpZmlfZ2V0X2NsaWVudHMYuhcgASgLMiguU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUdldENsaWVudHNSZXF1ZXN0SABSDndpZmlHZXRDbGllbnRzEmEKFHdpZmlfZ2V0X2RpYWdub3N0aWNzGMAXIAEoCzIsLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlHZXREaWFnbm9zdGljc1JlcXVlc3RIAFISd2lmaUdldERpYWdub3N0aWNzElIKD3dpZmlfZ2V0X2NvbmZpZxjBFyABKAsyJy5TcGFjZVguQVBJLkRldmljZS5XaWZpR2V0Q29uZmlnUmVxdWVzdEgAUg13aWZpR2V0Q29uZmlnQgkKB3JlcXVlc3RKBgj6BxD7B0oGCIEIEIIISgYIgggQgwhKBgjDFxDEF0oGCMYXEMcX');
@$core.Deprecated('Use responseDescriptor instead')
const Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'status', '3': 2, '4': 1, '5': 11, '6': '.SpaceX.API.Status.Status', '10': 'status'},
    const {'1': 'api_version', '3': 3, '4': 1, '5': 4, '10': 'apiVersion'},
    const {'1': 'reboot', '3': 1001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.RebootResponse', '9': 0, '10': 'reboot'},
    const {'1': 'get_device_info', '3': 1004, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetDeviceInfoResponse', '9': 0, '10': 'getDeviceInfo'},
    const {'1': 'get_location', '3': 1017, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetLocationResponse', '9': 0, '10': 'getLocation'},
    const {'1': 'get_connections', '3': 1023, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetConnectionsResponse', '9': 0, '10': 'getConnections'},
    const {'1': 'dish_stow', '3': 2002, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishStowResponse', '9': 0, '10': 'dishStow'},
    const {'1': 'dish_get_status', '3': 2004, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetStatusResponse', '9': 0, '10': 'dishGetStatus'},
    const {'1': 'dish_set_config', '3': 2010, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishSetConfigResponse', '9': 0, '10': 'dishSetConfig'},
    const {'1': 'dish_get_config', '3': 2011, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetConfigResponse', '9': 0, '10': 'dishGetConfig'},
    const {'1': 'dish_inhibit_gps', '3': 2013, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishInhibitGpsResponse', '9': 0, '10': 'dishInhibitGps'},
    const {'1': 'wifi_set_config', '3': 3001, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiSetConfigResponse', '9': 0, '10': 'wifiSetConfig'},
    const {'1': 'wifi_get_clients', '3': 3002, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetClientsResponse', '9': 0, '10': 'wifiGetClients'},
    const {'1': 'wifi_get_diagnostics', '3': 3008, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetDiagnosticsResponse', '9': 0, '10': 'wifiGetDiagnostics'},
    const {'1': 'wifi_get_config', '3': 3009, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetConfigResponse', '9': 0, '10': 'wifiGetConfig'},
    const {'1': 'wifi_get_persistent_stats', '3': 3022, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiGetPersistentStatsResponse', '9': 0, '10': 'wifiGetPersistentStats'},
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
final $typed_data.Uint8List responseDescriptor = $convert.base64Decode('CghSZXNwb25zZRIOCgJpZBgBIAEoBFICaWQSMQoGc3RhdHVzGAIgASgLMhkuU3BhY2VYLkFQSS5TdGF0dXMuU3RhdHVzUgZzdGF0dXMSHwoLYXBpX3ZlcnNpb24YAyABKARSCmFwaVZlcnNpb24SPAoGcmVib290GOkHIAEoCzIhLlNwYWNlWC5BUEkuRGV2aWNlLlJlYm9vdFJlc3BvbnNlSABSBnJlYm9vdBJTCg9nZXRfZGV2aWNlX2luZm8Y7AcgASgLMiguU3BhY2VYLkFQSS5EZXZpY2UuR2V0RGV2aWNlSW5mb1Jlc3BvbnNlSABSDWdldERldmljZUluZm8STAoMZ2V0X2xvY2F0aW9uGPkHIAEoCzImLlNwYWNlWC5BUEkuRGV2aWNlLkdldExvY2F0aW9uUmVzcG9uc2VIAFILZ2V0TG9jYXRpb24SVQoPZ2V0X2Nvbm5lY3Rpb25zGP8HIAEoCzIpLlNwYWNlWC5BUEkuRGV2aWNlLkdldENvbm5lY3Rpb25zUmVzcG9uc2VIAFIOZ2V0Q29ubmVjdGlvbnMSQwoJZGlzaF9zdG93GNIPIAEoCzIjLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hTdG93UmVzcG9uc2VIAFIIZGlzaFN0b3cSUwoPZGlzaF9nZXRfc3RhdHVzGNQPIAEoCzIoLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hHZXRTdGF0dXNSZXNwb25zZUgAUg1kaXNoR2V0U3RhdHVzElMKD2Rpc2hfc2V0X2NvbmZpZxjaDyABKAsyKC5TcGFjZVguQVBJLkRldmljZS5EaXNoU2V0Q29uZmlnUmVzcG9uc2VIAFINZGlzaFNldENvbmZpZxJTCg9kaXNoX2dldF9jb25maWcY2w8gASgLMiguU3BhY2VYLkFQSS5EZXZpY2UuRGlzaEdldENvbmZpZ1Jlc3BvbnNlSABSDWRpc2hHZXRDb25maWcSVgoQZGlzaF9pbmhpYml0X2dwcxjdDyABKAsyKS5TcGFjZVguQVBJLkRldmljZS5EaXNoSW5oaWJpdEdwc1Jlc3BvbnNlSABSDmRpc2hJbmhpYml0R3BzElMKD3dpZmlfc2V0X2NvbmZpZxi5FyABKAsyKC5TcGFjZVguQVBJLkRldmljZS5XaWZpU2V0Q29uZmlnUmVzcG9uc2VIAFINd2lmaVNldENvbmZpZxJWChB3aWZpX2dldF9jbGllbnRzGLoXIAEoCzIpLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlHZXRDbGllbnRzUmVzcG9uc2VIAFIOd2lmaUdldENsaWVudHMSYgoUd2lmaV9nZXRfZGlhZ25vc3RpY3MYwBcgASgLMi0uU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUdldERpYWdub3N0aWNzUmVzcG9uc2VIAFISd2lmaUdldERpYWdub3N0aWNzElMKD3dpZmlfZ2V0X2NvbmZpZxjBFyABKAsyKC5TcGFjZVguQVBJLkRldmljZS5XaWZpR2V0Q29uZmlnUmVzcG9uc2VIAFINd2lmaUdldENvbmZpZxJvChl3aWZpX2dldF9wZXJzaXN0ZW50X3N0YXRzGM4XIAEoCzIxLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlHZXRQZXJzaXN0ZW50U3RhdHNSZXNwb25zZUgAUhZ3aWZpR2V0UGVyc2lzdGVudFN0YXRzQgoKCHJlc3BvbnNlSgYI+gcQ+wdKBgiCCBCDCEoGCOkPEOoPSgYIwxcQxBdKBgjGFxDHFw==');
@$core.Deprecated('Use getStatusRequestDescriptor instead')
const GetStatusRequest$json = const {
  '1': 'GetStatusRequest',
};

/// Descriptor for `GetStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStatusRequestDescriptor = $convert.base64Decode('ChBHZXRTdGF0dXNSZXF1ZXN0');
@$core.Deprecated('Use getDeviceInfoRequestDescriptor instead')
const GetDeviceInfoRequest$json = const {
  '1': 'GetDeviceInfoRequest',
};

/// Descriptor for `GetDeviceInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDeviceInfoRequestDescriptor = $convert.base64Decode('ChRHZXREZXZpY2VJbmZvUmVxdWVzdA==');
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
    const {'1': 'config', '3': 2000, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishConfig', '10': 'config'},
  ],
  '9': const [
    const {'1': 1001, '2': 1002},
    const {'1': 1006, '2': 1007},
    const {'1': 1013, '2': 1014},
  ],
};

/// Descriptor for `DishGetStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGetStatusResponseDescriptor = $convert.base64Decode('ChVEaXNoR2V0U3RhdHVzUmVzcG9uc2USPgoLZGV2aWNlX2luZm8YASABKAsyHS5TcGFjZVguQVBJLkRldmljZS5EZXZpY2VJbmZvUgpkZXZpY2VJbmZvEkEKDGRldmljZV9zdGF0ZRgCIAEoCzIeLlNwYWNlWC5BUEkuRGV2aWNlLkRldmljZVN0YXRlUgtkZXZpY2VTdGF0ZRJDCh5zZWNvbmRzX3RvX2ZpcnN0X25vbmVtcHR5X3Nsb3QY6gcgASgCUhpzZWNvbmRzVG9GaXJzdE5vbmVtcHR5U2xvdBIsChJwb3BfcGluZ19kcm9wX3JhdGUY6wcgASgCUg9wb3BQaW5nRHJvcFJhdGUSVQoRb2JzdHJ1Y3Rpb25fc3RhdHMY7AcgASgLMicuU3BhY2VYLkFQSS5EZXZpY2UuRGlzaE9ic3RydWN0aW9uU3RhdHNSEG9ic3RydWN0aW9uU3RhdHMSNgoGYWxlcnRzGO0HIAEoCzIdLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hBbGVydHNSBmFsZXJ0cxI3Chdkb3dubGlua190aHJvdWdocHV0X2JwcxjvByABKAJSFWRvd25saW5rVGhyb3VnaHB1dEJwcxIzChV1cGxpbmtfdGhyb3VnaHB1dF9icHMY8AcgASgCUhN1cGxpbmtUaHJvdWdocHV0QnBzEi4KE3BvcF9waW5nX2xhdGVuY3lfbXMY8QcgASgCUhBwb3BQaW5nTGF0ZW5jeU1zEiYKDnN0b3dfcmVxdWVzdGVkGPIHIAEoCFINc3Rvd1JlcXVlc3RlZBIzChVib3Jlc2lnaHRfYXppbXV0aF9kZWcY8wcgASgCUhNib3Jlc2lnaHRBemltdXRoRGVnEjcKF2JvcmVzaWdodF9lbGV2YXRpb25fZGVnGPQHIAEoAlIVYm9yZXNpZ2h0RWxldmF0aW9uRGVnEjYKBm91dGFnZRj2ByABKAsyHS5TcGFjZVguQVBJLkRldmljZS5EaXNoT3V0YWdlUgZvdXRhZ2USPQoJZ3BzX3N0YXRzGPcHIAEoCzIfLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hHcHNTdGF0c1IIZ3BzU3RhdHMSJQoOZXRoX3NwZWVkX21icHMY+AcgASgFUgxldGhTcGVlZE1icHMSTAoObW9iaWxpdHlfY2xhc3MY+QcgASgOMiQuU3BhY2VYLkFQSS5EZXZpY2UuVXNlck1vYmlsaXR5Q2xhc3NSDW1vYmlsaXR5Q2xhc3MSNwoYaXNfc25yX2Fib3ZlX25vaXNlX2Zsb29yGPoHIAEoCFIUaXNTbnJBYm92ZU5vaXNlRmxvb3ISRgoMcmVhZHlfc3RhdGVzGPsHIAEoCzIiLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hSZWFkeVN0YXRlc1ILcmVhZHlTdGF0ZXMSUAoQY2xhc3Nfb2Zfc2VydmljZRj8ByABKA4yJS5TcGFjZVguQVBJLkRldmljZS5Vc2VyQ2xhc3NPZlNlcnZpY2VSDmNsYXNzT2ZTZXJ2aWNlElsKFXNvZnR3YXJlX3VwZGF0ZV9zdGF0ZRj9ByABKA4yJi5TcGFjZVguQVBJLkRldmljZS5Tb2Z0d2FyZVVwZGF0ZVN0YXRlUhNzb2Z0d2FyZVVwZGF0ZVN0YXRlEjYKF2lzX3Nucl9wZXJzaXN0ZW50bHlfbG93GP4HIAEoCFIUaXNTbnJQZXJzaXN0ZW50bHlMb3cSRQoNaGFzX2FjdHVhdG9ycxj/ByABKA4yHy5TcGFjZVguQVBJLkRldmljZS5IYXNBY3R1YXRvcnNSDGhhc0FjdHVhdG9ycxJcChBkaXNhYmxlbWVudF9jb2RlGIAIIAEoDjIwLlNwYWNlWC5BUEkuU2F0ZWxsaXRlcy5OZXR3b3JrLlV0RGlzYWJsZW1lbnRDb2RlUg9kaXNhYmxlbWVudENvZGUSNgoGY29uZmlnGNAPIAEoCzIdLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hDb25maWdSBmNvbmZpZ0oGCOkHEOoHSgYI7gcQ7wdKBgj1BxD2Bw==');
@$core.Deprecated('Use deviceStateDescriptor instead')
const DeviceState$json = const {
  '1': 'DeviceState',
  '2': const [
    const {'1': 'uptime_s', '3': 1, '4': 1, '5': 4, '10': 'uptimeS'},
  ],
};

/// Descriptor for `DeviceState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceStateDescriptor = $convert.base64Decode('CgtEZXZpY2VTdGF0ZRIZCgh1cHRpbWVfcxgBIAEoBFIHdXB0aW1lUw==');
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
@$core.Deprecated('Use getLocationRequestDescriptor instead')
const GetLocationRequest$json = const {
  '1': 'GetLocationRequest',
  '2': const [
    const {'1': 'source', '3': 1, '4': 1, '5': 14, '6': '.SpaceX.API.Device.PositionSource', '10': 'source'},
  ],
};

/// Descriptor for `GetLocationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLocationRequestDescriptor = $convert.base64Decode('ChJHZXRMb2NhdGlvblJlcXVlc3QSOQoGc291cmNlGAEgASgOMiEuU3BhY2VYLkFQSS5EZXZpY2UuUG9zaXRpb25Tb3VyY2VSBnNvdXJjZQ==');
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
@$core.Deprecated('Use getConnectionsRequestDescriptor instead')
const GetConnectionsRequest$json = const {
  '1': 'GetConnectionsRequest',
};

/// Descriptor for `GetConnectionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getConnectionsRequestDescriptor = $convert.base64Decode('ChVHZXRDb25uZWN0aW9uc1JlcXVlc3Q=');
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
@$core.Deprecated('Use dishStowRequestDescriptor instead')
const DishStowRequest$json = const {
  '1': 'DishStowRequest',
  '2': const [
    const {'1': 'unstow', '3': 1, '4': 1, '5': 8, '10': 'unstow'},
  ],
};

/// Descriptor for `DishStowRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishStowRequestDescriptor = $convert.base64Decode('Cg9EaXNoU3Rvd1JlcXVlc3QSFgoGdW5zdG93GAEgASgIUgZ1bnN0b3c=');
@$core.Deprecated('Use dishStowResponseDescriptor instead')
const DishStowResponse$json = const {
  '1': 'DishStowResponse',
};

/// Descriptor for `DishStowResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishStowResponseDescriptor = $convert.base64Decode('ChBEaXNoU3Rvd1Jlc3BvbnNl');
@$core.Deprecated('Use rebootRequestDescriptor instead')
const RebootRequest$json = const {
  '1': 'RebootRequest',
};

/// Descriptor for `RebootRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rebootRequestDescriptor = $convert.base64Decode('Cg1SZWJvb3RSZXF1ZXN0');
@$core.Deprecated('Use rebootResponseDescriptor instead')
const RebootResponse$json = const {
  '1': 'RebootResponse',
};

/// Descriptor for `RebootResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rebootResponseDescriptor = $convert.base64Decode('Cg5SZWJvb3RSZXNwb25zZQ==');
@$core.Deprecated('Use dishInhibitGpsRequestDescriptor instead')
const DishInhibitGpsRequest$json = const {
  '1': 'DishInhibitGpsRequest',
  '2': const [
    const {'1': 'inhibit_gps', '3': 1, '4': 1, '5': 8, '10': 'inhibitGps'},
  ],
};

/// Descriptor for `DishInhibitGpsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishInhibitGpsRequestDescriptor = $convert.base64Decode('ChVEaXNoSW5oaWJpdEdwc1JlcXVlc3QSHwoLaW5oaWJpdF9ncHMYASABKAhSCmluaGliaXRHcHM=');
@$core.Deprecated('Use dishInhibitGpsResponseDescriptor instead')
const DishInhibitGpsResponse$json = const {
  '1': 'DishInhibitGpsResponse',
  '2': const [
    const {'1': 'inhibit_gps', '3': 1, '4': 1, '5': 8, '10': 'inhibitGps'},
  ],
};

/// Descriptor for `DishInhibitGpsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishInhibitGpsResponseDescriptor = $convert.base64Decode('ChZEaXNoSW5oaWJpdEdwc1Jlc3BvbnNlEh8KC2luaGliaXRfZ3BzGAEgASgIUgppbmhpYml0R3Bz');
@$core.Deprecated('Use dishSetConfigRequestDescriptor instead')
const DishSetConfigRequest$json = const {
  '1': 'DishSetConfigRequest',
  '2': const [
    const {'1': 'dish_config', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishConfig', '10': 'dishConfig'},
  ],
};

/// Descriptor for `DishSetConfigRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishSetConfigRequestDescriptor = $convert.base64Decode('ChREaXNoU2V0Q29uZmlnUmVxdWVzdBI+CgtkaXNoX2NvbmZpZxgBIAEoCzIdLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hDb25maWdSCmRpc2hDb25maWc=');
@$core.Deprecated('Use dishGetConfigRequestDescriptor instead')
const DishGetConfigRequest$json = const {
  '1': 'DishGetConfigRequest',
};

/// Descriptor for `DishGetConfigRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGetConfigRequestDescriptor = $convert.base64Decode('ChREaXNoR2V0Q29uZmlnUmVxdWVzdA==');
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
@$core.Deprecated('Use wifiGetConfigRequestDescriptor instead')
const WifiGetConfigRequest$json = const {
  '1': 'WifiGetConfigRequest',
};

/// Descriptor for `WifiGetConfigRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetConfigRequestDescriptor = $convert.base64Decode('ChRXaWZpR2V0Q29uZmlnUmVxdWVzdA==');
@$core.Deprecated('Use wifiGetConfigResponseDescriptor instead')
const WifiGetConfigResponse$json = const {
  '1': 'WifiGetConfigResponse',
  '2': const [
    const {'1': 'wifi_config', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiConfig', '10': 'wifiConfig'},
  ],
};

/// Descriptor for `WifiGetConfigResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetConfigResponseDescriptor = $convert.base64Decode('ChVXaWZpR2V0Q29uZmlnUmVzcG9uc2USPgoLd2lmaV9jb25maWcYASABKAsyHS5TcGFjZVguQVBJLkRldmljZS5XaWZpQ29uZmlnUgp3aWZpQ29uZmln');
@$core.Deprecated('Use wifiSetConfigRequestDescriptor instead')
const WifiSetConfigRequest$json = const {
  '1': 'WifiSetConfigRequest',
  '2': const [
    const {'1': 'wifi_config', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiConfig', '10': 'wifiConfig'},
  ],
};

/// Descriptor for `WifiSetConfigRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSetConfigRequestDescriptor = $convert.base64Decode('ChRXaWZpU2V0Q29uZmlnUmVxdWVzdBI+Cgt3aWZpX2NvbmZpZxgBIAEoCzIdLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlDb25maWdSCndpZmlDb25maWc=');
@$core.Deprecated('Use wifiSetConfigResponseDescriptor instead')
const WifiSetConfigResponse$json = const {
  '1': 'WifiSetConfigResponse',
  '2': const [
    const {'1': 'updated_wifi_config', '3': 1, '4': 1, '5': 11, '6': '.SpaceX.API.Device.WifiConfig', '10': 'updatedWifiConfig'},
  ],
};

/// Descriptor for `WifiSetConfigResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiSetConfigResponseDescriptor = $convert.base64Decode('ChVXaWZpU2V0Q29uZmlnUmVzcG9uc2USTQoTdXBkYXRlZF93aWZpX2NvbmZpZxgBIAEoCzIdLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlDb25maWdSEXVwZGF0ZWRXaWZpQ29uZmln');
@$core.Deprecated('Use wifiConfigDescriptor instead')
const WifiConfig$json = const {
  '1': 'WifiConfig',
  '2': const [
    const {
      '1': 'network_name',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'networkName',
    },
    const {
      '1': 'network_password',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'networkPassword',
    },
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
final $typed_data.Uint8List wifiConfigDescriptor = $convert.base64Decode('CgpXaWZpQ29uZmlnEiUKDG5ldHdvcmtfbmFtZRgBIAEoCUICGAFSC25ldHdvcmtOYW1lEi0KEG5ldHdvcmtfcGFzc3dvcmQYAiABKAlCAhgBUg9uZXR3b3JrUGFzc3dvcmQSIQoMY291bnRyeV9jb2RlGAMgASgJUgtjb3VudHJ5Q29kZRIdCghsYW5faXB2NBgFIAEoCUICGAFSB2xhbklwdjQSJQoOc2V0dXBfY29tcGxldGUYByABKAhSDXNldHVwQ29tcGxldGUSGAoHdmVyc2lvbhgJIAEoDVIHdmVyc2lvbhJPCg13aWZpX3NlY3VyaXR5GAogASgOMiYuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUNvbmZpZy5TZWN1cml0eUICGAFSDHdpZmlTZWN1cml0eRIuChFuZXR3b3JrX25hbWVfNWdoehgLIAEoCUICGAFSD25ldHdvcmtOYW1lNWdoehIbCgdtYWNfd2FuGAwgASgJQgIYAVIGbWFjV2FuEhsKB21hY19sYW4YDSABKAlCAhgBUgZtYWNMYW4SIQoMY2hhbm5lbF8yZ2h6GBMgASgNUgtjaGFubmVsMmdoehIhCgxjaGFubmVsXzVnaHoYFCABKA1SC2NoYW5uZWw1Z2h6Ej8KDGR5bmFtaWNfa2V5cxgWIAMoCzIcLlNwYWNlWC5BUEkuRGV2aWNlLlB1YmxpY0tleVILZHluYW1pY0tleXMSHwoLaXNfcmVwZWF0ZXIYFyABKAhSCmlzUmVwZWF0ZXISHQoKYm9vdF9jb3VudBgaIAEoBVIJYm9vdENvdW50EiAKC25hbWVzZXJ2ZXJzGB4gAygJUgtuYW1lc2VydmVycxIfCgtieXBhc3NfbW9kZRgfIAEoCFIKYnlwYXNzTW9kZRJRCgxtZXNoX2NvbmZpZ3MYISADKAsyLi5TcGFjZVguQVBJLkRldmljZS5XaWZpQ29uZmlnLk1lc2hDb25maWdzRW50cnlSC21lc2hDb25maWdzEi4KEWVuYWJsZV9yZW1vdGVfc3NoGCIgASgIQgIYAVIPZW5hYmxlUmVtb3RlU3NoEjcKFmxhc3RfcmVtb3RlX3NzaF9hY2Nlc3MYIyABKANCAhgBUhNsYXN0UmVtb3RlU3NoQWNjZXNzEigKDmFwcGx5X2xhbl9pcHY0GCUgASgIQgIYAVIMYXBwbHlMYW5JcHY0EiwKEmFwcGx5X2R5bmFtaWNfa2V5cxgnIAEoCFIQYXBwbHlEeW5hbWljS2V5cxIfCgtkZnNfZW5hYmxlZBgqIAEoCFIKZGZzRW5hYmxlZBIgCgtpbmNhcm5hdGlvbhgrIAEoBFILaW5jYXJuYXRpb24SWAoSd2lyZWxlc3NfbW9kZV8yZ2h6GCwgASgOMiouU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUNvbmZpZy5XaXJlbGVzc01vZGVSEHdpcmVsZXNzTW9kZTJnaHoSWAoSd2lyZWxlc3NfbW9kZV81Z2h6GC0gASgOMiouU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUNvbmZpZy5XaXJlbGVzc01vZGVSEHdpcmVsZXNzTW9kZTVnaHoSVQoRaHRfYmFuZHdpZHRoXzJnaHoYLiABKA4yKS5TcGFjZVguQVBJLkRldmljZS5XaWZpQ29uZmlnLkhUQmFuZHdpZHRoUg9odEJhbmR3aWR0aDJnaHoSVQoRaHRfYmFuZHdpZHRoXzVnaHoYLyABKA4yKS5TcGFjZVguQVBJLkRldmljZS5XaWZpQ29uZmlnLkhUQmFuZHdpZHRoUg9odEJhbmR3aWR0aDVnaHoSTwoNdmh0X2JhbmR3aWR0aBgwIAEoDjIqLlNwYWNlWC5BUEkuRGV2aWNlLldpZmlDb25maWcuVkhUQmFuZHdpZHRoUgx2aHRCYW5kd2lkdGgSHwoLaXNfYXZpYXRpb24YMSABKAhSCmlzQXZpYXRpb24SHQoKc2VjdXJlX2RucxgyIAEoCFIJc2VjdXJlRG5zEhcKB2FwX21vZGUYMyABKAhSBmFwTW9kZRI2ChdkaXNhYmxlX21lc2hfb25ib2FyZGluZxg0IAEoCFIVZGlzYWJsZU1lc2hPbmJvYXJkaW5nEigKEHBpbl9jb3VudHJ5X2NvZGUYNSABKAhSDnBpbkNvdW50cnlDb2RlEiwKEmN1c3RvbV9wb3dlcl90YWJsZRg2IAEoCFIQY3VzdG9tUG93ZXJUYWJsZRIuChN1c2VfcHVibGljX3NlcnZpY2VzGDcgASgIUhF1c2VQdWJsaWNTZXJ2aWNlcxJAChxkaXNhYmxlX2F1dG9tYXRlZF9zcGVlZHRlc3RzGDggASgIUhpkaXNhYmxlQXV0b21hdGVkU3BlZWR0ZXN0cxIqChFjaGFubmVsXzVnaHpfaGlnaBg5IAEoDVIPY2hhbm5lbDVnaHpIaWdoEmEKF3dpcmVsZXNzX21vZGVfNWdoel9oaWdoGDogASgOMiouU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUNvbmZpZy5XaXJlbGVzc01vZGVSFHdpcmVsZXNzTW9kZTVnaHpIaWdoEl4KFmh0X2JhbmR3aWR0aF81Z2h6X2hpZ2gYOyABKA4yKS5TcGFjZVguQVBJLkRldmljZS5XaWZpQ29uZmlnLkhUQmFuZHdpZHRoUhNodEJhbmR3aWR0aDVnaHpIaWdoEmEKF3ZodF9iYW5kd2lkdGhfNWdoel9oaWdoGDwgASgOMiouU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUNvbmZpZy5WSFRCYW5kd2lkdGhSFHZodEJhbmR3aWR0aDVnaHpIaWdoEjIKFWVuYWJsZV91bWJpbGljYWxfdmxhbhg9IAEoCFITZW5hYmxlVW1iaWxpY2FsVmxhbhJACgxjbGllbnRfbmFtZXMYPiADKAsyHS5TcGFjZVguQVBJLkRldmljZS5DbGllbnROYW1lUgtjbGllbnROYW1lcxIhCgxvdXRkb29yX21vZGUYPyABKAhSC291dGRvb3JNb2RlEiEKDGRpc2FibGVfMmdoehhAIAEoCFILZGlzYWJsZTJnaHoSIQoMZGlzYWJsZV81Z2h6GEEgASgIUgtkaXNhYmxlNWdoehIqChFkaXNhYmxlXzVnaHpfaGlnaBhCIAEoCFIPZGlzYWJsZTVnaHpIaWdoEjUKF2Rpc2FibGVfeF9tZXNoX2JhY2toYXVsGEMgASgIUhRkaXNhYmxlWE1lc2hCYWNraGF1bBIlCgxnb2xkZW5fYnNzaWQYRCABKAlCAhgBUgtnb2xkZW5Cc3NpZBJMChFnb2xkZW5faWZhY2VfdHlwZRhFIAEoDjIcLlNwYWNlWC5BUEkuRGV2aWNlLklmYWNlVHlwZUICGAFSD2dvbGRlbklmYWNlVHlwZRJOChN0eF9wb3dlcl9sZXZlbF8yZ2h6GEYgASgOMh8uU3BhY2VYLkFQSS5EZXZpY2UuVHhQb3dlckxldmVsUhB0eFBvd2VyTGV2ZWwyZ2h6Ek4KE3R4X3Bvd2VyX2xldmVsXzVnaHoYRyABKA4yHy5TcGFjZVguQVBJLkRldmljZS5UeFBvd2VyTGV2ZWxSEHR4UG93ZXJMZXZlbDVnaHoSVwoYdHhfcG93ZXJfbGV2ZWxfNWdoel9oaWdoGEggASgOMh8uU3BhY2VYLkFQSS5EZXZpY2UuVHhQb3dlckxldmVsUhR0eFBvd2VyTGV2ZWw1Z2h6SGlnaBIxChJhcHBseV9uZXR3b3JrX25hbWUY6QcgASgIQgIYAVIQYXBwbHlOZXR3b3JrTmFtZRI5ChZhcHBseV9uZXR3b3JrX3Bhc3N3b3JkGOoHIAEoCEICGAFSFGFwcGx5TmV0d29ya1Bhc3N3b3JkEjMKE2FwcGx5X3dpZmlfc2VjdXJpdHkY7AcgASgIQgIYAVIRYXBwbHlXaWZpU2VjdXJpdHkSOgoXYXBwbHlfbmV0d29ya19uYW1lXzVnaHoY7QcgASgIQgIYAVIUYXBwbHlOZXR3b3JrTmFtZTVnaHoSMQoUYXBwbHlfc2V0dXBfY29tcGxldGUY8gcgASgIUhJhcHBseVNldHVwQ29tcGxldGUSLQoSYXBwbHlfY2hhbm5lbF8yZ2h6GPUHIAEoCFIQYXBwbHlDaGFubmVsMmdoehItChJhcHBseV9jaGFubmVsXzVnaHoY9gcgASgIUhBhcHBseUNoYW5uZWw1Z2h6EjYKF2FwcGx5X2NoYW5uZWxfNWdoel9oaWdoGPgHIAEoCFIUYXBwbHlDaGFubmVsNWdoekhpZ2gSKwoRYXBwbHlfaXNfcmVwZWF0ZXIYhwggASgIUg9hcHBseUlzUmVwZWF0ZXISLQoSYXBwbHlfbWVzaF9jb25maWdzGIkIIAEoCFIQYXBwbHlNZXNoQ29uZmlncxIsChFhcHBseV9uYW1lc2VydmVycxieCCABKAhSEGFwcGx5TmFtZXNlcnZlcnMSKwoRYXBwbHlfYnlwYXNzX21vZGUYnwggASgIUg9hcHBseUJ5cGFzc01vZGUSOgoXYXBwbHlfZW5hYmxlX3JlbW90ZV9zc2gYoQggASgIQgIYAVIUYXBwbHlFbmFibGVSZW1vdGVTc2gSKwoRYXBwbHlfZGZzX2VuYWJsZWQYogggASgIUg9hcHBseURmc0VuYWJsZWQSOAoYYXBwbHlfd2lyZWxlc3NfbW9kZV8yZ2h6GKMIIAEoCFIVYXBwbHlXaXJlbGVzc01vZGUyZ2h6EjgKGGFwcGx5X3dpcmVsZXNzX21vZGVfNWdoehikCCABKAhSFWFwcGx5V2lyZWxlc3NNb2RlNWdoehI2ChdhcHBseV9odF9iYW5kd2lkdGhfMmdoehilCCABKAhSFGFwcGx5SHRCYW5kd2lkdGgyZ2h6EjYKF2FwcGx5X2h0X2JhbmR3aWR0aF81Z2h6GKYIIAEoCFIUYXBwbHlIdEJhbmR3aWR0aDVnaHoSLwoTYXBwbHlfdmh0X2JhbmR3aWR0aBinCCABKAhSEWFwcGx5Vmh0QmFuZHdpZHRoEisKEWFwcGx5X2lzX2F2aWF0aW9uGKgIIAEoCFIPYXBwbHlJc0F2aWF0aW9uEikKEGFwcGx5X3NlY3VyZV9kbnMYqQggASgIUg5hcHBseVNlY3VyZURucxIjCg1hcHBseV9hcF9tb2RlGKoIIAEoCFILYXBwbHlBcE1vZGUSQgodYXBwbHlfZGlzYWJsZV9tZXNoX29uYm9hcmRpbmcYqwggASgIUhphcHBseURpc2FibGVNZXNoT25ib2FyZGluZxI6ChlhcHBseV91c2VfcHVibGljX3NlcnZpY2VzGKwIIAEoCFIWYXBwbHlVc2VQdWJsaWNTZXJ2aWNlcxJMCiJhcHBseV9kaXNhYmxlX2F1dG9tYXRlZF9zcGVlZHRlc3RzGK0IIAEoCFIfYXBwbHlEaXNhYmxlQXV0b21hdGVkU3BlZWR0ZXN0cxJBCh1hcHBseV93aXJlbGVzc19tb2RlXzVnaHpfaGlnaBiuCCABKAhSGWFwcGx5V2lyZWxlc3NNb2RlNWdoekhpZ2gSPwocYXBwbHlfaHRfYmFuZHdpZHRoXzVnaHpfaGlnaBivCCABKAhSGGFwcGx5SHRCYW5kd2lkdGg1Z2h6SGlnaBJBCh1hcHBseV92aHRfYmFuZHdpZHRoXzVnaHpfaGlnaBiwCCABKAhSGWFwcGx5Vmh0QmFuZHdpZHRoNWdoekhpZ2gSPgobYXBwbHlfZW5hYmxlX3VtYmlsaWNhbF92bGFuGLEIIAEoCFIYYXBwbHlFbmFibGVVbWJpbGljYWxWbGFuEi0KEmFwcGx5X2NsaWVudF9uYW1lcxiyCCABKAhSEGFwcGx5Q2xpZW50TmFtZXMSLQoSYXBwbHlfb3V0ZG9vcl9tb2RlGLMIIAEoCFIQYXBwbHlPdXRkb29yTW9kZRItChJhcHBseV9kaXNhYmxlXzJnaHoYtAggASgIUhBhcHBseURpc2FibGUyZ2h6Ei0KEmFwcGx5X2Rpc2FibGVfNWdoehi1CCABKAhSEGFwcGx5RGlzYWJsZTVnaHoSNgoXYXBwbHlfZGlzYWJsZV81Z2h6X2hpZ2gYtgggASgIUhRhcHBseURpc2FibGU1Z2h6SGlnaBJBCh1hcHBseV9kaXNhYmxlX3hfbWVzaF9iYWNraGF1bBi3CCABKAhSGWFwcGx5RGlzYWJsZVhNZXNoQmFja2hhdWwSMQoSYXBwbHlfZ29sZGVuX2Jzc2lkGLgIIAEoCEICGAFSEGFwcGx5R29sZGVuQnNzaWQSOgoXYXBwbHlfZ29sZGVuX2lmYWNlX3R5cGUYuQggASgIQgIYAVIUYXBwbHlHb2xkZW5JZmFjZVR5cGUSOQoZYXBwbHlfdHhfcG93ZXJfbGV2ZWxfMmdoehi6CCABKAhSFWFwcGx5VHhQb3dlckxldmVsMmdoehI5ChlhcHBseV90eF9wb3dlcl9sZXZlbF81Z2h6GLsIIAEoCFIVYXBwbHlUeFBvd2VyTGV2ZWw1Z2h6EkIKHmFwcGx5X3R4X3Bvd2VyX2xldmVsXzVnaHpfaGlnaBi8CCABKAhSGWFwcGx5VHhQb3dlckxldmVsNWdoekhpZ2gSQgoIbmV0d29ya3MYzAggAygLMiUuU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUNvbmZpZy5OZXR3b3JrUghuZXR3b3JrcxImCg5hcHBseV9uZXR3b3JrcxjNCCABKAhSDWFwcGx5TmV0d29ya3MSMAoEYm9vdBi5FyABKAsyGy5TcGFjZVguQVBJLkRldmljZS5Cb290SW5mb1IEYm9vdBJoChRtZXNoX2NvbmZpZ3NfdXBkYXRlcxjZFyADKAsyNS5TcGFjZVguQVBJLkRldmljZS5XaWZpQ29uZmlnLk1lc2hDb25maWdzVXBkYXRlc0VudHJ5UhJtZXNoQ29uZmlnc1VwZGF0ZXMaXQoQTWVzaENvbmZpZ3NFbnRyeRIQCgNrZXkYASABKAlSA2tleRIzCgV2YWx1ZRgCIAEoCzIdLlNwYWNlWC5BUEkuRGV2aWNlLk1lc2hDb25maWdSBXZhbHVlOgI4ARpkChdNZXNoQ29uZmlnc1VwZGF0ZXNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIzCgV2YWx1ZRgCIAEoCzIdLlNwYWNlWC5BUEkuRGV2aWNlLk1lc2hDb25maWdSBXZhbHVlOgI4ARreBAoPQmFzaWNTZXJ2aWNlU2V0EhUKBWJzc2lkGOsHIAEoCVIFYnNzaWQSEwoEc3NpZBjtByABKAlSBHNzaWQSNwoEYmFuZBjzByABKA4yIi5TcGFjZVguQVBJLkRldmljZS5XaWZpQ29uZmlnLkJhbmRSBGJhbmQSGQoHZGlzYWJsZRj1ByABKAhSB2Rpc2FibGUSFwoGaGlkZGVuGPcHIAEoCFIGaGlkZGVuEh4KCmlmYWNlX25hbWUY+QcgASgJUglpZmFjZU5hbWUSOwoJYXV0aF9vcGVuGNEPIAEoCzIbLlNwYWNlWC5BUEkuRGV2aWNlLkF1dGhPcGVuSABSCGF1dGhPcGVuEjsKCWF1dGhfd3BhMhjSDyABKAsyGy5TcGFjZVguQVBJLkRldmljZS5BdXRoV3BhMkgAUghhdXRoV3BhMhI7CglhdXRoX3dwYTMY0w8gASgLMhsuU3BhY2VYLkFQSS5EZXZpY2UuQXV0aFdwYTNIAFIIYXV0aFdwYTMSSAoOYXV0aF93cGEyX3dwYTMY1A8gASgLMh8uU3BhY2VYLkFQSS5EZXZpY2UuQXV0aFdwYTJXcGEzSABSDGF1dGhXcGEyV3BhMxJBCgthdXRoX3JhZGl1cxjVDyABKAsyHS5TcGFjZVguQVBJLkRldmljZS5BdXRoUmFkaXVzSABSCmF1dGhSYWRpdXNCBgoEYXV0aEoGCOgHEOkHSgYI6QcQ6gdKBgjqBxDrB0oGCOwHEO0HSgYI7gcQ7wdKBgj0BxD1B0oGCPYHEPcHSgYI+AcQ+QdKBgjQDxDRDxrHAgoHTmV0d29yaxITCgRpcHY0GOsHIAEoCVIEaXB2NBJcChJiYXNpY19zZXJ2aWNlX3NldHMY7wcgAygLMi0uU3BhY2VYLkFQSS5EZXZpY2UuV2lmaUNvbmZpZy5CYXNpY1NlcnZpY2VTZXRSEGJhc2ljU2VydmljZVNldHMSKgoQY2xpZW50X2lzb2xhdGlvbhjwByABKAhSD2NsaWVudElzb2xhdGlvbhIVCgVndWVzdBjxByABKAhSBWd1ZXN0EhkKB2xhbmRpbmcY8gcgASgJUgdsYW5kaW5nEhcKBmRvbWFpbhjzByABKAlSBmRvbWFpbhIiCgxkaGNwdjRfc3RhcnQY9AcgASgNUgtkaGNwdjRTdGFydEoGCOgHEOkHSgYI6QcQ6gdKBgjqBxDrB0oGCOwHEO0HSgYI7QcQ7gdKBgjuBxDvByJCCgRCYW5kEg4KClJGX1VOS05PV04QABILCgdSRl8yR0haEAISCwoHUkZfNUdIWhAFEhAKDFJGXzVHSFpfSElHSBAGIl8KC0hUQmFuZHdpZHRoEhgKFEhUX0JBTkRXSURUSF9ERUZBVUxUEAASFwoTSFRfQkFORFdJRFRIXzIwX01IWhABEh0KGUhUX0JBTkRXSURUSF8yMF9PUl80MF9NSFoQAiI5CghTZWN1cml0eRILCgdVTktOT1dOEAASCAoEV1BBMhABEggKBFdQQTMQAhIMCghXUEEyV1BBMxADIpwBCgxWSFRCYW5kd2lkdGgSGQoVVkhUX0JBTkRXSURUSF9ERUZBVUxUEAASGgoWVkhUX0JBTkRXSURUSF9ESVNBQkxFRBABEhgKFFZIVF9CQU5EV0lEVEhfODBfTUhaEAISGQoVVkhUX0JBTkRXSURUSF8xNjBfTUhaEAMSIAocVkhUX0JBTkRXSURUSF84MF9QTFVTXzgwX01IWhAEIuUBCgxXaXJlbGVzc01vZGUSGQoVV0lSRUxFU1NfTU9ERV9ERUZBVUxUEAASCgoGQV9PTkxZEAESCgoGQl9PTkxZEAISCgoGR19PTkxZEAMSCgoGTl9PTkxZEAQSDQoJQl9HX01JWEVEEAUSDQoJQV9OX01JWEVEEAYSDQoJR19OX01JWEVEEAcSDwoLQl9HX05fTUlYRUQQCBIRCg1BX0FOX0FDX01JWEVEEAkSDwoLQU5fQUNfTUlYRUQQChISCg5CX0dfTl9BWF9NSVhFRBALEhQKEEFfQU5fQUNfQVhfTUlYRUQQDEoECAQQBUoECAYQB0oECAgQCUoECA4QD0oECA8QEEoECBAQEUoECBEQEkoECBIQE0oECBUQFkoECBgQGUoECBkQGkoECBsQHEoECBwQHUoECB0QHkoECCAQIUoECCQQJUoECCYQJ0oECCgQKUoECCkQKkoGCOsHEOwHSgYI7gcQ7wdKBgjvBxDwB0oGCPAHEPEHSgYI8QcQ8gdKBgjzBxD0B0oGCPQHEPUHSgYI9wcQ+AdKBgj9BxD+B0oGCJEIEJIISgYImwgQnAhKBgicCBCdCEoGCJ0IEJ4ISgYIoAgQoQhKBgjRDxDSD0oGCNIPENMPSgYI0w8Q1A9KBgjUDxDVD0oGCNUPENYPSgYI1g8Q1w9KBgjXDxDYD0oGCNgPENkP');
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
@$core.Deprecated('Use getPersistentStatsRequestDescriptor instead')
const GetPersistentStatsRequest$json = const {
  '1': 'GetPersistentStatsRequest',
};

/// Descriptor for `GetPersistentStatsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPersistentStatsRequestDescriptor = $convert.base64Decode('ChlHZXRQZXJzaXN0ZW50U3RhdHNSZXF1ZXN0');
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
@$core.Deprecated('Use wifiGetDiagnosticsRequestDescriptor instead')
const WifiGetDiagnosticsRequest$json = const {
  '1': 'WifiGetDiagnosticsRequest',
};

/// Descriptor for `WifiGetDiagnosticsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiGetDiagnosticsRequestDescriptor = $convert.base64Decode('ChlXaWZpR2V0RGlhZ25vc3RpY3NSZXF1ZXN0');
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
