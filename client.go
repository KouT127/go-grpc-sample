package main
import (
	"context"
	"fmt"
	pb "go-grpc/pb/proto"
	"google.golang.org/grpc"
	"log"
)
func main() {
	//sampleなのでwithInsecure
	conn, err := grpc.Dial("127.0.0.1:19003", grpc.WithInsecure())
	if err != nil {
		log.Fatal("client connection error:", err)
	}
	defer conn.Close()
	client := pb.NewCatClient(conn)
	message := &pb.GetMyCatMessage{TargetCat: "tama"}
	res, err := client.GetMyCat(context.TODO(), message)
	fmt.Printf("result:%#v \n", res)
	fmt.Printf("error::%#v \n", err)
}
