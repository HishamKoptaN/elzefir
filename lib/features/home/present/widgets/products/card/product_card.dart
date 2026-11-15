import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/utils/extensions/theme_ext.dart';
import '../../../../../products/domain/entities/product_entity.dart';
import 'product_card_image.dart';
import 'product_card_info.dart';
import 'product_card_price_row.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(14.r),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: .circular(24.r),
        border: Border.all(color: context.colorScheme.slateBorder),
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.shadow.withValues(alpha: 0.04),
            blurRadius: 6.r,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: .center,
        children: [
          ProductCardImage(product: product),
          Gap(14.w),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              mainAxisAlignment: .spaceBetween,
              children: [
                ProductCardInfo(product: product),
                Gap(10.h),
                ProductCardPriceRow(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

