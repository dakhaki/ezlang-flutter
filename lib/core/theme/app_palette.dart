import 'package:flutter/material.dart';

class AppPalette {
  // --- Kid-friendly Palette ---
  // Backgrounds
  static const darkBackground = Color(0xFF0F1724);
  static const lightBackground = Color(0xFFFFFBF0); // warm cream

  // Text
  static const softBlack = Color(0xFF2B2B2B);
  static const softWhite = Color(0xFFF7F7FF);

  static const softOrange = Color.fromARGB(255, 242, 142, 59);
  static const brightRed = Color(0xFFFF5252);
  static const turquoise = Color(0xFF1ABC9C);
  static const indigo = Color(0xFF5C6BC0);

  // Primary & Accents (bright, cheerful)
  static const primaryAccent = Color(0xFF00ADEF); // bright sky blue
  static const secondaryAccent = Color(0xFFFFC107); // sunny yellow
  static const pinkAccent = Color(0xFFFF6B81); // coral/pink
  static const mintAccent = Color(0xFF31E7B1); // mint
  static const purpleAccent = Color(0xFF9B59FF); // playful purple
  static const softBrown = Color(0xFFF8E8B0); // preview board background
  static const brownLite = Color(0xFFAF824D); // preview board border

  // Game State Colors
  static const successGreen = Color(0xFF2ECC71);
  static final successGreenBg = const Color(0xFF2ECC71).withAlpha(77);
  static const errorRed = Color(0xFFFF4D4F);
  static final errorRedBg = const Color(0xFFFF4D4F).withAlpha(77);

  // General UI
  static const darkCardColor = Color(0xFF16202B);
  static const lightCardColor = Color(0xFFFFFFFF);
  static const transparentColor = Colors.transparent;
  static const placeholderColor = Color(0xFFBDBDBD);

  // Gradients
  static const bgGradientStart = Color(0xFFFFF7E6);
  static const bgGradientEnd = Color(0xFFE6F8FF);
}
