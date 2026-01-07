import 'package:cached_network_image/cached_network_image.dart';
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
              return InkWell(
                onTap: () => controller.selectAnswer(index),
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: isSelected
                          ? Theme.of(context).primaryColor
                          : Colors.grey.shade300,
                      width: isSelected ? 3 : 1,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: CachedNetworkImage(
                    imageUrl: exercise.options[index],
                    fit: BoxFit.cover,
                    placeholder: (context, url) =>
                        const Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
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
