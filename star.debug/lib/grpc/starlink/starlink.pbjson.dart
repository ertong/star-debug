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
@$core.Deprecated('Use requestDescriptor instead')
const Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'target_id', '3': 13, '4': 1, '5': 9, '10': 'targetId'},
    const {'1': 'epoch_id', '3': 14, '4': 1, '5': 4, '10': 'epochId'},
    const {'1': 'get_status', '3': 1004, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetStatusRequest', '9': 0, '10': 'getStatus'},
    const {'1': 'get_device_info', '3': 1008, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetDeviceInfoRequest', '9': 0, '10': 'getDeviceInfo'},
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
final $typed_data.Uint8List requestDescriptor = $convert.base64Decode('CgdSZXF1ZXN0Eg4KAmlkGAEgASgEUgJpZBIbCgl0YXJnZXRfaWQYDSABKAlSCHRhcmdldElkEhkKCGVwb2NoX2lkGA4gASgEUgdlcG9jaElkEkUKCmdldF9zdGF0dXMY7AcgASgLMiMuU3BhY2VYLkFQSS5EZXZpY2UuR2V0U3RhdHVzUmVxdWVzdEgAUglnZXRTdGF0dXMSUgoPZ2V0X2RldmljZV9pbmZvGPAHIAEoCzInLlNwYWNlWC5BUEkuRGV2aWNlLkdldERldmljZUluZm9SZXF1ZXN0SABSDWdldERldmljZUluZm9CCQoHcmVxdWVzdEoGCPoHEPsHSgYIgQgQgghKBgiCCBCDCEoGCMMXEMQXSgYIxhcQxxc=');
@$core.Deprecated('Use responseDescriptor instead')
const Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'api_version', '3': 3, '4': 1, '5': 4, '10': 'apiVersion'},
    const {'1': 'get_device_info', '3': 1004, '4': 1, '5': 11, '6': '.SpaceX.API.Device.GetDeviceInfoResponse', '9': 0, '10': 'getDeviceInfo'},
    const {'1': 'dish_get_status', '3': 2004, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishGetStatusResponse', '9': 0, '10': 'dishGetStatus'},
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
final $typed_data.Uint8List responseDescriptor = $convert.base64Decode('CghSZXNwb25zZRIOCgJpZBgBIAEoBFICaWQSHwoLYXBpX3ZlcnNpb24YAyABKARSCmFwaVZlcnNpb24SUwoPZ2V0X2RldmljZV9pbmZvGOwHIAEoCzIoLlNwYWNlWC5BUEkuRGV2aWNlLkdldERldmljZUluZm9SZXNwb25zZUgAUg1nZXREZXZpY2VJbmZvElMKD2Rpc2hfZ2V0X3N0YXR1cxjUDyABKAsyKC5TcGFjZVguQVBJLkRldmljZS5EaXNoR2V0U3RhdHVzUmVzcG9uc2VIAFINZGlzaEdldFN0YXR1c0IKCghyZXNwb25zZUoGCPoHEPsHSgYIgggQgwhKBgjpDxDqD0oGCMMXEMQXSgYIxhcQxxc=');
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
    const {'1': 'config', '3': 2000, '4': 1, '5': 11, '6': '.SpaceX.API.Device.DishConfig', '10': 'config'},
  ],
  '9': const [
    const {'1': 1001, '2': 1002},
    const {'1': 1006, '2': 1007},
    const {'1': 1013, '2': 1014},
  ],
};

