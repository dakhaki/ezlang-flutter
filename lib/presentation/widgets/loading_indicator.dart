import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class LoadingIndicator extends StatelessWidget {
  final double? width;
  final double? height;

  const LoadingIndicator({super.key, this.width = 160, this.height = 160});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Lottie.asset(
        'assets/lottie/heartbeat.lottie',
        // 'assets/lottie/loading_hand.lottie',
        // 'assets/lottie/loading.lottie',
        decoder: lottieFileDecoder,
      ),
    );
  }

  Future<LottieComposition?> lottieFileDecoder(List<int> bytes) {
    return LottieComposition.decodeZip(
      bytes,
      filePicker: (files) {
        return files.firstWhereOrNull(
          (f) => f.name.startsWith('animations/') && f.name.endsWith('.json'),
        );
      },
    );
  }
}
