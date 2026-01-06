import 'package:confetti/confetti.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:ezlang/core/services/logging_service.dart';
import 'package:ezlang/domain/entities/curriculum_entity.dart';
import 'package:ezlang/domain/use_cases/get_curriculum_use_case.dart';

class HomeViewModel extends GetxController with StateMixin<List<LevelEntity>> {
  final GetCurriculumUseCase getCurriculumUseCase;
  final LoggingService log;

  late ConfettiController confettiController;
  late FlutterTts flutterTts;

  HomeViewModel({required this.getCurriculumUseCase, required this.log});

  @override
  void onInit() {
    super.onInit();
    confettiController = ConfettiController(
      duration: const Duration(seconds: 3),
    );
    flutterTts = FlutterTts();
    fetchCurriculum();
  }

  @override
  void onClose() {
    confettiController.dispose();
    super.onClose();
  }

  Future<void> fetchCurriculum() async {
    change(null, status: RxStatus.loading());
    final result = await getCurriculumUseCase();

    result.fold(
      (failure) {
        log.logError('Failed to fetch curriculum: ${failure.message}');
        change(null, status: RxStatus.error(failure.message));
      },
      (levels) {
        change(levels, status: RxStatus.success());
      },
    );
  }

  Future<void> speak(String text) async {
    await flutterTts.awaitSpeakCompletion(true);
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.setSpeechRate(0.4);
    await flutterTts.setVolume(1);
    await flutterTts.speak(text);
  }

  void celebrate() {
    confettiController.play();
  }
}
