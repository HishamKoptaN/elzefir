import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../utils/extensions/responsive_icon_extension .dart';
import '../../utils/extensions/theme_ext.dart';

class DialogHeader extends StatelessWidget {
  final String title;
  final IconData? icon;
  final bool showExitIcon;
  const DialogHeader({
    super.key,
    required this.title,
    this.icon,
    this.showExitIcon = true,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 18.h),
      decoration: BoxDecoration(
        color: context.colorScheme.primary,
        border: Border(
          bottom: BorderSide(
            color: context.colorScheme.shadow.withValues(alpha: 0.3),
            width: 1.h,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon),
          Gap(10.w),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20.sp,
              color: context.colorScheme.onPrimary,
            ),
          ),
          const Spacer(),
          if (showExitIcon)
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                decoration: BoxDecoration(
                  color: context.colorScheme.brandNavyDeep,
                ),
                child: Icon(
                  Icons.close,
                  size: 20.iconRes,
                  color: context.colorScheme.onPrimary,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
