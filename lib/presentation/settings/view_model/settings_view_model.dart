import 'package:get/get.dart';
import 'package:ezlang/domain/use_cases/clear_progress_use_case.dart';
import 'package:ezlang/presentation/home/view_model/home_view_model.dart';

class SettingsViewModel extends GetxController {
  final ClearProgressUseCase _clearProgressUseCase;

  SettingsViewModel(this._clearProgressUseCase);

  Future<void> clearProgress() async {
    await _clearProgressUseCase();

    // Refresh home view if it's active to reflect cleared progress
    if (Get.isRegistered<HomeViewModel>()) {
      await Get.find<HomeViewModel>().fetchProgress();
    }

    Get.snackbar('Success', 'Progress has been reset.');
  }
}
