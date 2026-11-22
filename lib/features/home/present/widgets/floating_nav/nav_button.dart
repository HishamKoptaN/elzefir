import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';
import 'section_nav_item.dart';

class NavButton extends StatelessWidget {
  const NavButton({
    super.key,
    required this.item,
    required this.active,
    required this.onTap,
  });

  final SectionNavItem item;
  final bool active;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final color = active ? colors.brandGold : colors.onPrimary;
    return InkWell(
      onTap: onTap,
      borderRadius: .circular(24.r),
      child: Padding(
        padding: .symmetric(horizontal: 10.w, vertical: 6.h),
        child: Column(
          mainAxisSize: .min,
          children: [
            FaIcon(item.icon, size: 18.r, color: color),
            SizedBox(height: 2.h),
            Text(
              item.label,
              style: context.textTheme.labelSmall?.copyWith(color: color),
            ),
          ],
        ),
      ),
    );
  }
}
