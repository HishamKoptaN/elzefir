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
    this.compact = false,
  });

  final SectionNavItem item;
  final bool active;
  final VoidCallback onTap;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final color = active ? colors.brandGold : colors.onPrimary;
    final button = InkWell(
      onTap: onTap,
      borderRadius: .circular(12.r),
      child: Padding(
        padding:
            compact
                ? .symmetric(vertical: 11.h)
                : .symmetric(horizontal: 2.w, vertical: 6.h),
        child: Column(
          mainAxisSize: .min,
          children: [
            FaIcon(item.icon, size: (compact ? 19 : 17).r, color: color),
            if (!compact) ...[
              SizedBox(height: 2.h),
              Text(
                item.label,
                maxLines: 1,
                overflow: .ellipsis,
                textAlign: .center,
                style: context.textTheme.labelSmall?.copyWith(
                  color: color,
                  fontSize: 9.sp,
                ),
              ),
            ],
          ],
        ),
      ),
    );
    return Semantics(label: item.label, child: button);
  }
}
