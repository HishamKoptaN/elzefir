import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../home/present/widgets/restaurant_info_builder.dart';
import '../../../home/present/widgets/site_text/site_text.dart';
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
    return RestaurantInfoBuilder(
      builder: (context, info) {
        return InfoPageLayout(
          appBarTitle: 'تواصل معنا',
          badge: info.text('contact_page_badge', ContactContent.badge),
          title: info.text('contact_page_title', ContactContent.title),
          subtitle: info.text('contact_page_subtitle', ContactContent.subtitle),
          intro: info.text('contact_page_intro', ContactContent.intro),
          children: [
            const InfoSectionTitle(title: ContactContent.contactTitle),
            ContactCardsGrid(
              cards: [
                ContactCardWidget(
                  icon: Icons.call_rounded,
                  title: info.text(
                    'contact_phone_label',
                    ContactContent.phoneLabel,
                  ),
                  detail: info.text('phone_label', ContactContent.phone),
                  onTap: () async {
                    launchUrl(
                      Uri.parse(
                        'tel:${await siteTextValue("phone_label", ContactContent.phone)}',
                      ),
                      mode: .externalApplication,
                    );
                  },
                ),
                ContactCardWidget(
                  icon: Icons.chat_rounded,
                  title: info.text(
                    'contact_whatsapp_label',
                    ContactContent.whatsappLabel,
                  ),
                  detail: info.text('whatsapp_label', ContactContent.whatsapp),
                  onTap: () async {
                    launchUrl(
                      Uri.parse(
                        await siteTextValue(
                          'whatsapp_url',
                          ContactContent.whatsappUrl,
                        ),
                      ),
                      mode: .externalApplication,
                    );
                  },
                ),
                ContactCardWidget(
                  icon: Icons.location_on_rounded,
                  title: info.text(
                    'contact_address_label',
                    ContactContent.addressLabel,
                  ),
                  detail: info.text('address_label', ContactContent.address),
                  onTap: () async {
                    launchUrl(
                      Uri.parse(
                        await siteTextValue('maps_url', ContactContent.mapsUrl),
                      ),
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
      },
    );
  }
}
