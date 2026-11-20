import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';

class LandingHeroTrustStrip extends StatelessWidget {
  const LandingHeroTrustStrip({
    super.key,
    required this.context,
    required this.colors,
  });

  final BuildContext context;
  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    final theme = context.textTheme;

    return Container(
      padding: .symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: colors.slateCardBg,
        borderRadius: .circular(12.r),
      ),
      child: Row(
        mainAxisSize: .min,
        children: [
          Icon(Icons.star_rounded, size: 16.r, color: colors.brandGold),
          SizedBox(width: 6.w),
          Text(
            '4.9',
            style: theme.headlineSmall?.copyWith(
              color: colors.brandGold,
              fontWeight: .w900,
            ),
          ),
          SizedBox(width: 6.w),
          Flexible(
            child: Text(
              'أكثر من 2,500 عميل سعيد',
              style: theme.bodySmall?.copyWith(color: colors.slateText),
            ),
          ),
          SizedBox(width: 10.w),
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              shape: .circle,
              color: colors.statusBadgeSchedule,
            ),
          ),
          SizedBox(width: 6.w),
          Text(
            'صيد اليوم مضمون',
            style: theme.labelSmall?.copyWith(
              color: colors.statusBadgeSchedule,
            ),
          ),
        ],
      ),
    );
  }
}
