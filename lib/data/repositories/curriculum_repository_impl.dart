import 'package:fpdart/fpdart.dart';
import 'package:ezlang/core/error/failures.dart';
import 'package:ezlang/data/datasources/local_data_source.dart';
import 'package:ezlang/domain/entities/curriculum_entity.dart';
import 'package:ezlang/domain/repositories/curriculum_repository.dart';
import 'package:ezlang/domain/entities/lesson_content_entity.dart';

class CurriculumRepositoryImpl implements CurriculumRepository {
  final LocalDataSource localDataSource;

  CurriculumRepositoryImpl({required this.localDataSource});

  @override
  Future<Either<Failure, List<EnglishLevel>>> getLevels() async {
    try {
      final model = await localDataSource.getCurriculum();
      final entities = model.levels.map((e) => e.toEntity()).toList();
      return Right(entities);
    } catch (e) {
      return Left(DataParsingFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, LessonContent>> getLessonContent(
    String subTopicId,
  ) async {
    try {
      final model = await localDataSource.getLessonContent(subTopicId);
      return Right(model.toEntity());
    } catch (e) {
      return Left(DataParsingFailure(e.toString()));
    }
  }
}
