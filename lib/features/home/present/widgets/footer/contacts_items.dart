import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/extensions/responsive_icon_extension .dart';
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
          icon: Icon(
            Icons.phone,
            color: const Color(0xFFFACC15),
            size: 16.iconRes,
          ),
          text: '01008673836',
          onTap: () {
            execuateLaunchUrl('tel:+01008673836');
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
          text: '01124497981',
          onTap: () {
            execuateLaunchUrl('tel:+201124497981');
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
          text:
              'العياط غرب - شارع الجيش - أمام سلم السكة الحديد بجوار صيدلية -د. لويز',
          onTap: () {
            execuateLaunchUrl('https://maps.google.com/?q=العياط+شارع+الجيش');
          },
        ),
        SizedBox(height: 10.h),
        buildContactItem(
          context: context,
          icon: Icon(
            Icons.email,
            color: const Color(0xFFFACC15),
            size: 16.iconRes,
          ),
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
            buildSocialIcon(
              context: context,
              icon: Icon(Icons.facebook, color: Colors.white, size: 18.iconRes),
              onTap: () {
              execuateLaunchUrl('https://www.facebook.com/ELZEFIR');
            }),
            SizedBox(width: 12.w),
            buildSocialIcon(
              context: context,
              icon: FaIcon(
                FontAwesomeIcons.instagram,
                color: Colors.white,
                size: 18.iconRes,
              ),
              onTap: () {
                execuateLaunchUrl('https://www.instagram.com/@elzefir_fish');
            }),
          ],
        ),
      ],
    );
  }
}
