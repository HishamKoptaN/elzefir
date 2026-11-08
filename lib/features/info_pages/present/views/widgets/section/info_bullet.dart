import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/extensions/theme_ext.dart';

class InfoBullet extends StatelessWidget {
  const InfoBullet({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .only(right: 12.w),
      child: Row(
        crossAxisAlignment: .start,
        spacing: 8.w,
        children: [
          Padding(
            padding: .only(top: 10.h),
            child: CircleAvatar(
              radius: 3.r,
              backgroundColor: context.colorScheme.secondary,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: context.textTheme.bodyLarge?.copyWith(
                color: context.colorScheme.onSurface,
                height: 1.8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
