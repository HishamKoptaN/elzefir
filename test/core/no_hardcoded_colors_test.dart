import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

/// Files that define the theme palette itself, or generated/commented code.
const allowedPaletteFiles = [
  'lib/core/utils/extensions/stitch_colors_ext.dart',
  'lib/core/theme/app_theme.dart',
];

bool _isAllowed(String path) {
  if (allowedPaletteFiles.contains(path)) {
    return true;
  }
  if (path.startsWith('lib/core/theme/core/modes/')) {
    return true;
  }
  return path.endsWith('.g.dart') || path.endsWith('.freezed.dart');
}

void main() {
  test('lib contains no hardcoded colors outside the theme palette', () {
    final hardcoded = RegExp(
      r'Color\(0x|Color\.fromRGBO|(?<![A-Za-z])Colors\.(?!transparent\b)[A-Za-z]+',
    );
    final violations = <String>[];

    for (final entity in Directory('lib').listSync(recursive: true)) {
      if (entity is! File || !entity.path.endsWith('.dart')) {
        continue;
      }
      final path = entity.path.replaceAll(r'\', '/');
      if (_isAllowed(path)) {
        continue;
      }
      final source = entity.readAsStringSync();
      for (final match in hardcoded.allMatches(source)) {
        final line = source.substring(0, match.start).split('\n').length;
        final snippet = source.split('\n')[line - 1].trim();
        // Ignore legacy commented-out AppColors references.
        if (snippet.startsWith('//')) {
          continue;
        }
        violations.add('$path:$line ${match.group(0)}');
      }
    }

    expect(violations, isEmpty, reason: 'Hardcoded colors: $violations');
  });
}
