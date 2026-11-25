import 'package:flutter/material.dart';

import '../../../../../../core/utils/extensions/theme_ext.dart';
import '../../site_text/site_text.dart';

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
        SiteText(
          'hero_headline_1',
          'طعم البحر',
          style: theme.displaySmall?.copyWith(
            color: colors.onPrimary,
            fontWeight: .w400,
            height: 1.1,
          ),
        ),
        SiteText(
          'hero_headline_2',
          'الأصيل',
          style: theme.displaySmall?.copyWith(
            color: colors.brandGold,
            fontWeight: .w600,
            height: 1.1,
          ),
        ),
        SiteText(
          'hero_headline_3',
          'أجود ما في البحر',
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
