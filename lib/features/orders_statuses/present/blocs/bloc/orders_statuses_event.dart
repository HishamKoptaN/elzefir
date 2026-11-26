part of 'orders_statuses_bloc.dart';

@freezed
abstract class OrdersStatusesEvent with _$OrdersStatusesEvent {
  const factory OrdersStatusesEvent.get() = _Get;
}
