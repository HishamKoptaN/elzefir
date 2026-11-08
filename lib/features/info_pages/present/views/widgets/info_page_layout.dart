import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';
import '../../../../../core/widgets/custom_scaffold.dart';
import 'info_badge.dart';

class InfoPageLayout extends StatelessWidget {
  const InfoPageLayout({
    super.key,
    required this.appBarTitle,
    required this.badge,
    required this.title,
    required this.subtitle,
    this.intro,
    required this.children,
  });

  final String appBarTitle;
  final String badge;
  final String title;
  final String subtitle;
  final String? intro;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: appBarTitle,
      backgroundColor: context.colorScheme.surface,
      body: SingleChildScrollView(
        padding: .symmetric(horizontal: 16.w, vertical: 24.h),
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 960.w),
            child: Container(
              width: double.infinity,
              padding: .all(24.r),
              decoration: BoxDecoration(
                color: context.colorScheme.surface,
                borderRadius: .circular(16.r),
                border: Border.all(color: context.colorScheme.outlineVariant),
              ),
              child: Column(
                crossAxisAlignment: .start,
                spacing: 16.h,
                children: [
                  InfoBadge(label: badge),
                  Text(
                    title,
                    style: context.textTheme.headlineMedium?.copyWith(
                      color: context.colorScheme.primary,
                      fontWeight: .w800,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  Divider(color: context.colorScheme.outlineVariant),
                  if (intro != null)
                    Text(
                      intro!,
                      style: context.textTheme.bodyLarge?.copyWith(
                        color: context.colorScheme.onSurface,
                        height: 1.8,
                      ),
                    ),
                  ...children,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
