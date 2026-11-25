import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/extensions/theme_ext.dart';
import '../../site_text/site_text.dart';

class LandingHeroEyebrow extends StatelessWidget {
  const LandingHeroEyebrow({
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
      padding: .symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: colors.surfaceContainerHigh.withValues(alpha: 0.8),
        borderRadius: .circular(999),
        border: .all(color: colors.brandGold.withValues(alpha: 0.35)),
      ),
      child: Row(
        mainAxisSize: .min,
        spacing: 8.w,
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(shape: .circle, color: colors.brandGold),
          ),
          SiteText(
            'hero_eyebrow_brand',
            'مطعم أسماك الزفر',
            style: theme.labelMedium?.copyWith(
              color: colors.brandGold,
              fontWeight: .w700,
            ),
          ),
          SiteText(
            'hero_eyebrow_tagline',
            'طازج يوميًا',
            style: theme.bodySmall?.copyWith(color: colors.slateText),
          ),
        ],
      ),
    );
  }
}
