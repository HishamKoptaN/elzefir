import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';

class QuickHotlineButton extends StatelessWidget {
  const QuickHotlineButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () async {
          final uri = Uri.parse('tel:01008673836');
          await launchUrl(uri, mode: .externalApplication);
        },
        borderRadius: .circular(16.r),
        child: Container(
          padding: .all(8.r),
          decoration: BoxDecoration(
            color: context.colorScheme.hotlineBg,
            border: Border.all(color: context.colorScheme.hotlineBorder),
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
                    'التليفون',
                    style: context.textTheme.labelSmall?.copyWith(
                      fontWeight: .w100,
                      color: context.colorScheme.hotlineTitle,
                    ),
                  ),
                  Text(
                    '01008673836',
                    textDirection: .ltr,
                    style: context.textTheme.labelSmall?.copyWith(
                      fontWeight: .w900,
                      letterSpacing: 0.5,
                      color: context.colorScheme.hotlineSubtitle,
                    ),
                  ),
                ],
              ),
              Container(
                height: 32.r,
                width: 32.r,
                decoration: BoxDecoration(
                  shape: .circle,
                  color: context.colorScheme.hotlineIconBg,
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
                    FontAwesomeIcons.phone,
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
