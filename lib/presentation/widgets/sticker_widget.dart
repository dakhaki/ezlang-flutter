import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:ezlang/core/theme/app_palette.dart';

class StickerWidget extends StatelessWidget {
  final IconData icon;
  // final String label;
  final Color color;
  final double? size;
  final bool animate;

  const StickerWidget({
    super.key,
    required this.icon,
    // this.label,
    this.color = AppPalette.secondary,
    this.size,
    this.animate = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        LayoutBuilder(
          builder: (context, constraints) {
            final double actualSize = size ?? constraints.biggest.shortestSide;
            final Widget child = Container(
              width: actualSize,
              height: actualSize,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Icon(icon, size: actualSize * 0.6, color: Colors.white),
            );

            if (animate) {
              return Center(
                child: TweenAnimationBuilder<double>(
                  tween: Tween(begin: 0.0, end: 1.0),
                  duration: const Duration(milliseconds: 5000),
                  curve: Curves.elasticOut,
                  builder: (context, value, child) {
                    return Transform.rotate(
                      angle: value * 2 * math.pi,
                      child: child,
                    );
                  },
                  child: child,
                ),
              );
            }

            return Center(child: child);
          },
        ),
        // const SizedBox(height: 8),
        // Text(
        //   label,
        //   style: Theme.of(context).textTheme.titleMedium?.copyWith(
        //     fontWeight: FontWeight.bold,
        //     color: AppPalette.textPrimary,
        //     fontFamily: 'BubblegumSans',
        //   ),
        //   textAlign: TextAlign.center,
        // ),
      ],
    );
  }
}
