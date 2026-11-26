part of 'orders_statuses_bloc.dart';

@freezed
abstract class OrdersStatusesState with _$OrdersStatusesState {
  const factory OrdersStatusesState.initial() = _Initial;
  const factory OrdersStatusesState.loaded({
    required List<OrderStatusEntity>? ordersStatuses,
    bool? loading,
  }) = _Loaded;
  const factory OrdersStatusesState.loading() = _Loading;
  const factory OrdersStatusesState.success() = _Success;
  const factory OrdersStatusesState.failure({
    required ErrorInfo apiErrorModel,
  }) = _Failure;
}
