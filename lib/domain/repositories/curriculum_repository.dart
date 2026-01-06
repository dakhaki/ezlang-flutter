import 'package:ezlang/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';

import 'package:ezlang/domain/entities/curriculum_entity.dart';

abstract class CurriculumRepository {
  Future<Either<Failure, List<EnglishLevel>>> getLevels();
}
