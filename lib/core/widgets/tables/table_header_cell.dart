import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../features/orders/present/views/orders_widget.dart';
import '../../utils/extensions/scaled.dart';

class TableHeaderCell extends StatelessWidget {
  const TableHeaderCell({
    super.key,
    required this.text,
    this.flex = 1,
    this.fontSize = 18,
    this.fontWeight = FontWeight.w700,
    this.color = const Color(0xFF6B7088),
  });
  final String text;
  final int flex;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: .center,
      style: TextStyle(
        fontSize: fontSize.sp.scaled(context),
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
