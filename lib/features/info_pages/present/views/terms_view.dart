import 'package:flutter/material.dart';

import '../../../home/present/widgets/restaurant_info_builder.dart';
import '../content/terms_content.dart';
import 'widgets/info_page_layout.dart';
import 'widgets/section/info_section_widget.dart';

class TermsView extends StatelessWidget {
  const TermsView({super.key});

  static const String routeName = 'terms';

  @override
  Widget build(BuildContext context) {
    return RestaurantInfoBuilder(
      builder: (context, info) {
        return InfoPageLayout(
          appBarTitle: 'الشروط والأحكام',
          badge: info.text('terms_page_badge', TermsContent.badge),
          title: info.text('terms_page_title', TermsContent.title),
          subtitle: info.text('terms_page_updated', TermsContent.lastUpdated),
          intro: info.text('terms_page_intro', TermsContent.intro),
          children: [
            for (final section in TermsContent.sections)
              InfoSectionWidget(section: section),
          ],
        );
      },
    );
  }
}
