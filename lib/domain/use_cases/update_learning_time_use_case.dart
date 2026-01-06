import 'package:ezlang/domain/repositories/progress_repository.dart';

class UpdateLearningTimeUseCase {
  final ProgressRepository repository;
  UpdateLearningTimeUseCase(this.repository);

  Future<void> call(int minutes) => repository.updateLearningTime(minutes);
}
