import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/extensions/theme_ext.dart';
import '../../../content/contact_content.dart';

class ContactHoursWidget extends StatelessWidget {
  const ContactHoursWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: .all(16.r),
      decoration: BoxDecoration(
        color: context.colorScheme.primaryContainer,
        borderRadius: .circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: .start,
        spacing: 8.h,
        children: [
          Row(
            spacing: 8.w,
            children: [
              Icon(
                Icons.access_time_rounded,
                size: 20.r,
                color: context.colorScheme.onPrimaryContainer,
              ),
              Text(
                'مواعيد العمل الرسمية:',
                style: context.textTheme.titleSmall?.copyWith(
                  color: context.colorScheme.onPrimaryContainer,
                  fontWeight: .w700,
                ),
              ),
            ],
          ),
          Text(
            ContactContent.hoursDays,
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.onPrimaryContainer,
            ),
          ),
          Text(
            ContactContent.hoursTime,
            style: context.textTheme.bodyLarge?.copyWith(
              color: context.colorScheme.onPrimaryContainer,
              fontWeight: .w700,
            ),
          ),
        ],
      ),
    );
  }
}
