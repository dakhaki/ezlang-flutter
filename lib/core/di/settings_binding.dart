import 'package:get/get.dart';
import 'package:ezlang/domain/use_cases/clear_progress_use_case.dart';
import 'package:ezlang/presentation/settings/view_model/settings_view_model.dart';

class SettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingsViewModel>(
      () => SettingsViewModel(Get.find<ClearProgressUseCase>()),
    );
  }
}
