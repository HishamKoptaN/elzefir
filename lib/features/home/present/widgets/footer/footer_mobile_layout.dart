import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'contacts_items.dart';
import 'footer_widget.dart';

class FooterMobileLayout extends StatelessWidget implements FooterWidget {
  const FooterMobileLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .start,
      crossAxisAlignment: .start,
      spacing: 12.h,
      children: [
        FooterTitleWidget(),
        FooterDescriptionWidget(),
        RestaurantHighlights(),
        CustomFooterDividerWidget(),
        const FooterContactsItems(),
        CustomFooterDividerWidget(),
        WorkTimeWidget(),
      ],
    );
  }
}
