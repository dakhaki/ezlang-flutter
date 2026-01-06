import 'package:get/get.dart';
import 'package:ezlang/domain/use_cases/get_learning_time_use_case.dart';
import 'package:ezlang/domain/use_cases/get_stickers_use_case.dart';

class ProfileViewModel extends GetxController {
  final GetLearningTimeUseCase getLearningTimeUseCase;
  final GetStickersUseCase getStickersUseCase;

  final RxInt totalMinutes = 0.obs;
  final RxList<String> stickers = <String>[].obs;

  ProfileViewModel({
    required this.getLearningTimeUseCase,
    required this.getStickersUseCase,
  });

  @override
  void onInit() {
    super.onInit();
    fetchProfileData();
  }

  Future<void> fetchProfileData() async {
    totalMinutes.value = await getLearningTimeUseCase();
    stickers.assignAll(await getStickersUseCase());
  }

  String get formattedTime {
    final hours = totalMinutes.value ~/ 60;
    final minutes = totalMinutes.value % 60;
    return '${hours}h ${minutes}m';
  }
}
