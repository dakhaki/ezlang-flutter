import 'package:get/get.dart';
import 'package:ezlang/domain/entities/curriculum_entity.dart';
import 'package:ezlang/domain/use_cases/save_progress_use_case.dart';

class LessonDetailViewModel extends GetxController {
  final SaveProgressUseCase saveProgressUseCase;
  late LevelEntity level;

  LessonDetailViewModel({required this.saveProgressUseCase});

  @override
  void onInit() {
    super.onInit();
    level = Get.arguments as LevelEntity;
  }

  Future<void> completeLevel() async {
    await saveProgressUseCase(level.id);
    Get.back(result: true); // Return true to indicate progress update
    Get.snackbar('Success', 'You completed ${level.title}!');
  }
}
