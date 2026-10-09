part of 'products_mapping_bloc.dart';

@freezed
class ProductsMappingState with _$ProductsMappingState {
  const factory ProductsMappingState.initial() = _Initial;
  const factory ProductsMappingState.loaded({
    required List<ProductModel> products,
  }) = _Loaded;
  const factory ProductsMappingState.loading() = _Loading;
  const factory ProductsMappingState.success() = _Success;
  const factory ProductsMappingState.failure({
    required ErrorInfo apiErrorModel,
  }) = _Failure;
}
