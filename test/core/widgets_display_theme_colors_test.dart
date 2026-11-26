import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

const themedDisplayFiles = [
  'lib/core/widgets/template_card.dart',
  'lib/core/widgets/common/section_header.dart',
  'lib/core/widgets/camera_button_widget.dart',
  'lib/core/widgets/custom_date_picker.dart',
  'lib/core/widgets/bg_container_widget.dart',
  'lib/core/widgets/tables/table_header_cell.dart',
  'lib/core/widgets/navigation/custom_app_bar.dart',
  'lib/core/widgets/custom_scaffold.dart',
  'lib/core/widgets/custom_image.dart',
  'lib/core/widgets/common/custom_divider_widget.dart',
];

void main() {
  test('display widgets do not hardcode colors', () {
    final hardcoded = RegExp(
      r'Color\(0x|Color\.fromRGBO|(?<![A-Za-z])Colors\.(?!transparent\b)[A-Za-z]+',
    );
    final violations = <String>[];

    for (final path in themedDisplayFiles) {
      final source = File(path).readAsStringSync();
      for (final match in hardcoded.allMatches(source)) {
        final line = source.substring(0, match.start).split('\n').length;
        violations.add('$path:$line ${match.group(0)}');
      }
    }

    expect(violations, isEmpty, reason: 'Hardcoded colors: $violations');
  });
}
