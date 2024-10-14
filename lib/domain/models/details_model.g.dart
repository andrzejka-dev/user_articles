// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailsModelImpl _$$DetailsModelImplFromJson(Map<String, dynamic> json) =>
    _$DetailsModelImpl(
      (json['id'] as num).toInt(),
      (json['author_id'] as num).toInt(),
      json['title'] as String,
      json['content'] as String,
      json['picture'] as String,
    );

Map<String, dynamic> _$$DetailsModelImplToJson(_$DetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author_id': instance.authorId,
      'title': instance.title,
      'content': instance.content,
      'picture': instance.picture,
    };
