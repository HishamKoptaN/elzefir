import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../products/domain/entities/product_entity.dart';
import 'product_card.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({
    super.key,
    required this.products,
    this.onAssetsLoaded,
  });

  final List<ProductEntity> products;
  final VoidCallback? onAssetsLoaded;

  @override
  Widget build(BuildContext context) {
    // الكارت ارتفاعه متغيّر (الوصف ممكن ياخد سطرين)، فـ Wrap أنسب من شبكة
    // بارتفاع خلية ثابت؛ الصفحة كلها بتتحرك بالـ SingleChildScrollView الخارجي.
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
          child: Wrap(
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
        );
      },
    );
  }
}
