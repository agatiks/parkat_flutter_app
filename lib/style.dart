import 'package:flutter/material.dart';

class StyleValues {
  static final colorScheme = ColorScheme.fromSeed(
    tertiary: Color(0xFF202020),
    primary: Color(0xFF161417),
    secondary: const Color(0xFFB54CC9),
    seedColor: const Color(0xFFB54CC9),
  );
}

const textTheme = TextTheme(
    titleMedium: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 18),
    titleSmall: TextStyle(color: ColorValues.text, fontWeight: FontWeight.w400, fontSize: 16),
    labelLarge: TextStyle(fontSize: 24),
    labelSmall: TextStyle(color: ColorValues.purpleLight, fontWeight: FontWeight.w800, fontSize: 12),
  labelMedium: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
);

class ColorValues {
  static const white = Color(0xFFFFFFFF);
  static final purpleDisabled = Color(0xFF402A44);
  static final purpleMain = Color(0xFFB54CC9);
  static final darkGrayBackground = Color(0xFF202020);
  static const text = Color(0xFFB1B1B1);

  static const purpleLight = Color(0xFFE4A5F8);
}
