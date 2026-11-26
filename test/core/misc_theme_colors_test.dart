import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

const themedMiscFiles = [
  'lib/features/notifications/present/view/notifications_view.dart',
  'lib/features/notifications/present/view/widgets/types/cusotm_notif.dart',
  'lib/features/notifications/present/view/widgets/types/new_user_registered.dart',
  'lib/features/notifications/present/view/widgets/types/welcome_sign_in.dart',
  'lib/core/app_date_picker.dart',
  'lib/core/routing/error_page.dart',
  'lib/core/errors/error_widget.dart',
];

void main() {
  test('remaining misc widgets do not hardcode colors', () {
    final hardcoded = RegExp(
      r'Color\(0x|(?<![A-Za-z])Colors\.(?!transparent\b)[A-Za-z]+',
    );
    final violations = <String>[];

    for (final path in themedMiscFiles) {
      final source = File(path).readAsStringSync();
      for (final match in hardcoded.allMatches(source)) {
        final line = source.substring(0, match.start).split('\n').length;
        violations.add('$path:$line ${match.group(0)}');
      }
    }

    expect(violations, isEmpty, reason: 'Hardcoded colors: $violations');
  });
}
