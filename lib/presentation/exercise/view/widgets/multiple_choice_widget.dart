import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ezlang/core/theme/app_palette.dart';
import 'package:ezlang/domain/entities/lesson_content_entity.dart';
import 'package:ezlang/presentation/exercise/view_model/exercise_view_model.dart';

class MultipleChoiceWidget extends GetView<ExerciseViewModel> {
  final MultipleChoice exercise;

  const MultipleChoiceWidget({super.key, required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          exercise.prompt,
          style: Theme.of(context).textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 32),
        ...List.generate(exercise.options.length, (index) {
          return Obx(() {
            final isSelected = controller.selectedOptionIndex.value == index;
            final isChecked = controller.isAnswerChecked.value;
            final isCorrect = index == exercise.correctIndex;

            Color backgroundColor = Colors.white;
            Color borderColor = Colors.grey.shade300;

            if (isChecked) {
              if (isCorrect) {
                backgroundColor = AppPalette.successGreen.withOpacity(0.2);
                borderColor = AppPalette.successGreen;
              } else if (isSelected) {
                backgroundColor = AppPalette.errorRed.withOpacity(0.2);
                borderColor = AppPalette.errorRed;
              }
            } else if (isSelected) {
              borderColor = AppPalette.primary;
              backgroundColor = AppPalette.primary.withOpacity(0.1);
            }

            return Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: InkWell(
                onTap: () => controller.selectOption(index),
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    border: Border.all(color: borderColor, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    exercise.options[index],
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            );
          });
        }),
      ],
    );
  }
}
