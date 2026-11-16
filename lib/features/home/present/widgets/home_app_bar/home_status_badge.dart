import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';
import '../store_status_builder.dart';

class HomeStatusBadge extends StatelessWidget {
  const HomeStatusBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreStatusBuilder(
      builder: (context, workingHours) {
        final isOpen = workingHours?.isOpenNow;
        final statusText = switch (isOpen) {
          true => 'مفتوح الآن لاستقبال الطلبات',
          false => 'مغلق الآن',
          null => 'جارٍ التحقق من الحالة',
        };
        final dotColor = switch (isOpen) {
          true => const Color(0xFF10B981),
          false => const Color(0xFFEF4444),
          null => const Color(0xFF94A3B8),
        };
        final scheduleText = workingHours?.formattedTimeShort ?? '';

        return Container(
          padding: .symmetric(vertical: 10.h, horizontal: 8.w),
          decoration: BoxDecoration(
            color: context.colorScheme.statusBadgeBg,
            border: Border.all(color: context.colorScheme.statusBadgeBorder),
            borderRadius: .circular(12.r),
          ),
          child: Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Row(
                mainAxisSize: .min,
                children: [
                  Container(
                    height: 12.r,
                    width: 12.r,
                    decoration: BoxDecoration(shape: .circle, color: dotColor),
                  ),
                  Gap(8.w),
                  Text(
                    statusText,
                    style: context.textTheme.bodySmall?.copyWith(
                      fontWeight: .w500,
                      color: context.colorScheme.statusBadgeText,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: .min,
                children: [
                  FaIcon(
                    FontAwesomeIcons.clock,
                    size: 15.r,
                    color: context.colorScheme.statusBadgeSchedule,
                  ),
                  Gap(4.w),
                  Text(
                    scheduleText,
                    style: context.textTheme.bodySmall?.copyWith(
                      fontWeight: .w300,
                      color: context.colorScheme.statusBadgeSchedule,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
