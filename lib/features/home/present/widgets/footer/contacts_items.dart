import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/extensions/responsive_icon_extension .dart';
import '../restaurant_info_builder.dart';
import '../site_text/site_text.dart';
import 'footer_widget.dart';

class FooterContactsItems extends StatelessWidget {
  const FooterContactsItems({super.key});
  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: .start,
      runSpacing: 10.h,
      children: [
        RestaurantInfoBuilder(
          builder: (context, info) => CustomFooterTitleWidget(
            title: info.text('contact_title', 'تواصل معنا'),
          ),
        ),
        SizedBox(height: 16.h),
        buildContactItem(
          context: context,
          icon: Icon(
            Icons.phone,
            color: const Color(0xFFFACC15),
            size: 16.iconRes,
          ),
          textKey: 'phone_label',
          fallback: '01008673836',
          onTap: () async {
            await execuateLaunchUrl(
              await siteTextValue('phone_url', 'tel:01008673836'),
            );
          },
        ),
        SizedBox(height: 10.h),
        buildContactItem(
          context: context,
          icon: FaIcon(
            FontAwesomeIcons.whatsapp,
            color: const Color(0xFFFACC15),
            size: 16.iconRes,
          ),
          textKey: 'whatsapp_label',
          fallback: '01124497981',
          onTap: () async {
            await execuateLaunchUrl(
              await siteTextValue('whatsapp_url', 'https://wa.me/201124497981'),
            );
          },
        ),
        SizedBox(height: 10.h),
        buildContactItem(
          context: context,
          icon: Icon(
            Icons.location_on,
            color: const Color(0xFFFACC15),
            size: 16.iconRes,
          ),
          textKey: 'address_label',
          fallback: 'العياط غرب - شارع الجيش - أمام سلم السكة الحديد بجوار صيدلية -د. لويز',
          onTap: () async {
            await execuateLaunchUrl(
              await siteTextValue(
                'maps_url',
                'https://maps.google.com/?q=العياط+شارع+الجيش',
              ),
            );
          },
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          spacing: 40.w,
          children: [
            buildSocialIcon(
              context: context,
              icon: Icon(Icons.facebook, color: Colors.white, size: 18.iconRes),
              onTap: () async {
                await execuateLaunchUrl(
                  await siteTextValue(
                    'facebook_url',
                    'https://www.facebook.com/ELZEFIR',
                  ),
                );
              },
            ),
            SizedBox(width: 12.w),
            buildSocialIcon(
              context: context,
              icon: FaIcon(
                FontAwesomeIcons.instagram,
                color: Colors.white,
                size: 18.iconRes,
              ),
              onTap: () async {
                await execuateLaunchUrl(
                  await siteTextValue(
                    'instagram_url',
                    'https://www.instagram.com/elzefir_fish',
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
