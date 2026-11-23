import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../../../core/utils/extensions/scaled.dart';
import '../../../../../../../../core/widgets/forms/custom_dropdown_form_field.dart';
import '../../../../../../../products/data/model/product_model.dart';
import '../../../../../../../products/present/blocs/bloc/products_bloc.dart';
import 'custom_order_drop_down_btn_filter.dart';

class ProductDropdown extends StatelessWidget {
  const ProductDropdown({super.key, required this.onChanged});
  final Function(ProductModel?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return CustomOrderFilterBtn(
      label: 'المنتج',
      widget: BlocBuilder<ProductsBloc, ProductsState>(
        bloc: getIt<ProductsBloc>(),
        builder: (context, state) {
          state.mapOrNull(
            initial: (state) {
              getIt<ProductsBloc>().add(const ProductsEvent.get());
            },
          );
          return CustomDropdownFormField<ProductModel>(
            hintText: 'الكل',
            onChanged: onChanged,
            initialValue: null,
            items: [
              DropdownMenuItem(
                value: null,
                child: Text(
                  'الكل',
                  style: TextStyle(fontSize: 20.sp.scaled(context)),
                ),
              ),
              ...state
                  .maybeMap(
                    loaded: (state) {
                      return state.products ?? [];
                    },
                    orElse: () {
                      return <ProductModel>[];
                    },
                  )
                  .map((product) {
                    return DropdownMenuItem<ProductModel>(
                      value: product,
                      child: Text(
                        product.name ?? '',
                        style: TextStyle(fontSize: 20.sp.scaled(context)),
                      ),
                    );
                  }),
            ],
          );
        },
      ),
    );
  }
}
