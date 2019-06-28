package service

import (
	"context"
	pb "github.com/KouT127/go-grpc-sample/pb/proto"
	"github.com/golang/protobuf/ptypes/empty"
)

type TodoSrv struct {
}

func (s *TodoSrv) GetTodo(context.Context, *empty.Empty) (*pb.GetTodoResponse, error) {
	todo := &pb.Todo{Id: "a", Title: "b", Description: "c"}
	todoList := []*pb.Todo{todo, todo, todo}
	return &pb.GetTodoResponse{
		Todo: todoList,
	}, nil
}
