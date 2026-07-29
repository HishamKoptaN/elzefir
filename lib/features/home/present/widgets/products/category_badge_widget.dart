import 'package:alzefr/core/utils/extensions/theme_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryBadgeWidget extends StatelessWidget {
  final String name;
  const CategoryBadgeWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 12.w),
      decoration: BoxDecoration(
        color: context.colorScheme.secondary,
        borderRadius: BorderRadius.circular(8),
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
