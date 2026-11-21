import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/analytics/analytics_events.dart';
import '../../../../../core/analytics/analytics_service.dart';
import '../../../../../core/analytics/consent_service.dart';
import '../../../../../core/di/dependency_injection.dart';

class DrawerNavItemsWidget extends StatelessWidget {
  const DrawerNavItemsWidget({
    super.key,
    this.onMenuTap,
    this.onOffersTap,
    this.onCookingTap,
    this.onAboutTap,
    this.onBranchesTap,
  });

  final VoidCallback? onMenuTap;
  final VoidCallback? onOffersTap;
  final VoidCallback? onCookingTap;
  final VoidCallback? onAboutTap;
  final VoidCallback? onBranchesTap;

  // Stitch Design Palette
  static const Color brand50 = Color(0xFFF0F6FA);
  static const Color brand100 = Color(0xFFE1EEF5);
  static const Color brand800 = Color(0xFF124370);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 1. المنيو وقائمة الطعام (Active / Featured)
        _buildNavTile(
          context: context,
          icon: FontAwesomeIcons.bookOpen,
          iconBg: brand800,
          iconColor: Colors.white,
          title: 'المنيو وقائمة الطعام',
          badgeText: 'جديد',
          badgeBg: const Color(0xFFF59E0B),
          badgeTextColor: Colors.white,
          isActive: true,
          onTap: () {
            Navigator.maybePop(context);
            _logMenuItem('menu');
            onMenuTap?.call();
          },
        ),
        SizedBox(height: 6.h),
        // 2. عروض الوجبات التوفيرية
        _buildNavTile(
          context: context,
          icon: FontAwesomeIcons.tag,
          iconBg: const Color(0xFFFFFBEB),
          iconBorder: const Color(0xFFFEF3C7),
          iconColor: const Color(0xFFD97706),
          title: 'عروض الوجبات التوفيرية',
          badgeText: 'خصومات %',
          badgeTextColor: const Color(0xFFF43F5E),
          onTap: () {
            Navigator.maybePop(context);
            _logMenuItem('offers');
            onOffersTap?.call();
          },
        ),
        SizedBox(height: 6.h),
        // 3. طرق التجهيز والطهي
        _buildNavTile(
          context: context,
          icon: FontAwesomeIcons.fire,
          iconBg: const Color(0xFFFFF7ED),
          iconBorder: const Color(0xFFFFEDD5),
          iconColor: const Color(0xFFEA580C),
          title: 'طرق التجهيز والطهي',
          subtitle: 'سنجاري، ردة، زيت وليمون، طواجن',
          onTap: () {
            Navigator.maybePop(context);
            _logMenuItem('cooking');
            onCookingTap?.call();
          },
        ),
        SizedBox(height: 6.h),
        // 4. من نحن وقصتنا
        _buildNavTile(
          context: context,
          icon: FontAwesomeIcons.circleInfo,
          iconBg: const Color(0xFFEFF6FF),
          iconBorder: const Color(0xFFDBEAFE),
          iconColor: const Color(0xFF2563EB),
          title: 'من نحن وقصتنا',
          onTap: () {
            Navigator.maybePop(context);
            _logMenuItem('about');
            onAboutTap?.call();
          },
        ),
        SizedBox(height: 6.h),
        // 5. الفروع والتوصيل
        _buildNavTile(
          context: context,
          icon: FontAwesomeIcons.locationDot,
          iconBg: const Color(0xFFF0FDFA),
          iconBorder: const Color(0xFFCCFBF1),
          iconColor: const Color(0xFF0D9488),
          title: 'الفروع والتوصيل',
          subtitle: 'توصيل سريع لكافة مناطق العياط',
          onTap: () {
            Navigator.maybePop(context);
            _logMenuItem('branches');
            onBranchesTap?.call();
          },
        ),
      ],
    );
  }

  Future<void> _logMenuItem(String item) async {
    try {
      if (await getIt<ConsentService>().isGranted()) {
        await getIt<AnalyticsService>().logEvent(
          name: AnalyticsEvents.clickMenuItem,
          parameters: {'item': item},
        );
      }
    } catch (_) {
      // Analytics is best-effort and must never break the action.
    }
  }

  Widget _buildNavTile({
    required BuildContext context,
    required FaIconData icon,
    required Color iconBg,
    required Color iconColor,
    Color? iconBorder,
    required String title,
    String? subtitle,
    String? badgeText,
    Color? badgeBg,
    Color? badgeTextColor,
    bool isActive = false,
    required VoidCallback onTap,
  }) {
    return Material(
      color: isActive ? brand50 : Colors.transparent,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: isActive ? brand100 : Colors.transparent,
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: iconBg,
                  borderRadius: BorderRadius.circular(12),
                  border: iconBorder != null ? Border.all(color: iconBorder) : null,
                  boxShadow: isActive
                      ? [
                          BoxShadow(
                            color: brand800.withValues(alpha: 0.2),
                            blurRadius: 6,
                            offset: const Offset(0, 2),
                          ),
                        ]
                      : null,
                ),
                child: Center(
                  child: FaIcon(
                    icon,
                    color: iconColor,
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 14,
                        fontWeight: isActive ? FontWeight.w800 : FontWeight.bold,
                        color: isActive ? brand800 : const Color(0xFF1E293B),
                      ),
                    ),
                    if (subtitle != null) ...[
                      const SizedBox(height: 2),
                      Text(
                        subtitle,
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: 11,
                          color: const Color(0xFF64748B),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              if (badgeText != null)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 3,
                  ),
                  decoration: BoxDecoration(
                    color: badgeBg ?? Colors.transparent,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    badgeText,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: badgeTextColor ?? Colors.white,
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
