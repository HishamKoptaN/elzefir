import 'package:flutter/material.dart';
import '../../utils/extensions/theme_ext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDividerWidget extends StatelessWidget {
  CustomDividerWidget({
    super.key,
    this.thickness,
  });

  final double? thickness;
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: context.colorScheme.outline,
      thickness: thickness ?? 2.5.sp,
      height: 2,
    );
  }
}
