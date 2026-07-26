import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptySearchWidget extends StatefulWidget {
  const EmptySearchWidget({super.key});

  @override
  State<EmptySearchWidget> createState() => _EmptySearchWidgetState();
}

class _EmptySearchWidgetState extends State<EmptySearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        mainAxisSize: .min,
        spacing: 16.h,
        children: [
          Icon(Icons.search_off, size: 64.w, color: const Color(0xFF878791)),
          Text(
            'لا توجد طلبات مطابقة',
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
