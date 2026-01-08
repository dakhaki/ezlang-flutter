import 'dart:async';

import 'package:confetti/confetti.dart';
import 'package:ezlang/core/services/audio_service.dart';
import 'package:ezlang/core/theme/app_palette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LessonCompletionDialog extends StatefulWidget {
  final int correctCount;
  final int totalCount;
  final Duration duration;
  final VoidCallback onClose;
  final VoidCallback onRetry;

  const LessonCompletionDialog({
    super.key,
    required this.correctCount,
    required this.totalCount,
    required this.duration,
    required this.onClose,
    required this.onRetry,
  });

  @override
  State<LessonCompletionDialog> createState() => _LessonCompletionDialogState();
}

class _LessonCompletionDialogState extends State<LessonCompletionDialog>
    with SingleTickerProviderStateMixin {
  late ConfettiController _confettiController;
  final List<bool> _starAnimated = [false, false, false];
  Timer? _starAnimationTimer;
  final AudioService _audioService = Get.find();

  late AnimationController _dialogAnimationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _dialogAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _scaleAnimation = CurvedAnimation(
      parent: _dialogAnimationController,
      curve: Curves.elasticOut,
    );

    _dialogAnimationController.forward();

    _confettiController = ConfettiController(
      duration: const Duration(seconds: 2),
    );
    if (widget.correctCount == widget.totalCount && widget.totalCount > 0) {
      _confettiController.play();
    }
    _startStarAnimation();
  }

  void _startStarAnimation() {
    final stars = _starCount;
    if (stars == 0) return;

    _starAnimationTimer = Timer.periodic(const Duration(milliseconds: 400), (
      timer,
    ) {
      // Find the first non-animated star
      int indexToAnimate = _starAnimated.indexWhere((animated) => !animated);

      if (indexToAnimate != -1 && indexToAnimate < stars) {
        if (mounted) {
          setState(() {
            _starAnimated[indexToAnimate] = true;
            _audioService.playStarSound();
          });
        }
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _dialogAnimationController.dispose();
    _confettiController.dispose();
    _starAnimationTimer?.cancel();
    super.dispose();
  }

  String get _formattedTime {
    final minutes = widget.duration.inMinutes;
    final seconds = widget.duration.inSeconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  int get _starCount {
    if (widget.totalCount == 0) return 0;
    final score = widget.correctCount / widget.totalCount;
    if (score >= 0.9) return 3;
    if (score >= 0.6) return 2;
    if (score > 0) return 1;
    return 0;
  }

  Widget _buildStars() {
    final stars = _starCount;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        final isFilled = index < stars;
        final showFilledAndAnimated = isFilled && _starAnimated[index];

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: AnimatedScale(
            scale: showFilledAndAnimated || !isFilled ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 400),
            curve: Curves.elasticOut,
            child: Icon(
              isFilled ? Icons.star_rounded : Icons.star_border_rounded,
              color: Colors.amber,
              size: context.isLandscape ? 42 : 48,
            ),
          ),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isLandscape = context.isLandscape;
    // Use height for width calculation in landscape to maintain portrait-like proportions
    final dialogWidth = isLandscape ? size.height : size.width * 0.8;

    return Stack(
      alignment: Alignment.center,
      children: [
        ScaleTransition(
          scale: _scaleAnimation,
          child: AlertDialog(
            insetPadding: isLandscape
                ? const EdgeInsets.symmetric(horizontal: 0, vertical: 0)
                : const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
            backgroundColor: Theme.of(context).cardColor,
            surfaceTintColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
              side: BorderSide(
                color: AppPalette.primary.withOpacity(0.3),
                width: 4,
              ),
            ),
            contentPadding: EdgeInsets.all(isLandscape ? 24 : 24),
            content: Container(
              width: dialogWidth,
              constraints: BoxConstraints(
                maxHeight: isLandscape ? size.height : size.height * 0.8,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildStars(),
                    SizedBox(height: isLandscape ? 0 : 24),
                    const Text(
                      'Lesson Complete!',
                      style: TextStyle(
                        fontFamily: 'BubblegumSans',
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: isLandscape ? 12 : 24),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: isLandscape ? 8 : 16,
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Theme.of(context).dividerColor,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildStatItem(
                            Icons.check_circle_rounded,
                            '${widget.correctCount}/${widget.totalCount}',
                            'Score',
                            AppPalette.successGreen,
                          ),
                          Container(
                            width: 1,
                            height: 40,
                            color: Theme.of(context).dividerColor,
                          ),
                          _buildStatItem(
                            Icons.timer_rounded,
                            _formattedTime,
                            'Time',
                            Colors.orange,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: isLandscape ? 16 : 24),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: widget.onRetry,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange.shade50,
                              foregroundColor: Colors.orange,
                              elevation: 0,
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            child: const Icon(Icons.refresh_rounded, size: 28),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          flex: 2,
                          child: ElevatedButton(
                            onPressed: widget.onClose,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppPalette.primary,
                              foregroundColor: Colors.white,
                              elevation: 2,
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            child: const Text(
                              'Continue',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'BubblegumSans',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        ConfettiWidget(
          confettiController: _confettiController,
          blastDirectionality: BlastDirectionality.explosive,
          shouldLoop: false,
          colors: const [
            Colors.green,
            Colors.blue,
            Colors.pink,
            Colors.orange,
            Colors.purple,
          ],
        ),
      ],
    );
  }

  Widget _buildStatItem(
    IconData icon,
    String value,
    String label,
    Color color,
  ) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: color, size: 24),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: TextStyle(
            fontSize: 20,
            color: Theme.of(context).textTheme.bodyLarge?.color,
            fontWeight: FontWeight.bold,
            fontFamily: 'BubblegumSans',
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 14,
            fontFamily: 'BubblegumSans',
          ),
        ),
      ],
    );
  }
}
