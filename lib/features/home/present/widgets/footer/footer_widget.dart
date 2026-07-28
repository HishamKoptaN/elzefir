import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../core/utils/extensions/responsive_icon_extension .dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  Future<void> _launchUrl(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = MediaQuery.of(context).size.width > 800;
    return Container(
      color: const Color(0xFF001629),
      padding: EdgeInsets.symmetric(vertical: 64.h, horizontal: 40.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isDesktop
              ? _buildDesktopLayout(context)
              : _buildMobileLayout(context),
          SizedBox(height: 48.h),
          Divider(color: Colors.white24, thickness: 1),
          SizedBox(height: 24.h),
          Center(
            child: Text(
              "© ${DateTime.now().year} مطعم أسماك الزفر. جميع الحقوق محفوظة.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white70, fontSize: 16.sp),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDesktopLayout(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Row(
                children: [
                  Container(
                    padding: .all(8.sp),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFACC15).withValues(alpha: 0.15),
                      shape: .circle,
                    ),
                    child: Icon(
                      Icons.set_meal,
                      color: const Color(0xFFFACC15),
                      size: 24.iconRes,
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Text(
                    'مطعم أسماك الزفر',
                    style: TextStyle(
                      fontFamily: 'Libre Caslon Text',
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              SizedBox(
                width: 320.w,
                child: Text(
                  'نقدم أشهى المأكولات البحرية الطازجة منذ أكثر من 20 عامًا بجودة عالية وأسعار تناسب الجميع.',
                  style: TextStyle(
                    color: Colors.white70,
                    height: 1.6,
                    fontSize: 22.sp,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  _buildBadge('🐟 طازج يومياً'),
                  _buildBadge('🚚 توصيل سريع'),
                  _buildBadge('⭐ 7500+ تقييم'),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'تواصل معنا',
                style: TextStyle(
                  fontFamily: 'Libre Caslon Text',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16.h),
              _buildContactItem(
                icon: Icons.phone,
                text: '01008673836',
                onTap: () {
                  _launchUrl('tel:+01008673836');
                },
              ),
              _buildFontAwesomeIconsContactItem(
                FontAwesomeIcons.whatsapp,
                '01124497981',
                () {
                  _launchUrl('tel:+201124497981');
                },
              ),

              _buildContactItem(
                icon: Icons.location_on,
                text:
                    'العياط غرب - شارع الجيش - أمام سلم السكة الحديد بجوار صيدلية -د. لويز',
                onTap: () {
                  _launchUrl('https://maps.google.com/?q=العياط+شارع+الجيش');
                },
              ),
              _buildContactItem(
                icon: Icons.email,
                text: 'info@alzefr.com',
                onTap: () {
                  _launchUrl('mailto:info@alzefr.com');
                },
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  _buildSocialIcon(Icons.facebook, () {
                    _launchUrl('https://www.facebook.com/ELZEFIR');
                  }),
                  SizedBox(width: 12.w),
                  _buildFontAwesomeSocialIcon(FontAwesomeIcons.tiktok, () {
                    _launchUrl('https://www.tiktok.com/@elzefir_fish');
                  }),
                  SizedBox(width: 12.w),
                  _buildFontAwesomeSocialIcon(FontAwesomeIcons.instagram, () {
                    _launchUrl('https://www.snapchat.com/@elzefir_fish');
                  }),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ساعات العمل',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                padding: EdgeInsets.all(16.sp),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.05),
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: Colors.white10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: Color(0xFFFACC15),
                          size: 16.iconRes,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'السبت - الخميس',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.h),
                    Padding(
                      padding: EdgeInsets.only(right: 24.w),
                      child: Text(
                        '10:00 ص - 1:00 ص',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: Divider(color: Colors.white10, height: 1),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return Column(
      mainAxisAlignment: .start,
      crossAxisAlignment: .start,
      children: [
        Row(
          mainAxisAlignment: .start,
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: const Color(0xFFFACC15).withValues(alpha: 0.15),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.set_meal,
                color: Color(0xFFFACC15),
                size: 20.iconRes,
              ),
            ),
            const SizedBox(width: 10),
            const Text(
              'مطعم أسماك الزفر',
              style: TextStyle(
                fontFamily: 'Libre Caslon Text',
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        Text(
          'نقدم أشهى المأكولات البحرية الطازجة منذ أكثر من 20 عامًا بجودة عالية وأسعار تناسب الجميع.',
          style: TextStyle(color: Colors.white70, height: 1.5, fontSize: 13.sp),
        ),
        SizedBox(height: 16.h),
        Wrap(
          spacing: 6,
          runSpacing: 6,
          crossAxisAlignment: .start,
          children: [
            _buildBadge('طازج يومياً 🐟'),
            _buildBadge('توصيل سريع 🚚'),
            _buildBadge('7500+ تقييم ⭐'),
          ],
        ),
        SizedBox(height: 32.h),
        Divider(color: Colors.white12),
        SizedBox(height: 24.h),
        Text(
          'تواصل معنا',
          style: TextStyle(
            fontFamily: 'Libre Caslon Text',
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 16.h),
        _buildContactItem(
          icon: Icons.phone,
          text: '01124497981',
          onTap: () {
            _launchUrl('tel:+201124497981');
          },
        ),
        _buildContactItem(
          icon: Icons.location_on,
          text: 'العياط - شارع الجيش',
          onTap: () {
            _launchUrl('https://maps.google.com/?q=العياط+شارع+الجيش');
          },
        ),
        _buildContactItem(
          icon: Icons.email,
          text: 'info@alzefr.com',
          onTap: () {
            _launchUrl('mailto:info@alzefr.com');
          },
        ),
        SizedBox(height: 24.h),
        Row(
          children: [
            _buildSocialIcon(Icons.facebook, () {}),
            SizedBox(width: 12.w),
            _buildFontAwesomeSocialIcon(FontAwesomeIcons.instagram, () {}),
          ],
        ),
        SizedBox(height: 32.h),
        Divider(color: Colors.white12),
        SizedBox(height: 24.h),
        Text(
          'ساعات العمل',
          style: TextStyle(
            fontFamily: 'Libre Caslon Text',
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 16.h),
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.05),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.white10),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'السبت - الخميس: 10:00 ص - 1:00 ص',
                style: TextStyle(color: Colors.white70, fontSize: 13),
              ),
              SizedBox(height: 8),
              Divider(color: Colors.white10),
              SizedBox(height: 8),
              Text(
                'الجمعة: 1:00 م - 2:00 ص',
                style: TextStyle(color: Colors.white70, fontSize: 13),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildContactItem({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(0.r),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 4.h),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(8.sp),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.08),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icon,
                  color: const Color(0xFFFACC15),
                  size: 16.iconRes,
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Text(
                  text,
                  overflow: .visible,
                  style: TextStyle(color: Colors.white70, fontSize: 18.sp),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFontAwesomeIconsContactItem(
    FaIconData icon,
    String text,
    VoidCallback onTap,
  ) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8.r),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 4.h),
          child: Row(
            mainAxisSize: .min,
            children: [
              Container(
                padding: EdgeInsets.all(8.sp),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.08),
                  shape: BoxShape.circle,
                ),
                child: FaIcon(
                  icon,
                  color: const Color(0xFFFACC15),
                  size: 16.iconRes,
                ),
              ),
              SizedBox(width: 12.w),
              Text(
                text,
                style: TextStyle(color: Colors.white70, fontSize: 18.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFontAwesomeSocialIcon(FaIconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50.r),
      child: Container(
        padding: EdgeInsets.all(10.sp),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.08),
          shape: BoxShape.circle,
        ),
        child: FaIcon(icon, color: Colors.white, size: 18.iconRes),
      ),
    );
  }

  Widget _buildSocialIcon(IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50.r),
      child: Container(
        padding: EdgeInsets.all(10.sp),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.08),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: Colors.white, size: 18.iconRes),
      ),
    );
  }

  Widget _buildBadge(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.06),
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: Colors.white10),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white70,
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
