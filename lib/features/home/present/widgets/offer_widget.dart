import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/utils/extensions/theme_ext.dart';
import '../../../../core/widgets/custom_image.dart';

import '../../../../generated/assets.gen.dart';
import 'restaurant_info_builder.dart';
import 'store_status_builder.dart';

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
            RestaurantInfoBuilder(
              builder: (context, info) {
                return CustomImage(
                  image: info.offerImage ?? Assets.images.offer.path,
                  fit: .cover,
                );
              },
            ),
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
                      RestaurantInfoBuilder(
                        builder: (context, info) {
                          return Column(
                            mainAxisSize: .min,
                            crossAxisAlignment: .start,
                            children: [
                              Text(
                                info.name,
                                textAlign: .right,
                                maxLines: 1,
                                overflow: .ellipsis,
                                style: context.textTheme.displaySmall?.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                              const OpenStatusBadge(),
                              SizedBox(height: 8.h),
                              Text(
                                info.offerTitle,
                                textAlign: .right,
                                maxLines: 2,
                                overflow: .ellipsis,
                                style: context.textTheme.titleLarge?.copyWith(
                                  color: Colors.white,
                                  fontWeight: .bold,
                                ),
                              ),
                              Text(
                                info.offerDescription,
                                textAlign: .right,
                                maxLines: 2,
                                overflow: .ellipsis,
                                style: context.textTheme.bodySmall?.copyWith(
                                  color: Colors.white70,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                mainAxisSize: .min,
                                spacing: 12.w,
                                children: [
                                  Text(
                                    '${info.offerPrice} ج.م',
                                    style: context.textTheme.titleMedium
                                        ?.copyWith(
                                          color: Colors.white,
                                          fontWeight: .w900,
                                        ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () async {
                                      final uri = Uri.https(
                                        'wa.me',
                                        '/201124497981',
                                        {
                                          'text':
                                              'مرحباً، أريد طلب ${info.offerTitle}',
                                        },
                                      );
                                      await launchUrl(
                                        uri,
                                        mode: .externalApplication,
                                      );
                                    },
                                    child: Text(info.offerCta),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      ),
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
    return StoreStatusBuilder(
      builder: (context, workingHours) {
        final isOpen = workingHours?.isOpenNow;
        final statusText = switch (isOpen) {
          true => 'مفتوح الآن',
          false => 'مغلق الآن',
          null => 'جارٍ التحقق',
        };
        final dotColor = switch (isOpen) {
          true => const Color(0xFF22C55E),
          false => const Color(0xFFEF4444),
          null => const Color(0xFF9CA3AF),
        };

        return ClipRRect(
          borderRadius: .circular(9999),
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
