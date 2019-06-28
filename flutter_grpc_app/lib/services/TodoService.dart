import 'package:flutter_grpc_app/api/grpc_client.dart';
import 'package:flutter_grpc_app/api/pb/proto/Todo.pb.dart';
import 'package:flutter_grpc_app/api/pb/proto/Todo.pbgrpc.dart';
import 'package:flutter_grpc_app/api/pb/types/empty.pb.dart';

class TodoService {
  static Future<GetTodoResponse> getTodo() async {
    final client = TodoSrvClient(GrpcClient().client);
    return await client.getTodo(Empty());
  }
}
