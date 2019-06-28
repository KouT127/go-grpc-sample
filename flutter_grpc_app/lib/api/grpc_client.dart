import 'package:grpc/grpc.dart';

// ref: https://medium.com/flutter-community/flutter-grpc-810f87612c6d

class GrpcClient {
  ClientChannel client;
  static final GrpcClient _singleton = GrpcClient._internal();

  factory GrpcClient() => _singleton;

  GrpcClient._internal() {
    client = ClientChannel("127.0.0.1",
        port: 19003,
        options: ChannelOptions(
          //TODO: Change to secure with server certificates
          credentials: ChannelCredentials.insecure(),
          idleTimeout: Duration(minutes: 1),
        ));
  }
}
