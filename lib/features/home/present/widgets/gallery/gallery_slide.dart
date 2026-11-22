import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';
import '../../../../../core/widgets/custom_image.dart';
import 'gallery_item.dart';

class GallerySlide extends StatelessWidget {
  const GallerySlide({super.key, required this.item});

  final GalleryItem item;

  @override
  Widget build(BuildContext context) {
    final overlayColor = context.colorScheme.brandNavyDeep;

    return ClipRRect(
      borderRadius: .circular(20.r),
      child: Stack(
        fit: .expand,
        children: [
          CustomImage(
            image: item.image,
            fit: .cover,
            borderRadius: .all(Radius.zero),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: .topCenter,
                end: .bottomCenter,
                colors: [
                  overlayColor.withValues(alpha: 0),
                  overlayColor.withValues(alpha: 0.85),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 14.h,
            left: 14.w,
            right: 14.w,
            child: Column(
              spacing: 4.h,
              children: [
                Text(
                  item.title,
                  textAlign: .center,
                  style: context.textTheme.titleLarge?.copyWith(
                    color: context.colorScheme.onPrimary,
                    fontWeight: .w800,
                  ),
                ),
                Text(
                  item.caption,
                  textAlign: .center,
                  maxLines: 2,
                  style: context.textTheme.bodySmall?.copyWith(
                    color: context.colorScheme.onPrimary.withValues(
                      alpha: 0.85,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
