import 'package:flutter/material.dart';

CheckboxThemeData checkboxTheme({required ColorScheme colorScheme}) {
  return CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return colorScheme.onSurface.withValues(alpha: 0.38);
      }
      if (states.contains(WidgetState.selected)) {
        return colorScheme.primary;
      }
      return colorScheme.onSurface.withValues(alpha: 0.6);
    }),
    checkColor: WidgetStateProperty.all(colorScheme.onPrimary),
    overlayColor: WidgetStateProperty.all(colorScheme.primary.withValues(alpha: 0.1)),
    side: BorderSide(color: colorScheme.outline),
  );
}
