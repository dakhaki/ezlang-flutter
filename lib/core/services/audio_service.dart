import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';

class AudioService extends GetxService {
  final FlutterTts _flutterTts = FlutterTts();

  Future<AudioService> init() async {
    await _flutterTts.setLanguage("en-US");
    await _flutterTts.setPitch(1.0);
    await _flutterTts.setSpeechRate(0.3);
    await _flutterTts.setVolume(1.0);
    await _flutterTts.awaitSpeakCompletion(true);
    return this;
  }

  Future<void> speak(String text) async {
    if (text.isNotEmpty) {
      await _flutterTts.speak(text);
    }
  }

  Future<void> stop() async => await _flutterTts.stop();
}
