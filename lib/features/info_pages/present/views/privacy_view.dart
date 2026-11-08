import 'package:flutter/material.dart';

import '../content/privacy_content.dart';
import 'widgets/info_page_layout.dart';
import 'widgets/section/info_section_widget.dart';

class PrivacyView extends StatelessWidget {
  const PrivacyView({super.key});

  static const String routeName = 'privacy';

  @override
  Widget build(BuildContext context) {
    return InfoPageLayout(
      appBarTitle: 'سياسة الخصوصية',
      badge: PrivacyContent.badge,
      title: PrivacyContent.title,
      subtitle: PrivacyContent.lastUpdated,
      intro: PrivacyContent.intro,
      children: [
        for (final section in PrivacyContent.sections)
          InfoSectionWidget(section: section),
      ],
    );
  }
}
