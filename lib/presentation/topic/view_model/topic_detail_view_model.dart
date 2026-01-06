import 'package:get/get.dart';
import 'package:ezlang/core/routes/routes.dart';
import 'package:ezlang/domain/entities/curriculum_entity.dart';

class TopicDetailViewModel extends GetxController {
  late Topic topic;

  @override
  void onInit() {
    super.onInit();
    topic = Get.arguments as Topic;
  }

  void openExercise(SubTopic subTopic) {
    Get.toNamed(PageTo.exercise, arguments: subTopic);
  }

  void openMaterials(SubTopic subTopic) {
    Get.toNamed(PageTo.materials, arguments: subTopic);
  }
}
