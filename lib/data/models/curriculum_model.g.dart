// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'curriculum_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CurriculumModel _$CurriculumModelFromJson(Map<String, dynamic> json) =>
    _CurriculumModel(
      levels: (json['levels'] as List<dynamic>)
          .map((e) => LevelModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CurriculumModelToJson(_CurriculumModel instance) =>
    <String, dynamic>{'levels': instance.levels};

_LevelModel _$LevelModelFromJson(Map<String, dynamic> json) => _LevelModel(
  id: json['id'] as String,
  title: json['title'] as String,
  cefr: json['cefr'] as String,
  description: json['description'] as String,
  imageUrl: json['imageUrl'] as String,
  topics: (json['topics'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$LevelModelToJson(_LevelModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'cefr': instance.cefr,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'topics': instance.topics,
    };
