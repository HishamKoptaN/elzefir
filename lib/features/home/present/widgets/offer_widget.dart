import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/utils/extensions/device_type_extension.dart';
import '../../../../core/utils/extensions/theme_ext.dart';
import '../../../../core/widgets/custom_image.dart';

import '../../../../generated/assets.gen.dart';
import '../../domain/entities/restaurant_info_entity.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // بيانات العرض ثابتة الآن (محتوى العرض يظهر بدون اعتماد على الفايرستور).
    final info = RestaurantInfoEntity.fallback;
    final colors = context.colorScheme;

    return ClipRRect(
      borderRadius: .circular(20.r),
      child: SizedBox(
        height: context.isMob ? 340.h : 320.h,
        width: .infinity,
        child: Stack(
          fit: .expand,
          textDirection: .rtl,
          children: [
            CustomImage(
              image: info.offerImage ?? Assets.images.offer.path,
              fit: .cover,
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: .centerRight,
                  end: .centerLeft,
                  colors: [
                    colors.brandNavyDeep.withValues(alpha: 0.96),
                    colors.brandNavyDeep.withValues(alpha: 0.55),
                    colors.brandNavyDeep.withValues(alpha: 0.0),
                  ],
                  stops: const [0, 0.55, 1],
                ),
              ),
            ),
            Align(
              alignment: .centerRight,
              child: Padding(
                padding: .symmetric(
                  horizontal: context.isMob ? 18.w : 36.w,
                  vertical: 18.h,
                ),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 560),
                  child: Column(
                    mainAxisAlignment: .center,
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        info.name,
                        textAlign: .right,
                        maxLines: 1,
                        overflow: .ellipsis,
                        style: context.textTheme.bodyMedium?.copyWith(
                          color: Colors.white70,
                          fontWeight: .w600,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        info.offerTitle,
                        textAlign: .right,
                        maxLines: 2,
                        overflow: .ellipsis,
                        style: context.textTheme.headlineMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: .w900,
                          height: 1.15,
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        info.offerDescription,
                        textAlign: .right,
                        maxLines: 2,
                        overflow: .ellipsis,
                        style: context.textTheme.bodyMedium?.copyWith(
                          color: Colors.white70,
                        ),
                      ),
                      SizedBox(height: 14.h),
                      Wrap(
                        spacing: 10.w,
                        runSpacing: 8.h,
                        crossAxisAlignment: .center,
                        children: [
                          Text(
                            '${info.offerPrice} ج.م',
                            style: context.textTheme.headlineSmall?.copyWith(
                              color: colors.brandGold,
                              fontWeight: .w900,
                            ),
                          ),
                          Text(
                            '380 ج.م',
                            style: context.textTheme.bodySmall?.copyWith(
                              color: Colors.white54,
                              decoration: .lineThrough,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              final uri = Uri.https('wa.me', '/201124497981', {
                                'text': 'مرحباً، أريد طلب ${info.offerTitle}',
                              });
                              await launchUrl(uri, mode: .externalApplication);
                            },
                            child: Text(info.offerCta),
                          ),
                        ],
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
