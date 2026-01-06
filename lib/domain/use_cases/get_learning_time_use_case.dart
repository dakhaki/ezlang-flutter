import 'package:ezlang/domain/repositories/progress_repository.dart';

class GetLearningTimeUseCase {
  final ProgressRepository repository;
  GetLearningTimeUseCase(this.repository);

  Future<int> call() => repository.getLearningTime();
}
