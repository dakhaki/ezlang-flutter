import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:ezlang/domain/entities/curriculum_entity.dart';

class ExerciseViewModel extends GetxController {
  late SubTopic subTopic;
  final FlutterTts flutterTts = FlutterTts();

  final RxInt currentExerciseIndex = 0.obs;
  final RxBool isAnswerChecked = false.obs;
  final RxBool isAnswerCorrect = false.obs;

  // State for Multiple Choice
  final RxInt selectedOptionIndex = (-1).obs;

  // State for Text Input (Translate / Audio)
  final TextEditingController textController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments is SubTopic) {
      subTopic = Get.arguments as SubTopic;
    } else {
      Get.back();
      Get.snackbar('Error', 'Invalid lesson data');
    }
  }

  Exercise get currentExercise =>
      subTopic.exercises[currentExerciseIndex.value];

  double get progress =>
      (currentExerciseIndex.value + 1) / subTopic.exercises.length;

  void selectOption(int index) {
    if (isAnswerChecked.value) return;
    selectedOptionIndex.value = index;
  }

  Future<void> playAudio(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.speak(text);
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
    }

    isAnswerCorrect.value = correct;
    isAnswerChecked.value = true;

    if (!correct) {
      // Optional: Play error sound or vibration
    }
  }

  void nextExercise() {
    if (currentExerciseIndex.value < subTopic.exercises.length - 1) {
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
    textController.clear();
  }
}
