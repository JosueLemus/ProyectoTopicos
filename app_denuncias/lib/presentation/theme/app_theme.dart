import 'package:flutter/material.dart';

class AppTheme {
  static Color backgroundColor = const Color(0xFFF5F5F5);
  static Color primaryColor = const Color(0xFF01B763);
  static Color primaryText = const Color(0xFF4D4D4D);
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: backgroundColor,
      colorScheme: ColorScheme.fromSwatch()
          .copyWith(primary: primaryColor, secondary: Colors.red));
}
