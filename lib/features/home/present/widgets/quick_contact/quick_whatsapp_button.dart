import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/analytics/analytics_events.dart';
import '../../../../../core/analytics/analytics_service.dart';
import '../../../../../core/analytics/consent_service.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/utils/extensions/theme_ext.dart';

class QuickWhatsappButton extends StatelessWidget {
  const QuickWhatsappButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () async {
          try {
            if (await getIt<ConsentService>().isGranted()) {
              await getIt<AnalyticsService>().logEvent(
                name: AnalyticsEvents.clickWhatsapp,
              );
            }
          } catch (_) {
            // Analytics is best-effort and must never break the action.
          }
          await launchUrl(
            Uri.parse('https://wa.me/201124497981'),
            mode: .externalApplication,
          );
        },
        borderRadius: .circular(12.r),
        child: Container(
          padding: .symmetric(vertical: 6.h, horizontal: 8.w),
          decoration: BoxDecoration(
            color: context.colorScheme.whatsappBg,
            border: .all(color: context.colorScheme.whatsappBorder),
            borderRadius: .circular(12.r),
          ),
          child: Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: .start,
                  mainAxisSize: .min,
                  children: [
                    Text(
                      'واتساب',
                      style: context.textTheme.labelSmall?.copyWith(
                        fontWeight: .w100,
                        color: context.colorScheme.whatsappTitle,
                      ),
                    ),
                    Text(
                      '01124497981',
                      textDirection: .ltr,
                      overflow: .ellipsis,
                      style: context.textTheme.labelSmall?.copyWith(
                        fontWeight: .w900,
                        letterSpacing: 0.5,
                        color: context.colorScheme.whatsappSubtitle,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 32.r,
                width: 32.r,
                decoration: BoxDecoration(
                  shape: .circle,
                  color: context.colorScheme.whatsappIconBg,
                  boxShadow: [
                    BoxShadow(
                      color: context.colorScheme.shadow.withValues(alpha: 0.08),
                      blurRadius: 4.r,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Center(
                  child: FaIcon(
                    FontAwesomeIcons.whatsapp,
                    size: 16.r,
                    color: context.colorScheme.onPrimary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
