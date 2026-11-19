import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/extensions/theme_ext.dart';
import '../../../../../products/domain/entities/product_entity.dart';
import '../../../../../dish_details/present/views/dish_details_view.dart';
import 'product_card_image.dart';
import 'product_card_info.dart';
import 'product_card_price_row.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    return InkWell(
      onTap: () => context.goNamed(DishDetailsView.routeName, extra: product),
      borderRadius: .circular(20.r),
      child: Container(
        padding: .all(12.r),
        decoration: BoxDecoration(
          color: colors.surface,
          borderRadius: .circular(20.r),
          border: Border.all(color: colors.brandGold.withValues(alpha: 0.25)),
          boxShadow: [
            BoxShadow(
              color: colors.brandNavyDeep.withValues(alpha: 0.08),
              blurRadius: 24.r,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: .stretch,
          children: [
            ProductCardImage(product: product),
            Gap(12.h),
            ProductCardInfo(product: product),
            Gap(10.h),
            Container(
              padding: .only(top: 10.h),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: colors.brandGold.withValues(alpha: 0.2),
                  ),
                ),
              ),
              child: ProductCardPriceRow(
                price: product.price,
                unit: product.priceUnitLabel,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
