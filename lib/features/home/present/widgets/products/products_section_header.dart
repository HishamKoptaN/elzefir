import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';
import '../site_text/site_text.dart';

class ProductsSectionHeader extends StatelessWidget {
  const ProductsSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    return Container(
      padding: .symmetric(vertical: 12.h, horizontal: 14.w),
      decoration: BoxDecoration(
        color: colors.brandSand,
        borderRadius: .circular(16.r),
        border: Border.all(color: colors.brandGold.withValues(alpha: 0.35)),
      ),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              mainAxisSize: .min,
              children: [
                Row(
                  mainAxisSize: .min,
                  spacing: 6.w,
                  children: [
                    Icon(
                      Icons.restaurant_menu_rounded,
                      size: 18.r,
                      color: colors.brandGoldHover,
                    ),
                    Flexible(
                      child: SiteText(
                        'featured_title',
                        'أطباق مميزة والأكثر طلباً',
                        style: context.textTheme.titleMedium?.copyWith(
                          fontWeight: .w900,
                          color: colors.brandNavyDeep,
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(2.h),
                SiteText(
                  'featured_subtitle',
                  'تحضير طازج على أصوله بالخلطات السرية',
                  style: context.textTheme.bodySmall?.copyWith(
                    color: colors.slateText,
                  ),
                ),
              ],
            ),
          ),
          Gap(8.w),
          Container(
            padding: .symmetric(vertical: 5.h, horizontal: 10.w),
            decoration: BoxDecoration(
              color: colors.brandGold,
              borderRadius: .circular(999),
            ),
            child: SiteText(
              'chef_badge',
              'اختيارات الشيف',
              style: context.textTheme.labelSmall?.copyWith(
                fontWeight: .w800,
                color: colors.brandNavyDeep,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
