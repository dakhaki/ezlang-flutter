import 'package:get/get.dart';
import 'package:ezlang/domain/use_cases/save_progress_use_case.dart';
import 'package:ezlang/presentation/lesson/view_model/lesson_detail_view_model.dart';

class LessonDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LessonDetailViewModel>(
      () => LessonDetailViewModel(
        saveProgressUseCase: Get.find<SaveProgressUseCase>(),
      ),
    );
  }
}
