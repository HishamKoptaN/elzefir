import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

const themedProfileFiles = [
  'lib/features/profile/present/views/widgets/card/profile_card_widget.dart',
  'lib/features/profile/present/views/widgets/card/camera_btn.dart',
  'lib/features/profile/present/views/widgets/contact/profile_phone_widget.dart',
];

void main() {
  test('profile widgets do not hardcode colors', () {
    final hardcoded = RegExp(
      r'Color\(0x|(?<![A-Za-z])Colors\.(?!transparent\b)[A-Za-z]+',
    );
    final violations = <String>[];

    for (final path in themedProfileFiles) {
      final source = File(path).readAsStringSync();
      for (final match in hardcoded.allMatches(source)) {
        final line = source.substring(0, match.start).split('\n').length;
        violations.add('$path:$line ${match.group(0)}');
      }
    }

    expect(violations, isEmpty, reason: 'Hardcoded colors: $violations');
  });
}
