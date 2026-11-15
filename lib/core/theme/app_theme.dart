import 'package:elzefir/core/utils/extensions/theme_ext.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._({required BuildContext context});
  static ThemeData theme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      brightness: .light,
      fontFamily: 'FreeSerif',
      scaffoldBackgroundColor: context.colorScheme.surface,
      colorScheme: ColorScheme.fromSeed(seedColor: Color(0x00124370)),
    );
  }
}
