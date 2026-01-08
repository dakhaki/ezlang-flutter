import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ezlang/core/theme/app_palette.dart';
import 'package:ezlang/domain/entities/lesson_content_entity.dart';
import 'package:ezlang/presentation/exercise/view_model/exercise_view_model.dart';

class TranslateSentenceWidget extends StatefulWidget {
  final TranslateSentence exercise;

  const TranslateSentenceWidget({super.key, required this.exercise});

  @override
  State<TranslateSentenceWidget> createState() =>
      _TranslateSentenceWidgetState();
}

class _TranslateSentenceWidgetState extends State<TranslateSentenceWidget>
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
            controller.textController.text.trim() == widget.exercise.targetText;
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
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Theme.of(context).dividerColor),
          ),
          child: Text(
            widget.exercise.sourceText,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Theme.of(context).textTheme.headlineSmall?.color,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 32),
        Obx(() {
          final isChecked = controller.isAnswerChecked.value;
          final isCorrect =
              controller.textController.text.trim() ==
              widget.exercise.targetText;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AnimatedBuilder(
                animation: _shakeAnimation,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(_shakeAnimation.value, 0),
                    child: child,
                  );
                },
                child: TextField(
                  controller: controller.textController,
                  enabled: !isChecked,
                  style: Theme.of(context).textTheme.bodyLarge,
                  decoration: InputDecoration(
                    hintText: 'Type the translation...',
                    border: const OutlineInputBorder(),
                    filled: true,
                    fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                    disabledBorder: isChecked
                        ? OutlineInputBorder(
                            borderSide: BorderSide(
                              color: isCorrect
                                  ? AppPalette.successGreen
                                  : Colors.red,
                              width: 2,
                            ),
                          )
                        : null,
                  ),
                  maxLines: 3,
                ),
              ),
              if (isChecked && !isCorrect)
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Correct answer:',
                        style: TextStyle(
                          color: AppPalette.successGreen,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        widget.exercise.targetText,
                        style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          );
        }),
      ],
    );
  }
}
