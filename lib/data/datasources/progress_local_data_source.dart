import 'package:get_storage/get_storage.dart';

abstract class ProgressLocalDataSource {
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

class ProgressLocalDataSourceImpl implements ProgressLocalDataSource {
  final GetStorage _box = GetStorage();
  static const String _key = 'completed_levels';
  static const String _streakKey = 'streak_count';
  static const String _dateKey = 'last_completion_date';
  static const String _learningTimeKey = 'learning_time';
  static const String _stickersKey = 'collected_stickers';

  @override
  Future<void> saveCompletedLevel(String levelId) async {
    final List<dynamic> current = _box.read(_key) ?? [];
    if (!current.contains(levelId)) {
      current.add(levelId);
      await _box.write(_key, current);
    }
  }

  @override
  Future<List<String>> getCompletedLevels() async {
    final List<dynamic> current = _box.read(_key) ?? [];
    return current.cast<String>();
  }

  @override
  Future<void> clearProgress() async {
    await _box.remove(_key);
    await _box.remove(_streakKey);
    await _box.remove(_dateKey);
    await _box.remove(_learningTimeKey);
    await _box.remove(_stickersKey);
  }

  @override
  Future<int> getStreak() async {
    final lastDateStr = _box.read<String>(_dateKey);
    final streak = _box.read<int>(_streakKey) ?? 0;

    if (lastDateStr == null) return 0;

    final lastDate = DateTime.parse(lastDateStr);
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final difference = today.difference(lastDate).inDays;

    // If more than 1 day has passed, the streak is broken (visually)
    if (difference > 1) return 0;

    return streak;
  }

  @override
  Future<void> updateStreak() async {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final lastDateStr = _box.read<String>(_dateKey);
    int currentStreak = _box.read<int>(_streakKey) ?? 0;

    if (lastDateStr != null) {
      final lastDate = DateTime.parse(lastDateStr);
      final difference = today.difference(lastDate).inDays;

      if (difference == 1) {
        currentStreak++;
      } else if (difference > 1) {
        currentStreak = 1; // Reset streak
      }
      // If difference == 0, do nothing (already updated today)
    } else {
      currentStreak = 1; // First time
    }

    await _box.write(_streakKey, currentStreak);
    await _box.write(_dateKey, today.toIso8601String());
  }

  @override
  Future<int> getLearningTime() async {
    return _box.read<int>(_learningTimeKey) ?? 0;
  }

  @override
  Future<void> updateLearningTime(int minutes) async {
    final current = await getLearningTime();
    await _box.write(_learningTimeKey, current + minutes);
  }

  @override
  Future<List<String>> getStickers() async {
    final List<dynamic> current = _box.read(_stickersKey) ?? [];
    return current.cast<String>();
  }

  @override
  Future<void> addSticker(String stickerId) async {
    final List<dynamic> current = _box.read(_stickersKey) ?? [];
    if (!current.contains(stickerId)) {
      current.add(stickerId);
      await _box.write(_stickersKey, current);
    }
  }
}
