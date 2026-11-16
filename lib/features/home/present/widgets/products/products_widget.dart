import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
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
        final int crossAxisCount;
        if (constraints.maxWidth < 600) {
          crossAxisCount = 1;
        } else if (constraints.maxWidth < 1024) {
          crossAxisCount = 2;
        } else {
          crossAxisCount = 3;
        }

        return Column(
          crossAxisAlignment: .stretch,
          children: [
            Gap(16.h),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                mainAxisExtent: 148.h,
                crossAxisSpacing: 14.w,
                mainAxisSpacing: 14.h,
              ),
              itemBuilder: (_, i) {
                return ProductCard(product: products[i]);
              },
            ),
            Gap(16.h),
          ],
        );
      },
    );
  }
}
