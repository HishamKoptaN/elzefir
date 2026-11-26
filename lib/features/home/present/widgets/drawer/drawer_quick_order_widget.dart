import 'package:flutter/material.dart';

import '../../../../../../core/utils/extensions/theme_ext.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
          child: Text(
            'الطلب السريع والمباشر',
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: context.colorScheme.onSurfaceVariant, // slate-400
            ),
          ),
        ),
        SizedBox(height: 6.h),
        // WhatsApp Action
        Material(
          color: context.colorScheme.whatsappIconBg,
          borderRadius: BorderRadius.circular(16),
          elevation: 2,
          shadowColor: context.colorScheme.whatsappIconBg.withValues(
            alpha: 0.3,
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: () {
              _launch('https://wa.me/201124497981');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.whatsapp,
                    color: context.colorScheme.onPrimary,
                    size: 22,
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'اطلب مباشرة واتساب',
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: 13,
                            fontWeight: FontWeight.w800,
                            color: context.colorScheme.onPrimary,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          '01124497981',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: context.colorScheme.onPrimary.withValues(
                              alpha: 0.7,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: context.colorScheme.onPrimary.withValues(
                        alpha: 0.25,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'إرسال',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: context.colorScheme.onPrimary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 10.h),
        // Hotline Call Action
        Material(
          color: context.colorScheme.brandNavy,
          borderRadius: BorderRadius.circular(16),
          elevation: 2,
          shadowColor: context.colorScheme.brandNavy.withValues(alpha: 0.3),
          child: InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: () {
              _launch('tel:01008673836');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: context.colorScheme.onPrimary.withValues(
                        alpha: 0.15,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: FaIcon(
                      FontAwesomeIcons.phone,
                      color: context.colorScheme.onPrimary,
                      size: 16,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'الخط الساخن والدليفري',
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: 13,
                            fontWeight: FontWeight.w800,
                            color: context.colorScheme.onPrimary,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          '01008673836',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: context.colorScheme.outlineVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: context.colorScheme.onPrimary.withValues(
                        alpha: 0.18,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'اتصال',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: context.colorScheme.onPrimary,
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
