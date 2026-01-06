abstract class ProgressRepository {
  Future<void> saveCompletedLevel(String levelId);
  Future<List<String>> getCompletedLevels();
  Future<void> clearProgress();
}
