import 'package:get/get.dart';
import 'package:ezlang/domain/use_cases/get_learning_time_use_case.dart';
import 'package:ezlang/domain/use_cases/get_stickers_use_case.dart';
import 'package:ezlang/presentation/profile/view_model/profile_view_model.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileViewModel>(
      () => ProfileViewModel(
        getLearningTimeUseCase: Get.find<GetLearningTimeUseCase>(),
        getStickersUseCase: Get.find<GetStickersUseCase>(),
      ),
    );
  }
}
