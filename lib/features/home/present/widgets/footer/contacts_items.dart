import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'footer_widget.dart';

class FooterContactsItems extends StatelessWidget {
  const FooterContactsItems({super.key});
  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: .start,
      runSpacing: 10.h,
      children: [
        CustomFooterTitleWidget(title: 'تواصل معنا'),
        SizedBox(height: 16.h),
        buildContactItem(
          context: context,
          icon: Icons.phone,
          text: '01008673836',
          onTap: () {
            execuateLaunchUrl('tel:+01008673836');
          },
        ),
        SizedBox(height: 10.h),
        buildFontAwesomeIconsContactItem(
          context,
          FontAwesomeIcons.whatsapp,
          '01124497981',
          () {
            execuateLaunchUrl('tel:+201124497981');
          },
        ),
        SizedBox(height: 10.h),
        buildContactItem(
          context: context,
          icon: Icons.location_on,
          text:
              'العياط غرب - شارع الجيش - أمام سلم السكة الحديد بجوار صيدلية -د. لويز',
          onTap: () {
            execuateLaunchUrl('https://maps.google.com/?q=العياط+شارع+الجيش');
          },
        ),
        SizedBox(height: 10.h),
        buildContactItem(
          context: context,
          icon: Icons.email,
          text: 'info@elzefir.com',
          onTap: () {
            execuateLaunchUrl('mailto:info@elzefir.com');
          },
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          spacing: 40.w,
          children: [
            buildSocialIcon(Icons.facebook, () {
              execuateLaunchUrl('https://www.facebook.com/ELZEFIR');
            }),
            SizedBox(width: 12.w),
            buildFontAwesomeSocialIcon(FontAwesomeIcons.tiktok, () {
              execuateLaunchUrl('https://www.tiktok.com/@elzefir_fish');
            }),
            SizedBox(width: 12.w),
            buildFontAwesomeSocialIcon(FontAwesomeIcons.instagram, () {
              execuateLaunchUrl('https://www.snapchat.com/@elzefir_fish');
            }),
          ],
        ),
      ],
    );
  }
}
