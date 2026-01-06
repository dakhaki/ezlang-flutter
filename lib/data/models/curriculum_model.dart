import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ezlang/domain/entities/curriculum_entity.dart';

part 'curriculum_model.freezed.dart';
part 'curriculum_model.g.dart';

@freezed
abstract class CurriculumModel with _$CurriculumModel {
  const factory CurriculumModel({required List<LevelModel> levels}) =
      _CurriculumModel;

  factory CurriculumModel.fromJson(Map<String, dynamic> json) =>
      _$CurriculumModelFromJson(json);
}

@freezed
abstract class LevelModel with _$LevelModel {
  const LevelModel._();

  const factory LevelModel({
    required String id,
    required String title,
    required String cefr,
    required String description,
    required String imageUrl,
    required List<String> topics,
  }) = _LevelModel;

  factory LevelModel.fromJson(Map<String, dynamic> json) =>
      _$LevelModelFromJson(json);

  LevelEntity toEntity() {
    return LevelEntity(
      id: id,
      title: title,
      cefr: cefr,
      description: description,
      imageUrl: imageUrl,
      topics: topics,
    );
  }
}
