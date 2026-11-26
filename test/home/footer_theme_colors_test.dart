import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

const themedFooterFiles = [
  'lib/features/home/present/widgets/footer/footer_widget.dart',
  'lib/features/home/present/widgets/footer/contacts_items.dart',
];

void main() {
  test('footer files do not hardcode colors', () {
    final hardcoded = RegExp(r'Color\(0x|(?<![A-Za-z])Colors\.[A-Za-z]+');
    final violations = <String>[];

    for (final path in themedFooterFiles) {
      final source = File(path).readAsStringSync();
      for (final match in hardcoded.allMatches(source)) {
        final line = source.substring(0, match.start).split('\n').length;
        violations.add('$path:$line ${match.group(0)}');
      }
    }

    expect(violations, isEmpty, reason: 'Hardcoded colors: $violations');
  });
}
