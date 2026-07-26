import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/errors/models/error_info.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../data/model/product_model.dart';
import '../../../domain/use_cases/products_use_cases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'products_bloc.freezed.dart';
part 'products_event.dart';
part 'products_state.dart';

@singleton
class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final ProductsUseCase productsUseCases;

  ProductsBloc({required this.productsUseCases})
    : super(const ProductsState.initial()) {
    on<ProductsEvent>((event, emit) async {
      await event.when(
        get: () async {
          emit(const ProductsState.loading());
          final result = await productsUseCases.get();
          await result.when(
            success: (res) async {
              emit(ProductsState.loaded(products: res ?? []));
            },
            failure: (apiErrorModel) async {
              emit(ProductsState.failure(apiErrorModel: apiErrorModel));
            },
          );
        },
      );
    });
  }
}
