import 'package:flutter/material.dart';

abstract class AppColors {
  const AppColors();
  static const Color success = Color(0xFF27AE60);
  static const Color danger = Color(0xFFEB5757);
  static const Color warning = Color(0xFFE2B93B);
  Color get primary;
  Color get primaryLight;
  Color get onPrimary;
  Color get background;
  Color get surface;
  Color get textPrimary;
  Color get textSecondary;
}

class LightColors extends AppColors {
  const LightColors();

  @override
  Color get primary => const Color(0xFF0F1E2E);
  @override
  Color get primaryLight => const Color(0xFFD7CCC8);
  @override
  Color get onPrimary => Colors.white;
  @override
  Color get background => const Color(0xFFF5EAD8);
  @override
  Color get surface => Colors.white;
  @override
  Color get textPrimary => const Color(0xFF212121);
  @override
  Color get textSecondary => const Color(0xFF757575);
}

class DarkColors extends AppColors {
  const DarkColors();

  @override
  Color get primary => const Color(0xFFD7CCC8);
  @override
  Color get primaryLight => const Color(0xFFD7CCC8);
  @override
  Color get onPrimary => Colors.black;
  @override
  Color get background => const Color(0xFF121212);
  @override
  Color get surface => const Color(0xFF1E1E1E);
  @override
  Color get textPrimary => const Color(0xFFECEFF1);
  @override
  Color get textSecondary => const Color(0xFFB0BEC5);
}
