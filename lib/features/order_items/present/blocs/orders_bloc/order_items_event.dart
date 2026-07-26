part of 'order_items_bloc.dart';

@freezed
abstract class OrderItemsEvent with _$OrderItemsEvent {
  const factory OrderItemsEvent.dataChanged({
    required UpdateUnitEntity updateOrderItem,
  }) = _DataChanged;
  const factory OrderItemsEvent.updateItem() = _UpdateItem;
}
