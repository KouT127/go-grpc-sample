import 'package:flutter_grpc_app/api/proto/v1/Todo.pb.dart';
import 'package:flutter_grpc_app/api/proto/v1/Todo.pbgrpc.dart';
import 'package:flutter_grpc_app/google/empty.pb.dart';
import 'package:flutter_grpc_app/grpc_client.dart';

class TodoService {
  static Future<GetTodoResponse> getTodo() async {
    final client = TodoServiceClient(GrpcClient().client);
    return await client.getTodo(Empty());
  }
}
