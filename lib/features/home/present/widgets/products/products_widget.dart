import 'package:flutter/material.dart';
import '../../../../products/domain/entities/product_entity.dart';
import 'product_card.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key, required this.products});
  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          children: [
            // const Text(
            //   'الأطباق ',
            //   style: TextStyle(
            //     fontSize: 24,
            //     fontWeight: FontWeight.w600,
            //     color: Color(0xFF001629),
            //   ),
            // ),
            Wrap(
              spacing: 24,
              runSpacing: 24,
              alignment: WrapAlignment.center,
              children: products.map((product) {
                return ProductCard(product: product);
              }).toList(),
            ),
          ],
        );
      },
    );
  }
}
