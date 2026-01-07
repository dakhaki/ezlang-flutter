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
          child: _AudioButton(controller: controller, exercise: exercise),
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

class _AudioButton extends StatefulWidget {
  final ExerciseViewModel controller;
  final AudioMatch exercise;

  const _AudioButton({required this.controller, required this.exercise});

  @override
  State<_AudioButton> createState() => _AudioButtonState();
}

class _AudioButtonState extends State<_AudioButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animController;

  @override
  void initState() {
    super.initState();
    _animController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final isPlaying =
          widget.controller.currentPlayingAudioId.value == widget.exercise.id;

      if (isPlaying && !_animController.isAnimating) {
        _animController.repeat();
      } else if (!isPlaying && _animController.isAnimating) {
        _animController.reset();
      }

      return GestureDetector(
        onTap: () {
          if (widget.controller.isAudioLoading.value) return;
          final speed = widget.controller.hasPlayedAudio.value ? 0.2 : 0.5;
          widget.controller.playAudio(
            widget.exercise.correctWord,
            id: widget.exercise.id,
            speed: speed,
          );
          widget.controller.hasPlayedAudio.value = true;
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            if (isPlaying)
              AnimatedBuilder(
                animation: _animController,
                builder: (context, child) {
                  return Container(
                    width: 120 + (_animController.value * 60),
                    height: 120 + (_animController.value * 60),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppPalette.primary.withOpacity(
                        0.3 * (1 - _animController.value),
                      ),
                    ),
                  );
                },
              ),
            Container(
              width: 120,
              height: 120,
              alignment: Alignment.center,
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
              child: Stack(
                alignment: Alignment.center,
                children: [
                  if (widget.controller.isAudioLoading.value && isPlaying)
                    const CircularProgressIndicator(color: Colors.white)
                  else
                    Icon(
                      isPlaying
                          ? Icons.graphic_eq_rounded
                          : Icons.volume_up_rounded,
                      size: 60,
                      color: Colors.white,
                    ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
