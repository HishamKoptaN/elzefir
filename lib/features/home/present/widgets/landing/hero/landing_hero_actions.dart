import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../core/analytics/analytics_events.dart';
import '../../../../../../core/analytics/analytics_service.dart';
import '../../../../../../core/analytics/consent_service.dart';
import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/utils/extensions/theme_ext.dart';
import '../landing_hero_trust_strip.dart';

class LandingHeroActions extends StatelessWidget {
  const LandingHeroActions({
    super.key,
    required this.context,
    required this.colors,
    required this.onExplore,
  });

  final BuildContext context;
  final ColorScheme colors;
  final VoidCallback onExplore;

  Future<void> _order() async {
    await _logEvent(AnalyticsEvents.clickOrderNow);
    final uri = Uri.https('wa.me', '/201124497981', {
      'text': 'مرحباً، أريد طلب من مطعم أسماك الزفر',
    });
    await launchUrl(uri, mode: .externalApplication);
  }

  void _handleExplore() {
    _logEvent(AnalyticsEvents.clickExploreMenu);
    onExplore();
  }

  Future<void> _logEvent(String name) async {
    try {
      if (await getIt<ConsentService>().isGranted()) {
        await getIt<AnalyticsService>().logEvent(name: name);
      }
    } catch (_) {
      // Analytics is best-effort and must never break the action.
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.textTheme;

    return Column(
      crossAxisAlignment: .start,
      spacing: 10.h,
      children: [
        Row(
          children: [
            Expanded(
              child: FilledButton(
                onPressed: _order,
                style: FilledButton.styleFrom(
                  backgroundColor: colors.brandGold,
                  foregroundColor: colors.brandNavyDeep,
                  minimumSize: Size(0, 52.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: .circular(9999.r),
                  ),
                  textStyle: theme.labelLarge?.copyWith(fontWeight: .w800),
                ),
                child: const Text('اطلب الآن'),
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: OutlinedButton(
                onPressed: _handleExplore,
                style: OutlinedButton.styleFrom(
                  foregroundColor: context.colorScheme.onSurface,
                  side: BorderSide(
                    color: context.colorScheme.onSurface.withValues(alpha: 0.6),
                  ),
                  minimumSize: Size(0, 52.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: .circular(9999.r),
                  ),
                  textStyle: theme.labelLarge?.copyWith(fontWeight: .w700),
                ),
                child: Row(
                  mainAxisAlignment: .center,
                  children: [
                    Icon(
                      Icons.restaurant_menu_rounded,
                      size: 18.r,
                      color: colors.brandGold,
                    ),
                    SizedBox(width: 6.w),
                    const Text('استكشف القائمة'),
                  ],
                ),
              ),
            ),
          ],
        ),
        LandingHeroTrustStrip(context: context, colors: colors),
      ],
    );
  }
}
