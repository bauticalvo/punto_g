import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFF2E3A59); // Azul oscuro
  static const Color secondary = Color(0xFF5042F7); // Azul vibrante
  static const Color accent = Color(0xFF9B96FA); // Azul claro
  static const Color background = Color(0xFFE5EAFC); // Azul muy claro
  static const Color surface = Color(0xFFF2F5FF); // Casi blanco

  static ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: primary,
        secondary: secondary,
        tertiary: surface,
        surface: background,
        error: Colors.red,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onTertiary: accent,
        onSurface: primary,
        onError: Colors.white,
      ),
    );
  }
}
