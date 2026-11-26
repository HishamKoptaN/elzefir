import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/extensions/responsive_icon_extension.dart';
import '../../utils/extensions/theme_ext.dart';

class EmptyWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  const EmptyWidget({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 2.h,
      child: Column(
        mainAxisAlignment: .spaceAround,
        crossAxisAlignment: .center,
        mainAxisSize: .min,
        spacing: 16.h,
        children: [
          Icon(icon, size: 30.iconRes, color: const Color(0xFF878791)),
          Text(
            text,
            style: context.textTheme.bodyLarge?.copyWith(
              fontWeight: .bold,
              color: const Color(0xFF878791),
            ),
          ),
        ],
      ),
    );
  }
}
