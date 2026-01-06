import 'package:confetti/confetti.dart';
import 'package:ezlang/core/routes/routes.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:ezlang/core/services/logging_service.dart';
import 'package:ezlang/domain/entities/curriculum_entity.dart';
import 'package:ezlang/domain/use_cases/get_curriculum_use_case.dart';
import 'package:ezlang/domain/use_cases/get_progress_use_case.dart';
import 'package:ezlang/domain/use_cases/get_streak_use_case.dart';
import 'package:ezlang/domain/use_cases/update_streak_use_case.dart';

class HomeViewModel extends GetxController with StateMixin<List<LevelEntity>> {
  final GetCurriculumUseCase getCurriculumUseCase;
  final GetProgressUseCase getProgressUseCase;
  final GetStreakUseCase getStreakUseCase;
  final UpdateStreakUseCase updateStreakUseCase;
  final LoggingService log;

  late ConfettiController confettiController;
  late FlutterTts flutterTts;

  final RxList<String> completedLevels = <String>[].obs;
  final RxInt streak = 0.obs;

  HomeViewModel({
    required this.getCurriculumUseCase,
    required this.getProgressUseCase,
    required this.log,
    required this.getStreakUseCase,
    required this.updateStreakUseCase,
  });

  @override
  void onInit() {
    super.onInit();
    confettiController = ConfettiController(
      duration: const Duration(seconds: 3),
    );
    flutterTts = FlutterTts();
    fetchCurriculum();
    fetchProgress();
    fetchStreak();
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

  Future<void> fetchProgress() async {
    final levels = await getProgressUseCase();
    completedLevels.assignAll(levels);
  }

  Future<void> fetchStreak() async {
    final s = await getStreakUseCase();
    streak.value = s;
  }

  Future<void> navigateToLesson(LevelEntity level) async {
    final result = await Get.toNamed(PageTo.lessonDetail, arguments: level);
    if (result == true) {
      await updateStreakUseCase();
      fetchProgress();
      fetchStreak();
      celebrate();
    }
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
