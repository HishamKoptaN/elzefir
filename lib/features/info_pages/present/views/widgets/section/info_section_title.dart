import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/extensions/theme_ext.dart';

class InfoSectionTitle extends StatelessWidget {
  const InfoSectionTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .only(top: 8.h),
      child: Row(
        spacing: 8.w,
        children: [
          Container(
            width: 6.w,
            height: 22.h,
            decoration: BoxDecoration(
              color: context.colorScheme.secondary,
              borderRadius: .circular(4.r),
            ),
          ),
          Expanded(
            child: Text(
              title,
              style: context.textTheme.titleLarge?.copyWith(
                color: context.colorScheme.primary,
                fontWeight: .w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
