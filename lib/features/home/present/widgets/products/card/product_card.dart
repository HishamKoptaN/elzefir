import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/analytics/analytics_events.dart';
import '../../../../../../core/analytics/analytics_service.dart';
import '../../../../../../core/analytics/consent_service.dart';
import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/utils/extensions/theme_ext.dart';
import '../../../../../products/domain/entities/product_entity.dart';
import '../../../../../dish_details/present/views/dish_details_view.dart';
import 'product_card_image.dart';
import 'product_card_info.dart';
import 'product_card_price_row.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    return InkWell(
      onTap: () async {
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
        if (!context.mounted) {
          return;
        }
        context.goNamed(DishDetailsView.routeName, extra: product);
      },
      borderRadius: .circular(24.r),
      child: Container(
        padding: .all(14.r),
        decoration: BoxDecoration(
          color: colors.surface,
          borderRadius: .circular(24.r),
          border: Border.all(color: colors.brandGold.withValues(alpha: 0.18)),
          boxShadow: [
            BoxShadow(
              color: colors.brandNavyDeep.withValues(alpha: 0.06),
              blurRadius: 24.r,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: .stretch,
          children: [
            ProductCardImage(product: product),
            Gap(12.h),
            ProductCardInfo(product: product),
            Gap(10.h),
            Container(
              padding: .only(top: 10.h),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: colors.brandGold.withValues(alpha: 0.2),
                  ),
                ),
              ),
              child: ProductCardPriceRow(
                price: product.price,
                unit: product.priceUnitLabel,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
