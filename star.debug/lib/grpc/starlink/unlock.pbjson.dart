// This is a generated file - do not edit.
//
// Generated from unlock.proto.

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

@$core.Deprecated('Use startUnlockRequestDescriptor instead')
const StartUnlockRequest$json = {
  '1': 'StartUnlockRequest',
};

/// Descriptor for `StartUnlockRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startUnlockRequestDescriptor =
    $convert.base64Decode('ChJTdGFydFVubG9ja1JlcXVlc3Q=');

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
final $typed_data.Uint8List finishUnlockResponseDescriptor =
    $convert.base64Decode(
        'ChRGaW5pc2hVbmxvY2tSZXNwb25zZRIWCgZzdGF0dXMYASABKA1SBnN0YXR1cw==');
