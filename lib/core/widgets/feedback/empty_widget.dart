import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  const EmptyWidget({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        mainAxisSize: .min,
        spacing: 16.h,
        children: [
          Icon(icon, size: 40, color: const Color(0xFF878791)),
          Text(
            text,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF878791),
            ),
          ),
        ],
      ),
    );
  }
}
