import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';
import '../site_text/site_text.dart';
import 'orders_teaser_glow.dart';
import 'orders_teaser_parts.dart';

/// كارت إعلاني صغير يعلن أن قسم الطلبات سيُطلق قريباً، من تصميم Stitch.
/// الألوان والخطوط من الثيم، والنصوص من `settings/general`.
class OrdersTeaserSection extends StatelessWidget {
  const OrdersTeaserSection({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: .circular(24.r),
        boxShadow: [
          BoxShadow(
            color: colors.brandGold.withValues(alpha: 0.28),
            blurRadius: 16.r,
            spreadRadius: 2.r,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: .circular(20.r),
        child: Stack(
          children: [
            const TeaserBackground(),
            Positioned(
              top: -32.r,
              right: -24.r,
              child: TeaserGlow(
                color: colors.brandGold.withValues(alpha: 0.12),
              ),
            ),
            Positioned(
              bottom: -28.r,
              left: -20.r,
              child: TeaserGlow(
                color: colors.onSurface.withValues(alpha: 0.06),
              ),
            ),
            Padding(
              padding: .symmetric(horizontal: 16.w, vertical: 14.h),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: .start,
                      spacing: 4.h,
                      children: [
                        Wrap(
                          crossAxisAlignment: .center,
                          spacing: 8.w,
                          runSpacing: 4.h,
                          children: [
                            SiteText(
                              'orders_teaser_title',
                              'الطلبات',
                              style: context.textTheme.titleLarge?.copyWith(
                                color: colors.onPrimary,
                                fontWeight: .w900,
                              ),
                            ),
                            const TeaserBadge(),
                          ],
                        ),
                        SiteText(
                          'orders_teaser_subtitle',
                          'نجهّز لك تجربة طلب أسهل وأسرع، كونوا معنا قريباً',
                          style: context.textTheme.bodySmall?.copyWith(
                            color: colors.onPrimary.withValues(alpha: 0.8),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 12.w),
                  const TeaserIconBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
