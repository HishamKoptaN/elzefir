import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';
import '../../../../../core/widgets/custom_image.dart';
import '../../../../../generated/assets.gen.dart';
import 'home_header_row.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key, this.onMenu, this.onAbout, this.onContact});

  final VoidCallback? onMenu;
  final VoidCallback? onAbout;
  final VoidCallback? onContact;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    return Container(
      width: .infinity,
      decoration: BoxDecoration(
        color: colors.brandNavyDeep,
        borderRadius: .circular(20.r),
        border: Border.all(color: colors.brandGold.withValues(alpha: 0.3)),
        boxShadow: [
          BoxShadow(
            color: colors.brandNavyDeep.withValues(alpha: 0.25),
            blurRadius: 18.r,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: .circular(20.r),
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 0.18,
                child: CustomImage(
                  image: Assets.images.aboutPng.path,
                  fit: .cover,
                  borderRadius: .zero,
                ),
              ),
            ),
            Padding(
              padding: .symmetric(vertical: 16.h, horizontal: 14.w),
              child: HomeHeaderRow(
                onMenu: onMenu,
                onAbout: onAbout,
                onContact: onContact,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize {
    return Size.fromHeight(160.h);
  }
}
