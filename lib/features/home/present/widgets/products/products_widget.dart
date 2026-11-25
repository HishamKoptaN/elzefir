import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../products/domain/entities/product_entity.dart';
import 'product_card.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({
    super.key,
    required this.products,
    required this.hasMore,
    required this.isLoadingMore,
    required this.loadMoreFailed,
    required this.onRetry,
  });

  final List<ProductEntity> products;
  final bool hasMore;
  final bool isLoadingMore;
  final bool loadMoreFailed;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final columns = switch (constraints.maxWidth) {
          < 600 => 1,
          < 1024 => 2,
          _ => 3,
        };
        final spacing = 14.w;
        final itemWidth =
            (constraints.maxWidth - spacing * (columns - 1)) / columns;

        return Padding(
          padding: .symmetric(vertical: 16.h),
          child: Column(
            crossAxisAlignment: .center,
            children: [
              Wrap(
                spacing: spacing,
                runSpacing: 14.h,
                children: [
                  for (final product in products)
                    SizedBox(
                      width: itemWidth,
                      child: ProductCard(product: product),
                    ),
                ],
              ),
              if (isLoadingMore)
                Padding(
                  padding: .only(top: 16.h),
                  child: Center(
                    child: CircularProgressIndicator(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                )
              else if (loadMoreFailed)
                Padding(
                  padding: .only(top: 16.h),
                  child: Column(
                    mainAxisSize: .min,
                    children: [
                      Text(
                        'تعذر تحميل المزيد من المنتجات',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(height: 8.h),
                      TextButton(
                        onPressed: onRetry,
                        child: const Text('إعادة المحاولة'),
                      ),
                    ],
                  ),
                )
              else if (!hasMore && products.isNotEmpty)
                Padding(
                  padding: .only(top: 16.h),
                  child: Text(
                    'وصلت إلى نهاية المنتجات',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
