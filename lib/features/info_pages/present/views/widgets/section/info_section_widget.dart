import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../core/utils/extensions/theme_ext.dart';
import '../../../models/info_section.dart';
import 'info_bullet.dart';
import 'info_section_title.dart';

class InfoSectionWidget extends StatelessWidget {
  const InfoSectionWidget({super.key, required this.section});

  final InfoSection section;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      spacing: 10.h,
      children: [
        InfoSectionTitle(title: section.title),
        for (final paragraph in section.paragraphs)
          Text(
            paragraph,
            style: context.textTheme.bodyLarge?.copyWith(
              color: context.colorScheme.onSurface,
              height: 1.8,
            ),
          ),
        for (final bullet in section.bullets) InfoBullet(text: bullet),
        if (section.linkUrl != null)
          InkWell(
            onTap: () {
              launchUrl(
                Uri.parse(section.linkUrl!),
                mode: .externalApplication,
              );
            },
            child: Text(
              section.linkLabel ?? section.linkUrl!,
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.primary,
                fontWeight: .w700,
                decoration: .underline,
              ),
            ),
          ),
      ],
    );
  }
}
