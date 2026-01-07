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
    required String imageLocalAsset,
    required String backgroundColorHex,
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
      imageLocalAsset: imageLocalAsset,
      backgroundColorHex: backgroundColorHex,
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
    @Default(0) int materialCount,
    @Default(0) int exerciseCount,
  }) = _SubTopicModel;

  factory SubTopicModel.fromJson(Map<String, dynamic> json) =>
      _$SubTopicModelFromJson(json);

  SubTopic toEntity() {
    return SubTopic(
      id: id,
      title: title,
      materialCount: materialCount,
      exerciseCount: exerciseCount,
    );
  }
}
