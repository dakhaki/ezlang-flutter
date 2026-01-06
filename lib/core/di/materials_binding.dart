import 'package:get/get.dart';
import 'package:ezlang/domain/use_cases/get_lesson_content_use_case.dart';
import 'package:ezlang/presentation/materials/view_model/materials_view_model.dart';

class MaterialsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MaterialsViewModel>(
      () => MaterialsViewModel(Get.find<GetLessonContentUseCase>()),
    );
  }
}
