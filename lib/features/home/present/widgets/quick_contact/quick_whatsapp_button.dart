import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';

class QuickWhatsappButton extends StatelessWidget {
  const QuickWhatsappButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () async {
          final uri = Uri.parse('https://wa.me/201124497981');
          await launchUrl(uri, mode: .externalApplication);
        },
        borderRadius: .circular(16.r),
        child: Container(
          padding: .all(12.r),
          decoration: BoxDecoration(
            color: context.colorScheme.whatsappBg,
            border: Border.all(color: context.colorScheme.whatsappBorder),
            borderRadius: .circular(16.r),
          ),
          child: Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Column(
                crossAxisAlignment: .start,
                mainAxisSize: .min,
                children: [
                  Text(
                    'طلب واتساب',
                    style: context.textTheme.bodySmall?.copyWith(
                      fontWeight: .bold,
                      fontSize: 11.sp,
                      color: context.colorScheme.whatsappTitle,
                    ),
                  ),
                  Text(
                    '01124497981',
                    textDirection: TextDirection.ltr,
                    style: context.textTheme.bodyMedium?.copyWith(
                      fontWeight: .w800,
                      fontSize: 12.sp,
                      letterSpacing: 0.5,
                      color: context.colorScheme.whatsappSubtitle,
                    ),
                  ),
                ],
              ),
              Container(
                width: 32.r,
                height: 32.r,
                decoration: BoxDecoration(
                  shape: .circle,
                  color: context.colorScheme.whatsappIconBg,
                  boxShadow: [
                    BoxShadow(
                      color: context.colorScheme.shadow.withValues(alpha: 0.08),
                      blurRadius: 4.r,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Center(
                  child: FaIcon(
                    FontAwesomeIcons.whatsapp,
                    size: 18.r,
                    color: context.colorScheme.onPrimary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

