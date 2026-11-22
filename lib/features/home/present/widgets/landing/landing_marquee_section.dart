import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';

class LandingMarqueeSection extends StatefulWidget {
  const LandingMarqueeSection({super.key});
  @override
  State<LandingMarqueeSection> createState() => _LandingMarqueeSectionState();
}

class _LandingMarqueeSectionState extends State<LandingMarqueeSection>
    with SingleTickerProviderStateMixin {
  static const _marqueeDuration = Duration(seconds: 14);
  static const _itemWidth = 170;
  static const _items = <String>[
    'سمك وقار بلدي',
    'دنيس طازج',
    'جمبري جامبو',
    'طواجن إسكندراني',
    'كابوريا مبطرخة',
    'كالماري مقرمش',
    'أرز صيادية فاخر',
  ];
  late final AnimationController _scroll;
  @override
  void initState() {
    super.initState();
    _scroll = AnimationController(vsync: this, duration: _marqueeDuration)
      ..repeat(reverse: false);
  }

  @override
  void dispose() {
    _scroll.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    return Container(
      width: .infinity,
      padding: .symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        color: colors.slateCardBg,
        borderRadius: .circular(999),
      ),
      child: AnimatedBuilder(
        animation: _scroll,
        builder: (context, child) {
          return SizedBox(
            height: 34.h,
            child: Directionality(
              textDirection: .ltr,
              child: Transform.translate(
                offset: Offset(-_scroll.value * _itemWidth.w, 0),
                child: Row(
                  children: [
                    for (final item in _items) ...[
                      SizedBox(
                        width: 170,
                        child: Row(
                          mainAxisSize: .min,
                          children: [
                            Container(
                              width: 6,
                              height: 6,
                              decoration: BoxDecoration(
                                shape: .circle,
                                color: colors.brandGold,
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Expanded(
                              child: Text(
                                item,
                                maxLines: 1,
                                overflow: .ellipsis,
                                style: context.textTheme.labelMedium?.copyWith(
                                  color: colors.brandGold,
                                  fontWeight: .w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 24.w),
                    ],
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
