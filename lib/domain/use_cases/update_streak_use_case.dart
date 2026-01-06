import 'package:ezlang/domain/repositories/progress_repository.dart';

class UpdateStreakUseCase {
  final ProgressRepository repository;
  UpdateStreakUseCase(this.repository);

  Future<void> call() => repository.updateStreak();
}
