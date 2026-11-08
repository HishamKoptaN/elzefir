import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';

class InfoBadge extends StatelessWidget {
  const InfoBadge({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: context.colorScheme.primaryContainer,
        borderRadius: .circular(20.r),
      ),
      child: Text(
        label,
        style: context.textTheme.labelMedium?.copyWith(
          color: context.colorScheme.onPrimaryContainer,
          fontWeight: .w700,
        ),
      ),
    );
  }
}
