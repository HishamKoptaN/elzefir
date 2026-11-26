import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

const themedFeedbackFiles = [
  'lib/core/widgets/feedback/app_snackbar.dart',
  'lib/core/widgets/tabs/custom_tabs_widget.dart',
  'lib/core/widgets/feedback/error_content_widget.dart',
  'lib/core/widgets/custom_error_widget.dart',
  'lib/core/widgets/feedback/empty_widget.dart',
  'lib/core/widgets/empty_state.dart',
];

void main() {
  test('feedback widgets do not hardcode colors', () {
    final hardcoded = RegExp(
      r'Color\(0x|Color\.fromRGBO|(?<![A-Za-z])Colors\.(?!transparent\b)[A-Za-z]+',
    );
    final violations = <String>[];

    for (final path in themedFeedbackFiles) {
      final source = File(path).readAsStringSync();
      for (final match in hardcoded.allMatches(source)) {
        final line = source.substring(0, match.start).split('\n').length;
        violations.add('$path:$line ${match.group(0)}');
      }
    }

    expect(violations, isEmpty, reason: 'Hardcoded colors: $violations');
  });
}
