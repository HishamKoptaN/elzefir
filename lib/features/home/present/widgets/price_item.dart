import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/extensions/theme_ext.dart';

class PriceItem extends StatelessWidget {
  const PriceItem({super.key, required this.name, required this.price});

  final String name;
  final String price;

  @override
  Widget build(BuildContext context) {
    final labelStyle = context.textTheme.labelSmall?.copyWith(
      color: context.colorScheme.slateText,
    );
    final priceStyle = context.textTheme.labelSmall?.copyWith(
      fontWeight: .w900,
      color: context.colorScheme.brandNavyDeep,
    );
    final currencyStyle = context.textTheme.labelSmall?.copyWith(
      fontWeight: .w700,
      color: context.colorScheme.brandGoldHover,
    );

    return Container(
      padding: .symmetric(vertical: 3.h, horizontal: 6.w),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: .circular(9999.r),
        border: .all(
          color: context.colorScheme.brandGold.withValues(alpha: 0.25),
        ),
      ),
      child: Row(
        mainAxisSize: .min,
        spacing: 4.w,
        children: [
          Text(name.trim(), style: labelStyle),
          if (price.isNotEmpty)
            Row(
              mainAxisSize: .min,
              spacing: 2.w,
              children: [
                Text(price, style: priceStyle),
                Text('ج.م', style: currencyStyle),
              ],
            ),
        ],
      ),
    );
  }
}
