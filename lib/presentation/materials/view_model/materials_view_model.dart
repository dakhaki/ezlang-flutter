import 'package:get/get.dart';
import 'package:ezlang/domain/entities/curriculum_entity.dart';
import 'package:ezlang/domain/entities/lesson_content_entity.dart';
import 'package:ezlang/domain/use_cases/get_lesson_content_use_case.dart';

class MaterialsViewModel extends GetxController with StateMixin<LessonContent> {
  late SubTopic subTopic;
  final GetLessonContentUseCase getLessonContentUseCase;

  MaterialsViewModel(this.getLessonContentUseCase);

  @override
  void onInit() {
    super.onInit();
    subTopic = Get.arguments as SubTopic;
    fetchContent();
  }

  Future<void> fetchContent() async {
    change(null, status: RxStatus.loading());
    final result = await getLessonContentUseCase(subTopic.id);
    result.fold(
      (failure) => change(null, status: RxStatus.error(failure.message)),
      (data) {
        change(data, status: RxStatus.success());
      },
    );
  }

  void openMaterial(LearningMaterial material) {
    // Implement navigation to specific material viewer or open URL
    if (material is ArticleMaterial) {
      Get.defaultDialog(
        title: material.title,
        middleText: material.content,
        textConfirm: "Close",
        onConfirm: () => Get.back(),
      );
    } else if (material is VideoMaterial) {
      Get.snackbar("Video", "Opening video: ${material.url}");
    } else {
      Get.snackbar("Material", "Opening ${material.title}");
    }
  }
}
