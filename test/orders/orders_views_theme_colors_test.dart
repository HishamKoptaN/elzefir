import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

const themedOrderFiles = [
  'lib/features/orders/present/views/orders_view.dart',
  'lib/features/orders/present/views/orders_widget.dart',
  'lib/features/orders/present/views/widgets/orders_table_header_widget.dart',
  'lib/features/orders/present/views/widgets/orders/empty_search_widget.dart',
  'lib/features/orders/present/views/widgets/orders/orders_table_header_widget.dart',
  'lib/features/orders/present/views/widgets/orders/items/order_widget.dart',
  'lib/features/orders/present/views/widgets/orders/items/order_items_widget.dart',
  'lib/features/orders/present/views/widgets/orders/items/update_item_dialog.dart',
  'lib/features/orders/present/views/widgets/orders/header/export_all_btn.dart',
  'lib/features/orders/present/views/widgets/orders/header/orders_header_widget.dart',
  'lib/features/orders/present/views/widgets/orders/header/filters/custom_order_drop_down_btn_filter.dart',
  'lib/features/orders/present/views/widgets/orders/header/filters/date/date_filter_widget.dart',
];

void main() {
  test('order views do not hardcode colors', () {
    final hardcoded = RegExp(
      r'Color\(0x|(?<![A-Za-z])Colors\.(?!transparent\b)[A-Za-z]+',
    );
    final violations = <String>[];

    for (final path in themedOrderFiles) {
      final source = File(path).readAsStringSync();
      for (final match in hardcoded.allMatches(source)) {
        final line = source.substring(0, match.start).split('\n').length;
        violations.add('$path:$line ${match.group(0)}');
      }
    }

    expect(violations, isEmpty, reason: 'Hardcoded colors: $violations');
  });
}
