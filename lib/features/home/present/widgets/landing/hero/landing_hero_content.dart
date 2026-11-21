import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/extensions/theme_ext.dart';
import 'landing_hero_actions.dart';
import 'landing_hero_headline.dart';
import 'landing_hero_eyebrow.dart';
import 'landing_hero_image.dart';
import 'landing_food_strip.dart';

class LandingHeroContent extends StatelessWidget {
  const LandingHeroContent({
    super.key,
    required this.hero,
    required this.glow,
    required this.onExplore,
  });

  final AnimationController hero;
  final AnimationController glow;
  final VoidCallback onExplore;

  Animation<Offset> _entry(double begin) {
    return hero.drive(Tween<Offset>(begin: Offset(0, begin), end: Offset.zero));
  }

  Widget _fadeSlide(Animation<Offset> animation, Widget child) {
    return FadeTransition(
      opacity: hero.drive(Tween<double>(begin: 0, end: 1)),
      child: SlideTransition(position: animation, child: child),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;

    return Column(
      crossAxisAlignment: .start,
      spacing: 12.h,
      children: [
        LandingHeroImage(glow: glow),
        _fadeSlide(
          _entry(0.2),
          LandingHeroEyebrow(context: context, colors: colors),
        ),
        _fadeSlide(
          _entry(0.35),
          LandingHeroHeadline(context: context, colors: colors),
        ),
        _fadeSlide(
          _entry(0.65),
          LandingHeroActions(
            context: context,
            colors: colors,
            onExplore: onExplore,
          ),
        ),
        _fadeSlide(_entry(0.8), const LandingFoodStrip()),
      ],
    );
  }
}
