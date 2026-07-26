import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/errors/models/error_info.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../data/model/product_model.dart';
import '../../../domain/use_cases/products_use_cases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'products_mapping_bloc.freezed.dart';
part 'products_mapping_event.dart';
part 'products_mapping_state.dart';

@singleton
class ProductsMappingBloc
    extends Bloc<ProductsMappingEvent, ProductsMappingState> {
  final ProductsUseCase productsUseCases;

  ProductsMappingBloc({required this.productsUseCases})
    : super(const ProductsMappingState.initial()) {
    on<ProductsMappingEvent>((event, emit) async {
      await event.when(
        get: () async {
          emit(const ProductsMappingState.loading());
          final result = await productsUseCases.getProductsMapping();
          await result.when(
            success: (res) async {
              emit(ProductsMappingState.loaded(products: res ?? []));
            },
            failure: (apiErrorModel) async {
              emit(ProductsMappingState.failure(apiErrorModel: apiErrorModel));
            },
          );
        },
      );
    });
  }
}
