import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';

export 'card/product_card.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({super.key, required this.price});

  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .end,
      crossAxisAlignment: .baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(
          price,
          style: context.textTheme.titleLarge?.copyWith(
            fontWeight: .w800,
            color: context.colorScheme.brandNavy,
          ),
        ),
        Gap(4.w),
        Text(
          'ج.م',
          style: context.textTheme.bodyLarge?.copyWith(
            fontWeight: .w600,
            color: context.colorScheme.slateText,
          ),
        ),
      ],
    );
  }
}
