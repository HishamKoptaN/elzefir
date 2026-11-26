import 'package:flutter/material.dart';

import '../../../../../../core/utils/extensions/theme_ext.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../generated/assets.gen.dart';
import '../store_status_builder.dart';

class DrawerHeaderWidget extends StatelessWidget {
  const DrawerHeaderWidget({super.key, required this.pulseAnimation});

  final Animation<double> pulseAnimation;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            context.colorScheme.brandCream,
            context.colorScheme.surfaceContainerLowest,
            context.colorScheme.surface,
          ],
        ),
        border: Border(
          bottom: BorderSide(
            color: context.colorScheme.slateBorder,
            width: 1.5,
          ),
        ),
      ),
      padding: EdgeInsets.only(
        top: 14.h,
        bottom: 16.h,
        left: 16.w,
        right: 16.w,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Close button
          Positioned(
            left: 0,
            top: 0,
            child: Material(
              color: context.colorScheme.slateBorder,
              shape: const CircleBorder(),
              child: InkWell(
                customBorder: const CircleBorder(),
                onTap: () {
                  Navigator.maybePop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FaIcon(
                    FontAwesomeIcons.xmark,
                    size: 16,
                    color: context.colorScheme.brandNavy,
                  ),
                ),
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Logo Container
              Container(
                width: 90,
                height: 90,
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: context.colorScheme.surface,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: context.colorScheme.outlineVariant,
                    width: 2,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: context.colorScheme.brandNavy.withValues(
                        alpha: 0.08,
                      ),
                      blurRadius: 16,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Image.asset(
                    Assets.logos.solidLogo.path,
                    fit: BoxFit.contain,
                    errorBuilder: (_, _, _) {
                      return Image.asset(
                        Assets.logos.logoPng.path,
                        fit: BoxFit.contain,
                        errorBuilder: (_, _, _) => FaIcon(
                          FontAwesomeIcons.utensils,
                          size: 36,
                          color: context.colorScheme.brandNavy,
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // Open status pill
              StoreStatusBuilder(
                builder: (context, workingHours) {
                  final isOpen = workingHours?.isOpenNow;
                  final bg = switch (isOpen) {
                    true => context.colorScheme.whatsappBg,
                    false => context.colorScheme.error.withValues(alpha: 0.08),
                    null => context.colorScheme.slateBorder,
                  };
                  final border = switch (isOpen) {
                    true => context.colorScheme.statusBadgeBorder,
                    false => context.colorScheme.error.withValues(alpha: 0.3),
                    null => context.colorScheme.outlineVariant,
                  };
                  final textCol = switch (isOpen) {
                    true => context.colorScheme.whatsappTitle,
                    false => context.colorScheme.error,
                    null => context.colorScheme.brandNavy,
                  };
                  final dotCol = switch (isOpen) {
                    true => context.colorScheme.statusDot,
                    false => context.colorScheme.error,
                    null => context.colorScheme.onSurfaceVariant,
                  };
                  final statusText = switch (isOpen) {
                    true => 'مفتوح الآن لاستقبال الطلبات',
                    false => 'مغلق الآن',
                    null => 'جارٍ التحقق من الحالة',
                  };

                  return Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: bg,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: border),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FadeTransition(
                          opacity: pulseAnimation,
                          child: Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: dotCol,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          statusText,
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: textCol,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 6),
              // Slogan
              Text(
                'السمك على أصوله • طازج يومياً',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: context.colorScheme.brandNavy.withValues(alpha: 0.75),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
