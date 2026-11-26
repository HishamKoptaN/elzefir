import 'package:flutter/material.dart';
import '../utils/extensions/theme_ext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDatePicker extends StatelessWidget {
  const CustomDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 0.h),
      decoration: BoxDecoration(
        border: Border.all(color: context.colorScheme.primary, width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'اختر التاريخ',
            // style: CustomerInfoTextStyle.buildHeaderInfro(
            //   type: RenderType.flutter,
            // ),
          ),
          SizedBox(width: 4.w),
          Icon(Icons.calendar_today, color: context.colorScheme.primary, size: 20.r),
        ],
      ),
    );
  }
}
