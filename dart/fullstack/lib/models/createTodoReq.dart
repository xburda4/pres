import 'package:freezed_annotation/freezed_annotation.dart';

part 'createTodoReq.freezed.dart';
part 'createTodoReq.g.dart';

/// Todo create request
@freezed
class CreateTodoReq with _$CreateTodoReq {
  const factory CreateTodoReq({
    required String title,
    required String content,
  }) = _CreateTodoReq;

  /// Parses object from JSON
  factory CreateTodoReq.fromJson(Map<String, Object?> json) =>
      _$CreateTodoReqFromJson(json);
}
