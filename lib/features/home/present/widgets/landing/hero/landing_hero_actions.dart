import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/extensions/theme_ext.dart';
import '../landing_hero_trust_strip.dart';

class LandingHeroActions extends StatelessWidget {
  const LandingHeroActions({
    super.key,
    required this.context,
    required this.colors,
  });

  final BuildContext context;
  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    final theme = context.textTheme;

    return Column(
      crossAxisAlignment: .start,
      spacing: 10.h,
      children: [
        Row(
          children: [
            Expanded(
              child: FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  backgroundColor: colors.brandGold,
                  foregroundColor: colors.brandNavyDeep,
                  minimumSize: Size(0, 52.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: .circular(9999.r),
                  ),
                  textStyle: theme.labelLarge?.copyWith(fontWeight: .w800),
                ),
                child: const Text('اطلب الآن'),
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  foregroundColor: context.colorScheme.onSurface,
                  side: BorderSide(
                    color: context.colorScheme.onSurface.withValues(alpha: 0.6),
                  ),
                  minimumSize: Size(0, 52.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: .circular(9999.r),
                  ),
                  textStyle: theme.labelLarge?.copyWith(fontWeight: .w700),
                ),
                child: Row(
                  mainAxisAlignment: .center,
                  children: [
                    Icon(
                      Icons.restaurant_menu_rounded,
                      size: 18.r,
                      color: colors.brandGold,
                    ),
                    SizedBox(width: 6.w),
                    const Text('استكشف القائمة'),
                  ],
                ),
              ),
            ),
          ],
        ),
        LandingHeroTrustStrip(context: context, colors: colors),
      ],
    );
  }
}
