import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ezlang/presentation/settings/view_model/settings_view_model.dart';

class SettingsPage extends GetView<SettingsViewModel> {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: [
          ListTile(
            title: const Text(
              'Clear Progress',
              style: TextStyle(color: Colors.red),
            ),
            leading: const Icon(Icons.delete_forever, color: Colors.red),
            onTap: () {
              Get.defaultDialog(
                title: 'Clear Progress',
                middleText: 'Are you sure you want to reset all your progress?',
                textConfirm: 'Yes',
                textCancel: 'No',
                confirmTextColor: Colors.white,
                onConfirm: () {
                  Get.back();
                  controller.clearProgress();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
