import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';
import '../site_text/site_text.dart';

/// خلفية الكارت المتدرجة كما في تصميم Stitch.
class TeaserBackground extends StatelessWidget {
  const TeaserBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: .centerRight,
            end: .centerLeft,
            colors: [
              colors.brandNavy,
              colors.brandNavy.withValues(alpha: 0.9),
              colors.brandNavyDeep,
            ],
          ),
          border: Border.all(color: colors.brandGold.withValues(alpha: 0.35)),
        ),
      ),
    );
  }
}

/// مربع أيقونة حقيبة التسوّق.
class TeaserIconBox extends StatelessWidget {
  const TeaserIconBox({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    return Container(
      width: 52.r,
      height: 52.r,
      decoration: BoxDecoration(
        color: colors.onPrimary.withValues(alpha: 0.12),
        borderRadius: .circular(16.r),
        border: Border.all(color: colors.brandGold.withValues(alpha: 0.45)),
      ),
      child: FaIcon(
        FontAwesomeIcons.bagShopping,
        color: colors.brandGold,
        size: 22.r,
      ),
    );
  }
}

/// شارة «قريباً» الذهبية كما في تصميم Stitch.
class TeaserBadge extends StatelessWidget {
  const TeaserBadge({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    return Container(
      padding: .symmetric(horizontal: 10.w, vertical: 3.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colors.brandGold, colors.brandGoldHover],
        ),
        borderRadius: .circular(999),
      ),
      child: SiteText(
        'orders_teaser_badge',
        'قريباً',
        style: context.textTheme.labelSmall?.copyWith(
          color: colors.brandNavyDeep,
          fontWeight: .w800,
        ),
      ),
    );
  }
}

