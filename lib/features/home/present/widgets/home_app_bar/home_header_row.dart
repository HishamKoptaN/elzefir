import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';
import '../../../../../core/widgets/custom_image.dart';
import '../../../../../generated/assets.gen.dart';
import 'home_header_actions.dart';

class HomeHeaderRow extends StatelessWidget {
  const HomeHeaderRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: context.colorScheme.slateBorder,
            width: 1.r,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 68.r,
            width: 68.r,
            padding: .all(4.r),
            decoration: BoxDecoration(
              shape: .circle,
              color: context.colorScheme.surface,
              border: Border.all(
                color: context.colorScheme.brandNavy.withValues(alpha: 0.2),
                width: 2.r,
              ),
              boxShadow: [
                BoxShadow(
                  color: context.colorScheme.shadow.withValues(alpha: 0.05),
                  blurRadius: 2.r,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: CustomImage(
              image: Assets.logos.solidLogo.path,
              fit: .contain,
            ),
          ),
          Gap(4.w),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              mainAxisSize: .min,
              children: [
                Text(
                  'أسماك الزفر',
                  style: context.textTheme.headlineSmall?.copyWith(
                    fontWeight: .bold,
                    color: context.colorScheme.brandNavy,
                  ),
                ),
                Text(
                  'السمك على أصوله • طازج يومياً',
                  style: context.textTheme.bodySmall?.copyWith(
                    fontWeight: .w500,
                    color: context.colorScheme.slateText,
                  ),
                ),
              ],
            ),
          ),
          const HomeHeaderActions(),
        ],
      ),
    );
  }
}
