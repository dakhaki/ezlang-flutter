import 'package:get/get.dart';
import 'package:ezlang/domain/entities/curriculum_entity.dart';
import 'package:ezlang/domain/entities/lesson_content_entity.dart';
import 'package:ezlang/domain/use_cases/get_lesson_content_use_case.dart';
import 'package:ezlang/presentation/materials/view/pdf_viewer_page.dart';
import 'package:ezlang/presentation/materials/view/video_player_page.dart';
import 'package:ezlang/presentation/materials/view/web_view_page.dart';
import 'package:ezlang/presentation/materials/view/audio_player_page.dart';

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
    if (material is ArticleMaterial) {
      Get.defaultDialog(
        title: material.title,
        middleText: material.content,
        textConfirm: "Close",
        onConfirm: () => Get.back(),
      );
    } else if (material is VideoMaterial) {
      Get.to(() => VideoPlayerPage(url: material.url, title: material.title));
    } else if (material is PdfMaterial) {
      Get.to(() => PdfViewerPage(url: material.url, title: material.title));
    } else if (material is AudioMaterial) {
      Get.to(() => AudioPlayerPage(url: material.url, title: material.title));
    } else if (material is HtmlMaterial) {
      Get.to(
        () => WebViewPage(content: material.content, title: material.title),
      );
    } else {
      Get.snackbar(
        "Material",
        "Opening ${material.title} - Type not supported",
      );
    }
  }
}
