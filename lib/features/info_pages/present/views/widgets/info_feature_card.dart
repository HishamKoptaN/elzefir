import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';
import '../../models/info_section.dart';

class InfoFeatureGrid extends StatelessWidget {
  const InfoFeatureGrid({super.key, required this.features});

  final List<InfoFeature> features;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final int columns = constraints.maxWidth >= 600 ? 2 : 1;
        final double itemWidth =
            (constraints.maxWidth - (columns - 1) * 16.w) / columns;
        return Wrap(
          spacing: 16.w,
          runSpacing: 16.h,
          children: [
            for (final feature in features)
              SizedBox(
                width: itemWidth,
                child: _InfoFeatureCard(feature: feature),
              ),
          ],
        );
      },
    );
  }
}

class _InfoFeatureCard extends StatelessWidget {
  const _InfoFeatureCard({required this.feature});

  final InfoFeature feature;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(16.r),
      decoration: BoxDecoration(
        color: context.colorScheme.surfaceContainerHighest,
        borderRadius: .circular(12.r),
        border: Border(
          top: BorderSide(color: context.colorScheme.primary, width: 4.h),
          left: BorderSide(color: context.colorScheme.outlineVariant),
          right: BorderSide(color: context.colorScheme.outlineVariant),
          bottom: BorderSide(color: context.colorScheme.outlineVariant),
        ),
      ),
      child: Column(
        crossAxisAlignment: .start,
        spacing: 8.h,
        children: [
          Text(
            feature.title,
            style: context.textTheme.titleMedium?.copyWith(
              color: context.colorScheme.primary,
              fontWeight: .w700,
            ),
          ),
          Text(
            feature.description,
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.onSurfaceVariant,
              height: 1.7,
            ),
          ),
        ],
      ),
    );
  }
}
