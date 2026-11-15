import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/utils/extensions/theme_ext.dart';
import '../../../../core/widgets/custom_image.dart';

import 'dart:ui';

import '../../../../generated/assets.gen.dart';
import '../bloc/home_bloc.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: .circular(12),
      child: SizedBox(
        height: 250.h,
        width: .infinity,
        child: Stack(
          fit: .expand,
          textDirection: .rtl,
          children: [
            CustomImage(image: Assets.images.offer.path, fit: .cover),
            Container(
              padding: .symmetric(vertical: 6.h, horizontal: 2.w),
              decoration: BoxDecoration(
                color: const Color(0xFFd87459).withValues(alpha: 0.2),
                border: Border.all(
                  color: const Color(0xFFd87459).withValues(alpha: 0.3),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: .centerLeft,
                  end: .centerRight,
                  colors: [
                    context.colorScheme.primary.withValues(alpha: .9),
                    context.colorScheme.primary.withValues(alpha: .0),
                  ],
                ),
              ),
            ),
            Align(
              alignment: .centerRight,
              child: Padding(
                padding: .all(30.h),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 500),
                  child: Column(
                    mainAxisAlignment: .center,
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        'مطعم أسماك الزفر',
                        textAlign: .right,
                        style: context.textTheme.displaySmall?.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 25.h),
                      const OpenStatusBadge(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OpenStatusBadge extends StatelessWidget {
  const OpenStatusBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: getIt<HomeBloc>(),
      builder: (context, state) {
        final workingHours = state.mapOrNull(
          loaded: (s) {
            return s.homeRes?.workingHours;
          },
        );
        final isOpen = workingHours?.isOpenNow ?? true;
        final statusText = isOpen ? 'مفتوح الآن' : 'مغلق الآن';
        final dotColor = isOpen
            ? const Color(0xFF22C55E)
            : const Color(0xFFEF4444);

        return ClipRRect(
          borderRadius: BorderRadius.circular(9999),
          child: BackdropFilter(
            filter: .blur(sigmaX: 1.0, sigmaY: 1.0),
            child: Container(
              padding: .symmetric(vertical: 7.h, horizontal: 22.w),
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.45),
                borderRadius: .circular(9999),
                border: Border.all(
                  color: Colors.white.withValues(alpha: 0.1),
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisSize: .min,
                crossAxisAlignment: .center,
                spacing: 10.w,
                children: [
                  Text(
                    statusText,
                    style: context.textTheme.labelLarge?.copyWith(
                      fontWeight: .w600,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 12.r,
                    width: 12.r,
                    decoration: BoxDecoration(color: dotColor, shape: .circle),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
