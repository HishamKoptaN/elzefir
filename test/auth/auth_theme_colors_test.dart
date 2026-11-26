import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

const themedAuthFiles = [
  'lib/features/auth/widgets/auth_page_layout.dart',
  'lib/features/auth/widgets/custom_auth_btn.dart',
  'lib/features/auth/widgets/custom_auth_text_form_field.dart',
  'lib/features/auth/auth/present/views/auth_view.dart',
  'lib/features/auth/auth/present/views/sidebar_logout_widget.dart',
  'lib/features/auth/sign_in/otp_view.dart',
  'lib/features/auth/sign_in/present/views/widgets/sign_in_form.dart',
  'lib/features/auth/sign_in/present/views/sign_in_debug_auto_fill.dart',
  'lib/features/auth/sign_up/present/views/email_view.dart',
];

void main() {
  test('themed auth files do not hardcode colors', () {
    final hardcoded = RegExp(
      r'Color\(0x|(?<![A-Za-z])Colors\.(?!transparent\b)[A-Za-z]+',
    );
    final violations = <String>[];

    for (final path in themedAuthFiles) {
      final source = File(path).readAsStringSync();
      for (final match in hardcoded.allMatches(source)) {
        final line = source.substring(0, match.start).split('\n').length;
        violations.add('$path:$line ${match.group(0)}');
      }
    }

    expect(violations, isEmpty, reason: 'Hardcoded colors: $violations');
  });
}
