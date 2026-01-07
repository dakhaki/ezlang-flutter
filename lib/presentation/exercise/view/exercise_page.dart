import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ezlang/core/theme/app_palette.dart';
import 'package:ezlang/domain/entities/lesson_content_entity.dart';
import 'package:ezlang/presentation/exercise/view/widgets/audio_match_widget.dart';
import 'package:ezlang/presentation/exercise/view/widgets/image_selection_widget.dart';
import 'package:ezlang/presentation/exercise/view/widgets/multiple_choice_widget.dart';
import 'package:ezlang/presentation/exercise/view/widgets/translate_sentence_widget.dart';
import 'package:ezlang/presentation/exercise/view_model/exercise_view_model.dart';

class ExercisePage extends GetView<ExerciseViewModel> {
  const ExercisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Get.back(),
        ),
        title: controller.obx(
          (_) => Obx(
            () => LinearProgressIndicator(
              value: controller.progress,
              backgroundColor: Colors.grey.shade200,
              valueColor: const AlwaysStoppedAnimation<Color>(
                AppPalette.successGreen,
              ),
              minHeight: 8,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          onLoading: const SizedBox.shrink(),
        ),
      ),
      body: SafeArea(
        child: controller.obx(
          (content) => Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(24),
                  child: Obx(() {
                    final exercise = controller.currentExercise;
                    Widget exerciseWidget = const SizedBox.shrink();

                    if (exercise is MultipleChoice) {
                      exerciseWidget = MultipleChoiceWidget(exercise: exercise);
                    } else if (exercise is TranslateSentence) {
                      exerciseWidget = TranslateSentenceWidget(
                        exercise: exercise,
                      );
                    } else if (exercise is AudioMatch) {
                      exerciseWidget = AudioMatchWidget(exercise: exercise);
                    } else if (exercise is ImageSelection) {
                      exerciseWidget = ImageSelectionWidget(exercise: exercise);
                    }

                    return Column(
                      children: [
                        if (exercise.imageUrl != null)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 24.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: CachedNetworkImage(
                                imageUrl: exercise.imageUrl!,
                                height: 200,
                                fit: BoxFit.contain,
                                placeholder: (context, url) => const Center(
                                  child: CircularProgressIndicator(),
                                ),
                                errorWidget: (context, url, error) =>
                                    const Icon(
                                      Icons.error,
                                      size: 50,
                                      color: Colors.red,
                                    ),
                              ),
                            ),
                          ),
                        exerciseWidget,
                      ],
                    );
                  }),
                ),
              ),
              _buildBottomBar(context),
            ],
          ),
          onLoading: const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }

  Widget _buildBottomBar(BuildContext context) {
    return Obx(() {
      final isChecked = controller.isAnswerChecked.value;
      final isCorrect = controller.isAnswerCorrect.value;

      Color barColor = Colors.white;
      String message = '';
      IconData icon = Icons.check;
      Color messageColor = Colors.transparent;

      if (isChecked) {
        barColor = isCorrect
            ? AppPalette.successGreen.withOpacity(0.1)
            : AppPalette.errorRed.withOpacity(0.1);
        message = isCorrect ? 'Correct!' : 'Incorrect';
        messageColor = isCorrect
            ? AppPalette.successGreen
            : AppPalette.errorRed;
        icon = isCorrect ? Icons.check_circle : Icons.cancel;
      }

      return Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: barColor,
          border: Border(top: BorderSide(color: Colors.grey.shade200)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (isChecked) ...[
              Row(
                children: [
                  Icon(icon, color: messageColor, size: 32),
                  const SizedBox(width: 12),
                  Text(
                    message,
                    style: TextStyle(
                      color: messageColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
            ],
            ElevatedButton(
              onPressed: isChecked
                  ? controller.nextExercise
                  : controller.checkAnswer,
              style: ElevatedButton.styleFrom(
                backgroundColor: isChecked
                    ? (isCorrect ? AppPalette.successGreen : AppPalette.primary)
                    : AppPalette.primary,
              ),
              child: Text(isChecked ? 'Continue' : 'Check'),
            ),
          ],
        ),
      );
    });
  }
}
