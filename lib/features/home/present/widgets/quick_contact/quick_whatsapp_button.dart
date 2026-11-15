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
          await launchUrl(
            Uri.parse('https://wa.me/201124497981'),
            mode: .externalApplication,
          );
        },
        borderRadius: .circular(12.r),
        child: Container(
          padding: .all(8.r),
          decoration: BoxDecoration(
            color: context.colorScheme.whatsappBg,
            border: .all(color: context.colorScheme.whatsappBorder),
            borderRadius: .circular(12.r),
          ),
          child: Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Column(
                crossAxisAlignment: .start,
                mainAxisSize: .min,
                children: [
                  Text(
                    'واتساب',
                    style: context.textTheme.labelSmall?.copyWith(
                      fontWeight: .w100,
                      color: context.colorScheme.whatsappTitle,
                    ),
                  ),
                  Text(
                    '01124497981',
                    textDirection: .ltr,
                    style: context.textTheme.labelSmall?.copyWith(
                      fontWeight: .w900,
                      letterSpacing: 0.5,
                      color: context.colorScheme.whatsappSubtitle,
                    ),
                  ),
                ],
              ),
              Container(
                height: 32.r,
                width: 32.r,
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
                    size: 16.r,
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
