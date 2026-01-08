import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ezlang/presentation/splash/view_model/splash_view_model.dart';

class SplashPage extends GetView<SplashViewModel> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<SplashViewModel>();
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        key: const ValueKey('loading'),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final double maxW = constraints.maxWidth;
            final bool isLandscape = context.isLandscape;
            // proportional size, clamped to grow on tablets but stay reasonable
            final double raw = maxW * (isLandscape ? 0.35 : 0.6);
            final double logoSize = raw.clamp(120.0, 420.0).toDouble();
            // Responsive font size that stays proportional
            final double dynamicFontSize = (logoSize * 0.22).clamp(32.0, 80.0);

            return Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: logoSize,
                  height: logoSize,
                  fit: BoxFit.contain,
                  cacheWidth:
                      (logoSize * MediaQuery.of(context).devicePixelRatio)
                          .round(),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Stack(
                      children: [
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            child: Stack(
                              children: [
                                // Layer 1: Thick Outer Border (Sticker Effect)
                                Text(
                                  'eZlang',
                                  style: TextStyle(
                                    fontSize: dynamicFontSize,
                                    fontWeight:
                                        FontWeight.bold, // Extra bold for kids
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth =
                                          10 // Thicker border
                                      ..strokeCap = StrokeCap.round
                                      ..strokeJoin = StrokeJoin.round
                                      ..color = Colors.white,
                                  ),
                                ),
                                // Layer 2: Main Text with Soft Shadow
                                Text(
                                  'eZlang',
                                  style: TextStyle(
                                    fontSize: dynamicFontSize,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).primaryColor,
                                    shadows: [
                                      Shadow(
                                        blurRadius: 8,
                                        color: Colors.black.withOpacity(0.3),
                                        offset: const Offset(4, 4),
                                      ),
                                      // Added a second subtle shadow for more depth
                                      Shadow(
                                        blurRadius: 2,
                                        color: Colors.white.withOpacity(0.5),
                                        offset: const Offset(-1, -1),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
