import 'package:ezlang/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';
import 'package:ezlang/domain/entities/curriculum_entity.dart';
import 'package:ezlang/domain/repositories/curriculum_repository.dart';

class GetCurriculumUseCase {
  final CurriculumRepository repository;

  GetCurriculumUseCase(this.repository);

  Future<Either<Failure, List<EnglishLevel>>> call() {
    return repository.getLevels();
  }
}
