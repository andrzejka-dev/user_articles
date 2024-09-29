import 'package:freezed_annotation/freezed_annotation.dart';

part 'author_model.freezed.dart';
part 'author_model.g.dart';

@freezed
class AuthorModel with _$AuthorModel {
  const AuthorModel._();
  factory AuthorModel({
    required int id,
    required String picture,
    @JsonKey(name: 'firstName') required String firstName,
    @JsonKey(name: 'lastName') required String lastName,
  }) = _AuthorModel;

  String get name {
    return '$firstName $lastName';
  }

  factory AuthorModel.fromJson(Map<String, dynamic> json) =>
      _$AuthorModelFromJson(json);
}
