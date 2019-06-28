package main

import (
	"context"
	"fmt"
	pb "github.com/KouT127/go-grpc-sample/go-server/pb/proto"
	"github.com/golang/protobuf/ptypes/empty"
	"google.golang.org/grpc"
	"log"
)

func main() {
	conn, err := grpc.Dial("127.0.0.1:19003", grpc.WithInsecure())
	if err != nil {
		log.Fatal("client connection error:", err)
	}
	defer conn.Close()
	client := pb.NewTodoSrvClient(conn)
	res, err := client.GetTodo(context.TODO(), &empty.Empty{})

	for _, todo := range res.Todo {
		fmt.Printf("result:%#v \n", todo)
	}

	fmt.Printf("error::%#v \n", err)
}
