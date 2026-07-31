import 'package:flutter/material.dart';
import '../../../../../core/responsive/responsive_extensions.dart';
import '../../../../products/domain/entities/product_entity.dart';
import 'product_card.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key, required this.products});
  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double crossAxisCount = context.responsive(
          mobile: 2,
          tablet: 3,
          desktop: 4,
        );
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount.toInt(),
            childAspectRatio: 0.67,
          ),
          itemBuilder: (_, i) {
            return ProductCard(product: products[i]);
          },
        );
      },
    );
  }
}
