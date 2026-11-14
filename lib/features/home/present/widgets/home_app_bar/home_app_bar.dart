import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';
import 'home_header_row.dart';
import 'home_status_badge.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
    this.onMenu,
    this.onAbout,
    this.onContact,
  });

  final VoidCallback? onMenu;
  final VoidCallback? onAbout;
  final VoidCallback? onContact;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: .infinity,
      padding: .all(20.r),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: .circular(24.r),
        border: Border.all(color: context.colorScheme.slateBorder),
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.shadow.withValues(alpha: 0.04),
            blurRadius: 6.r,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: .min,
        crossAxisAlignment: .stretch,
        children: [
          const HomeHeaderRow(),
          Gap(16.h),
          const HomeStatusBadge(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize {
    return Size.fromHeight(160.h);
  }
}
