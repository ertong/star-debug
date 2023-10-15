//
//  Generated code. Do not modify.
//  source: starlink.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'starlink.pb.dart' as $0;

export 'starlink.pb.dart';

@$pb.GrpcServiceName('SpaceX.API.Device.Device')
class DeviceClient extends $grpc.Client {
  static final _$handle = $grpc.ClientMethod<$0.Request, $0.Response>(
      '/SpaceX.API.Device.Device/Handle',
      ($0.Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Response.fromBuffer(value));
  static final _$stream = $grpc.ClientMethod<$0.ToDevice, $0.FromDevice>(
      '/SpaceX.API.Device.Device/Stream',
      ($0.ToDevice value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FromDevice.fromBuffer(value));

  DeviceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.Response> handle($0.Request request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$handle, request, options: options);
  }

  $grpc.ResponseStream<$0.FromDevice> stream($async.Stream<$0.ToDevice> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$stream, request, options: options);
  }
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

  $async.Future<$0.Response> handle_Pre($grpc.ServiceCall call, $async.Future<$0.Request> request) async {
    return handle(call, await request);
  }

  $async.Future<$0.Response> handle($grpc.ServiceCall call, $0.Request request);
  $async.Stream<$0.FromDevice> stream($grpc.ServiceCall call, $async.Stream<$0.ToDevice> request);
}
