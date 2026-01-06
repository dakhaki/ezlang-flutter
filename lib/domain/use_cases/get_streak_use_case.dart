import 'package:ezlang/domain/repositories/progress_repository.dart';

class GetStreakUseCase {
  final ProgressRepository repository;
  GetStreakUseCase(this.repository);

  Future<int> call() => repository.getStreak();
}
