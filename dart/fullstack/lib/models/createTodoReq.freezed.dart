// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'createTodoReq.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateTodoReq _$CreateTodoReqFromJson(Map<String, dynamic> json) {
  return _CreateTodoReq.fromJson(json);
}

/// @nodoc
mixin _$CreateTodoReq {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Serializes this CreateTodoReq to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateTodoReq
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateTodoReqCopyWith<CreateTodoReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTodoReqCopyWith<$Res> {
  factory $CreateTodoReqCopyWith(
          CreateTodoReq value, $Res Function(CreateTodoReq) then) =
      _$CreateTodoReqCopyWithImpl<$Res, CreateTodoReq>;
  @useResult
  $Res call({String title, String content});
}

/// @nodoc
class _$CreateTodoReqCopyWithImpl<$Res, $Val extends CreateTodoReq>
    implements $CreateTodoReqCopyWith<$Res> {
  _$CreateTodoReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateTodoReq
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateTodoReqImplCopyWith<$Res>
    implements $CreateTodoReqCopyWith<$Res> {
  factory _$$CreateTodoReqImplCopyWith(
          _$CreateTodoReqImpl value, $Res Function(_$CreateTodoReqImpl) then) =
      __$$CreateTodoReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String content});
}

/// @nodoc
class __$$CreateTodoReqImplCopyWithImpl<$Res>
    extends _$CreateTodoReqCopyWithImpl<$Res, _$CreateTodoReqImpl>
    implements _$$CreateTodoReqImplCopyWith<$Res> {
  __$$CreateTodoReqImplCopyWithImpl(
      _$CreateTodoReqImpl _value, $Res Function(_$CreateTodoReqImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTodoReq
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_$CreateTodoReqImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateTodoReqImpl implements _CreateTodoReq {
  const _$CreateTodoReqImpl({required this.title, required this.content});

  factory _$CreateTodoReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateTodoReqImplFromJson(json);

  @override
  final String title;
  @override
  final String content;

  @override
  String toString() {
    return 'CreateTodoReq(title: $title, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTodoReqImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, content);

  /// Create a copy of CreateTodoReq
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTodoReqImplCopyWith<_$CreateTodoReqImpl> get copyWith =>
      __$$CreateTodoReqImplCopyWithImpl<_$CreateTodoReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTodoReqImplToJson(
      this,
    );
  }
}

abstract class _CreateTodoReq implements CreateTodoReq {
  const factory _CreateTodoReq(
      {required final String title,
      required final String content}) = _$CreateTodoReqImpl;

  factory _CreateTodoReq.fromJson(Map<String, dynamic> json) =
      _$CreateTodoReqImpl.fromJson;

  @override
  String get title;
  @override
  String get content;

  /// Create a copy of CreateTodoReq
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTodoReqImplCopyWith<_$CreateTodoReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
