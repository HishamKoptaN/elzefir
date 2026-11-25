import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/extensions/theme_ext.dart';
import '../../../../../../core/widgets/custom_image.dart';
import '../../../../../../generated/assets.gen.dart';
import '../../restaurant_info_builder.dart';

/// Circular hero image with a softly pulsing gold glow.
class LandingHeroImage extends StatelessWidget {
  const LandingHeroImage({super.key, required this.glow});

  final AnimationController glow;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;

    return RestaurantInfoBuilder(
      builder: (context, info) {
        return AnimatedBuilder(
          animation: glow,
          builder: (context, _) {
            final glowStrength = 0.35 + (0.25 * glow.value);
            return Container(
              width: 220.w,
              height: 220.w,
              decoration: BoxDecoration(
                shape: .circle,
                border: Border.all(
                  color: colors.brandGold.withValues(alpha: glowStrength),
                  width: 2.w,
                ),
                boxShadow: [
                  BoxShadow(
                    color: colors.brandGold.withValues(
                      alpha: glowStrength * 0.4,
                    ),
                    blurRadius: 24.r,
                    spreadRadius: 4.r,
                  ),
                ],
              ),
              clipBehavior: .antiAlias,
              child: ClipOval(
                child: CustomImage(
                  image: info.text(
                    'hero_image_url',
                    Assets.images.landingFoodSeabass.path,
                  ),
                  fit: .cover,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
