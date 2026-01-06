import 'package:logger/logger.dart';

class LoggingService {
  static final LoggingService _instance = LoggingService._internal();
  factory LoggingService() => _instance;
  LoggingService._internal();

  late final Logger _logger;
  bool _isInitialized = false;

  void init({Level level = Level.trace}) {
    if (_isInitialized) return;
    _logger = Logger(printer: PrettyPrinter(), level: level);
    _isInitialized = true;
  }

  void logInfo(String message) {
    _logger.i(message);
  }

  void logWarning(String message) {
    _logger.w(message);
  }

  void logError(String message, {dynamic error, StackTrace? stackTrace}) {
    _logger.e(message, error: error, stackTrace: stackTrace);

    // FirebaseCrashlytics.instance.recordError(
    //   error,
    //   stackTrace,
    //   reason: message,
    // );
  }

  void logDebug(String message) {
    _logger.d(message);
  }

  // Add more logging levels as needed (verbose, wtf, etc.)
}
