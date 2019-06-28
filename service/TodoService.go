package service

import (
	"context"
	pb "github.com/KouT127/go-grpc-sample/pb/proto"
	"github.com/golang/protobuf/ptypes/empty"
)

type TodoSrv struct {
}

func (s *TodoSrv) GetMyCat(ctx context.Context, message empty.Empty) (*pb.GetTodoResponse, error) {
	//if message != empty.Empty {
	//	return nil, errors.New("Not Found")
	//}
	todo := &pb.Todo{Id: "a", Title: "b", Description: "c"}
	todoList := []*pb.Todo{todo}
	return &pb.GetTodoResponse{
		Todo: todoList,
	}, nil
}
