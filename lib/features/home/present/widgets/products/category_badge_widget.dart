import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';

class CategoryBadgeWidget extends StatelessWidget {
  final String name;
  const CategoryBadgeWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: context.colorScheme.secondary,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Text(
        name,
        style: context.textTheme.titleSmall?.copyWith(
          color: context.colorScheme.tertiary,
        ),
      ),
    );
  }
}
