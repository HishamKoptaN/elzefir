import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerQuickOrderWidget extends StatelessWidget {
  const DrawerQuickOrderWidget({super.key});

  Future<void> _launch(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: .symmetric(horizontal: 4.w, vertical: 4.h),
          child: Text(
            'الطلب السريع والمباشر',
            style: textTheme.bodySmall?.copyWith(
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ),
        SizedBox(height: 6.h),
        Material(
          color: const Color(0xFF25D366), // WhatsApp green
          borderRadius: BorderRadius.circular(16.r),
          elevation: 2,
          shadowColor: const Color(0xFF25D366).withValues(alpha: 0.3),
          child: InkWell(
            borderRadius: BorderRadius.circular(16.r),
            onTap: () {
              _launch('https://wa.me/201124497981');
            },
            child: Padding(
              padding: .symmetric(horizontal: 14.w, vertical: 12.h),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.whatsapp,
                    color: Colors.white,
                    size: 22.sp,
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'اطلب مباشرة واتساب',
                          style: textTheme.bodyMedium?.copyWith(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Text(
                          '01124497981',
                          textDirection: TextDirection.ltr,
                          style: textTheme.bodySmall?.copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: .symmetric(
                      horizontal: 10.w,
                      vertical: 4.h,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.25),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Text(
                      'إرسال',
                      style: textTheme.bodySmall?.copyWith(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Material(
          color: colorScheme.primary,
          borderRadius: BorderRadius.circular(16.r),
          elevation: 2,
          shadowColor: colorScheme.primary.withValues(alpha: 0.3),
          child: InkWell(
            borderRadius: BorderRadius.circular(16.r),
            onTap: () {
              _launch('tel:01008673836');
            },
            child: Padding(
              padding: .symmetric(horizontal: 14.w, vertical: 12.h),
              child: Row(
                children: [
                  Container(
                    padding: .all(6.r),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: FaIcon(
                      FontAwesomeIcons.phone,
                      color: Colors.white,
                      size: 18.sp,
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'الخط الساخن والدليفري',
                          style: textTheme.bodyMedium?.copyWith(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Text(
                          '01008673836',
                          textDirection: TextDirection.ltr,
                          style: textTheme.bodySmall?.copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: colorScheme.surfaceContainerHighest,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: .symmetric(
                      horizontal: 10.w,
                      vertical: 4.h,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.18),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Text(
                      'اتصال',
                      style: textTheme.bodySmall?.copyWith(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
