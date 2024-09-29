// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthorModelImpl _$$AuthorModelImplFromJson(Map<String, dynamic> json) =>
    _$AuthorModelImpl(
      id: (json['id'] as num).toInt(),
      picture: json['picture'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$$AuthorModelImplToJson(_$AuthorModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'picture': instance.picture,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
