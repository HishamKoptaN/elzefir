import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';

class InfoCtaBox extends StatelessWidget {
  const InfoCtaBox({
    super.key,
    required this.title,
    required this.subtitle,
    required this.phone,
  });

  final String title;
  final String subtitle;
  final String phone;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: .all(24.r),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            context.colorScheme.primary,
            context.colorScheme.primaryContainer,
          ],
        ),
        borderRadius: .circular(12.r),
      ),
      child: Column(
        spacing: 12.h,
        children: [
          Text(
            title,
            textAlign: .center,
            style: context.textTheme.titleLarge?.copyWith(
              color: context.colorScheme.onPrimary,
              fontWeight: .w700,
            ),
          ),
          Text(
            subtitle,
            textAlign: .center,
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.onPrimary,
            ),
          ),
          FilledButton.icon(
            style: FilledButton.styleFrom(
              backgroundColor: context.colorScheme.secondary,
              foregroundColor: context.colorScheme.onSecondary,
              padding: .symmetric(horizontal: 24.w, vertical: 14.h),
            ),
            onPressed: () {
              launchUrl(Uri.parse('tel:$phone'), mode: .externalApplication);
            },
            icon: Icon(Icons.call_rounded, size: 18.r),
            label: Text(
              'اتصل بنا: $phone',
              style: context.textTheme.labelLarge?.copyWith(fontWeight: .w700),
            ),
          ),
        ],
      ),
    );
  }
}
