import 'package:flutter/material.dart';
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

  ExerciseViewModel({
    required this.audioService,
    required this.getLessonContentUseCase,
  });

  @override
  void onInit() {
    super.onInit();
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
    result.fold(
      (failure) => change(null, status: RxStatus.error(failure.message)),
      (data) {
        content = data;
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

  Future<void> playAudio(String text) async {
    await audioService.speak(text);
  }

  void checkAnswer() {
    if (isAnswerChecked.value) return;

    final exercise = currentExercise;
    bool correct = false;

    if (exercise is MultipleChoice) {
      if (selectedOptionIndex.value == -1) return;
      correct = selectedOptionIndex.value == exercise.correctIndex;
    } else if (exercise is TranslateSentence) {
      correct =
          textController.text.trim().toLowerCase() ==
          exercise.targetText.toLowerCase();
    } else if (exercise is AudioMatch) {
      correct =
          textController.text.trim().toLowerCase() ==
          exercise.correctWord.toLowerCase();
    } else if (exercise is ImageSelection) {
      if (userAnswer.value == null) return;
      correct = userAnswer.value == exercise.correctIndex;
    }

    isAnswerCorrect.value = correct;
    isAnswerChecked.value = true;

    if (!correct) {
      // Optional: Play error sound or vibration
    }
  }

  void nextExercise() {
    if (currentExerciseIndex.value < content.exercises.length - 1) {
      currentExerciseIndex.value++;
      _resetState();
    } else {
      Get.back();
      Get.snackbar(
        'Lesson Complete',
        'Great job completing ${subTopic.title}!',
      );
    }
  }

  void _resetState() {
    isAnswerChecked.value = false;
    isAnswerCorrect.value = false;
    selectedOptionIndex.value = -1;
    userAnswer.value = null;
    textController.clear();
  }
}
