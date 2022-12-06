import 'package:flutter/material.dart';

class AppTheme {
  static const MaterialColor yellow = MaterialColor(
    _yellowPrimaryValue,
    <int, Color>{
      50: Color(0xFFFFFDE7),
      100: Color(0xFFFFF9C4),
      200: Color(0xFFFFF59D),
      300: Color(0xFFFFF176),
      400: Color(0xFFFFEE58),
      500: Color(_yellowPrimaryValue),
      600: Color(0xFFFDD835),
      700: Color(0xFFFBC02D),
      800: Color(0xFFF9A825),
      900: Color(0xFFF57F17),
    },
  );

  static const Color yellow600 = Color(0xFFFFD100);
  static const int _yellowPrimaryValue = 0xFFFFEE32;
  static const Color black = Color(0xFF000000);
  static const Color black900 = Color(0xFF202020);
  static const Color grey700 = Color(0xFF333533);
  static const Color grey400 = Color(0xFFA3A3A3);
  static const Color grey100 = Color(0xFFD6D6D6);
  static const Color grey50 = Color(0xFFF4F4F4);
  static const Color white = Color(0xFFffffff);

  final theme = ThemeData(
    useMaterial3: true,
    primaryColor: yellow,
    primarySwatch: yellow,
    fontFamily: 'Poppins',
    scaffoldBackgroundColor: white,
  );
}
