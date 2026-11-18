import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';
import '../store_status_builder.dart';

class HomeStatusBadge extends StatelessWidget {
  const HomeStatusBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreStatusBuilder(
      builder: (context, workingHours) {
        final colors = Theme.of(context).colorScheme;
        final isOpen = workingHours?.isOpenNow;
        final isScheduledClosure =
            isOpen == false && workingHours?.isOpenOverride == null;
        final statusText = switch (isOpen) {
          true => 'مفتوح الآن لاستقبال الطلبات',
          false => 'مغلق الآن',
          null => 'جارٍ التحقق من الحالة',
        };
        final dotColor = switch (isOpen) {
          true => colors.statusDot,
          false => colors.error,
          null => colors.outline,
        };
        final scheduleText = workingHours == null
            ? ''
            : isScheduledClosure
            ? 'يفتح ${workingHours.formattedDays} ${workingHours.formattedTime}'
            : workingHours.formattedTimeShort;

        return Container(
          width: .infinity,
          padding: .symmetric(vertical: 10.h, horizontal: 8.w),
          decoration: BoxDecoration(
            color: colors.statusBadgeBg,
            border: Border.all(color: colors.statusBadgeBorder),
            borderRadius: .circular(12.r),
          ),
          child: Column(
            crossAxisAlignment: .stretch,
            spacing: 8.h,
            children: [
              Wrap(
                alignment: .spaceBetween,
                crossAxisAlignment: .center,
                spacing: 12.w,
                runSpacing: 8.h,
                children: [
                  Wrap(
                    crossAxisAlignment: .center,
                    spacing: 8.w,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.solidCircle,
                        size: 12.r,
                        color: dotColor,
                      ),
                      Text(statusText, style: context.textTheme.bodySmall),
                    ],
                  ),
                  if (scheduleText.isNotEmpty)
                    Text.rich(
                      TextSpan(
                        children: [
                          WidgetSpan(
                            alignment: .middle,
                            child: FaIcon(
                              FontAwesomeIcons.clock,
                              size: 15.r,
                              color: colors.statusBadgeSchedule,
                            ),
                          ),
                          TextSpan(text: '  $scheduleText'),
                        ],
                      ),
                      style: context.textTheme.bodySmall?.copyWith(
                        color: colors.statusBadgeSchedule,
                      ),
                    ),
                ],
              ),
              if (isScheduledClosure)
                Text(
                  'يمكنك إرسال طلبك الآن، وسنبدأ تجهيزه وتسليمه خلال ساعات عمل المطعم.',
                  style: context.textTheme.bodyMedium,
                ),
            ],
          ),
        );
      },
    );
  }
}
