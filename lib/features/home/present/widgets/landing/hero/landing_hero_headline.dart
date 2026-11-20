import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/extensions/theme_ext.dart';

class LandingHeroHeadline extends StatelessWidget {
  const LandingHeroHeadline({
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
      children: [
        Text(
          'طعم البحر',
          style: theme.displaySmall?.copyWith(
            color: colors.onPrimary,
            fontWeight: .w400,
            height: 1.1,
          ),
        ),
        Text(
          'الأصيل',
          style: theme.displaySmall?.copyWith(
            color: colors.brandGold,
            fontWeight: .w600,
            height: 1.1,
          ),
        ),
        Text(
          'أجود الأسماك من البحر إلى طاولة المطعم',
          style: theme.headlineSmall?.copyWith(
            color: colors.brandGold,
            fontWeight: .w300,
            height: 1.3,
          ),
        ),
      ],
    );
  }
}
