import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ezlang/domain/entities/lesson_content_entity.dart';

part 'lesson_content_model.freezed.dart';
part 'lesson_content_model.g.dart';

@freezed
abstract class LessonContentModel with _$LessonContentModel {
  const LessonContentModel._();

  const factory LessonContentModel({
    required String id,
    @Default([]) List<LearningMaterialModel> materials,
    required List<ExerciseModel> exercises,
  }) = _LessonContentModel;

  factory LessonContentModel.fromJson(Map<String, dynamic> json) =>
      _$LessonContentModelFromJson(json);

  LessonContent toEntity() {
    return LessonContent(
      id: id,
      materials: materials.map((e) => e.toEntity()).toList(),
      exercises: exercises.map((e) => e.toEntity()).toList(),
    );
  }
}

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class LearningMaterialModel with _$LearningMaterialModel {
  const LearningMaterialModel._();

  const factory LearningMaterialModel.video({
    required String id,
    required String title,
    required String url,
  }) = _VideoMaterialModel;

  const factory LearningMaterialModel.article({
    required String id,
    required String title,
    required String content,
  }) = _ArticleMaterialModel;

  const factory LearningMaterialModel.pdf({
    required String id,
    required String title,
    required String url,
  }) = _PdfMaterialModel;

  const factory LearningMaterialModel.html({
    required String id,
    required String title,
    required String content,
  }) = _HtmlMaterialModel;

  const factory LearningMaterialModel.audio({
    required String id,
    required String title,
    required String url,
  }) = _AudioMaterialModel;

  factory LearningMaterialModel.fromJson(Map<String, dynamic> json) =>
      _$LearningMaterialModelFromJson(json);

  LearningMaterial toEntity() {
    return map(
      video: (e) => VideoMaterial(id: e.id, title: e.title, url: e.url),
      article: (e) =>
          ArticleMaterial(id: e.id, title: e.title, content: e.content),
      pdf: (e) => PdfMaterial(id: e.id, title: e.title, url: e.url),
      html: (e) => HtmlMaterial(id: e.id, title: e.title, content: e.content),
      audio: (e) => AudioMaterial(id: e.id, title: e.title, url: e.url),
    );
  }
}

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class ExerciseModel with _$ExerciseModel {
  const ExerciseModel._();

  const factory ExerciseModel.multipleChoice({
    required String id,
    required String prompt,
    String? imageUrl,
    required List<String> options,
    required int correctIndex,
  }) = _MultipleChoiceModel;

  const factory ExerciseModel.translateSentence({
    required String id,
    required String prompt,
    String? imageUrl,
    required String sourceText,
    required String targetText,
  }) = _TranslateSentenceModel;

  const factory ExerciseModel.audioMatch({
    required String id,
    required String prompt,
    String? imageUrl,
    required String correctWord,
  }) = _AudioMatchModel;

  const factory ExerciseModel.imageSelection({
    required String id,
    required String prompt,
    String? imageUrl,
    required List<String> options,
    required int correctIndex,
  }) = _ImageSelectionModel;

  factory ExerciseModel.fromJson(Map<String, dynamic> json) =>
      _$ExerciseModelFromJson(json);

  Exercise toEntity() {
    return map(
      multipleChoice: (e) => MultipleChoice(
        id: e.id,
        prompt: e.prompt,
        imageUrl: e.imageUrl,
        options: e.options,
        correctIndex: e.correctIndex,
      ),
      translateSentence: (e) => TranslateSentence(
        id: e.id,
        prompt: e.prompt,
        imageUrl: e.imageUrl,
        sourceText: e.sourceText,
        targetText: e.targetText,
      ),
      audioMatch: (e) => AudioMatch(
        id: e.id,
        prompt: e.prompt,
        imageUrl: e.imageUrl,
        correctWord: e.correctWord,
      ),
      imageSelection: (e) => ImageSelection(
        id: e.id,
        prompt: e.prompt,
        imageUrl: e.imageUrl,
        options: e.options,
        correctIndex: e.correctIndex,
      ),
    );
  }
}
