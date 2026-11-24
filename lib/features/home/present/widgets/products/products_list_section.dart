import 'package:flutter/material.dart'
    show CircularProgressIndicator, ElevatedButton;
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/utils/extensions/theme_ext.dart';
import '../../../../products/data/mapper/products_mapper.dart';
import '../../../../products/present/blocs/bloc/products_bloc.dart';
import 'products_widget.dart';

class ProductsColumn extends StatelessWidget {
  const ProductsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: BlocBuilder<ProductsBloc, ProductsState>(
        bloc: getIt<ProductsBloc>(),
        builder: (context, state) {
          return state.maybeMap(
            loaded: (state) {
              final products =
                  state.products?.map((e) => e.toEntity()).toList() ?? [];
              final bloc = getIt<ProductsBloc>();
              return ProductsSection(
                products: products,
                isLoadingMore: bloc.isLoadingMore,
              );
            },
            failure: (f) => Padding(
              padding: .symmetric(vertical: 40.h),
              child: Center(
                child: Column(
                  mainAxisSize: .min,
                  children: [
                    Text(
                      'تعذر تحميل المنتجات من فايرستور',
                      style: context.textTheme.titleMedium,
                    ),
                    SizedBox(height: 12.h),
                    ElevatedButton(
                      onPressed: () {
                        getIt<ProductsBloc>().add(const .getPage());
                      },
                      child: const Text('إعادة المحاولة'),
                    ),
                  ],
                ),
              ),
            ),
            orElse: () => Padding(
              padding: .symmetric(vertical: 40.h),
              child: const Center(child: CircularProgressIndicator()),
            ),
          );
        },
      ),
    );
  }
}
