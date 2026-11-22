import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/extensions/device_type_extension.dart';
import '../../../../../core/utils/extensions/theme_ext.dart';
import 'nav_button.dart';
import 'section_nav_item.dart';

class FloatingSectionNav extends StatefulWidget {
  const FloatingSectionNav({
    super.key,
    required this.items,
    required this.onSelected,
  });

  final List<SectionNavItem> items;
  final ValueChanged<GlobalKey> onSelected;

  @override
  State<FloatingSectionNav> createState() {
    return _FloatingSectionNavState();
  }
}

class _FloatingSectionNavState extends State<FloatingSectionNav> {
  int _active = 0;

  @override
  Widget build(BuildContext context) {
    final isDesk = context.isDesk;
    final buttons = [
      for (var i = 0; i < widget.items.length; i++)
        NavButton(
          item: widget.items[i],
          active: i == _active,
          onTap: () {
            setState(() {
              _active = i;
            });
            widget.onSelected(widget.items[i].key);
          },
        ),
    ];
    final rail = Container(
      padding: .all(6.r),
      decoration: BoxDecoration(
        color: context.colorScheme.brandNavy,
        borderRadius: .circular(28.r),
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.shadow,
            blurRadius: 18.r,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child:
          isDesk
              ? Column(mainAxisSize: .min, children: buttons)
              : Row(mainAxisSize: .min, children: buttons),
    );
    if (isDesk) {
      return Align(
        alignment: .centerRight,
        child: Padding(
          padding: .symmetric(horizontal: 12.w),
          child: rail,
        ),
      );
    }
    return Align(
      alignment: .bottomCenter,
      child: Padding(
        padding: .only(bottom: 12.h, left: 8.w, right: 8.w),
        child: rail,
      ),
    );
  }
}
