import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/utils/extensions/theme_ext.dart';
import '../../../../../products/domain/entities/product_entity.dart';

class ProductCardInfo extends StatelessWidget {
  const ProductCardInfo({super.key, required this.product});

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    final titleText = product.name.isNotEmpty ? product.name : product.title;

    return Column(
      crossAxisAlignment: .start,
      mainAxisSize: .min,
      mainAxisAlignment: .spaceBetween,
      children: [
        Column(
          crossAxisAlignment: .start,
          mainAxisSize: .min,
          children: [
            Text(
              titleText,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: .w800,
                fontSize: 15.sp,
                color: context.colorScheme.brandNavy,
              ),
            ),
            if (product.description.isNotEmpty) ...[
              Gap(4.h),
              Text(
                product.description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.bodySmall?.copyWith(
                  fontSize: 11.sp,
                  color: context.colorScheme.slateText,
                  height: 1.4,
                ),
              ),
            ],
          ],
        ),
        Gap(8.h),
        // Price per kg
        Row(
          crossAxisAlignment: .baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              product.price,
              style: context.textTheme.titleMedium?.copyWith(
                fontWeight: .w900,
                fontSize: 18.sp,
                color: context.colorScheme.brandNavy,
              ),
            ),
            Gap(2.w),
            Text(
              'ج.م',
              style: context.textTheme.bodySmall?.copyWith(
                fontWeight: .w700,
                fontSize: 11.sp,
                color: context.colorScheme.brandNavy,
              ),
            ),
            Gap(4.w),
            Text(
              '/ 1 كجم',
              style: context.textTheme.labelSmall?.copyWith(
                fontSize: 9.sp,
                color: context.colorScheme.slateText,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
