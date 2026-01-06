import 'package:get/get.dart';
import 'package:ezlang/core/services/audio_service.dart';
import 'package:ezlang/presentation/exercise/view_model/exercise_view_model.dart';

class ExerciseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExerciseViewModel>(
      () => ExerciseViewModel(audioService: Get.find<AudioService>()),
    );
  }
}
