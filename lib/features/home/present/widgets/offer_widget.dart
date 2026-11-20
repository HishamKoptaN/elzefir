import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                      Row(
                        mainAxisSize: .min,
                        spacing: 8.w,
                        children: [
                          _Pill(
                            text: 'عرض اليوم',
                            background: colors.brandGold,
                            foreground: colors.brandNavyDeep,
                          ),
                          _Pill(
                            text: 'وفر 90 ج.م',
                            background: colors.brandCoral,
                            foreground: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
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
                      SizedBox(height: 12.h),
                      const Wrap(
                        spacing: 8,
                        runSpacing: 6,
                        children: [
                          _FeatureChip(
                            icon: Icons.groups_rounded,
                            label: 'تكفي 4-5 أفراد',
                          ),
                          _FeatureChip(
                            icon: Icons.local_fire_department_rounded,
                            label: 'شوي وقلي فوري',
                          ),
                          _FeatureChip(
                            icon: Icons.delivery_dining_rounded,
                            label: 'توصيل ساخن',
                          ),
                        ],
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
                          Container(
                            padding: .symmetric(horizontal: 8.w, vertical: 4.h),
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 0.15),
                              borderRadius: .circular(8.r),
                            ),
                            child: Text(
                              'قبل 380 ج.م',
                              style: context.textTheme.bodyMedium?.copyWith(
                                color: Colors.white70,
                                decoration: .lineThrough,
                                fontWeight: .w600,
                              ),
                            ),
                          ),
                          FilledButton.icon(
                            onPressed: () async {
                              final uri = Uri.https('wa.me', '/201124497981', {
                                'text': 'مرحباً، أريد طلب ${info.offerTitle}',
                              });
                              await launchUrl(uri, mode: .externalApplication);
                            },
                            style: FilledButton.styleFrom(
                              backgroundColor: colors.brandGold,
                              foregroundColor: colors.brandNavyDeep,
                              padding: .symmetric(
                                horizontal: 16.w,
                                vertical: 12.h,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: .circular(12.r),
                              ),
                              textStyle: context.textTheme.labelLarge?.copyWith(
                                fontWeight: .w800,
                              ),
                            ),
                            icon: const FaIcon(
                              FontAwesomeIcons.whatsapp,
                              size: 16,
                            ),
                            label: Text(info.offerCta),
                          ),
                          OutlinedButton.icon(
                            onPressed: () async {
                              final uri = Uri(scheme: 'tel', path: '+201124497981');
                              await launchUrl(uri);
                            },
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.white,
                              side: BorderSide(color: Colors.white.withValues(alpha: 0.8)),
                              padding: .symmetric(
                                horizontal: 16.w,
                                vertical: 12.h,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: .circular(12.r),
                              ),
                              textStyle: context.textTheme.labelLarge?.copyWith(
                                fontWeight: .w700,
                              ),
                            ),
                            icon: const Icon(Icons.call, size: 18),
                            label: const Text('اتصل الآن'),
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

class _Pill extends StatelessWidget {
  const _Pill({
    required this.text,
    required this.background,
    required this.foreground,
  });

  final String text;
  final Color background;
  final Color foreground;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(horizontal: 10.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: background,
        borderRadius: .circular(999),
      ),
      child: Text(
        text,
        style: context.textTheme.labelSmall?.copyWith(
          color: foreground,
          fontWeight: .w800,
        ),
      ),
    );
  }
}

class _FeatureChip extends StatelessWidget {
  const _FeatureChip({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.12),
        borderRadius: .circular(999),
        border: Border.all(color: Colors.white.withValues(alpha: 0.18)),
      ),
      child: Row(
        mainAxisSize: .min,
        spacing: 4.w,
        children: [
          Icon(icon, size: 13.r, color: Colors.white),
          Text(
            label,
            style: context.textTheme.labelSmall?.copyWith(
              color: Colors.white,
              fontWeight: .w600,
            ),
          ),
        ],
      ),
    );
  }
}
