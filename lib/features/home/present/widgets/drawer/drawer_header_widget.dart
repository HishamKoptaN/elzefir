import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../generated/assets.gen.dart';

class DrawerHeaderWidget extends StatefulWidget {
  const DrawerHeaderWidget({super.key, required this.pulseAnimation});

  final Animation<double> pulseAnimation;

  @override
  State<DrawerHeaderWidget> createState() {
    return _DrawerHeaderWidgetState();
  }
}

class _DrawerHeaderWidgetState extends State<DrawerHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: .topCenter,
          end: .bottomCenter,
          colors: [
            colorScheme.surfaceContainerLow,
            colorScheme.surfaceContainer,
            colorScheme.surface,
          ],
        ),
        border: Border(
          bottom: BorderSide(
            color: colorScheme.primary.withValues(alpha: 0.1),
            width: 1.5.r,
          ),
        ),
      ),
      padding: .only(
        top: 14.h,
        bottom: 16.h,
        left: 16.w,
        right: 16.w,
      ),
      child: Stack(
        alignment: .center,
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Material(
              color: colorScheme.primary.withValues(alpha: 0.08),
              shape: const CircleBorder(),
              child: InkWell(
                customBorder: const CircleBorder(),
                onTap: () {
                  Navigator.maybePop(context);
                },
                child: Padding(
                  padding: .all(8.r),
                  child: FaIcon(
                    FontAwesomeIcons.xmark,
                    size: 20.sp,
                    color: colorScheme.primary,
                  ),
                ),
              ),
            ),
          ),
          Column(
            mainAxisSize: .min,
            children: [
              Container(
                width: 90.r,
                height: 90.r,
                padding: .all(6.r),
                decoration: BoxDecoration(
                  color: colorScheme.surface,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: colorScheme.primary.withValues(alpha: 0.2),
                    width: 2.r,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: colorScheme.primary.withValues(alpha: 0.08),
                      blurRadius: 16.r,
                      offset: Offset(0, 6.h),
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
                          size: 40.sp,
                          color: colorScheme.primary,
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                padding: .symmetric(
                  horizontal: 12.w,
                  vertical: 4.h,
                ),
                decoration: BoxDecoration(
                  color: colorScheme.tertiaryContainer,
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(
                    color: colorScheme.tertiary.withValues(alpha: 0.5),
                  ),
                ),
                child: Row(
                  mainAxisSize: .min,
                  children: [
                    FadeTransition(
                      opacity: widget.pulseAnimation,
                      child: Container(
                        width: 8.r,
                        height: 8.r,
                        decoration: BoxDecoration(
                          color: colorScheme.tertiary,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    SizedBox(width: 6.w),
                    Text(
                      'مفتوح الآن لاستقبال الطلبات',
                      style: textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onTertiaryContainer,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6.h),
              Text(
                'السمك على أصوله • طازج يومياً',
                style: textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: colorScheme.primary.withValues(alpha: 0.75),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
