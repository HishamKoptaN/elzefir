import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/extensions/theme_ext.dart';

class ContactCardsGrid extends StatelessWidget {
  const ContactCardsGrid({super.key, required this.cards});

  final List<ContactCardWidget> cards;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final int columns = constraints.maxWidth >= 600 ? 3 : 1;
        final double itemWidth =
            (constraints.maxWidth - (columns - 1) * 16.w) / columns;
        return Wrap(
          spacing: 16.w,
          runSpacing: 16.h,
          children: [
            for (final card in cards) SizedBox(width: itemWidth, child: card),
          ],
        );
      },
    );
  }
}

class ContactCardWidget extends StatelessWidget {
  const ContactCardWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.detail,
    this.onTap,
  });

  final IconData icon;
  final String title;
  final String detail;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: .circular(12.r),
      child: Container(
        width: double.infinity,
        padding: .all(16.r),
        decoration: BoxDecoration(
          color: context.colorScheme.surfaceContainerHighest,
          borderRadius: .circular(12.r),
          border: Border.all(color: context.colorScheme.outlineVariant),
        ),
        child: Column(
          spacing: 8.h,
          children: [
            Icon(icon, size: 28.r, color: context.colorScheme.primary),
            Text(
              title,
              textAlign: .center,
              style: context.textTheme.titleSmall?.copyWith(
                color: context.colorScheme.primary,
                fontWeight: .w700,
              ),
            ),
            Text(
              detail,
              textAlign: .center,
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
                height: 1.6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
