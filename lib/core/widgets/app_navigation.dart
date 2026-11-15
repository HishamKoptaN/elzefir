import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/extensions/theme_ext.dart';

class AppNavigation {
  static List<Widget> items({
    required VoidCallback onMenu,
    required VoidCallback onAbout,
    required VoidCallback onContact,
  }) {
    return [
      _NavItem(title: "المنيو", onTap: onMenu),
      _NavItem(title: "من نحن", onTap: onAbout),
      _NavItem(title: "تواصل معنا", onTap: onContact),
    ];
  }
}

class _NavItem extends StatefulWidget {
  const _NavItem({required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  State<_NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<_NavItem> {
  bool hovering = false;

  @override
  Widget build(BuildContext context) {
    final active = hovering;
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          hovering = true;
        });
      },
      onExit: (_) {
        setState(() {
          hovering = false;
        });
      },
      cursor: SystemMouseCursors.click,
      child: InkWell(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          padding: EdgeInsets.symmetric(vertical: 2.0.h, horizontal: 8.0.w),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: active
                    ? context.colorScheme.primary
                    : context.colorScheme.primary.withValues(alpha: 0.5),
                width: active ? 5.h : 2.0.h,
              ),
            ),
          ),
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 180),
            textAlign: .start,
            style: TextStyle(
              fontWeight: .bold,
              color: context.colorScheme.primary,
            ),
            child: Text(
              widget.title,
              textAlign: .start,
              style: context.textTheme.headlineMedium?.copyWith(
                fontWeight: .bold,
                color: context.colorScheme.primary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
