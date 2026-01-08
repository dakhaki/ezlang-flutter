import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ezlang/core/di/initial_binding.dart';
import 'package:ezlang/core/routes/routes.dart';
import 'package:ezlang/core/services/logging_service.dart';
import 'package:ezlang/core/theme/app_theme.dart';
import 'package:ezlang/core/theme/theme_controller.dart';

Future<void> main() async {
  await runZonedGuarded<Future<void>>(
    () async {
      // 1. Ensure Flutter bindings are initialized. Must be the first call.
      WidgetsFlutterBinding.ensureInitialized();
      await GetStorage.init();

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
    final themeController = Get.put(ThemeController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'eZlang',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: themeController.theme,
      initialRoute: PageTo.splash,
      getPages: BaseRoute.pages(),
    );
  }
}
