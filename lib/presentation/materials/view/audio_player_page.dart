import 'dart:io';
import 'package:audioplayers/audioplayers.dart';
import 'package:ezlang/presentation/widgets/error_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class AudioPlayerPage extends StatefulWidget {
  final String url;
  final String title;

  const AudioPlayerPage({super.key, required this.url, required this.title});

  @override
  State<AudioPlayerPage> createState() => _AudioPlayerPageState();
}

class _AudioPlayerPageState extends State<AudioPlayerPage> {
  late AudioPlayer _player;
  PlayerState _playerState = PlayerState.stopped;
  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;
  bool _isLoading = true;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    _initAudio();
  }

  Future<void> _initAudio() async {
    // Configure AudioContext to handle audio focus and interruptions
    await _player.setAudioContext(
      AudioContext(
        iOS: Platform.isIOS
            ? AudioContextIOS(
                category: AVAudioSessionCategory.playback,
                options: const {
                  /// check runs on real device
                  // AVAudioSessionOptions.defaultToSpeaker,
                  // AVAudioSessionOptions.allowAirPlay,
                  // AVAudioSessionOptions.allowBluetooth,
                },
              )
            : null,
        android: Platform.isAndroid
            ? AudioContextAndroid(
                isSpeakerphoneOn: true,
                stayAwake: true,
                contentType: AndroidContentType.music,
                usageType: AndroidUsageType.media,
                audioFocus: AndroidAudioFocus.gain,
              )
            : null,
      ),
    );

    _player.onPlayerStateChanged.listen((state) {
      if (mounted) setState(() => _playerState = state);
    });

    _player.onDurationChanged.listen((newDuration) {
      if (mounted) {
        setState(() {
          _duration = newDuration;
          _isLoading = false;
        });
      }
    });

    _player.onPositionChanged.listen((newPosition) {
      if (mounted) setState(() => _position = newPosition);
    });

    try {
      final file = await DefaultCacheManager().getSingleFile(widget.url);
      await _player.setSourceDeviceFile(file.path);
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoading = false;
          _errorMessage = 'Error loading audio: $e';
        });
      }
    }
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$minutes:$seconds";
  }

  @override
  Widget build(BuildContext context) {
    final isPlaying = _playerState == PlayerState.playing;

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: _errorMessage != null
          ? ErrorView(
              message: _errorMessage!,
              onRetry: () {
                setState(() {
                  _isLoading = true;
                  _errorMessage = null;
                });
                _initAudio();
              },
            )
          : Padding(
              padding: const EdgeInsets.all(24.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.audiotrack, size: 100, color: Colors.grey),
                    const SizedBox(height: 32),
                    if (_isLoading)
                      const CircularProgressIndicator()
                    else ...[
                      Slider(
                        min: 0,
                        max: _duration.inSeconds.toDouble(),
                        value: _position.inSeconds.toDouble().clamp(
                          0,
                          _duration.inSeconds.toDouble(),
                        ),
                        onChanged: (value) async {
                          final position = Duration(seconds: value.toInt());
                          await _player.seek(position);
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(_formatDuration(_position)),
                            Text(_formatDuration(_duration)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 32),
                      IconButton(
                        iconSize: 64,
                        icon: Icon(
                          isPlaying ? Icons.pause_circle : Icons.play_circle,
                        ),
                        onPressed: () async {
                          if (isPlaying) {
                            await _player.pause();
                          } else {
                            await _player.resume();
                          }
                        },
                      ),
                    ],
                  ],
                ),
              ),
            ),
    );
  }
}
