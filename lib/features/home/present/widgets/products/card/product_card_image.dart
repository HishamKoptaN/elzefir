import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/analytics/analytics_events.dart';
import '../../../../../../core/analytics/analytics_service.dart';
import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/utils/extensions/theme_ext.dart';
import '../../../../../../core/widgets/custom_image.dart';
import '../../../../../products/domain/entities/product_entity.dart';

class ProductCardImage extends StatelessWidget {
  const ProductCardImage({super.key, required this.product});

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    final badgeLabel = product.category.name;
    final colors = context.colorScheme;

    return GestureDetector(
      onTap: () async {
        await getIt<AnalyticsService>().logEvent(
          name: AnalyticsEvents.viewProductImage,
          parameters: {'debug_mode': 1, 'product_id': product.id},
        );
        if (!context.mounted) {
          return;
        }
        showGeneralDialog(
          context: context,
          barrierDismissible: true,
          barrierLabel: 'Close',
          barrierColor: Colors.black87,
          pageBuilder: (_, _, _) {
            return Center(
              child: InteractiveViewer(
                minScale: 1,
                maxScale: 4,
                child: CustomImage(image: product.image, fit: .contain),
              ),
            );
          },
        );
      },
      child: AspectRatio(
        aspectRatio: 4 / 3,
        child: Container(
          decoration: BoxDecoration(
            color: colors.brandSand,
            borderRadius: .circular(20.r),
            border: Border.all(color: colors.brandGold.withValues(alpha: 0.2)),
          ),
          child: ClipRRect(
            borderRadius: .circular(20.r),
            child: Stack(
              fit: .expand,
              children: [
                CustomImage(image: product.image, fit: .cover),
                if (badgeLabel.isNotEmpty)
                  Positioned(
                    top: 8.h,
                    right: 8.w,
                    child: Container(
                      padding: .symmetric(horizontal: 10.w, vertical: 4.h),
                      decoration: BoxDecoration(
                        color: colors.brandNavyDeep.withValues(alpha: 0.9),
                        borderRadius: .circular(999),
                      ),
                      child: Text(
                        badgeLabel,
                        style: context.textTheme.labelSmall?.copyWith(
                          fontWeight: .w700,
                          color: colors.brandGold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
