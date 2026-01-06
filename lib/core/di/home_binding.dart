import 'package:get/get.dart';
import 'package:ezlang/presentation/home/view_model/home_view_model.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    if (!Get.isRegistered<HomeViewModel>()) {
      Get.put(HomeViewModel(log: Get.find()), permanent: true);
    }
  }
}
