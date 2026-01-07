// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_content_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LessonContentModel _$LessonContentModelFromJson(Map<String, dynamic> json) =>
    _LessonContentModel(
      id: json['id'] as String,
      materials:
          (json['materials'] as List<dynamic>?)
              ?.map(
                (e) =>
                    LearningMaterialModel.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      exercises: (json['exercises'] as List<dynamic>)
          .map((e) => ExerciseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LessonContentModelToJson(_LessonContentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'materials': instance.materials,
      'exercises': instance.exercises,
    };

_VideoMaterialModel _$VideoMaterialModelFromJson(Map<String, dynamic> json) =>
    _VideoMaterialModel(
      id: json['id'] as String,
      title: json['title'] as String,
      url: json['url'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$VideoMaterialModelToJson(_VideoMaterialModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'type': instance.$type,
    };

_ArticleMaterialModel _$ArticleMaterialModelFromJson(
  Map<String, dynamic> json,
) => _ArticleMaterialModel(
  id: json['id'] as String,
  title: json['title'] as String,
  content: json['content'] as String,
  $type: json['type'] as String?,
);

Map<String, dynamic> _$ArticleMaterialModelToJson(
  _ArticleMaterialModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'content': instance.content,
  'type': instance.$type,
};

_PdfMaterialModel _$PdfMaterialModelFromJson(Map<String, dynamic> json) =>
    _PdfMaterialModel(
      id: json['id'] as String,
      title: json['title'] as String,
      url: json['url'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$PdfMaterialModelToJson(_PdfMaterialModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'type': instance.$type,
    };

_HtmlMaterialModel _$HtmlMaterialModelFromJson(Map<String, dynamic> json) =>
    _HtmlMaterialModel(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$HtmlMaterialModelToJson(_HtmlMaterialModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'type': instance.$type,
    };

_AudioMaterialModel _$AudioMaterialModelFromJson(Map<String, dynamic> json) =>
    _AudioMaterialModel(
      id: json['id'] as String,
      title: json['title'] as String,
      url: json['url'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$AudioMaterialModelToJson(_AudioMaterialModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'type': instance.$type,
    };

_MultipleChoiceModel _$MultipleChoiceModelFromJson(Map<String, dynamic> json) =>
    _MultipleChoiceModel(
      id: json['id'] as String,
      prompt: json['prompt'] as String,
      imageUrl: json['imageUrl'] as String?,
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
  'imageUrl': instance.imageUrl,
  'options': instance.options,
  'correctIndex': instance.correctIndex,
  'type': instance.$type,
};

_TranslateSentenceModel _$TranslateSentenceModelFromJson(
  Map<String, dynamic> json,
) => _TranslateSentenceModel(
  id: json['id'] as String,
  prompt: json['prompt'] as String,
  imageUrl: json['imageUrl'] as String?,
  sourceText: json['sourceText'] as String,
  targetText: json['targetText'] as String,
  $type: json['type'] as String?,
);

Map<String, dynamic> _$TranslateSentenceModelToJson(
  _TranslateSentenceModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'prompt': instance.prompt,
  'imageUrl': instance.imageUrl,
  'sourceText': instance.sourceText,
  'targetText': instance.targetText,
  'type': instance.$type,
};

_AudioMatchModel _$AudioMatchModelFromJson(Map<String, dynamic> json) =>
    _AudioMatchModel(
      id: json['id'] as String,
      prompt: json['prompt'] as String,
      imageUrl: json['imageUrl'] as String?,
      correctWord: json['correctWord'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$AudioMatchModelToJson(_AudioMatchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'prompt': instance.prompt,
      'imageUrl': instance.imageUrl,
      'correctWord': instance.correctWord,
      'type': instance.$type,
    };

_ImageSelectionModel _$ImageSelectionModelFromJson(Map<String, dynamic> json) =>
    _ImageSelectionModel(
      id: json['id'] as String,
      prompt: json['prompt'] as String,
      imageUrl: json['imageUrl'] as String?,
      options: (json['options'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      correctIndex: (json['correctIndex'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$ImageSelectionModelToJson(
  _ImageSelectionModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'prompt': instance.prompt,
  'imageUrl': instance.imageUrl,
  'options': instance.options,
  'correctIndex': instance.correctIndex,
  'type': instance.$type,
};
