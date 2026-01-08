import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ezlang/core/theme/app_palette.dart';
import 'package:ezlang/domain/entities/lesson_content_entity.dart';
import 'package:ezlang/presentation/exercise/view_model/exercise_view_model.dart';

class MultipleChoiceWidget extends StatefulWidget {
  final MultipleChoice exercise;

  const MultipleChoiceWidget({super.key, required this.exercise});

  @override
  State<MultipleChoiceWidget> createState() => _MultipleChoiceWidgetState();
}

class _MultipleChoiceWidgetState extends State<MultipleChoiceWidget>
    with SingleTickerProviderStateMixin {
  ExerciseViewModel get controller => Get.find<ExerciseViewModel>();
  late AnimationController _shakeController;
  late Animation<double> _shakeAnimation;
  Worker? _worker;

  @override
  void initState() {
    super.initState();
    _shakeController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _shakeAnimation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 0, end: -10), weight: 1),
      TweenSequenceItem(tween: Tween(begin: -10, end: 10), weight: 2),
      TweenSequenceItem(tween: Tween(begin: 10, end: -10), weight: 2),
      TweenSequenceItem(tween: Tween(begin: -10, end: 10), weight: 2),
      TweenSequenceItem(tween: Tween(begin: 10, end: 0), weight: 1),
    ]).animate(_shakeController);

    _worker = ever(controller.isAnswerChecked, (isChecked) {
      if (isChecked) {
        final isCorrect =
            controller.selectedOptionIndex.value ==
            widget.exercise.correctIndex;
        if (!isCorrect) {
          _shakeController.forward(from: 0);
        }
      }
    });
  }

  @override
  void dispose() {
    _worker?.dispose();
    _shakeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          widget.exercise.prompt,
          style: Theme.of(context).textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 32),
        ...List.generate(widget.exercise.options.length, (index) {
          return Obx(() {
            final isSelected = controller.selectedOptionIndex.value == index;
            final isChecked = controller.isAnswerChecked.value;
            final isCorrect = index == widget.exercise.correctIndex;

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

            Widget child = Padding(
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
                    widget.exercise.options[index],
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            );

            if (isSelected) {
              return AnimatedBuilder(
                animation: _shakeAnimation,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(_shakeAnimation.value, 0),
                    child: child,
                  );
                },
                child: child,
              );
            }
            return child;
          });
        }),
      ],
    );
  }
}
