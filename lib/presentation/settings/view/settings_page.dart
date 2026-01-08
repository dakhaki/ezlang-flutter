import 'package:ezlang/core/theme/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: GetBuilder<ThemeController>(
              builder: (controller) {
                return SwitchListTile(
                  title: const Text(
                    'Dark Mode',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text('Enable kid-friendly dark theme'),
                  secondary: Icon(
                    controller.isDarkMode
                        ? Icons.nightlight_round
                        : Icons.wb_sunny_rounded,
                    color: Theme.of(context).primaryColor,
                  ),
                  value: controller.isDarkMode,
                  onChanged: controller.changeTheme,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
