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
        if (product.cookingMethods.isNotEmpty) ...[
          Gap(8.h),
          Container(
            padding: .only(top: 8.h),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: context.colorScheme.slateBorder,
                  width: 1,
                ),
              ),
            ),
            child: Wrap(
              spacing: 6.w,
              runSpacing: 4.h,
              children: product.cookingMethods
                  .map((method) => _CookingMethodChip(method: method))
                  .toList(),
            ),
          ),
        ],
      ],
    );
  }
}

class _CookingMethodChip extends StatelessWidget {
  const _CookingMethodChip({required this.method});

  final CookingMethodEntity method;

  @override
  Widget build(BuildContext context) {
    final isFree = method.price.isEmpty ||
        method.price == '0' ||
        method.price == 'مجاناً';

    return Container(
      padding: .symmetric(horizontal: 8.w, vertical: 3.h),
      decoration: BoxDecoration(
        color: isFree ? const Color(0xFFECFDF5) : context.colorScheme.slateCardBg,
        borderRadius: .circular(20.r),
        border: Border.all(
          color: isFree ? const Color(0xFFD1FAE5) : context.colorScheme.slateBorder,
        ),
      ),
      child: Row(
        mainAxisSize: .min,
        children: [
          Text(
            method.name,
            style: context.textTheme.labelSmall?.copyWith(
              fontSize: 10.sp,
              fontWeight: .w600,
              color: isFree ? const Color(0xFF065F46) : context.colorScheme.brandNavy,
            ),
          ),
          Gap(4.w),
          Text(
            isFree ? 'مجاناً' : '+${method.price} ج.م',
            style: context.textTheme.labelSmall?.copyWith(
              fontSize: 9.sp,
              fontWeight: .w700,
              color: isFree ? const Color(0xFF047857) : context.colorScheme.brandCoral,
            ),
          ),
        ],
      ),
    );
  }
}
