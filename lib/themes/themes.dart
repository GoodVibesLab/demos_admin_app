import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData buildTheme(brightness) {
  var baseTheme = FlexThemeData.dark( scheme: FlexScheme.bahamaBlue);

  return baseTheme.copyWith(
    textTheme: GoogleFonts.robotoTextTheme(baseTheme.textTheme),
  );
}

const textTheme = TextTheme(
  titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
  titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
  titleSmall: TextStyle(fontSize: 14),
  bodyLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
  bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
  bodySmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
  displayLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
  displayMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
  displaySmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
);

const customGreen = Color(0xFF66DB72);
const customRed = Color(0xFFDB6666);
const customYellow = Color(0xFFE9B80D);
