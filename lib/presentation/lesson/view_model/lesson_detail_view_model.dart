import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ezlang/core/routes/routes.dart';
import 'package:ezlang/domain/entities/curriculum_entity.dart';
import 'package:ezlang/domain/use_cases/save_progress_use_case.dart';
import 'package:ezlang/domain/use_cases/update_learning_time_use_case.dart';
import 'package:ezlang/domain/use_cases/add_sticker_use_case.dart';
import 'package:ezlang/presentation/widgets/sticker_widget.dart';

class LessonDetailViewModel extends GetxController {
  final SaveProgressUseCase saveProgressUseCase;
  final UpdateLearningTimeUseCase updateLearningTimeUseCase;
  final AddStickerUseCase addStickerUseCase;
  late EnglishLevel level;
  final isHeroEnabled = false.obs;

  LessonDetailViewModel({
    required this.saveProgressUseCase,
    required this.updateLearningTimeUseCase,
    required this.addStickerUseCase,
  });

  @override
  void onInit() {
    super.onInit();
    level = Get.arguments as EnglishLevel;
    Future.delayed(const Duration(milliseconds: 600), () {
      isHeroEnabled.value = true;
    });
  }

  Future<void> completeLevel() async {
    await saveProgressUseCase(level.id);
    await updateLearningTimeUseCase(15); // Assume 15 mins per level
    await addStickerUseCase('sticker_${level.id}');

    isHeroEnabled.value = false;
    await Future.delayed(const Duration(milliseconds: 50));
    Get.back(result: true); // Return true to indicate progress update

    Get.dialog(
      Dialog(
        backgroundColor: Colors.transparent,
        child: StickerWidget(
          icon: Icons.star_rounded,
          // label: 'Level Complete!',
          color: Colors.amber,
          size: 160,
          animate: true,
        ),
      ),
    );
  }

  void navigateToTopic(Topic topic) {
    Get.toNamed(PageTo.topicDetail, arguments: topic);
  }
}
