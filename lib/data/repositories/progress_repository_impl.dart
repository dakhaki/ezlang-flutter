import 'package:ezlang/data/datasources/progress_local_data_source.dart';
import 'package:ezlang/domain/repositories/progress_repository.dart';

class ProgressRepositoryImpl implements ProgressRepository {
  final ProgressLocalDataSource dataSource;

  ProgressRepositoryImpl({required this.dataSource});

  @override
  Future<List<String>> getCompletedLevels() => dataSource.getCompletedLevels();

  @override
  Future<void> saveCompletedLevel(String levelId) =>
      dataSource.saveCompletedLevel(levelId);

  @override
  Future<void> clearProgress() => dataSource.clearProgress();
}
