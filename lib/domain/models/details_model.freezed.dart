// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailsModel _$DetailsModelFromJson(Map<String, dynamic> json) {
  return _DetailsModel.fromJson(json);
}

/// @nodoc
mixin _$DetailsModel {
  int get id => throw _privateConstructorUsedError;
  int get authorId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;

  /// Serializes this DetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailsModelCopyWith<DetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsModelCopyWith<$Res> {
  factory $DetailsModelCopyWith(
          DetailsModel value, $Res Function(DetailsModel) then) =
      _$DetailsModelCopyWithImpl<$Res, DetailsModel>;
  @useResult
  $Res call(
      {int id, int authorId, String title, String content, String picture});
}

/// @nodoc
class _$DetailsModelCopyWithImpl<$Res, $Val extends DetailsModel>
    implements $DetailsModelCopyWith<$Res> {
  _$DetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorId = null,
    Object? title = null,
    Object? content = null,
    Object? picture = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailsModelImplCopyWith<$Res>
    implements $DetailsModelCopyWith<$Res> {
  factory _$$DetailsModelImplCopyWith(
          _$DetailsModelImpl value, $Res Function(_$DetailsModelImpl) then) =
      __$$DetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, int authorId, String title, String content, String picture});
}

/// @nodoc
class __$$DetailsModelImplCopyWithImpl<$Res>
    extends _$DetailsModelCopyWithImpl<$Res, _$DetailsModelImpl>
    implements _$$DetailsModelImplCopyWith<$Res> {
  __$$DetailsModelImplCopyWithImpl(
      _$DetailsModelImpl _value, $Res Function(_$DetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorId = null,
    Object? title = null,
    Object? content = null,
    Object? picture = null,
  }) {
    return _then(_$DetailsModelImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as int,
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$DetailsModelImpl implements _DetailsModel {
  _$DetailsModelImpl(
      this.id, this.authorId, this.title, this.content, this.picture);

  factory _$DetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailsModelImplFromJson(json);

  @override
  final int id;
  @override
  final int authorId;
  @override
  final String title;
  @override
  final String content;
  @override
  final String picture;

  @override
  String toString() {
    return 'DetailsModel(id: $id, authorId: $authorId, title: $title, content: $content, picture: $picture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, authorId, title, content, picture);

  /// Create a copy of DetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsModelImplCopyWith<_$DetailsModelImpl> get copyWith =>
      __$$DetailsModelImplCopyWithImpl<_$DetailsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailsModelImplToJson(
      this,
    );
  }
}

abstract class _DetailsModel implements DetailsModel {
  factory _DetailsModel(final int id, final int authorId, final String title,
      final String content, final String picture) = _$DetailsModelImpl;

  factory _DetailsModel.fromJson(Map<String, dynamic> json) =
      _$DetailsModelImpl.fromJson;

  @override
  int get id;
  @override
  int get authorId;
  @override
  String get title;
  @override
  String get content;
  @override
  String get picture;

  /// Create a copy of DetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailsModelImplCopyWith<_$DetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
