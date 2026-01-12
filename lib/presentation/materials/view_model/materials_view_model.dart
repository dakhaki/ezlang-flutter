import 'package:ezlang/core/routes/routes.dart';
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
    try {
      final result = await getLessonContentUseCase(subTopic.id);
      result.fold(
        (failure) => change(null, status: RxStatus.error(failure.message)),
        (data) {
          change(data, status: RxStatus.success());
        },
      );
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }
  }

  void openMaterial(LearningMaterial material) {
    switch (material) {
      case ArticleMaterial m:
        Get.toNamed(
          PageTo.materialsArticle,
          arguments: {'title': m.title, 'content': m.content},
        );
      case VideoMaterial m:
        Get.toNamed(
          PageTo.materialsVideo,
          arguments: {'title': m.title, 'url': m.url},
        );
      case PdfMaterial m:
        Get.toNamed(
          PageTo.materialsPdf,
          arguments: {'title': m.title, 'url': m.url},
        );
      case AudioMaterial m:
        Get.toNamed(
          PageTo.materialsAudio,
          arguments: {'title': m.title, 'url': m.url},
        );
      case HtmlMaterial m:
        Get.toNamed(
          PageTo.materialsHtml,
          arguments: {'title': m.title, 'content': m.content},
        );
    }
  }
}
