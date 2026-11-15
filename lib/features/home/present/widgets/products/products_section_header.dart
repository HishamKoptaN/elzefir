import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';

class ProductsSectionHeader extends StatelessWidget {
  const ProductsSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(14.r),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: .circular(16.r),
        border: Border.all(color: context.colorScheme.slateBorder),
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.shadow.withValues(alpha: 0.04),
            blurRadius: 6.r,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Column(
            crossAxisAlignment: .start,
            mainAxisSize: .min,
            children: [
              Text(
                'أطباق مميزة والأكثر طلباً',
                style: context.textTheme.titleSmall?.copyWith(
                  fontWeight: .w800,
                  color: context.colorScheme.brandNavy,
                ),
              ),
              Gap(2.h),
              Text(
                'تحضير طازج على أصوله بالخلطات السرية',
                style: context.textTheme.bodySmall?.copyWith(
                  color: context.colorScheme.slateText,
                ),
              ),
            ],
          ),
          Container(
            padding: .symmetric(horizontal: 10.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: context.colorScheme.chefChoiceBg,
              border: .all(color: context.colorScheme.chefChoiceBorder),
              borderRadius: .circular(20.r),
            ),
            child: Text(
              'اختيارات الشيف',
              style: context.textTheme.labelSmall?.copyWith(
                fontWeight: .bold,
                color: context.colorScheme.chefChoiceText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
