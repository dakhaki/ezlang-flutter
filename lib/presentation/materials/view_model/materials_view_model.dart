import 'package:get/get.dart';
import 'package:ezlang/domain/entities/curriculum_entity.dart';

class MaterialsViewModel extends GetxController {
  late SubTopic subTopic;

  @override
  void onInit() {
    super.onInit();
    subTopic = Get.arguments as SubTopic;
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
