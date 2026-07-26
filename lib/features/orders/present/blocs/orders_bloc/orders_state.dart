part of 'orders_bloc.dart';

@freezed
abstract class OrdersState with _$OrdersState {
  const factory OrdersState.initial() = _Initial;
  const factory OrdersState.loading() = _Loading;
  const factory OrdersState.success() = _Success;
  const factory OrdersState.loaded({
    List<OrderEntity>? orders,
    MetaEntity? meta,
    bool? isSearching,
    OrdersFilterModel? ordersFilter,
    @Default(true) bool selectAll,
    @Default(null) int? selectedCount,
  }) = _Loaded;
  const factory OrdersState.orderShare() = _OrderShare;
  const factory OrdersState.failure({required ErrorInfo apiErrorModel}) =
      _Failure;
}
