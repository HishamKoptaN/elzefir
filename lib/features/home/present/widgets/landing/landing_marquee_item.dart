import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';

class LandingMarqueeItem extends StatelessWidget {
  const LandingMarqueeItem({
    super.key,
    required this.name,
    required this.width,
    required this.gap,
  });

  final String name;
  final double width;
  final double gap;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    return Row(
      mainAxisSize: .min,
      children: [
        SizedBox(
          width: width,
          child: Row(
            mainAxisSize: .min,
            children: [
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  shape: .circle,
                  color: colors.brandGold,
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: Text(
                  name,
                  maxLines: 1,
                  overflow: .ellipsis,
                  style: context.textTheme.labelMedium?.copyWith(
                    color: colors.brandGold,
                    fontWeight: .w700,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: gap),
      ],
    );
  }
}
