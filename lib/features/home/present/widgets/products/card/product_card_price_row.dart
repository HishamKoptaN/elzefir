import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/utils/extensions/theme_ext.dart';

class ProductCardPriceRow extends StatelessWidget {
  const ProductCardPriceRow({
    super.key,
    required this.price,
    required this.unit,
  });

  final String price;
  final String unit;

  static bool _isFree(String value) =>
      value == '0' || value == '٠' || value.contains('مجان');

  @override
  Widget build(BuildContext context) {
    // كل طريقة تسوية بقت منتج مستقل، فالكارت بيعرض سعر واحد بس.
    final value = price.trim();
    final hasPrice = value.isNotEmpty;
    final isFree = hasPrice && _isFree(value);
    final colors = context.colorScheme;
    final textTheme = context.textTheme;

    return Row(
      children: [
        Expanded(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Row(
              crossAxisAlignment: .baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                if (hasPrice)
                  Text(
                    isFree ? 'مجاناً' : value,
                    style: textTheme.titleMedium?.copyWith(
                      fontWeight: .w900,
                      fontSize: isFree ? 14.sp : 18.sp,
                      color: colors.brandNavy,
                    ),
                  ),
                if (hasPrice && !isFree) ...[
                  Gap(2.w),
                  Text(
                    'ج.م',
                    style: textTheme.bodySmall?.copyWith(
                      fontWeight: .w700,
                      fontSize: 12.sp,
                      color: colors.brandNavy,
                    ),
                  ),
                  Gap(4.w),
                  Text(
                    '/ $unit',
                    style: textTheme.labelSmall?.copyWith(
                      fontSize: 10.sp,
                      color: colors.slateText,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }
}
