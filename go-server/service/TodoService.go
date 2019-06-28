package service

import (
	"context"
	pb "github.com/KouT127/go-grpc-sample/go-server/pb/proto"
	"github.com/golang/protobuf/ptypes/empty"
)

type TodoSrv struct {
}

func (s *TodoSrv) GetTodo(context.Context, *empty.Empty) (*pb.GetTodoResponse, error) {
	todo := &pb.Todo{Id: "123", Title: "Hello", Description: "gRPC"}
	todoList := []*pb.Todo{todo, todo, todo}
	return &pb.GetTodoResponse{
		Todo: todoList,
	}, nil
}
