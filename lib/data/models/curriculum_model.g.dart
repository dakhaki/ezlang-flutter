// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'curriculum_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CurriculumModel _$CurriculumModelFromJson(Map<String, dynamic> json) =>
    _CurriculumModel(
      levels: (json['levels'] as List<dynamic>)
          .map((e) => EnglishLevelModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CurriculumModelToJson(_CurriculumModel instance) =>
    <String, dynamic>{'levels': instance.levels};

_EnglishLevelModel _$EnglishLevelModelFromJson(Map<String, dynamic> json) =>
    _EnglishLevelModel(
      id: json['id'] as String,
      title: json['title'] as String,
      cefrCode: json['cefrCode'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      imageLocalAsset: json['imageLocalAsset'] as String,
      backgroundColorHex: json['backgroundColorHex'] as String,
      topics: (json['topics'] as List<dynamic>)
          .map((e) => TopicModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EnglishLevelModelToJson(_EnglishLevelModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'cefrCode': instance.cefrCode,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'imageLocalAsset': instance.imageLocalAsset,
      'backgroundColorHex': instance.backgroundColorHex,
      'topics': instance.topics,
    };

_TopicModel _$TopicModelFromJson(Map<String, dynamic> json) => _TopicModel(
  id: json['id'] as String,
  title: json['title'] as String,
  iconAsset: json['iconAsset'] as String,
  isPremium: json['isPremium'] as bool? ?? false,
  subTopics: (json['subTopics'] as List<dynamic>)
      .map((e) => SubTopicModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$TopicModelToJson(_TopicModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'iconAsset': instance.iconAsset,
      'isPremium': instance.isPremium,
      'subTopics': instance.subTopics,
    };

_SubTopicModel _$SubTopicModelFromJson(Map<String, dynamic> json) =>
    _SubTopicModel(
      id: json['id'] as String,
      title: json['title'] as String,
      materialCount: (json['materialCount'] as num?)?.toInt() ?? 0,
      exerciseCount: (json['exerciseCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$SubTopicModelToJson(_SubTopicModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'materialCount': instance.materialCount,
      'exerciseCount': instance.exerciseCount,
    };
