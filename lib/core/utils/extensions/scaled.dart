import 'package:flutter/material.dart';

import '../../../features/orders/present/views/orders_widget.dart';

extension ScaleExtension on double {
  double scaled(BuildContext context) {
    final scale = ScaleProvider.of(context)?.scale ?? 1.0;
    return this * scale;
  }
}
