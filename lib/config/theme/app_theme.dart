import 'package:flutter/material.dart';

class AppTheme {
  static const Color rojoPrincipal = Color(0xFF8e0428);
  static const Color rojoTransparente = Color.fromRGBO(142, 4, 40, 0.5);
  static const Color negroPrincipal = Color(0xFF020202);
  static const Color grisPrincipal = Color(0xFFc0c0c0);
  static const Color blanco = Color(0xFFFFFFFF);

 static ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme(
          primary: rojoPrincipal,
          onPrimary: blanco,
          secondary: negroPrincipal,
          onSecondary: blanco,
          surface: grisPrincipal,
          onSurface: negroPrincipal,
          error: Colors.red,
          onError: blanco,
          tertiary: rojoTransparente,

          brightness: Brightness.light,
      ),
    );
  }



}