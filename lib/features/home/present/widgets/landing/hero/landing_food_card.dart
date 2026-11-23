import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/analytics/analytics_events.dart';
import '../../../../../../core/analytics/analytics_service.dart';
import '../../../../../../core/analytics/consent_service.dart';
import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/routing/utils/navigation_service.dart';
import '../../../../../../core/utils/extensions/theme_ext.dart';
import '../../../../../../core/widgets/custom_image.dart';
import '../../../../../products/domain/entities/product_entity.dart';

/// بيانات شريحة اختيارات الشيف المميزة. المنتج اختياري لعناصر العرض الاحتياطية.
typedef ChefSlide = ({
  String image,
  String name,
  String price,
  ProductEntity? product,
});

class LandingFoodCard extends StatelessWidget {
  const LandingFoodCard({super.key, required this.item, required this.index});

  final ChefSlide item;
  final int index;

  Future<void> _openDetails(BuildContext context) async {
    final product = item.product;
    if (product == null) return;
    try {
      if (await getIt<ConsentService>().isGranted()) {
        await getIt<AnalyticsService>().logEvent(
          name: AnalyticsEvents.viewProduct,
          parameters: {'product_id': product.id},
        );
      }
    } catch (_) {
      // Analytics is best-effort and must never break navigation.
    }
    if (context.mounted) {
      NavigationService.pushProductDetails(context: context, product: product);
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final theme = context.textTheme;

    return Padding(
      padding: .symmetric(horizontal: 4.w),
      child: InkWell(
        onTap: item.product == null ? null : () => _openDetails(context),
        borderRadius: .circular(16.r),
        child: ClipRRect(
          borderRadius: .circular(16.r),
          child: Stack(
            fit: .expand,
            children: [
              CustomImage(
                image: item.image,
                fit: .cover,
                borderRadius: .all(Radius.zero),
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: .topCenter,
                    end: .bottomCenter,
                    colors: [
                      colors.brandNavyDeep.withValues(alpha: 0),
                      colors.brandNavyDeep.withValues(alpha: 0.9),
                    ],
                  ),
                ),
              ),
              if (index == 0)
                Positioned(
                  top: 10.h,
                  right: 10.w,
                  child: Container(
                    padding: .symmetric(horizontal: 8.w, vertical: 4.h),
                    decoration: BoxDecoration(
                      color: colors.brandCoral,
                      borderRadius: .circular(999),
                    ),
                    child: Text(
                      'الأكثر طلباً',
                      style: theme.labelSmall?.copyWith(
                        color: colors.onSurface,
                        fontWeight: .w700,
                      ),
                    ),
                  ),
                ),
              Positioned(
                bottom: 10.h,
                right: 10.w,
                left: 10.w,
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        item.name,
                        maxLines: 1,
                        overflow: .ellipsis,
                        style: theme.titleMedium?.copyWith(
                          color: colors.onPrimary,
                          fontWeight: .w800,
                        ),
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      item.price,
                      style: theme.titleMedium?.copyWith(
                        color: colors.brandGold,
                        fontWeight: .w900,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
