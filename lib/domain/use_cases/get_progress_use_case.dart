import 'package:ezlang/domain/repositories/progress_repository.dart';

class GetProgressUseCase {
  final ProgressRepository repository;
  GetProgressUseCase(this.repository);

  Future<List<String>> call() => repository.getCompletedLevels();
}
