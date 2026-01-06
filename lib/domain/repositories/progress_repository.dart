abstract class ProgressRepository {
  Future<void> saveCompletedLevel(String levelId);
  Future<List<String>> getCompletedLevels();
  Future<void> clearProgress();
  Future<int> getStreak();
  Future<void> updateStreak();
  Future<int> getLearningTime();
  Future<void> updateLearningTime(int minutes);
  Future<List<String>> getStickers();
  Future<void> addSticker(String stickerId);
}
