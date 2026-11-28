import 'package:flutter/material.dart';

import '../../../../core/build/app_version.dart';
import '../../../home/present/widgets/restaurant_info_builder.dart';
import '../content/about_content.dart';
import '../content/site_sections.dart';
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
    return RestaurantInfoBuilder(
      builder: (context, info) {
        final about = AboutSiteContent.read(info);
        return InfoPageLayout(
          appBarTitle: 'من نحن',
          badge: info.text('about_page_badge', AboutContent.badge),
          title: info.text('about_page_title', AboutContent.title),
          subtitle: info.text('about_page_subtitle', AboutContent.subtitle),
          intro: info.text('about_page_intro', AboutContent.intro),
          children: [
            InfoSectionWidget(
              section: about.sectionsById['mission'] ?? AboutContent.mission,
            ),
            InfoSectionTitle(
              title: about.featuresTitle ?? AboutContent.featuresTitle,
            ),
            InfoFeatureGrid(features: about.features ?? AboutContent.features),
            InfoSectionWidget(
              section: about.sectionsById['services'] ?? AboutContent.services,
            ),
            InfoSectionWidget(
              section: about.sectionsById['menu'] ?? AboutContent.menu,
            ),
            InfoSectionWidget(
              section: about.sectionsById['quality'] ?? AboutContent.quality,
            ),
            InfoCtaBox(
              title: about.ctaTitle ?? AboutContent.ctaTitle,
              subtitle: about.ctaSubtitle ?? AboutContent.ctaSubtitle,
              phone: about.ctaPhone ?? AboutContent.ctaPhone,
            ),
            FutureBuilder<String>(
              future: AppVersion.display,
              builder: (context, snapshot) {
                final version = snapshot.data ?? '';
                if (version.isEmpty) {
                  return const SizedBox.shrink();
                }
                return Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    'إصدار التطبيق v$version',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
