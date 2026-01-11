import 'package:cached_network_image/cached_network_image.dart';
import 'package:ezlang/presentation/widgets/loading_indicator.dart';
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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.only(left: 16),
          child: Material(
            color: Theme.of(context).cardColor,
            shape: const CircleBorder(),
            clipBehavior: Clip.hardEdge,
            child: IconButton(
              icon: Icon(Icons.close, color: Theme.of(context).iconTheme.color),
              onPressed: () => _showQuitDialog(context),
            ),
          ),
        ),
        title: controller.obx(
          (content) => Obx(
            () => Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TweenAnimationBuilder<double>(
                tween: Tween<double>(begin: 0, end: controller.progress),
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                builder: (context, value, _) => Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: LinearProgressIndicator(
                        value: value,
                        backgroundColor: Theme.of(
                          context,
                        ).scaffoldBackgroundColor,
                        valueColor: const AlwaysStoppedAnimation<Color>(
                          AppPalette.successGreen,
                        ),
                        minHeight: 24,
                      ),
                    ),
                    Text(
                      '${controller.currentExerciseIndex.value + 1}/${content?.exercises.length ?? 0}',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyMedium?.color,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
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
                child: Container(
                  margin: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(24),
                      child: Obx(() {
                        final exercise = controller.currentExercise;
                        Widget exerciseWidget = const SizedBox.shrink();

                        if (exercise is MultipleChoice) {
                          exerciseWidget = MultipleChoiceWidget(
                            exercise: exercise,
                          );
                        } else if (exercise is TranslateSentence) {
                          exerciseWidget = TranslateSentenceWidget(
                            exercise: exercise,
                          );
                        } else if (exercise is AudioMatch) {
                          exerciseWidget = AudioMatchWidget(exercise: exercise);
                        } else if (exercise is ImageSelection) {
                          exerciseWidget = ImageSelectionWidget(
                            exercise: exercise,
                          );
                        }

                        return AnimatedSwitcher(
                          duration: const Duration(milliseconds: 400),
                          switchInCurve: Curves.easeInOut,
                          switchOutCurve: Curves.easeInOut,
                          layoutBuilder: (currentChild, previousChildren) {
                            return Stack(
                              alignment: Alignment.topCenter,
                              children: <Widget>[
                                ...previousChildren,
                                if (currentChild != null) currentChild,
                              ],
                            );
                          },
                          transitionBuilder: (child, animation) {
                            final isNew =
                                child.key ==
                                ValueKey(controller.currentExerciseIndex.value);
                            final offsetAnimation = Tween<Offset>(
                              begin: isNew
                                  ? const Offset(1.0, 0.0)
                                  : const Offset(-1.0, 0.0),
                              end: Offset.zero,
                            ).animate(animation);
                            return SlideTransition(
                              position: offsetAnimation,
                              child: child,
                            );
                          },
                          child: Column(
                            key: ValueKey(
                              controller.currentExerciseIndex.value,
                            ),
                            children: [
                              if (exercise.imageUrl != null)
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 24.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: CachedNetworkImage(
                                      imageUrl: exercise.imageUrl!,
                                      height: 200,
                                      fit: BoxFit.contain,
                                      placeholder: (context, url) =>
                                          const Center(
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
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ),
              _buildBottomBar(context),
            ],
          ),
          onLoading: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const LoadingIndicator(),
                const SizedBox(height: 24),
                Obx(() {
                  final percent = (controller.preloadProgress.value * 100)
                      .toInt();
                  return Text(
                    'Loading resources... $percent%',
                    style: const TextStyle(color: Colors.grey, fontSize: 16),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBottomBar(BuildContext context) {
    return Obx(() {
      final isChecked = controller.isAnswerChecked.value;
      final isCorrect = controller.isAnswerCorrect.value;

      Color barColor = Theme.of(context).cardColor;
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
        padding: const EdgeInsets.all(32),
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: barColor,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, -4),
            ),
          ],
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
                foregroundColor: Colors.white,
                elevation: 4,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                textStyle: Theme.of(context).textTheme.headlineSmall,
              ),
              child: Text(isChecked ? 'Continue' : 'Check'),
            ),
          ],
        ),
      );
    });
  }

  void _showQuitDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black54,
      transitionDuration: const Duration(milliseconds: 500),
      pageBuilder: (context, animation, secondaryAnimation) => AlertDialog(
        backgroundColor: Theme.of(context).cardColor,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        contentPadding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
        title: Column(
          children: [
            Text(
              'Quit Exercise?',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        content: Text(
          'Are you sure you want to stop? You will lose your progress!',
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        actions: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppPalette.successGreen,
                  foregroundColor: Colors.white,
                  elevation: 0,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text('Keep Playing'),
              ),
              const SizedBox(height: 12),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Get.back();
                },
                style: TextButton.styleFrom(
                  foregroundColor: AppPalette.errorRed,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
                child: Text('I want to quit', style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ],
      ),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return ScaleTransition(
          scale: CurvedAnimation(parent: animation, curve: Curves.easeOutBack),
          child: child,
        );
      },
    );
  }
}
