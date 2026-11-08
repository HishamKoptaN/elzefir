import 'package:flutter/material.dart';

import '../content/terms_content.dart';
import 'widgets/info_page_layout.dart';
import 'widgets/section/info_section_widget.dart';

class TermsView extends StatelessWidget {
  const TermsView({super.key});

  static const String routeName = 'terms';

  @override
  Widget build(BuildContext context) {
    return InfoPageLayout(
      appBarTitle: 'الشروط والأحكام',
      badge: TermsContent.badge,
      title: TermsContent.title,
      subtitle: TermsContent.lastUpdated,
      intro: TermsContent.intro,
      children: [
        for (final section in TermsContent.sections)
          InfoSectionWidget(section: section),
      ],
    );
  }
}
