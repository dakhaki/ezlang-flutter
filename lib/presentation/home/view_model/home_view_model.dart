import 'package:eZlang/core/services/logging_service.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  final LoggingService _log;

  HomeViewModel({required LoggingService log}) : _log = log;

  final RxBool isLoading = true.obs;

  @override
  void onReady() {
    super.onReady();
    _initialLoad();
  }

  Future<void> _initialLoad() async {
    _log.logInfo('HomeViewModel: Initializing...');
  }
}
