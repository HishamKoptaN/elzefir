import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/extensions/device_type_extension.dart';
import '../../../../../core/utils/extensions/theme_ext.dart';
import 'nav_button.dart';
import 'section_nav_item.dart';
import 'section_scroll_tracker.dart';

class FloatingSectionNav extends StatefulWidget {
  const FloatingSectionNav({
    super.key,
    required this.items,
    required this.controller,
    required this.onSelected,
  });

  final List<SectionNavItem> items;
  final ScrollController controller;
  final ValueChanged<int> onSelected;

  @override
  State<FloatingSectionNav> createState() {
    return _FloatingSectionNavState();
  }
}

class _FloatingSectionNavState extends State<FloatingSectionNav> {
  int _active = 0;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_handleScroll);
  }

  void _handleScroll() {
    final active = activeSectionFor(
      controller: widget.controller,
      keys: widget.items.map((item) => item.key).toList(),
      referenceLine: MediaQuery.sizeOf(context).height * 0.35,
    );
    if (active == _active) {
      return;
    }
    setState(() {
      _active = active;
    });
  }

  @override
  void dispose() {
    widget.controller.removeListener(_handleScroll);
    super.dispose();
  }

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
            widget.onSelected(i);
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
    return Align(
      alignment: isDesk ? .centerLeft : .bottomCenter,
      child: Padding(
        padding:
            isDesk
                ? .symmetric(horizontal: 12.w)
                : .only(bottom: 12.h, left: 8.w, right: 8.w),
        child: rail,
      ),
    );
  }
}
