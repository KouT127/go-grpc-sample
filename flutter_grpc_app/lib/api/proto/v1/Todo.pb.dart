///
//  Generated code. Do not modify.
//  source: api/proto/v1/Todo.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

class Todo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Todo')
    ..aOS(1, 'id')
    ..aOS(2, 'title')
    ..aOS(3, 'description')
    ..hasRequiredFields = false
  ;

  Todo._() : super();
  factory Todo() => create();
  factory Todo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Todo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Todo clone() => Todo()..mergeFromMessage(this);
  Todo copyWith(void Function(Todo) updates) => super.copyWith((message) => updates(message as Todo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Todo create() => Todo._();
  Todo createEmptyInstance() => create();
  static $pb.PbList<Todo> createRepeated() => $pb.PbList<Todo>();
  static Todo getDefault() => _defaultInstance ??= create()..freeze();
  static Todo _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get title => $_getS(1, '');
  set title($core.String v) { $_setString(1, v); }
  $core.bool hasTitle() => $_has(1);
  void clearTitle() => clearField(2);

  $core.String get description => $_getS(2, '');
  set description($core.String v) { $_setString(2, v); }
  $core.bool hasDescription() => $_has(2);
  void clearDescription() => clearField(3);
}

class GetTodoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetTodoResponse')
    ..pc<Todo>(1, 'todo', $pb.PbFieldType.PM,Todo.create)
    ..hasRequiredFields = false
  ;

  GetTodoResponse._() : super();
  factory GetTodoResponse() => create();
  factory GetTodoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTodoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetTodoResponse clone() => GetTodoResponse()..mergeFromMessage(this);
  GetTodoResponse copyWith(void Function(GetTodoResponse) updates) => super.copyWith((message) => updates(message as GetTodoResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTodoResponse create() => GetTodoResponse._();
  GetTodoResponse createEmptyInstance() => create();
  static $pb.PbList<GetTodoResponse> createRepeated() => $pb.PbList<GetTodoResponse>();
  static GetTodoResponse getDefault() => _defaultInstance ??= create()..freeze();
  static GetTodoResponse _defaultInstance;

  $core.List<Todo> get todo => $_getList(0);
}

