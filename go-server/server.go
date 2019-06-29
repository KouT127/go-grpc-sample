package main

import (
	pb "github.com/KouT127/go-grpc-sample/go-server/api/proto/v1"
	"github.com/KouT127/go-grpc-sample/go-server/service"
	"google.golang.org/grpc"
	"log"
	"net"
)

func main() {
	listenPort, err := net.Listen("tcp", ":19003")
	if err != nil {
		log.Fatalln(err)
	}
	server := grpc.NewServer()
	todoSrv := &service.TodoSrv{}
	// 実行したい実処理をseverに登録する
	pb.RegisterTodoServiceServer(server, todoSrv)
	server.Serve(listenPort)
}
