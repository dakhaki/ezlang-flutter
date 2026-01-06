import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eZlang/core/di/initial_binding.dart';
import 'package:eZlang/core/routes/routes.dart';
import 'package:eZlang/core/services/logging_service.dart';
import 'package:eZlang/core/theme/app_theme.dart';
import 'package:eZlang/core/theme/theme_controller.dart';

Future<void> main() async {
  await runZonedGuarded<Future<void>>(
    () async {
      // 1. Ensure Flutter bindings are initialized. Must be the first call.
      WidgetsFlutterBinding.ensureInitialized();

      InitialBinding().dependencies();
      // await initServices();
      // 8. Run the app.
      runApp(const MyApp());
    },
    (error, stack) {
      // This will catch any errors that occur during the initialization process.
      LoggingService().logError('Zoned Error', error: error, stackTrace: stack);
      // FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetX<ThemeController>(
      builder: (controller) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'eZlang',
          theme: AppTheme.lightThemeMode,
          darkTheme: AppTheme.darkThemeMode,
          themeMode: controller.theme,
          initialRoute: PageTo.splash,
          getPages: BaseRoute.pages(),
        );
      },
    );
  }
}
