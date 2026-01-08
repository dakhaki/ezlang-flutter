import 'package:cached_network_image/cached_network_image.dart';
import 'package:ezlang/core/theme/app_palette.dart';
import 'package:ezlang/domain/entities/lesson_content_entity.dart';
import 'package:ezlang/presentation/exercise/view_model/exercise_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageSelectionWidget extends GetView<ExerciseViewModel> {
  final ImageSelection exercise;

  const ImageSelectionWidget({super.key, required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          exercise.prompt,
          style: Theme.of(context).textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 32),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: exercise.options.length,
          itemBuilder: (context, index) {
            return Obx(() {
              // Assuming 'userAnswer' holds the selected index in your ViewModel
              final isSelected = controller.userAnswer.value == index;
              final isChecked = controller.isAnswerChecked.value;
              final isCorrect = index == exercise.correctIndex;

              Color borderColor = Colors.grey.shade300;
              double borderWidth = 1;

              if (isChecked) {
                if (isCorrect) {
                  borderColor = AppPalette.successGreen;
                  borderWidth = 4;
                } else if (isSelected) {
                  borderColor = Colors.red;
                  borderWidth = 4;
                }
              } else if (isSelected) {
                borderColor = Theme.of(context).primaryColor;
                borderWidth = 3;
              }

              return InkWell(
                onTap: () => controller.selectAnswer(index),
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: borderColor, width: borderWidth),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      CachedNetworkImage(
                        imageUrl: exercise.options[index],
                        fit: BoxFit.cover,
                        placeholder: (context, url) =>
                            const Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                      if (isCorrect)
                        AnimatedScale(
                          scale: isChecked ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.elasticOut,
                          child: Container(
                            color: Colors.white.withOpacity(0.3),
                            child: const Icon(
                              Icons.check_circle_rounded,
                              color: AppPalette.successGreen,
                              size: 48,
                            ),
                          ),
                        ),
                      if (isSelected && !isCorrect)
                        AnimatedScale(
                          scale: isChecked ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.elasticOut,
                          child: Container(
                            color: Colors.white.withOpacity(0.3),
                            child: const Icon(
                              Icons.cancel_rounded,
                              color: Colors.red,
                              size: 48,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              );
            });
          },
        ),
      ],
    );
  }
}
