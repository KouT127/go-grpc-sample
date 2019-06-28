# gRPC

## protocのインストール
protoファイルからコード生成をするコンパイラ(protoc)をインストールします。
https://github.com/protocolbuffers/protobuf/

unzip xxx.zip

解凍後binにPathを通す。


## Go用のGeneratorをインストール
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

## 種類
キーバリュー map<string,string>      
任意型 Any     
配列 repeated　    
列挙型 enum    
一つのフィールド　oneof