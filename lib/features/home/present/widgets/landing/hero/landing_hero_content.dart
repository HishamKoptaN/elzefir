import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/extensions/theme_ext.dart';
import 'landing_hero_actions.dart';
import 'landing_hero_headline.dart';
import 'landing_hero_eyebrow.dart';
import 'landing_food_strip.dart';

class LandingHeroContent extends StatelessWidget {
  const LandingHeroContent({super.key, required this.hero, required this.glow});

  final AnimationController hero;
  final AnimationController glow;

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
        _HeroGlow(color: colors.brandGold, glow: glow),
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
          LandingHeroActions(context: context, colors: colors),
        ),
        _fadeSlide(_entry(0.8), const LandingFoodStrip()),
      ],
    );
  }
}

class _HeroGlow extends StatelessWidget {
  const _HeroGlow({required this.color, required this.glow});

  final Color color;
  final AnimationController glow;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 3),
      width: 220.w,
      height: 220.w,
      decoration: BoxDecoration(
        shape: .circle,
        color: color.withValues(alpha: 0.12 + (0.04 * glow.value)),
      ),
    );
  }
}
