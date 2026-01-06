import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ezlang/core/theme/app_palette.dart';
import 'package:ezlang/domain/entities/lesson_content_entity.dart';
import 'package:ezlang/presentation/exercise/view_model/exercise_view_model.dart';

class TranslateSentenceWidget extends GetView<ExerciseViewModel> {
  final TranslateSentence exercise;

  const TranslateSentenceWidget({super.key, required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          exercise.prompt,
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(color: AppPalette.textSecondary),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.grey.shade200),
          ),
          child: Text(
            exercise.sourceText,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: AppPalette.textPrimary,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 32),
        TextField(
          controller: controller.textController,
          decoration: const InputDecoration(
            hintText: 'Type the translation...',
            border: OutlineInputBorder(),
            filled: true,
            fillColor: Colors.white,
          ),
          maxLines: 3,
        ),
      ],
    );
  }
}
