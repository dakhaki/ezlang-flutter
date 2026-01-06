import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ezlang/domain/entities/curriculum_entity.dart';

part 'curriculum_model.freezed.dart';
part 'curriculum_model.g.dart';

@freezed
abstract class CurriculumModel with _$CurriculumModel {
  const factory CurriculumModel({required List<EnglishLevelModel> levels}) =
      _CurriculumModel;

  factory CurriculumModel.fromJson(Map<String, dynamic> json) =>
      _$CurriculumModelFromJson(json);
}

@freezed
abstract class EnglishLevelModel with _$EnglishLevelModel {
  const EnglishLevelModel._();

  const factory EnglishLevelModel({
    required String id,
    required String title,
    required String cefrCode,
    required String description,
    required String imageUrl,
    required List<TopicModel> topics,
  }) = _EnglishLevelModel;

  factory EnglishLevelModel.fromJson(Map<String, dynamic> json) =>
      _$EnglishLevelModelFromJson(json);

  EnglishLevel toEntity() {
    return EnglishLevel(
      id: id,
      title: title,
      cefrCode: cefrCode,
      description: description,
      imageUrl: imageUrl,
      topics: topics.map((e) => e.toEntity()).toList(),
    );
  }
}

@freezed
abstract class TopicModel with _$TopicModel {
  const TopicModel._();

  const factory TopicModel({
    required String id,
    required String title,
    required String iconAsset,
    @Default(false) bool isPremium,
    required List<SubTopicModel> subTopics,
  }) = _TopicModel;

  factory TopicModel.fromJson(Map<String, dynamic> json) =>
      _$TopicModelFromJson(json);

  Topic toEntity() {
    return Topic(
      id: id,
      title: title,
      iconAsset: iconAsset,
      isPremium: isPremium,
      subTopics: subTopics.map((e) => e.toEntity()).toList(),
    );
  }
}

@freezed
abstract class SubTopicModel with _$SubTopicModel {
  const SubTopicModel._();

  const factory SubTopicModel({
    required String id,
    required String title,
    required List<ExerciseModel> exercises,
  }) = _SubTopicModel;

  factory SubTopicModel.fromJson(Map<String, dynamic> json) =>
      _$SubTopicModelFromJson(json);

  SubTopic toEntity() {
    return SubTopic(
      id: id,
      title: title,
      exercises: exercises.map((e) => e.toEntity()).toList(),
    );
  }
}

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class ExerciseModel with _$ExerciseModel {
  const ExerciseModel._();

  const factory ExerciseModel.multipleChoice({
    required String id,
    required String prompt,
    required List<String> options,
    required int correctIndex,
  }) = _MultipleChoiceModel;

  const factory ExerciseModel.translateSentence({
    required String id,
    required String prompt,
    required String sourceText,
    required String targetText,
  }) = _TranslateSentenceModel;

  const factory ExerciseModel.audioMatch({
    required String id,
    required String prompt,
    required String correctWord,
  }) = _AudioMatchModel;

  factory ExerciseModel.fromJson(Map<String, dynamic> json) =>
      _$ExerciseModelFromJson(json);

  Exercise toEntity() {
    return map(
      multipleChoice: (e) => MultipleChoice(
        id: e.id,
        prompt: e.prompt,
        options: e.options,
        correctIndex: e.correctIndex,
      ),
      translateSentence: (e) => TranslateSentence(
        id: e.id,
        prompt: e.prompt,
        sourceText: e.sourceText,
        targetText: e.targetText,
      ),
      audioMatch: (e) =>
          AudioMatch(id: e.id, prompt: e.prompt, correctWord: e.correctWord),
    );
  }
}
