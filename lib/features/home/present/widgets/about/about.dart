import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/extensions/device_type_extension.dart';
import '../../../../../core/utils/extensions/theme_ext.dart';
import '../../../../../core/widgets/custom_image.dart';
import '../restaurant_info_builder.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  static const Color primary = Color(0xFF001629);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          decoration: BoxDecoration(
            color: const Color(0xFFFFEADE),
            borderRadius: .circular(12),
            border: Border.all(
              color: const Color(0xFFC3C7CE).withValues(alpha: .1),
            ),
            boxShadow: const [
              BoxShadow(
                blurRadius: 2,
                offset: Offset(0, 1),
                color: Color.fromRGBO(0, 0, 0, .05),
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
      aspectRatio: 1.45,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12),
        bottomLeft: Radius.circular(12),
      ),
    );
  }
}

class _ContentSection extends StatelessWidget {
  const _ContentSection();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(context.isMob ? 20.w : 48.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10.h,
        children: [
          Text(
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
                  color: const Color(0xFF28180D),
                ),
              );
            },
          ),
          Text(
            'في مطعم الزفر نقدم أفضل أنواع الأسماك والمأكولات البحرية الطازجة، '
            'المحضرة يوميًا بأجود المكونات وعلى أيدي أمهر الطهاة. هدفنا أن نقدم '
            'تجربة مميزة تجمع بين الطعم الأصيل والجودة العالية والخدمة الممتازة.',
            textAlign: TextAlign.right,
            style: context.textTheme.bodyLarge?.copyWith(
              color: const Color(0xFF42474D),
            ),
          ),
          const Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _AboutFeature(icon: Icons.set_meal_rounded, label: 'طازج يومياً'),
              _AboutFeature(
                icon: Icons.delivery_dining_rounded,
                label: 'توصيل سريع',
              ),
              _AboutFeature(icon: Icons.verified_rounded, label: 'جودة عالية'),
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
  final String label;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    return Container(
      padding: .symmetric(horizontal: 10.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.7),
        borderRadius: .circular(999),
        border: Border.all(color: colors.brandGold.withValues(alpha: 0.45)),
      ),
      child: Row(
        mainAxisSize: .min,
        spacing: 5.w,
        children: [
          Icon(icon, size: 15.r, color: colors.brandGoldHover),
          Text(
            label,
            style: context.textTheme.labelSmall?.copyWith(
              fontWeight: .w700,
              color: colors.brandNavyDeep,
            ),
          ),
        ],
      ),
    );
  }
}
