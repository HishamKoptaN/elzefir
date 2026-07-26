part of 'orders_bloc.dart';

@freezed
abstract class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.get({required int? page, required int perPage}) =
      _Get;
  const factory OrdersEvent.filter({
    required OrdersFilterModel ordersFilter,
    required int perPage,
  }) = _Filter;
  const factory OrdersEvent.updateOrderLink({
    required String orderId,
    required String orderItemId,
    required String unitId,
    required String documentationLink,
  }) = _UpdateOrderLink;
  const factory OrdersEvent.toggleUnit({
    required String orderId,
    required String orderItemId,
    required String unitId,
    required bool isSelected,
  }) = _ToggleUnit;
  const factory OrdersEvent.updateUnit({
    required String orderId,
    required String orderItemId,
    required String unitId,
  }) = _updateUnit;
  const factory OrdersEvent.toggleSelectAll({required bool v}) =
      _ToggleSelectAll;
}
