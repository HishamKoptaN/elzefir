import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('units widget does not hardcode colors', () {
    final path = 'lib/features/orders/present/views/widgets/orders/items/units/units_widget.dart';
    final source = File(path).readAsStringSync();
    final hardcoded = RegExp(
      r'Color\(0x|(?<![A-Za-z])Colors\.(?!transparent\b)[A-Za-z]+',
    );
    final violations = <String>[];

    for (final match in hardcoded.allMatches(source)) {
      final line = source.substring(0, match.start).split('\n').length;
      violations.add('$path:$line ${match.group(0)}');
    }

    expect(violations, isEmpty, reason: 'Hardcoded colors: $violations');
  });
}
