import 'package:eZlang/core/routes/routes.dart';
import 'package:eZlang/core/services/logging_service.dart';
import 'package:get/get.dart';

class SplashViewModel extends GetxController {
  final LoggingService _log;

  SplashViewModel({required LoggingService log}) : _log = log;

  final RxBool isLoading = true.obs;

  @override
  void onReady() {
    super.onReady();
    _initialLoad();
  }

  Future<void> _initialLoad() async {
    _log.logInfo('SplashViewModel: Initializing...');
    _checkFirstLaunch();
  }

  void _checkFirstLaunch() async {
    await Future.delayed(const Duration(seconds: 3));
    isLoading.value = false;
    Get.offAllNamed(PageTo.home);

    // final isFirstLaunchResult = await _checkIfOnboardingCompletedUseCase();

    // isFirstLaunchResult.fold(
    //   (failure) {
    //     // If we can't check, default to the home page for safety.
    //     isLoading.value = false;
    //     Get.offAllNamed(PageTo.home);
    //   },
    //   (isFirstLaunch) {
    //     isLoading.value = false;
    //     // Get.offAllNamed(PageTo.onboarding); // force to onboarding
    //     Get.offAllNamed(isFirstLaunch ? PageTo.onboarding : PageTo.home);
    //   },
    // );
  }
}
