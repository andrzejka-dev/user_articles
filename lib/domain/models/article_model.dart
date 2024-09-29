import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_model.freezed.dart';
part 'article_model.g.dart';

@freezed
class ArticleModel with _$ArticleModel {
  factory ArticleModel({
    required int id,
    @JsonKey(name: 'authorId') required int authorId,
    required String content,
  }) = _ArticleModel;

  factory ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleModelFromJson(json);
}
