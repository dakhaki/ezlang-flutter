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

  @override
  Future<int> getStreak() => dataSource.getStreak();

  @override
  Future<void> updateStreak() => dataSource.updateStreak();

  @override
  Future<void> addSticker(String stickerId) => dataSource.addSticker(stickerId);

  @override
  Future<int> getLearningTime() => dataSource.getLearningTime();

  @override
  Future<List<String>> getStickers() => dataSource.getStickers();

  @override
  Future<void> updateLearningTime(int minutes) =>
      dataSource.updateLearningTime(minutes);
}
