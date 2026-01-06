import 'package:ezlang/domain/repositories/progress_repository.dart';

class GetStickersUseCase {
  final ProgressRepository repository;
  GetStickersUseCase(this.repository);

  Future<List<String>> call() => repository.getStickers();
}
