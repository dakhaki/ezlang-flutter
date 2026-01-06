import 'package:get/get.dart';
import 'package:ezlang/presentation/home/view_model/home_view_model.dart';
import 'package:ezlang/domain/use_cases/get_curriculum_use_case.dart';
import 'package:ezlang/domain/use_cases/get_progress_use_case.dart';
import 'package:ezlang/core/services/logging_service.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    if (!Get.isRegistered<HomeViewModel>()) {
      Get.put(
        HomeViewModel(
          getProgressUseCase: Get.find<GetProgressUseCase>(),
          getCurriculumUseCase: Get.find<GetCurriculumUseCase>(),
          log: Get.find<LoggingService>(),
        ),
        permanent: true,
      );
    }
  }
}
