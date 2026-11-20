import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/extensions/theme_ext.dart';
import '../../../../../../core/widgets/custom_image.dart';

class LandingFoodCard extends StatelessWidget {
  const LandingFoodCard({super.key, required this.item, required this.index});

  final (String, String, String) item;
  final int index;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final theme = context.textTheme;

    return Padding(
      padding: .symmetric(horizontal: 4.w),
      child: ClipRRect(
        borderRadius: .circular(16.r),
        child: Stack(
          fit: .expand,
          children: [
            CustomImage(
              image: item.$1,
              fit: .cover,
              borderRadius: .all(Radius.zero),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: .topCenter,
                  end: .bottomCenter,
                  colors: [
                    colors.brandNavyDeep.withValues(alpha: 0),
                    colors.brandNavyDeep.withValues(alpha: 0.9),
                  ],
                ),
              ),
            ),
            if (index == 0)
              Positioned(
                top: 10.h,
                right: 10.w,
                child: Container(
                  padding: .symmetric(horizontal: 8.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: colors.brandCoral,
                    borderRadius: .circular(999),
                  ),
                  child: Text(
                    'الأكثر طلباً',
                    style: theme.labelSmall?.copyWith(
                      color: colors.onSurface,
                      fontWeight: .w700,
                    ),
                  ),
                ),
              ),
            Positioned(
              bottom: 10.h,
              right: 10.w,
              left: 10.w,
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      item.$2,
                      maxLines: 1,
                      overflow: .ellipsis,
                      style: theme.titleMedium?.copyWith(
                        color: colors.onPrimary,
                        fontWeight: .w800,
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    item.$3,
                    style: theme.titleMedium?.copyWith(
                      color: colors.brandGold,
                      fontWeight: .w900,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
