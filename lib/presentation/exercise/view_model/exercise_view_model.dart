import 'package:ezlang/presentation/exercise/view/widgets/lesson_completion_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:get/get.dart';
import 'package:ezlang/core/services/audio_service.dart';
import 'package:ezlang/domain/entities/curriculum_entity.dart';
import 'package:ezlang/domain/entities/lesson_content_entity.dart';
import 'package:ezlang/domain/use_cases/get_lesson_content_use_case.dart';

class ExerciseViewModel extends GetxController with StateMixin<LessonContent> {
  late SubTopic subTopic;
  final AudioService audioService;
  final GetLessonContentUseCase getLessonContentUseCase;
  late LessonContent content;

  final RxInt currentExerciseIndex = 0.obs;
  final RxBool isAnswerChecked = false.obs;
  final RxBool isAnswerCorrect = false.obs;

  // State for Multiple Choice
  final RxInt selectedOptionIndex = (-1).obs;
  final Rx<dynamic> userAnswer = Rx<dynamic>(null);

  // State for Text Input (Translate / Audio)
  final TextEditingController textController = TextEditingController();

  final RxDouble preloadProgress = 0.0.obs;
  final Rx<String?> currentPlayingAudioId = Rx<String?>(null);
  final RxBool isAudioLoading = false.obs;
  final RxBool hasPlayedAudio = false.obs;
  // final AudioPlayer _audioPlayer = AudioPlayer();

  DateTime? _startTime;
  int _correctAnswersCount = 0;

  ExerciseViewModel({
    required this.audioService,
    required this.getLessonContentUseCase,
  });

  @override
  void onInit() {
    super.onInit();
    // _audioPlayer.onPlayerComplete.listen((_) {
    //   currentPlayingAudioId.value = null;
    // });
    if (Get.arguments is SubTopic) {
      subTopic = Get.arguments as SubTopic;
      fetchContent();
    } else {
      Get.back();
      Get.snackbar('Error', 'Invalid lesson data');
    }
  }

  Future<void> fetchContent() async {
    change(null, status: RxStatus.loading());
    final result = await getLessonContentUseCase(subTopic.id);
    await result.fold(
      (failure) async => change(null, status: RxStatus.error(failure.message)),
      (data) async {
        content = data;
        await _preloadAssets(data);
        _startTime = DateTime.now();
        _correctAnswersCount = 0;
        change(data, status: RxStatus.success());
      },
    );
  }

  Exercise get currentExercise => content.exercises[currentExerciseIndex.value];

  double get progress =>
      (currentExerciseIndex.value + 1) / content.exercises.length;

  void selectOption(int index) {
    if (isAnswerChecked.value) return;
    selectedOptionIndex.value = index;
  }

  void selectAnswer(dynamic answer) {
    if (isAnswerChecked.value) return;
    userAnswer.value = answer;
  }

  Future<void> playAudio(
    String text, {
    String? url,
    String? id,
    double speed = 0.5,
  }) async {
    if (isAudioLoading.value) return;

    // Stop any currently playing audio/TTS to prevent overlap
    // await _audioPlayer.stop();
    await audioService.stop();
    currentPlayingAudioId.value = null;

    // isAudioLoading.value = true;

    if (id != null) currentPlayingAudioId.value = id;

    /// disable play url
    // if (url != null && url.isNotEmpty) {
    //   try {
    //     final file = await DefaultCacheManager().getSingleFile(url);
    //     await _audioPlayer.setPlaybackRate(speed);
    //     await _audioPlayer.setVolume(1);
    //     await _audioPlayer.play(DeviceFileSource(file.path));
    //     isAudioLoading.value = false;
    //     return;
    //   } catch (_) {
    //     // Fallback to TTS if online audio fails
    //   }
    // }
    await audioService.speak(text, speed: speed);
    // isAudioLoading.value = false;
    currentPlayingAudioId.value = null;
  }

  void checkAnswer() {
    if (isAnswerChecked.value) return;

    final exercise = currentExercise;
    bool correct = false;

    if (exercise is MultipleChoice) {
      if (selectedOptionIndex.value == -1) return;
      correct = selectedOptionIndex.value == exercise.correctIndex;
    } else if (exercise is TranslateSentence) {
      correct = textController.text.trim() == exercise.targetText;
    } else if (exercise is AudioMatch) {
      correct =
          textController.text.trim().toLowerCase() ==
          exercise.correctWord.toLowerCase();
    } else if (exercise is ImageSelection) {
      if (userAnswer.value == null) return;
      correct = userAnswer.value == exercise.correctIndex;
    }

    isAnswerCorrect.value = correct;
    if (correct) _correctAnswersCount++;
    isAnswerChecked.value = true;
    audioService.playAnswerSound(correct);
  }

  void nextExercise() {
    if (currentExerciseIndex.value < content.exercises.length - 1) {
      currentExerciseIndex.value++;
      _resetState();
    } else {
      final duration = DateTime.now().difference(_startTime ?? DateTime.now());

      if (_correctAnswersCount == content.exercises.length) {
        audioService.playConfettiSound();
      } else {
        audioService.playDoneSound();
      }

      Get.dialog(
        LessonCompletionDialog(
          correctCount: _correctAnswersCount,
          totalCount: content.exercises.length,
          duration: duration,
          onClose: () {
            Get.back(); // Close dialog
            Get.back(); // Close page
          },
          onRetry: restartLesson,
        ),
        barrierDismissible: false,
      );
    }
  }

  void restartLesson() {
    Get.back(); // Close dialog
    currentExerciseIndex.value = 0;
    _correctAnswersCount = 0;
    _startTime = DateTime.now();
    _resetState();
  }

  void _resetState() {
    isAnswerChecked.value = false;
    isAnswerCorrect.value = false;
    selectedOptionIndex.value = -1;
    userAnswer.value = null;
    textController.clear();
    hasPlayedAudio.value = false;
  }

  @override
  void onClose() {
    // _audioPlayer.dispose();
    super.onClose();
  }

  Future<void> _preloadAssets(LessonContent content) async {
    final urls = <String>{};
    for (var exercise in content.exercises) {
      if (exercise.imageUrl != null && exercise.imageUrl!.isNotEmpty) {
        urls.add(exercise.imageUrl!);
      }

      /// disable play url
      // if (exercise is AudioMatch &&
      //     exercise.audioUrl != null &&
      //     exercise.audioUrl!.isNotEmpty) {
      //   urls.add(exercise.audioUrl!);
      // }
      if (exercise is ImageSelection) {
        for (var url in exercise.options) {
          if (url.isNotEmpty) {
            urls.add(url);
          }
        }
      }
    }

    if (urls.isEmpty) return;

    int total = urls.length;
    int completed = 0;
    preloadProgress.value = 0.0;

    final futures = urls.map((url) async {
      try {
        await DefaultCacheManager().getSingleFile(url);
      } catch (e) {
        debugPrint('Error caching $url: $e');
      } finally {
        completed++;
        preloadProgress.value = completed / total;
      }
    });

    try {
      // Wait for all downloads with a 10-second timeout
      await Future.wait(futures).timeout(const Duration(seconds: 10));
    } catch (e) {
      debugPrint('Asset preloading timed out or failed: $e');
    }
  }
}
