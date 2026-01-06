import 'package:ezlang/core/di/lesson_detail_binding.dart';
import 'package:ezlang/core/di/settings_binding.dart';
import 'package:ezlang/presentation/lesson/view/lesson_detail_view.dart';
import 'package:ezlang/presentation/settings/view/settings_page.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ezlang/core/di/home_binding.dart';
import 'package:ezlang/core/di/splash_binding.dart';
import 'package:ezlang/presentation/home/view/home_page.dart';
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
      page: () => const LessonDetailView(),
      binding: LessonDetailBinding(),
    ),
    _getPage(
      name: PageTo.settings,
      page: () => const SettingsPage(),
      binding: SettingsBinding(),
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
  static const settings = '/settings';
}
