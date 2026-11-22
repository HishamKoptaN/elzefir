import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';
import 'hero/landing_hero_content.dart';

class LandingHeroSection extends StatefulWidget {
  const LandingHeroSection({super.key, this.onExplore});

  final VoidCallback? onExplore;

  @override
  State<LandingHeroSection> createState() => _LandingHeroSectionState();
}

class _LandingHeroSectionState extends State<LandingHeroSection>
    with SingleTickerProviderStateMixin {
  static const _heroDuration = Duration(milliseconds: 900);
  static const _glowDuration = Duration(seconds: 3);

  late final AnimationController _hero;
  late final AnimationController _glow;

  @override
  void initState() {
    super.initState();
    _hero = AnimationController(vsync: this, duration: _heroDuration)
      ..forward();
    _glow = AnimationController(vsync: this, duration: _glowDuration)
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    _glow.dispose();
    _hero.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;

    return Container(
      width: .infinity,
      padding: .all(16.r),
      decoration: BoxDecoration(
        color: colors.brandNavyDeep,
        borderRadius: .circular(20.r),
      ),
      child: LandingHeroContent(
        hero: _hero,
        glow: _glow,
        onExplore: widget.onExplore ?? () {},
      ),
    );
  }
}
