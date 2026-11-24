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
    required this.onLoadMore,
  });

  final List<ProductEntity> products;
  final bool hasMore;
  final bool isLoadingMore;
  final VoidCallback onLoadMore;

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
              if (hasMore) ...[
                SizedBox(height: 16.h),
                OutlinedButton(
                  onPressed: isLoadingMore ? null : onLoadMore,
                  child: Text(
                    isLoadingMore ? 'جارٍ تحميل المزيد...' : 'تحميل المزيد',
                  ),
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}
