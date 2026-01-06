import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:eZlang/core/di/home_binding.dart';
import 'package:eZlang/core/di/splash_binding.dart';
import 'package:eZlang/presentation/home/view/home_page.dart';
import 'package:eZlang/presentation/splash/view/splash_page.dart';

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
}
