import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:ezlang/core/services/audio_service.dart';
import 'package:ezlang/core/services/logging_service.dart';
import 'package:ezlang/core/theme/theme_controller.dart';
import 'package:ezlang/data/datasources/local_data_source.dart';
import 'package:ezlang/data/datasources/progress_local_data_source.dart';
import 'package:ezlang/data/repositories/curriculum_repository_impl.dart';
import 'package:ezlang/data/repositories/progress_repository_impl.dart';
import 'package:ezlang/domain/repositories/curriculum_repository.dart';
import 'package:ezlang/domain/repositories/progress_repository.dart';
import 'package:ezlang/domain/use_cases/get_curriculum_use_case.dart';
import 'package:ezlang/domain/use_cases/get_lesson_content_use_case.dart';
import 'package:ezlang/domain/use_cases/get_progress_use_case.dart';
import 'package:ezlang/domain/use_cases/clear_progress_use_case.dart';
import 'package:ezlang/domain/use_cases/save_progress_use_case.dart';
import 'package:ezlang/domain/use_cases/get_streak_use_case.dart';
import 'package:ezlang/domain/use_cases/update_streak_use_case.dart';
import 'package:ezlang/domain/use_cases/get_learning_time_use_case.dart';
import 'package:ezlang/domain/use_cases/update_learning_time_use_case.dart';
import 'package:ezlang/domain/use_cases/get_stickers_use_case.dart';
import 'package:ezlang/domain/use_cases/add_sticker_use_case.dart';
import 'package:logger/logger.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ThemeController>(ThemeController(), permanent: true);
    Get.put<LoggingService>(LoggingService(), permanent: true);
    Get.find<LoggingService>().init(
      level: kReleaseMode ? Level.off : Level.trace,
    );
    Get.putAsync(() => AudioService().init());

    // Data Sources
    Get.lazyPut<LocalDataSource>(() => LocalDataSourceImpl(), fenix: true);
    Get.lazyPut<ProgressLocalDataSource>(
      () => ProgressLocalDataSourceImpl(),
      fenix: true,
    );

    // Repositories
    Get.lazyPut<CurriculumRepository>(
      () => CurriculumRepositoryImpl(localDataSource: Get.find()),
      fenix: true,
    );
    Get.lazyPut<ProgressRepository>(
      () => ProgressRepositoryImpl(dataSource: Get.find()),
      fenix: true,
    );

    // Use Cases
    Get.lazyPut<GetCurriculumUseCase>(
      () => GetCurriculumUseCase(Get.find()),
      fenix: true,
    );
    Get.lazyPut<GetLessonContentUseCase>(
      () => GetLessonContentUseCase(Get.find()),
      fenix: true,
    );
    Get.lazyPut<SaveProgressUseCase>(
      () => SaveProgressUseCase(Get.find()),
      fenix: true,
    );
    Get.lazyPut<GetProgressUseCase>(
      () => GetProgressUseCase(Get.find()),
      fenix: true,
    );
    Get.lazyPut<ClearProgressUseCase>(
      () => ClearProgressUseCase(Get.find()),
      fenix: true,
    );
    Get.lazyPut<GetStreakUseCase>(
      () => GetStreakUseCase(Get.find()),
      fenix: true,
    );
    Get.lazyPut<UpdateStreakUseCase>(
      () => UpdateStreakUseCase(Get.find()),
      fenix: true,
    );
    Get.lazyPut<GetLearningTimeUseCase>(
      () => GetLearningTimeUseCase(Get.find()),
      fenix: true,
    );
    Get.lazyPut<UpdateLearningTimeUseCase>(
      () => UpdateLearningTimeUseCase(Get.find()),
      fenix: true,
    );
    Get.lazyPut<GetStickersUseCase>(
      () => GetStickersUseCase(Get.find()),
      fenix: true,
    );
    Get.lazyPut<AddStickerUseCase>(
      () => AddStickerUseCase(Get.find()),
      fenix: true,
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
