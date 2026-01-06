import 'package:ezlang/domain/repositories/progress_repository.dart';

class SaveProgressUseCase {
  final ProgressRepository repository;
  SaveProgressUseCase(this.repository);

  Future<void> call(String levelId) => repository.saveCompletedLevel(levelId);
}
