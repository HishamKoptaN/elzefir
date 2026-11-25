import 'package:flutter/material.dart';

import '../../../home/present/widgets/restaurant_info_builder.dart';
import '../content/privacy_content.dart';
import '../content/site_sections.dart';
import 'widgets/info_page_layout.dart';
import 'widgets/section/info_section_widget.dart';

class PrivacyView extends StatelessWidget {
  const PrivacyView({super.key});

  static const String routeName = 'privacy';

  @override
  Widget build(BuildContext context) {
    return RestaurantInfoBuilder(
      builder: (context, info) {
        return InfoPageLayout(
          appBarTitle: 'سياسة الخصوصية',
          badge: info.text('privacy_page_badge', PrivacyContent.badge),
          title: info.text('privacy_page_title', PrivacyContent.title),
          subtitle: info.text(
            'privacy_page_updated',
            PrivacyContent.lastUpdated,
          ),
          intro: info.text('privacy_page_intro', PrivacyContent.intro),
          children: [
            for (final section in readInfoSections(
              info,
              'privacy_sections_json',
              PrivacyContent.sections,
            ))
              InfoSectionWidget(section: section),
          ],
        );
      },
    );
  }
}
