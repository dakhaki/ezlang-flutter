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
      exercises: (json['exercises'] as List<dynamic>)
          .map((e) => ExerciseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SubTopicModelToJson(_SubTopicModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'exercises': instance.exercises,
    };

_MultipleChoiceModel _$MultipleChoiceModelFromJson(Map<String, dynamic> json) =>
    _MultipleChoiceModel(
      id: json['id'] as String,
      prompt: json['prompt'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      correctIndex: (json['correctIndex'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$MultipleChoiceModelToJson(
  _MultipleChoiceModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'prompt': instance.prompt,
  'options': instance.options,
  'correctIndex': instance.correctIndex,
  'type': instance.$type,
};

_TranslateSentenceModel _$TranslateSentenceModelFromJson(
  Map<String, dynamic> json,
) => _TranslateSentenceModel(
  id: json['id'] as String,
  prompt: json['prompt'] as String,
  sourceText: json['sourceText'] as String,
  targetText: json['targetText'] as String,
  $type: json['type'] as String?,
);

Map<String, dynamic> _$TranslateSentenceModelToJson(
  _TranslateSentenceModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'prompt': instance.prompt,
  'sourceText': instance.sourceText,
  'targetText': instance.targetText,
  'type': instance.$type,
};

_AudioMatchModel _$AudioMatchModelFromJson(Map<String, dynamic> json) =>
    _AudioMatchModel(
      id: json['id'] as String,
      prompt: json['prompt'] as String,
      correctWord: json['correctWord'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$AudioMatchModelToJson(_AudioMatchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'prompt': instance.prompt,
      'correctWord': instance.correctWord,
      'type': instance.$type,
    };
