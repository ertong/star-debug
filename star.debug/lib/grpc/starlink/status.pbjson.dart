//
//  Generated code. Do not modify.
//  source: status.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use statusDescriptor instead')
const Status$json = {
  '1': 'Status',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'code', '17': true},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'message', '17': true},
  ],
  '8': [
    {'1': '_code'},
    {'1': '_message'},
  ],
};

/// Descriptor for `Status`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusDescriptor = $convert.base64Decode(
    'CgZTdGF0dXMSFwoEY29kZRgBIAEoBUgAUgRjb2RliAEBEh0KB21lc3NhZ2UYAiABKAlIAVIHbW'
    'Vzc2FnZYgBAUIHCgVfY29kZUIKCghfbWVzc2FnZQ==');

