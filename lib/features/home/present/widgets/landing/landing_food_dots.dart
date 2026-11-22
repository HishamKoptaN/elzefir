import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';

class LandingFoodDots extends StatelessWidget {
  const LandingFoodDots({
    super.key,
    required this.count,
    required this.activeIndex,
  });

  final int count;
  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;

    return Row(
      mainAxisAlignment: .center,
      spacing: 6.w,
      children: List.generate(count, (index) {
        final active = index == activeIndex;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: active ? 18.w : 6.w,
          height: 6.h,
          decoration: BoxDecoration(
            color: active ? colors.brandGold : colors.slateBorder,
            borderRadius: .circular(999.r),
          ),
        );
      }),
    );
  }
}
