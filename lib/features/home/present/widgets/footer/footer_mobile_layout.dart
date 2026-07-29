import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'contacts_items.dart';
import 'footer_widget.dart';

class FooterMobileLayout extends StatelessWidget implements FooterWidget {
  const FooterMobileLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .start,
      crossAxisAlignment: .start,
      children: [
        FooterTitleWidget(),
        SizedBox(height: 12.h),
        FooterDescriptionWidget(),
        SizedBox(height: 16.h),
        RestaurantHighlights(),
        CustomFooterDividerWidget(),
        SizedBox(height: 16.h),
        const FooterContactsItems(),
        CustomFooterDividerWidget(),
        Text(
          'ساعات العمل',
          style: TextStyle(
            fontFamily: 'Libre Caslon Text',
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 16.h),
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.05),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.white10),
          ),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                'السبت - الخميس: 10:00 ص - 1:00 ص',
                style: TextStyle(color: Colors.white70, fontSize: 20.sp),
              ),
              CustomFooterDividerWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
