import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ezlang/domain/entities/curriculum_entity.dart';
import 'package:ezlang/domain/use_cases/save_progress_use_case.dart';
import 'package:ezlang/domain/use_cases/update_learning_time_use_case.dart';
import 'package:ezlang/domain/use_cases/add_sticker_use_case.dart';
import 'package:ezlang/presentation/widgets/sticker_widget.dart';

class LessonDetailViewModel extends GetxController {
  final SaveProgressUseCase saveProgressUseCase;
  final UpdateLearningTimeUseCase updateLearningTimeUseCase;
  final AddStickerUseCase addStickerUseCase;
  late LevelEntity level;

  LessonDetailViewModel({
    required this.saveProgressUseCase,
    required this.updateLearningTimeUseCase,
    required this.addStickerUseCase,
  });

  @override
  void onInit() {
    super.onInit();
    level = Get.arguments as LevelEntity;
  }

  Future<void> completeLevel() async {
    await saveProgressUseCase(level.id);
    await updateLearningTimeUseCase(15); // Assume 15 mins per level
    await addStickerUseCase('sticker_${level.id}');
    Get.back(result: true); // Return true to indicate progress update

    Get.dialog(
      Dialog(
        backgroundColor: Colors.transparent,
        child: StickerWidget(
          icon: Icons.star_rounded,
          label: 'Level Complete!',
          color: Colors.amber,
        ),
      ),
    );
  }
}
