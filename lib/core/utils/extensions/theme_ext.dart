import 'package:flutter/material.dart';

export 'stitch_colors_ext.dart';

extension ThemeExt on BuildContext {
  ColorScheme get colorScheme {
    return Theme.of(this).colorScheme;
  }

  TextTheme get textTheme {
    return Theme.of(this).textTheme;
  }
}
