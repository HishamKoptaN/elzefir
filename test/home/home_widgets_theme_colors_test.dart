import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

const themedHomeFiles = [
  'lib/features/home/present/widgets/additions/addition_card.dart',
  'lib/features/home/present/widgets/categories_nav.dart',
  'lib/features/home/present/widgets/offer_widget.dart',
  'lib/features/home/present/widgets/products/card/product_card_image.dart',
];

void main() {
  test('remaining home widgets do not hardcode colors', () {
    final hardcoded = RegExp(
      r'Color\(0x|Color\.fromRGBO|(?<![A-Za-z])Colors\.(?!transparent\b)[A-Za-z]+',
    );
    final violations = <String>[];

    for (final path in themedHomeFiles) {
      final source = File(path).readAsStringSync();
      for (final match in hardcoded.allMatches(source)) {
        final line = source.substring(0, match.start).split('\n').length;
        violations.add('$path:$line ${match.group(0)}');
      }
    }

    expect(violations, isEmpty, reason: 'Hardcoded colors: $violations');
  });
}
