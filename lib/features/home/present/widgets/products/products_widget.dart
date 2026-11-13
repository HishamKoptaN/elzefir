import 'package:flutter/material.dart';

import '../../../../../core/responsive/responsive_extensions.dart';
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
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          crossAxisAlignment: .stretch,
          children: [
            const SizedBox(height: 16),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: context
                    .responsive(mobile: 2, tablet: 3, desktop: 4)
                    .toInt(),
                childAspectRatio: context.responsive(
                  mobile: 0.56,
                  tablet: 0.98,
                  desktop: 0.82,
                ),
              ),
              itemBuilder: (_, i) {
                return ProductCard(product: products[i]);
              },
            ),
            const SizedBox(height: 16),
          ],
        );
      },
    );
  }
}
