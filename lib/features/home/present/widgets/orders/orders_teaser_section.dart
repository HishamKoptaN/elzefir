import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';
import '../site_text/site_text.dart';

/// كارت بسيط يعلن أن قسم الطلبات سيُطلق قريباً.
/// كل نصوصه قابلة للتحرير من `settings/general` في الداشبورد.
class OrdersTeaserSection extends StatelessWidget {
  const OrdersTeaserSection({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    return Container(
      padding: .symmetric(horizontal: 14.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: colors.surfaceContainerLow,
        borderRadius: .circular(16.r),
        border: Border.all(color: colors.outline),
      ),
      child: Row(
        children: [
          Icon(Icons.shopping_bag_outlined, color: colors.primary, size: 22.r),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              spacing: 2.h,
              children: [
                SiteText(
                  'orders_teaser_title',
                  'الطلبات',
                  style: context.textTheme.titleMedium?.copyWith(
                    color: colors.onSurface,
                    fontWeight: .w800,
                  ),
                ),
                SiteText(
                  'orders_teaser_subtitle',
                  'نجهّز لك تجربة طلب أسهل وأسرع، كونوا معنا قريباً',
                  style: context.textTheme.bodySmall?.copyWith(
                    color: colors.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 8.w),
          Container(
            padding: .symmetric(horizontal: 10.w, vertical: 5.h),
            decoration: BoxDecoration(
              color: colors.primary.withValues(alpha: 0.12),
              borderRadius: .circular(999),
            ),
            child: SiteText(
              'orders_teaser_badge',
              'قريباً',
              style: context.textTheme.labelSmall?.copyWith(
                color: colors.primary,
                fontWeight: .w800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
