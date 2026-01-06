import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ezlang/core/theme/app_palette.dart';
import 'package:ezlang/domain/entities/lesson_content_entity.dart';
import 'package:ezlang/presentation/exercise/view_model/exercise_view_model.dart';

class AudioMatchWidget extends GetView<ExerciseViewModel> {
  final AudioMatch exercise;

  const AudioMatchWidget({super.key, required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          exercise.prompt,
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 32),
        Center(
          child: GestureDetector(
            onTap: () => controller.playAudio(exercise.correctWord),
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: AppPalette.primary,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: AppPalette.primary.withOpacity(0.4),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: const Icon(
                Icons.volume_up_rounded,
                size: 60,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(height: 48),
        TextField(
          controller: controller.textController,
          decoration: const InputDecoration(
            hintText: 'Type what you hear...',
            border: OutlineInputBorder(),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
