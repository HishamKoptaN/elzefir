import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'quick_hotline_button.dart';
import 'quick_location_button.dart';
import 'quick_whatsapp_button.dart';

class QuickContactButtons extends StatelessWidget {
  const QuickContactButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final contactRow = Row(
          children: [
            const Expanded(child: QuickWhatsappButton()),
            Gap(12.w),
            const Expanded(child: QuickHotlineButton()),
          ],
        );

        if (constraints.maxWidth < 600) {
          return Column(
            crossAxisAlignment: .stretch,
            children: [contactRow, Gap(12.h), const QuickLocationButton()],
          );
        }

        return Row(
          children: [
            const Expanded(child: QuickWhatsappButton()),
            Gap(12.w),
            const Expanded(child: QuickHotlineButton()),
            Gap(12.w),
            const Expanded(child: QuickLocationButton()),
          ],
        );
      },
    );
  }
}
