import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

/// Note
@freezed
class Todo with _$Todo {
  const factory Todo({
    required String id,
    required String title,
    required String content,
    required DateTime createdAt,
    required bool finished,
  }) = _Todo;

  /// Parses object from JSON
  factory Todo.fromJson(Map<String, Object?> json) => _$TodoFromJson(json);
}
