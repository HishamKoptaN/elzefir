import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../content/contact_content.dart';
import 'widgets/contact/contact_card_widget.dart';
import 'widgets/contact/contact_hours_widget.dart';
import 'widgets/contact/contact_social_widget.dart';
import 'widgets/info_page_layout.dart';
import 'widgets/section/info_section_title.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  static const String routeName = 'contact';

  @override
  Widget build(BuildContext context) {
    return InfoPageLayout(
      appBarTitle: 'تواصل معنا',
      badge: ContactContent.badge,
      title: ContactContent.title,
      subtitle: ContactContent.subtitle,
      intro: ContactContent.intro,
      children: [
        const InfoSectionTitle(title: ContactContent.contactTitle),
        ContactCardsGrid(
          cards: [
            ContactCardWidget(
              icon: Icons.call_rounded,
              title: ContactContent.phoneLabel,
              detail: ContactContent.phone,
              onTap: () {
                launchUrl(
                  Uri.parse('tel:${ContactContent.phone}'),
                  mode: .externalApplication,
                );
              },
            ),
            ContactCardWidget(
              icon: Icons.chat_rounded,
              title: ContactContent.whatsappLabel,
              detail: ContactContent.whatsapp,
              onTap: () {
                launchUrl(
                  Uri.parse(ContactContent.whatsappUrl),
                  mode: .externalApplication,
                );
              },
            ),
            ContactCardWidget(
              icon: Icons.location_on_rounded,
              title: ContactContent.addressLabel,
              detail: ContactContent.address,
              onTap: () {
                launchUrl(
                  Uri.parse(ContactContent.mapsUrl),
                  mode: .externalApplication,
                );
              },
            ),
          ],
        ),
        const InfoSectionTitle(title: ContactContent.hoursTitle),
        const ContactHoursWidget(),
        const InfoSectionTitle(title: ContactContent.socialTitle),
        const ContactSocialWidget(),
      ],
    );
  }
}
