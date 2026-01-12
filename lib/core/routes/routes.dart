import 'package:ezlang/core/di/exercise_binding.dart';
import 'package:ezlang/core/di/materials_binding.dart';
import 'package:ezlang/presentation/materials/view/materials_page.dart';
import 'package:ezlang/presentation/exercise/view/exercise_page.dart';
import 'package:ezlang/presentation/materials/view/article_page.dart';
import 'package:ezlang/presentation/materials/view/audio_player_page.dart';
import 'package:ezlang/presentation/materials/view/pdf_viewer_page.dart';
import 'package:ezlang/presentation/materials/view/video_player_page.dart';
import 'package:ezlang/presentation/materials/view/web_view_page.dart';
import 'package:ezlang/core/di/lesson_detail_binding.dart';
import 'package:ezlang/core/di/profile_binding.dart';
import 'package:ezlang/core/di/topic_detail_binding.dart';
import 'package:ezlang/presentation/home/view/home_page.dart';
import 'package:ezlang/presentation/lesson/view/lesson_detail_page.dart';
import 'package:ezlang/presentation/profile/view/profile_page.dart';
import 'package:ezlang/presentation/topic/view/topic_detail_page.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ezlang/core/di/home_binding.dart';
import 'package:ezlang/core/di/splash_binding.dart';
import 'package:ezlang/presentation/splash/view/splash_page.dart';

class BaseRoute {
  static List<GetPage> pages() => [
    _getPage(
      name: PageTo.splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    _getPage(
      name: PageTo.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    _getPage(
      name: PageTo.lessonDetail,
      page: () => const LessonDetailPage(),
      binding: LessonDetailBinding(),
    ),
    _getPage(
      name: PageTo.profile,
      page: () => const ProfilePage(),
      binding: ProfileBinding(),
    ),
    _getPage(
      name: PageTo.topicDetail,
      page: () => const TopicDetailPage(),
      binding: TopicDetailBinding(),
    ),
    _getPage(
      name: PageTo.exercise,
      page: () => const ExercisePage(),
      binding: ExerciseBinding(),
    ),
    _getPage(
      name: PageTo.materials,
      page: () => const MaterialsPage(),
      binding: MaterialsBinding(),
    ),
    _getPage(
      name: PageTo.materialsArticle,
      page: () => ArticlePage(
        title: Get.arguments['title'] as String,
        content: Get.arguments['content'] as String,
      ),
    ),
    _getPage(
      name: PageTo.materialsVideo,
      page: () => VideoPlayerPage(
        title: Get.arguments['title'] as String,
        url: Get.arguments['url'] as String,
      ),
    ),
    _getPage(
      name: PageTo.materialsPdf,
      page: () => PdfViewerPage(
        title: Get.arguments['title'] as String,
        url: Get.arguments['url'] as String,
      ),
    ),
    _getPage(
      name: PageTo.materialsAudio,
      page: () => AudioPlayerPage(
        title: Get.arguments['title'] as String,
        url: Get.arguments['url'] as String,
      ),
    ),
    _getPage(
      name: PageTo.materialsHtml,
      page: () => WebViewPage(
        title: Get.arguments['title'] as String,
        content: Get.arguments['content'] as String,
      ),
    ),
  ];

  static GetPage _getPage({
    required dynamic name,
    required Widget Function() page,
    Bindings? binding,
  }) => GetPage(
    name: name,
    page: page,
    binding: binding,
    transition: name == PageTo.splash
        ? Transition.fadeIn
        : Transition.cupertinoDialog,
    transitionDuration: const Duration(milliseconds: 800),
  );
}

class PageTo {
  static const splash = "/";
  static const home = "/home";
  static const lessonDetail = '/lesson_detail';
  static const profile = '/profile';
  static const topicDetail = '/topic_detail';
  static const exercise = '/exercise';
  static const materials = '/materials';
  static const materialsArticle = '/materials/article';
  static const materialsVideo = '/materials/video';
  static const materialsPdf = '/materials/pdf';
  static const materialsAudio = '/materials/audio';
  static const materialsHtml = '/materials/html';
}
