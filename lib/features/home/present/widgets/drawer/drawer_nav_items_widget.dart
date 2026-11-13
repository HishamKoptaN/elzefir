import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildNavTile(
          context: context,
          icon: FontAwesomeIcons.bookOpen,
          iconBg: Theme.of(context).colorScheme.primary,
          iconColor: Theme.of(context).colorScheme.onPrimary,
          title: 'المنيو وقائمة الطعام',
          badgeText: 'جديد',
          badgeBg: Theme.of(context).colorScheme.secondary,
          badgeTextColor: Theme.of(context).colorScheme.onSecondary,
          isActive: true,
          onTap: () {
            Navigator.maybePop(context);
            onMenuTap?.call();
          },
        ),
        SizedBox(height: 6.h),
        _buildNavTile(
          context: context,
          icon: FontAwesomeIcons.tag,
          iconBg: Theme.of(context).colorScheme.surfaceContainerHighest,
          iconBorder: Theme.of(context).colorScheme.outlineVariant,
          iconColor: Theme.of(context).colorScheme.secondary,
          title: 'عروض الوجبات التوفيرية',
          badgeText: 'خصومات %',
          badgeTextColor: Theme.of(context).colorScheme.error,
          onTap: () {
            Navigator.maybePop(context);
            onOffersTap?.call();
          },
        ),
        SizedBox(height: 6.h),
        _buildNavTile(
          context: context,
          icon: FontAwesomeIcons.fire,
          iconBg: Theme.of(context).colorScheme.surfaceContainerHighest,
          iconBorder: Theme.of(context).colorScheme.outlineVariant,
          iconColor: Theme.of(context).colorScheme.tertiary,
          title: 'طرق التجهيز والطهي',
          subtitle: 'سنجاري، ردة، زيت وليمون، طواجن',
          onTap: () {
            Navigator.maybePop(context);
            onCookingTap?.call();
          },
        ),
        SizedBox(height: 6.h),
        _buildNavTile(
          context: context,
          icon: FontAwesomeIcons.circleInfo,
          iconBg: Theme.of(context).colorScheme.surfaceContainerHighest,
          iconBorder: Theme.of(context).colorScheme.outlineVariant,
          iconColor: Theme.of(context).colorScheme.primary,
          title: 'من نحن وقصتنا',
          onTap: () {
            Navigator.maybePop(context);
            onAboutTap?.call();
          },
        ),
        SizedBox(height: 6.h),
        _buildNavTile(
          context: context,
          icon: FontAwesomeIcons.locationDot,
          iconBg: Theme.of(context).colorScheme.surfaceContainerHighest,
          iconBorder: Theme.of(context).colorScheme.outlineVariant,
          iconColor: Theme.of(context).colorScheme.primary,
          title: 'الفروع والتوصيل',
          subtitle: 'توصيل سريع لكافة مناطق العياط',
          onTap: () {
            Navigator.maybePop(context);
            onBranchesTap?.call();
          },
        ),
      ],
    );
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
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Material(
      color: isActive ? colorScheme.primary.withValues(alpha: 0.08) : Colors.transparent,
      borderRadius: BorderRadius.circular(16.r),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16.r),
        child: Container(
          padding: .symmetric(
            horizontal: 12.w,
            vertical: 10.h,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            border: Border.all(
              color: isActive
                  ? colorScheme.primary.withValues(alpha: 0.2)
                  : Colors.transparent,
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 40.r,
                height: 40.r,
                decoration: BoxDecoration(
                  color: iconBg,
                  borderRadius: BorderRadius.circular(12.r),
                  border: iconBorder != null ? Border.all(color: iconBorder) : null,
                  boxShadow: isActive
                      ? [
                          BoxShadow(
                            color: colorScheme.primary.withValues(alpha: 0.2),
                            blurRadius: 6.r,
                            offset: Offset(0, 2.h),
                          ),
                        ]
                      : null,
                ),
                child: Center(
                  child: FaIcon(
                    icon,
                    color: iconColor,
                    size: 22.sp,
                  ),
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: textTheme.bodyMedium?.copyWith(
                        fontSize: 14.sp,
                        fontWeight: isActive ? FontWeight.w800 : FontWeight.bold,
                        color: isActive
                            ? colorScheme.primary
                            : colorScheme.onSurface,
                      ),
                    ),
                    if (subtitle != null) ...[
                      SizedBox(height: 2.h),
                      Text(
                        subtitle,
                        style: textTheme.bodySmall?.copyWith(
                          fontSize: 11.sp,
                          color: colorScheme.onSurfaceVariant,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              if (badgeText != null)
                Container(
                  padding: .symmetric(
                    horizontal: 8.w,
                    vertical: 3.h,
                  ),
                  decoration: BoxDecoration(
                    color: badgeBg ?? Colors.transparent,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Text(
                    badgeText,
                    style: textTheme.bodySmall?.copyWith(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.bold,
                      color: badgeTextColor ?? colorScheme.onPrimary,
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
