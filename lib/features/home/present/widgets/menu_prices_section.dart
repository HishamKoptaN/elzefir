import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/utils/extensions/theme_ext.dart';
import '../../../products/data/mapper/products_mapper.dart';
import '../../../products/domain/entities/product_entity.dart';
import '../../../products/present/blocs/bloc/products_bloc.dart';

/// منيو مبسّط يعرض أسماء المنتجات وأسعارها الحالية من مجموعة `products`
/// في فايرستور. يُستخدم أيضاً كمصدر لبيانات الـ SEO المرئية.
class MenuPricesSection extends StatelessWidget {
  const MenuPricesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(
      bloc: getIt<ProductsBloc>(),
      builder: (context, state) {
        final products = state.maybeMap(
          loaded: (loaded) {
            return loaded.products?.map((e) => e.toEntity()).toList() ?? [];
          },
          orElse: () {
            return <ProductEntity>[];
          },
        );
        if (products.isEmpty) {
          return const SizedBox.shrink();
        }
        return Container(
          width: .infinity,
          padding: .all(16.r),
          decoration: BoxDecoration(
            color: context.colorScheme.surface,
            borderRadius: .circular(16.r),
            border: .all(color: context.colorScheme.slateBorder),
          ),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                'منيو اليوم وأسعاره',
                style: context.textTheme.titleLarge?.copyWith(
                  fontWeight: .bold,
                  color: context.colorScheme.brandNavy,
                ),
              ),
              SizedBox(height: 12.h),
              Wrap(
                spacing: 10.w,
                runSpacing: 8.h,
                children: [
                  for (final product in products)
                    _PriceItem(
                      name: product.name.isEmpty
                          ? product.title
                          : product.name,
                      price: product.price,
                    ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class _PriceItem extends StatelessWidget {
  const _PriceItem({required this.name, required this.price});

  final String name;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(vertical: 6.h, horizontal: 10.w),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: .circular(9999),
        border: .all(color: context.colorScheme.slateBorder),
      ),
      child: Row(
        mainAxisSize: .min,
        spacing: 8.w,
        children: [
          Text(
            name.trim(),
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.slateText,
            ),
          ),
          Text(
            price.isEmpty ? '' : '$price ج.م',
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: .bold,
              color: context.colorScheme.brandNavy,
            ),
          ),
        ],
      ),
    );
  }
}
