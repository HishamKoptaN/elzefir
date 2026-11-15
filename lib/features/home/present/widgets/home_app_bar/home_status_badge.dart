import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';

class HomeStatusBadge extends StatelessWidget {
  const HomeStatusBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(vertical: 10.h, horizontal: 16.w),
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
                decoration: BoxDecoration(
                  shape: .circle,
                  color: context.colorScheme.statusDot,
                ),
              ),
              Gap(8.w),
              Text(
                'مفتوح الآن لاستقبال الطلبات',
                style: context.textTheme.bodySmall?.copyWith(
                  fontWeight: .bold,
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
                '9:00 ص - 11:00 م',
                style: context.textTheme.bodySmall?.copyWith(
                  fontWeight: .w600,
                  color: context.colorScheme.statusBadgeSchedule,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
