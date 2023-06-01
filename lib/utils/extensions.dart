import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension StyleExtension on BuildContext {
  TextStyle get bodySmall => Theme.of(this).textTheme.bodySmall ?? const TextStyle();
  TextStyle get bodyMedium => Theme.of(this).textTheme.bodyMedium ?? const TextStyle();
  TextStyle get bodyLarge => Theme.of(this).textTheme.bodyLarge ?? const TextStyle();

  TextStyle get labelSmall => Theme.of(this).textTheme.labelSmall ?? const TextStyle();
  TextStyle get labelMedium => Theme.of(this).textTheme.labelMedium ?? const TextStyle();
  TextStyle get labelLarge => Theme.of(this).textTheme.labelLarge ?? const TextStyle();

  TextStyle get titleSmall => Theme.of(this).textTheme.titleSmall ?? const TextStyle();
  TextStyle get titleMedium => Theme.of(this).textTheme.titleMedium ?? const TextStyle();
  TextStyle get titleLarge => Theme.of(this).textTheme.titleLarge ?? const TextStyle();

  TextStyle get headlineSmall => Theme.of(this).textTheme.headlineSmall ?? const TextStyle();
  TextStyle get headlineMedium => Theme.of(this).textTheme.headlineMedium ?? const TextStyle();
  TextStyle get headlineLarge => Theme.of(this).textTheme.headlineLarge ?? const TextStyle();

  TextStyle get displaySmall => Theme.of(this).textTheme.displaySmall ?? const TextStyle();
  TextStyle get displayMedium => Theme.of(this).textTheme.displayMedium ?? const TextStyle();
  TextStyle get displayLarge => Theme.of(this).textTheme.displayLarge ?? const TextStyle();

  Color get buttonColor => Theme.of(this).colorScheme.secondaryContainer;
  Color get buttonColorOff => Theme.of(this).colorScheme.onSurface.withOpacity(0.08);
}