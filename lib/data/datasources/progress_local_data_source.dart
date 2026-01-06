import 'package:get_storage/get_storage.dart';

abstract class ProgressLocalDataSource {
  Future<void> saveCompletedLevel(String levelId);
  Future<List<String>> getCompletedLevels();
  Future<void> clearProgress();
}

class ProgressLocalDataSourceImpl implements ProgressLocalDataSource {
  final GetStorage _box = GetStorage();
  static const String _key = 'completed_levels';

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
  }
}
