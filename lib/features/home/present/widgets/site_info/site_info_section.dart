import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/extensions/device_type_extension.dart';
import '../../../../../core/utils/extensions/theme_ext.dart';
import 'site_info_cards.dart';

/// النسخة Flutter من قسم تعريف المطعم الذي كان يُعرض كـ HTML ثابت أسفل التطبيق.
class SiteInfoSection extends StatelessWidget {
  const SiteInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    return Container(
      width: .infinity,
      padding: .symmetric(
        vertical: context.isMob ? 28.h : 40.h,
        horizontal: context.isMob ? 16.w : 28.w,
      ),
      decoration: BoxDecoration(
        color: colors.brandNavyDeep,
        borderRadius: .circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: .start,
        spacing: 16.h,
        children: [
          Text(
            'مطعم أسماك الزفر',
            style: context.textTheme.headlineSmall?.copyWith(
              color: colors.brandSand,
              fontWeight: .w800,
            ),
          ),
          Text(
            'الوجهة الأولى لعشاق المأكولات البحرية والأسماك الطازجة يومياً في العياط، الجيزة. أسماك مشوية ومقلية، طواجن سيفود، وجمبري بأعلى معايير الجودة والنظافة، مع خدمة توصيل سريعة تغطي المدينة والمناطق المجاورة.',
            style: context.textTheme.bodyMedium?.copyWith(
              color: colors.slateCardBg,
            ),
          ),
          const SiteInfoCardsGrid(),
          const _ServicesBlock(),
        ],
      ),
    );
  }
}

class _ServicesBlock extends StatelessWidget {
  const _ServicesBlock();

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    return Column(
      crossAxisAlignment: .start,
      spacing: 8.h,
      children: [
        Text(
          'خدماتنا ومميزاتنا',
          style: context.textTheme.titleLarge?.copyWith(
            color: colors.brandGold,
            fontWeight: .w700,
          ),
        ),
        Text(
          'نلتزم بأعلى معايير الجودة والنظافة والاشتراطات الصحية. نوفر صالة طعام مريحة لاستقبال الزوار، وخدمة استلام سريعة من الفرع، وخدمة توصيل تغطي مدينة العياط والمناطق المجاورة بتغليف حراري محكم يحافظ على سخونة وجودة الطعام، كما نجهز العزائم والمناسبات الكبرى بأفضل العروض والأسعار.',
          style: context.textTheme.bodyMedium?.copyWith(
            color: colors.slateCardBg,
          ),
        ),
      ],
    );
  }
}