/// Descriptor for `DishGetStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dishGetStatusResponseDescriptor = $convert.base64Decode('ChVEaXNoR2V0U3RhdHVzUmVzcG9uc2USPgoLZGV2aWNlX2luZm8YASABKAsyHS5TcGFjZVguQVBJLkRldmljZS5EZXZpY2VJbmZvUgpkZXZpY2VJbmZvEkEKDGRldmljZV9zdGF0ZRgCIAEoCzIeLlNwYWNlWC5BUEkuRGV2aWNlLkRldmljZVN0YXRlUgtkZXZpY2VTdGF0ZRJDCh5zZWNvbmRzX3RvX2ZpcnN0X25vbmVtcHR5X3Nsb3QY6gcgASgCUhpzZWNvbmRzVG9GaXJzdE5vbmVtcHR5U2xvdBIsChJwb3BfcGluZ19kcm9wX3JhdGUY6wcgASgCUg9wb3BQaW5nRHJvcFJhdGUSVQoRb2JzdHJ1Y3Rpb25fc3RhdHMY7AcgASgLMicuU3BhY2VYLkFQSS5EZXZpY2UuRGlzaE9ic3RydWN0aW9uU3RhdHNSEG9ic3RydWN0aW9uU3RhdHMSNgoGYWxlcnRzGO0HIAEoCzIdLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hBbGVydHNSBmFsZXJ0cxI3Chdkb3dubGlua190aHJvdWdocHV0X2JwcxjvByABKAJSFWRvd25saW5rVGhyb3VnaHB1dEJwcxIzChV1cGxpbmtfdGhyb3VnaHB1dF9icHMY8AcgASgCUhN1cGxpbmtUaHJvdWdocHV0QnBzEi4KE3BvcF9waW5nX2xhdGVuY3lfbXMY8QcgASgCUhBwb3BQaW5nTGF0ZW5jeU1zEiYKDnN0b3dfcmVxdWVzdGVkGPIHIAEoCFINc3Rvd1JlcXVlc3RlZBIzChVib3Jlc2lnaHRfYXppbXV0aF9kZWcY8wcgASgCUhNib3Jlc2lnaHRBemltdXRoRGVnEjcKF2JvcmVzaWdodF9lbGV2YXRpb25fZGVnGPQHIAEoAlIVYm9yZXNpZ2h0RWxldmF0aW9uRGVnEjYKBm91dGFnZRj2ByABKAsyHS5TcGFjZVguQVBJLkRldmljZS5EaXNoT3V0YWdlUgZvdXRhZ2USPQoJZ3BzX3N0YXRzGPcHIAEoCzIfLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hHcHNTdGF0c1IIZ3BzU3RhdHMSJQoOZXRoX3NwZWVkX21icHMY+AcgASgFUgxldGhTcGVlZE1icHMSTAoObW9iaWxpdHlfY2xhc3MY+QcgASgOMiQuU3BhY2VYLkFQSS5EZXZpY2UuVXNlck1vYmlsaXR5Q2xhc3NSDW1vYmlsaXR5Q2xhc3MSNwoYaXNfc25yX2Fib3ZlX25vaXNlX2Zsb29yGPoHIAEoCFIUaXNTbnJBYm92ZU5vaXNlRmxvb3ISRgoMcmVhZHlfc3RhdGVzGPsHIAEoCzIiLlNwYWNlWC5BUEkuRGV2aWNlLkRpc2hSZWFkeVN0YXRlc1ILcmVhZHlTdGF0ZXMSUAoQY2xhc3Nfb2Zfc2VydmljZRj8ByABKA4yJS5TcGFjZVguQVBJLkRldmljZS5Vc2VyQ2xhc3NPZlNlcnZpY2VSDmNsYXNzT2ZTZXJ2aWNlElsKFXNvZnR3YXJlX3VwZGF0ZV9zdGF0ZRj9ByABKA4yJi5TcGFjZVguQVBJLkRldmljZS5Tb2Z0d2FyZVVwZGF0ZVN0YXRlUhNzb2Z0d2FyZVVwZGF0ZVN0YXRlEjYKF2lzX3Nucl9wZXJzaXN0ZW50bHlfbG93GP4HIAEoCFIUaXNTbnJQZXJzaXN0ZW50bHlMb3cSRQoNaGFzX2FjdHVhdG9ycxj/ByABKA4yHy5TcGFjZVguQVBJLkRldmljZS5IYXNBY3R1YXRvcnNSDGhhc0FjdHVhdG9ycxI2CgZjb25maWcY0A8gASgLMh0uU3BhY2VYLkFQSS5EZXZpY2UuRGlzaENvbmZpZ1IGY29uZmlnSgYI6QcQ6gdKBgjuBxDvB0oGCPUHEPYH');
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
