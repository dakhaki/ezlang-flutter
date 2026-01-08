import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';

class AudioService extends GetxService {
  final FlutterTts _flutterTts = FlutterTts();
  final AudioPlayer _audioPlayer = AudioPlayer();

  Future<AudioService> init() async {
    await _flutterTts.setLanguage("en-US");
    await _flutterTts.setPitch(1.0);
    await _flutterTts.setSpeechRate(0.3);
    await _flutterTts.setVolume(1.0);
    await _flutterTts.awaitSpeakCompletion(true);
    return this;
  }

  Future<void> speak(String text, {double speed = 0.5}) async {
    if (text.isNotEmpty) {
      await _flutterTts.stop();
      await _flutterTts.setSpeechRate(speed);
      await _flutterTts.speak(text);
    }
  }

  Future<void> stop() async => await _flutterTts.stop();

  Future<void> playAnswerSound(bool isCorrect) async {
    try {
      await _audioPlayer.stop();
      await _audioPlayer.play(
        AssetSource(isCorrect ? 'sounds/correct.m4a' : 'sounds/boing.m4a'),
      );
    } catch (e) {
      debugPrint('Error playing answer sound: $e');
    }
  }

  @override
  void onClose() {
    _flutterTts.stop();
    _audioPlayer.dispose();
    super.onClose();
  }
}
