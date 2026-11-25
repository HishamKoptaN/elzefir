import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/extensions/device_type_extension.dart';
import '../../../../../core/utils/extensions/theme_ext.dart';
import '../../../../../core/widgets/custom_image.dart';
import '../restaurant_info_builder.dart';
import '../site_text/site_text.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          decoration: BoxDecoration(
            color: context.colorScheme.brandCreamDark,
            borderRadius: .circular(12),
            border: Border.all(
              color: context.colorScheme.brandGold.withValues(alpha: 0.2),
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 2,
                offset: const Offset(0, 1),
                color: context.colorScheme.shadow.withValues(alpha: 0.06),
              ),
            ],
          ),
          child: context.isMob
              ? Column(children: const [_ImageSection(), _ContentSection()])
              : SizedBox(
                  height: 440.h,
                  child: const Row(
                    children: [
                      Expanded(child: _ImageSection()),
                      Expanded(child: _ContentSection()),
                    ],
                  ),
                ),
        );
      },
    );
  }
}

class _ImageSection extends StatelessWidget {
  const _ImageSection();

  @override
  Widget build(BuildContext context) {
    return const CustomImage(
      image: 'assets/images/about.png',
      aspectRatio: 1.6,
      borderRadius: BorderRadius.all(Radius.circular(20)),
    );
  }
}

class _ContentSection extends StatelessWidget {
  const _ContentSection();
  @override
  Widget build(BuildContext context) {
    final chipStyle = context.textTheme.labelSmall?.copyWith(
      fontWeight: .w700,
      color: context.colorScheme.brandNavyDeep,
    );
    return Padding(
      padding: EdgeInsets.all(context.isMob ? 20.w : 48.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10.h,
        children: [
          SiteText(
            'about_title',
            'من نحن',
            textAlign: .start,
            style: context.textTheme.headlineLarge?.copyWith(
              color: context.colorScheme.brandNavyDeep,
              fontWeight: .w900,
            ),
          ),
          RestaurantInfoBuilder(
            builder: (context, info) {
              return Text(
                info.name,
                textAlign: TextAlign.right,
                style: context.textTheme.titleLarge?.copyWith(
                  color: context.colorScheme.brandNavyDeep,
                ),
              );
            },
          ),
          SiteText(
            'about_body',
            'في مطعم الزفر نقدم أفضل أنواع الأسماك والمأكولات البحرية الطازجة، '
                'المحضرة يوميًا بأجود المكونات وعلى أيدي أمهر الطهاة. هدفنا أن نقدم '
                'تجربة مميزة تجمع بين الطعم الأصيل والجودة العالية والخدمة الممتازة.',
            textAlign: TextAlign.right,
            style: context.textTheme.bodyLarge?.copyWith(
              color: context.colorScheme.slateText,
            ),
          ),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _AboutFeature(
                icon: Icons.set_meal_rounded,
                label: SiteText(
                  'about_feature_1',
                  'طازج يومياً',
                  style: chipStyle,
                ),
              ),
              _AboutFeature(
                icon: Icons.delivery_dining_rounded,
                label: SiteText(
                  'about_feature_2',
                  'توصيل سريع',
                  style: chipStyle,
                ),
              ),
              _AboutFeature(
                icon: Icons.verified_rounded,
                label: SiteText(
                  'about_feature_3',
                  'جودة عالية',
                  style: chipStyle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _AboutFeature extends StatelessWidget {
  const _AboutFeature({required this.icon, required this.label});

  final IconData icon;
  final Widget label;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    return Container(
      padding: .symmetric(horizontal: 10.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: colors.surface.withValues(alpha: 0.85),
        borderRadius: .circular(999),
        border: Border.all(color: colors.brandGold.withValues(alpha: 0.45)),
      ),
      child: Row(
        mainAxisSize: .min,
        spacing: 5.w,
        children: [
          Icon(icon, size: 15.r, color: colors.brandGoldHover),
          label,
        ],
      ),
    );
  }
}
