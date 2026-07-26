part of 'order_items_bloc.dart';

@freezed
abstract class OrderItemsState with _$OrderItemsState {
  const factory OrderItemsState.initial() = _Initial;
  const factory OrderItemsState.loading() = _Loading;
  const factory OrderItemsState.success() = _Success;
  const factory OrderItemsState.loaded({
    UpdateUnitEntity? updateUnit,
    bool? isLoading,
  }) = _Loaded;
  const factory OrderItemsState.failure({required ErrorInfo apiErrorModel}) =
      _Failure;
}
