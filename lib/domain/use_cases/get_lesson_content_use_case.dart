import 'package:ezlang/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';
import 'package:ezlang/domain/entities/lesson_content_entity.dart';
import 'package:ezlang/domain/repositories/curriculum_repository.dart';

class GetLessonContentUseCase {
  final CurriculumRepository repository;

  GetLessonContentUseCase(this.repository);

  Future<Either<Failure, LessonContent>> call(String subTopicId) =>
      repository.getLessonContent(subTopicId);
}
