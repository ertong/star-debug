///
//  Generated code. Do not modify.
//  source: starlink.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'starlink.pb.dart' as $0;
export 'starlink.pb.dart';

class DeviceClient extends $grpc.Client {
  static final _$handle = $grpc.ClientMethod<$0.Request, $0.Response>(
      '/SpaceX.API.Device.Device/Handle',
      ($0.Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Response.fromBuffer(value));

  DeviceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Response> handle($0.Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$handle, request, options: options);
  }
}

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
  }

  $async.Future<$0.Response> handle_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Request> request) async {
    return handle(call, await request);
  }

  $async.Future<$0.Response> handle($grpc.ServiceCall call, $0.Request request);
}
