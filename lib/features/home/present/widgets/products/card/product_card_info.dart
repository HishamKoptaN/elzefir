import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/utils/extensions/theme_ext.dart';
import '../../../../../products/domain/entities/product_entity.dart';
import 'product_card_price_row.dart';

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
            Row(
              crossAxisAlignment: .start,
              children: [
                Expanded(
                  child: Text(
                    titleText,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: .w800,
                      fontSize: 15.sp,
                      color: context.colorScheme.brandNavy,
                    ),
                  ),
                ),
                Gap(4.w),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.favorite_border,
                    size: 18.sp,
                    color: context.colorScheme.slateText,
                  ),
                ),
              ],
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
        Container(
          padding: EdgeInsets.only(top: 8.h),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: context.colorScheme.slateBorder,
                width: 1,
              ),
            ),
          ),
          child: ProductCardPriceRow(product: product),
        ),
      ],
    );
  }
}
