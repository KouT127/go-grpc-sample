///
//  Generated code. Do not modify.
//  source: proto/Todo.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core show int, String, List;

import 'package:grpc/service_api.dart' as $grpc;
import '../types/empty.pb.dart' as $0;
import 'Todo.pb.dart' as $1;
export 'Todo.pb.dart';

class TodoSrvClient extends $grpc.Client {
  static final _$getTodo = $grpc.ClientMethod<$0.Empty, $1.GetTodoResponse>(
      '/TodoSrv/GetTodo',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetTodoResponse.fromBuffer(value));

  TodoSrvClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$1.GetTodoResponse> getTodo($0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getTodo, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class TodoSrvServiceBase extends $grpc.Service {
  $core.String get $name => 'TodoSrv';

  TodoSrvServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.GetTodoResponse>(
        'GetTodo',
        getTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.GetTodoResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.GetTodoResponse> getTodo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getTodo(call, await request);
  }

  $async.Future<$1.GetTodoResponse> getTodo(
      $grpc.ServiceCall call, $0.Empty request);
}
