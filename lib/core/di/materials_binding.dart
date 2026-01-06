import 'package:get/get.dart';
import 'package:ezlang/presentation/materials/view_model/materials_view_model.dart';

class MaterialsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MaterialsViewModel>(() => MaterialsViewModel());
  }
}
