// This is a generated file - do not edit.
//
// Generated from starlink.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'starlink.pb.dart' as $0;

export 'starlink.pb.dart';

/// SpaceX.API.Device.Device is a service:
@$pb.GrpcServiceName('SpaceX.API.Device.Device')
class DeviceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  DeviceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.Response> handle(
    $0.Request request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$handle, request, options: options);
  }

  $grpc.ResponseStream<$0.FromDevice> stream(
    $async.Stream<$0.ToDevice> request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(_$stream, request, options: options);
  }

  // method descriptors

  static final _$handle = $grpc.ClientMethod<$0.Request, $0.Response>(
      '/SpaceX.API.Device.Device/Handle',
      ($0.Request value) => value.writeToBuffer(),
      $0.Response.fromBuffer);
  static final _$stream = $grpc.ClientMethod<$0.ToDevice, $0.FromDevice>(
      '/SpaceX.API.Device.Device/Stream',
      ($0.ToDevice value) => value.writeToBuffer(),
      $0.FromDevice.fromBuffer);
}

@$pb.GrpcServiceName('SpaceX.API.Device.Device')
abstract class DeviceServiceBase extends $grpc.Service {
  $core.String get $name => 'SpaceX.API.Device.Device';

  DeviceServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Request, $0.Response>(
        'Handle',
        handle_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Request.fromBuffer(value),
        ($0.Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ToDevice, $0.FromDevice>(
        'Stream',
        stream,
        true,
        true,
        ($core.List<$core.int> value) => $0.ToDevice.fromBuffer(value),
        ($0.FromDevice value) => value.writeToBuffer()));
  }

  $async.Future<$0.Response> handle_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Request> $request) async {
    return handle($call, await $request);
  }

  $async.Future<$0.Response> handle($grpc.ServiceCall call, $0.Request request);

  $async.Stream<$0.FromDevice> stream(
      $grpc.ServiceCall call, $async.Stream<$0.ToDevice> request);
}
