import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';
import '../../../../../core/widgets/custom_image.dart';
import '../../../../../generated/assets.gen.dart';
import '../restaurant_info_builder.dart';
import 'home_header_actions.dart';

class HomeHeaderRow extends StatelessWidget {
  const HomeHeaderRow({super.key, this.onMenu, this.onAbout, this.onContact});

  final VoidCallback? onMenu;
  final VoidCallback? onAbout;
  final VoidCallback? onContact;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    return Row(
      children: [
        Container(
          height: 56.r,
          width: 56.r,
          padding: .all(6.r),
          decoration: BoxDecoration(
            borderRadius: .circular(16.r),
            gradient: LinearGradient(
              begin: .topLeft,
              end: .bottomRight,
              colors: [colors.brandGold, colors.brandGoldHover],
            ),
            boxShadow: [
              BoxShadow(
                color: colors.brandGold.withValues(alpha: 0.25),
                blurRadius: 12.r,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: CustomImage(image: Assets.logos.solidLogo.path, fit: .contain),
        ),
        Gap(10.w),
        Expanded(
          child: RestaurantInfoBuilder(
            builder: (context, info) {
              return Column(
                crossAxisAlignment: .start,
                mainAxisSize: .min,
                children: [
                  Text(
                    info.name,
                    maxLines: 1,
                    overflow: .ellipsis,
                    style: context.textTheme.headlineSmall?.copyWith(
                      fontWeight: .w900,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    info.tagline,
                    maxLines: 1,
                    overflow: .ellipsis,
                    style: context.textTheme.bodySmall?.copyWith(
                      fontWeight: .w500,
                      color: Colors.white70,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        const HomeHeaderActions(),
      ],
    );
  }
}
