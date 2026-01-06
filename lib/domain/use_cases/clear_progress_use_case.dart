import 'package:ezlang/domain/repositories/progress_repository.dart';

class ClearProgressUseCase {
  final ProgressRepository repository;
  ClearProgressUseCase(this.repository);

  Future<void> call() => repository.clearProgress();
}
