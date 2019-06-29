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

## Dart用のPluginをインストール
Dart用のProtobufのリポジトリーからクローンする
```bash
https://github.com/dart-lang/protobuf

cd protobuf/protoc_plugin
pub install
```
上記を実行後、protoc_plugin/binにPATHを通す。

## ドキュメント用のGenerator
```
go get -u github.com/pseudomuto/protoc-gen-doc/cmd/protoc-gen-doc
```

## Go生成
```bash
protoc --go_out=plugins=grpc:./go-server api/proto/v1/*.proto
```

## Dart生成
```bash
protoc --dart_out=grpc:./flutter_grpc_app/lib/api/pb proto/*.proto
protoc --dart_out=grpc:./flutter_grpc_app/lib/api/pb types/*.proto
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