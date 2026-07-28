import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../products/domain/entities/product_entity.dart';
import 'product_card.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key, required this.products});
  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Wrap(
          runSpacing: 10.h,
          spacing: 10.w,
          alignment: WrapAlignment.center,
          children: products.map((product) {
            return ProductCard(product: product);
          }).toList(),
        );
      },
    );
  }
}
