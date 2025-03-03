import 'package:flutter/material.dart';


const List<Color> _colorThemes = [
  Color(0xFFFE9E02),
  Color.fromARGB(255, 52, 254, 2),  
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
  :assert(selectedColor >= 0 && selectedColor < _colorThemes.length,
  "Selected color must be between 0 and ${_colorThemes.length - 1}");

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],

    );
  }
}