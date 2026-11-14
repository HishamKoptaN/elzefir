import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'quick_hotline_button.dart';
import 'quick_whatsapp_button.dart';

class QuickContactButtons extends StatelessWidget {
  const QuickContactButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .only(top: 4.h),
      child: Row(
        children: [
          const Expanded(
            child: QuickWhatsappButton(),
          ),
          Gap(12.w),
          const Expanded(
            child: QuickHotlineButton(),
          ),
        ],
      ),
    );
  }
}

