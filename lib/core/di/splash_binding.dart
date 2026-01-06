import 'package:get/get.dart';
import 'package:ezlang/presentation/splash/view_model/splash_view_model.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashViewModel(log: Get.find()));
  }
}
