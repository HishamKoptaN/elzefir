import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/analytics/analytics_events.dart';
import '../../../../../core/analytics/analytics_service.dart';
import '../../../../../core/analytics/consent_service.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/utils/extensions/theme_ext.dart';
import '../../../domain/use_cases/home_use_cases.dart';

class QuickLocationButton extends StatelessWidget {
  const QuickLocationButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () async {
          try {
            if (await getIt<ConsentService>().isGranted()) {
              await getIt<AnalyticsService>().logEvent(
                name: AnalyticsEvents.clickMaps,
              );
            }
          } catch (_) {
            // Analytics is best-effort and must never break the action.
          }
          final info = await getIt<HomeUseCases>().watchRestaurantInfo().first;
          await launchUrl(
            Uri.parse(
              info.text(
                'maps_url',
                'https://maps.google.com/?q=العياط+شارع+الجيش',
              ),
            ),
            mode: .externalApplication,
          );
        },
        borderRadius: .circular(16.r),
        child: Container(
          padding: .symmetric(vertical: 6.h, horizontal: 8.w),
          decoration: BoxDecoration(
            color: colors.brandSand,
            border: .all(color: colors.brandGold.withValues(alpha: 0.45)),
            borderRadius: .circular(16.r),
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
                      'الموقع',
                      style: context.textTheme.labelSmall?.copyWith(
                        fontWeight: .w100,
                        color: colors.brandNavyDeep,
                      ),
                    ),
                    Text(
                      'العياط - شارع الجيش',
                      overflow: .ellipsis,
                      style: context.textTheme.labelSmall?.copyWith(
                        fontWeight: .w900,
                        color: colors.brandNavyDeep,
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
                  color: colors.brandGold,
                  boxShadow: [
                    BoxShadow(
                      color: colors.shadow.withValues(alpha: 0.08),
                      blurRadius: 4.r,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Center(
                  child: Icon(
                    Icons.location_on_rounded,
                    size: 18.r,
                    color: colors.brandNavyDeep,
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
