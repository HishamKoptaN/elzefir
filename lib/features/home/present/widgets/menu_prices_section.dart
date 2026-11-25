import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/utils/extensions/theme_ext.dart';
import '../../../products/data/mapper/products_mapper.dart';
import '../../../products/domain/entities/product_entity.dart';
import '../../../products/present/blocs/bloc/products_bloc.dart';
import 'price_item.dart';
import 'site_text/site_text.dart';

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
          padding: .all(10.r),
          decoration: BoxDecoration(
            color: context.colorScheme.brandCream,
            borderRadius: .circular(16.r),
            border: .all(
              color: context.colorScheme.brandGold.withValues(alpha: 0.35),
            ),
          ),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Row(
                mainAxisSize: .min,
                spacing: 4.w,
                children: [
                  Icon(
                    Icons.receipt_long_rounded,
                    size: 14.r,
                    color: context.colorScheme.brandGoldHover,
                  ),
                  SiteText(
                    'prices_title',
                    'منيو اليوم المختصر وأسعاره',
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: .w900,
                      color: context.colorScheme.brandNavyDeep,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6.h),
              Wrap(
                spacing: 4.w,
                runSpacing: 4.h,
                children: [
                  for (final product in products)
                    PriceItem(
                      name: product.name.isEmpty ? product.title : product.name,
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
