// import 'package:basic_kids_learn/core/services/ad_service.dart';
// import 'package:basic_kids_learn/core/services/app_ad_manager.dart';
// import 'package:basic_kids_learn/core/services/audio_service.dart';
// import 'package:basic_kids_learn/core/services/google_ads_manager.dart';
// import 'package:basic_kids_learn/core/theme/theme_controller.dart';
// import 'package:basic_kids_learn/core/utils/logging_service.dart';
// import 'package:basic_kids_learn/core/utils/network_info.dart';
// import 'package:basic_kids_learn/core/utils/remote_config_service.dart';
// import 'package:basic_kids_learn/core/utils/network_status_service.dart';
// import 'package:basic_kids_learn/data/datasources/local_data_source.dart';
// import 'package:basic_kids_learn/data/datasources/json_local_data_source.dart';
// import 'package:basic_kids_learn/data/repositories/json_repository_impl.dart';
// import 'package:basic_kids_learn/data/repositories/onboarding_repository_impl.dart';
// import 'package:basic_kids_learn/domain/repositories/json_repository.dart';
// import 'package:basic_kids_learn/domain/repositories/onboarding_repository.dart';
// import 'package:basic_kids_learn/domain/use_cases/get_menu.dart';
// import 'package:basic_kids_learn/presentation/home/view_model/home_view_model.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:eZlang/core/services/logging_service.dart';
import 'package:eZlang/core/theme/theme_controller.dart';
import 'package:logger/logger.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ThemeController>(ThemeController(), permanent: true);
    Get.put<LoggingService>(LoggingService(), permanent: true);
    Get.find<LoggingService>().init(
      level: kReleaseMode ? Level.off : Level.trace,
    );

    // Register RemoteConfigService early so AudioService can find it.
    // Get.put<RemoteConfigService>(
    //   RemoteConfigService(
    //     remoteConfig: FirebaseRemoteConfig.instance,
    //     log: Get.find<LoggingService>(),
    //   ),
    //   permanent: true,
    // );

    // Get.lazyPut<LocalDataSource>(() => LocalDataSource(), fenix: true);
    // Get.lazyPut<OnboardingRepository>(
    //   () => OnboardingRepositoryImpl(localDataSource: Get.find()),
    //   fenix: true,
    // );

    // Get.lazyPut<RemoteDataSource>(
    //   () => RemoteDataSource(Get.find<Dio>(), baseUrl: AppConstants.feedUrl),
    //   fenix: true,
    // );

    // ViewModels
    // Get.lazyPut<HomeViewModel>(
    //   () => HomeViewModel(log: Get.find()),
    //   fenix: true,
    // );
  }
}
