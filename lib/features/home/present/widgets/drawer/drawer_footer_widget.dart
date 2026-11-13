import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerFooterWidget extends StatelessWidget {
  const DrawerFooterWidget({super.key});

  Future<void> _launch(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: .symmetric(
        horizontal: 16.w,
        vertical: 14.h,
      ),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerLow,
        border: Border(
          top: BorderSide(
            color: colorScheme.outlineVariant.withValues(alpha: 0.5),
            width: 1.r,
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: .center,
            children: [
              _buildSocialButton(
                context: context,
                icon: FontAwesomeIcons.facebookF,
                onTap: () {
                  _launch('https://facebook.com');
                },
              ),
              SizedBox(width: 14.w),
              _buildSocialButton(
                context: context,
                icon: FontAwesomeIcons.instagram,
                onTap: () {
                  _launch('https://instagram.com');
                },
              ),
              SizedBox(width: 14.w),
              _buildSocialButton(
                context: context,
                icon: FontAwesomeIcons.locationDot,
                onTap: () {
                  _launch('https://maps.google.com');
                },
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Text(
            'Elzefir Seafood © 2025',
            style: textTheme.bodySmall?.copyWith(
              fontSize: 11.sp,
              fontWeight: FontWeight.bold,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          SizedBox(height: 2.h),
          Text(
            'جميع الحقوق محفوظة • إصدار v1.1.0',
            style: textTheme.bodySmall?.copyWith(
              fontSize: 10.sp,
              color: colorScheme.outline,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialButton({
    required BuildContext context,
    required FaIconData icon,
    required VoidCallback onTap,
  }) {
    final colorScheme = Theme.of(context).colorScheme;

    return Material(
      color: colorScheme.surface,
      shape: const CircleBorder(),
      elevation: 1,
      shadowColor: colorScheme.shadow.withValues(alpha: 0.12),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: Container(
          width: 36.r,
          height: 36.r,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: colorScheme.outlineVariant,
            ),
          ),
          child: Center(
            child: FaIcon(
              icon,
              size: 15.sp,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ),
      ),
    );
  }
}
