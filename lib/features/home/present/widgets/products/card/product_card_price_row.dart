import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      children: [
        Row(
          mainAxisSize: .min,
          crossAxisAlignment: .baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              product.price,
              style: context.textTheme.titleMedium?.copyWith(
                fontWeight: .w800,
                fontSize: 14.sp,
                color: context.colorScheme.brandNavy,
              ),
            ),
            Gap(2.w),
            Text(
              'ج.م',
              style: context.textTheme.bodySmall?.copyWith(
                fontWeight: .w600,
                fontSize: 10.sp,
                color: context.colorScheme.slateText,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
