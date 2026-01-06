import 'package:flutter/material.dart';
import 'package:ezlang/core/theme/app_palette.dart';

class StickerWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final double size;

  const StickerWidget({
    super.key,
    required this.icon,
    required this.label,
    this.color = AppPalette.secondary,
    this.size = 100,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: size,
          height: size,
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
          child: Icon(icon, size: size * 0.6, color: Colors.white),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: AppPalette.textPrimary,
            fontFamily: 'BubblegumSans',
          ),
        ),
      ],
    );
  }
}
