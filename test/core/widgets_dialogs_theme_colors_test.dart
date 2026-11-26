import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

const themedDialogFiles = [
  'lib/core/widgets/custom_dialog/confirmation_dialog.dart',
  'lib/core/widgets/forms/custom_search_field.dart',
  'lib/core/widgets/contact_field_widget.dart',
  'lib/core/widgets/custom_dialog/dialog_header.dart',
  'lib/core/widgets/custom_dialog/dialog_footer.dart',
  'lib/core/widgets/custom_dialog/custom_dialog.dart',
];

void main() {
  test('dialog and form widgets do not hardcode colors', () {
    final hardcoded = RegExp(
      r'Color\(0x|Color\.fromRGBO|(?<![A-Za-z])Colors\.(?!transparent\b)[A-Za-z]+',
    );
    final violations = <String>[];

    for (final path in themedDialogFiles) {
      final source = File(path).readAsStringSync();
      for (final match in hardcoded.allMatches(source)) {
        final line = source.substring(0, match.start).split('\n').length;
        violations.add('$path:$line ${match.group(0)}');
      }
    }

    expect(violations, isEmpty, reason: 'Hardcoded colors: $violations');
  });
}
