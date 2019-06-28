package main

import (
	pb "github.com/KouT127/go-grpc-sample/pb/proto"
	"github.com/KouT127/go-grpc-sample/service"
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
	pb.RegisterTodoSrvServer(server, todoSrv)
	server.Serve(listenPort)
}
