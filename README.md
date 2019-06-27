# gRPC

## protocのインストール
protoファイルからコード生成をするコンパイラ(protoc)をインストールします。
protocのダウンロードはos別にこちらから
https://github.com/protocolbuffers/protobuf/

unzip xxx.zip

解凍後binにPathを通す。


## Go用のGeneratorをインストール
以下はグローバルが良いかも？
```
go get -u github.com/golang/protobuf/protoc-gen-go
```
## ドキュメント用のGenerator
```
go get -u github.com/pseudomuto/protoc-gen-doc/cmd/protoc-gen-doc
```


## Go生成
```bash
protoc --go_out=plugins=grpc:./pb proto/*.proto
```

## Doc生成
```bash
protoc --doc_out=html,index.html:./ proto/*.proto
```