import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

const themedDrawerFiles = [
  'lib/features/home/present/widgets/drawer/drawer.dart',
  'lib/features/home/present/widgets/drawer/drawer_footer_widget.dart',
  'lib/features/home/present/widgets/drawer/drawer_header_widget.dart',
  'lib/features/home/present/widgets/drawer/drawer_nav_items_widget.dart',
  'lib/features/home/present/widgets/drawer/drawer_quick_order_widget.dart',
  'lib/features/home/present/widgets/drawer/drawer_working_hours_card.dart',
];

void main() {
  test('drawer files do not hardcode colors', () {
    final hardcoded = RegExp(
      r'Color\(0x|(?<![A-Za-z])Colors\.(?!transparent\b)[A-Za-z]+',
    );
    final violations = <String>[];

    for (final path in themedDrawerFiles) {
      final source = File(path).readAsStringSync();
      for (final match in hardcoded.allMatches(source)) {
        final line = source.substring(0, match.start).split('\n').length;
        violations.add('$path:$line ${match.group(0)}');
      }
    }

    expect(violations, isEmpty, reason: 'Hardcoded colors: $violations');
  });
}
