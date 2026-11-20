import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';

/// البطاقات التعريفية بأقسام المطعم، المنقولة من القسم الثابت في `web/index.html`.
class SiteInfoCardsGrid extends StatelessWidget {
  const SiteInfoCardsGrid({super.key});

  static const _items = [
    _SiteInfoItem(
      title: 'الأسماك الطازجة بالكيلو',
      description:
          'بلطي، بوري، دنيس، قاروص، قار، مكرونة سويسي، وبربون. بطرق طهي متعددة: شوي على الفحم، شوي سنجاري، شوي ردة، طهي بالزيت والليمون، وقلي ذهبي مقرمش.',
    ),
    _SiteInfoItem(
      title: 'الجمبري والمأكولات البحرية',
      description:
          'جمبري جامبو ومقاسات متنوعة مشوي ومقلي وبترفلاي، كاليماري طازج، كابوريا ممتلئة، وجندوفلي، مع طواجن سيفود بالصلصة الحمراء أو الكريمة وشوربة سيفود غنية.',
    ),
    _SiteInfoItem(
      title: 'الوجبات والساندوتشات',
      description:
          'ساندوتشات جمبري وفيليه وكفتة جمبري في خبز طازج، ووجبات سريعة وعائلية متكاملة تناسب جميع أفراد الأسرة.',
    ),
    _SiteInfoItem(
      title: 'المقبلات والأطباق الجانبية',
      description:
          'أرز صيادية بالبصل المكرمل، أرز بالجمبري، ملوخية بالجمبري، سلطة خضراء بلدي، طحينة سمسم، بابا غنوج، ومخللات طازجة.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final twoColumns = constraints.maxWidth >= 900;
        final cardWidth = twoColumns
            ? (constraints.maxWidth - 12.w) / 2
            : constraints.maxWidth;
        return Wrap(
          spacing: 12.w,
          runSpacing: 12.h,
          children: [
            for (final item in _items)
              SizedBox(width: cardWidth, child: _SiteInfoCard(item: item)),
          ],
        );
      },
    );
  }
}

class _SiteInfoItem {
  const _SiteInfoItem({required this.title, required this.description});

  final String title;
  final String description;
}

class _SiteInfoCard extends StatelessWidget {
  const _SiteInfoCard({required this.item});

  final _SiteInfoItem item;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    return Container(
      padding: .all(16.r),
      decoration: BoxDecoration(
        color: colors.brandNavyCard,
        borderRadius: .circular(14.r),
        border: .all(color: colors.brandNavyLight),
      ),
      child: Column(
        crossAxisAlignment: .start,
        spacing: 8.h,
        children: [
          Text(
            item.title,
            style: context.textTheme.titleMedium?.copyWith(
              color: colors.brandGold,
              fontWeight: .w700,
            ),
          ),
          Text(
            item.description,
            style: context.textTheme.bodyMedium?.copyWith(
              color: colors.slateCardBg,
            ),
          ),
        ],
      ),
    );
  }
}
