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
      children: [
        Text(
          titleText,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: context.textTheme.titleSmall?.copyWith(
            fontWeight: .w800,
            fontSize: 14.sp,
            color: context.colorScheme.onSurface,
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
            ),
          ),
        ],
      ],
    );
  }
}

