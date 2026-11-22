import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/extensions/device_type_extension.dart';
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
            color: colors.brandSand,
            borderRadius: .circular(16.r),
            border: Border.all(color: colors.brandGold.withValues(alpha: 0.5)),
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
                      color: colors.onPrimary,
                    ),
                  ),
                  Text(
                    info.tagline,
                    maxLines: 1,
                    overflow: .ellipsis,
                    style: context.textTheme.bodySmall?.copyWith(
                      fontWeight: .w500,
                      color: colors.onPrimary.withValues(alpha: 0.75),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        if (context.isDesk) ...[
          _HeaderLink(title: 'المنتجات', onTap: onMenu),
          _HeaderLink(title: 'من نحن', onTap: onAbout),
          _HeaderLink(title: 'اتصل بنا', onTap: onContact),
        ],
        const HomeHeaderActions(),
      ],
    );
  }
}

class _HeaderLink extends StatelessWidget {
  const _HeaderLink({required this.title, this.onTap});

  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    return InkWell(
      onTap: onTap,
      borderRadius: .circular(8.r),
      child: Padding(
        padding: .symmetric(horizontal: 10.w, vertical: 8.h),
        child: Text(
          title,
          style: context.textTheme.bodyMedium?.copyWith(
            color: colors.onPrimary.withValues(alpha: 0.85),
            fontWeight: .w600,
          ),
        ),
      ),
    );
  }
}

