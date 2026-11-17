import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

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
    final badgeLabel = product.category.name.isNotEmpty
        ? product.category.name
        : '';

    return GestureDetector(
      onTap: () async {
        await getIt<AnalyticsService>().logEvent(
          name: 'view_product_image',
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
      child: Container(
        height: 112.r,
        width: 112.r,
        decoration: BoxDecoration(
          color: context.colorScheme.slateCardBg,
          borderRadius: .circular(12.r),
          border: Border.all(color: context.colorScheme.slateBorder),
        ),
        child: ClipRRect(
          borderRadius: .circular(12.r),
          child: Stack(
            fit: .expand,
            children: [
              CustomImage(image: product.image, fit: .cover),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withValues(alpha: 0.1),
                      Colors.transparent,
                      Colors.black.withValues(alpha: 0.4),
                    ],
                  ),
                ),
              ),
              if (product.category.name.isNotEmpty)
                Positioned(
                  top: 6.h,
                  right: 6.w,
                  child: Container(
                    padding: .symmetric(horizontal: 8.w, vertical: 3.h),
                    decoration: BoxDecoration(
                      color: context.colorScheme.brandNavy.withValues(alpha: 0.9),
                      borderRadius: .circular(20.r),
                      border: Border.all(color: Colors.white.withValues(alpha: 0.2)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 5.r,
                          height: 5.r,
                          decoration: BoxDecoration(
                            color: context.colorScheme.brandCoral,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Gap(4.w),
                        Text(
                          badgeLabel,
                          style: context.textTheme.labelSmall?.copyWith(
                            fontWeight: .w700,
                            fontSize: 9.sp,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
