import 'package:flutter/material.dart';

import '../content/about_content.dart';
import 'widgets/info_cta_box.dart';
import 'widgets/info_feature_card.dart';
import 'widgets/info_page_layout.dart';
import 'widgets/section/info_section_title.dart';
import 'widgets/section/info_section_widget.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  static const String routeName = 'about';

  @override
  Widget build(BuildContext context) {
    return InfoPageLayout(
      appBarTitle: 'من نحن',
      badge: AboutContent.badge,
      title: AboutContent.title,
      subtitle: AboutContent.subtitle,
      intro: AboutContent.intro,
      children: [
        const InfoSectionWidget(section: AboutContent.mission),
        const InfoSectionTitle(title: AboutContent.featuresTitle),
        const InfoFeatureGrid(features: AboutContent.features),
        const InfoSectionWidget(section: AboutContent.services),
        const InfoSectionWidget(section: AboutContent.menu),
        const InfoSectionWidget(section: AboutContent.quality),
        const InfoCtaBox(
          title: AboutContent.ctaTitle,
          subtitle: AboutContent.ctaSubtitle,
          phone: AboutContent.ctaPhone,
        ),
      ],
    );
  }
}
