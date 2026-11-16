import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/utils/extensions/theme_ext.dart';
import '../../../../../products/domain/entities/product_entity.dart';

class ProductCardPriceRow extends StatelessWidget {
  const ProductCardPriceRow({super.key, required this.product});

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      crossAxisAlignment: .center,
      children: [
        Row(
          mainAxisSize: .min,
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
              '/ وجبة',
              style: context.textTheme.labelSmall?.copyWith(
                fontSize: 9.sp,
                color: context.colorScheme.slateText,
              ),
            ),
          ],
        ),
        ElevatedButton.icon(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: context.colorScheme.brandCoral,
            foregroundColor: Colors.white,
            padding: .symmetric(horizontal: 12.w, vertical: 6.h),
            shape: RoundedRectangleBorder(
              borderRadius: .circular(10.r),
            ),
            elevation: 2,
            shadowColor: context.colorScheme.brandCoral.withValues(alpha: 0.25),
          ),
          icon: Icon(Icons.add_shopping_cart, size: 14.sp),
          label: Text(
            'إضافة',
            style: TextStyle(
              fontWeight: .w700,
              fontSize: 11.sp,
            ),
          ),
        ),
      ],
    );
  }
}
