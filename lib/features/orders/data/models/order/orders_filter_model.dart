import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../orders_statuses/domain/entities/order_status_entity.dart';
import '../../../../products/data/model/product_model.dart';
part 'orders_filter_model.freezed.dart';

@freezed
abstract class OrdersFilterModel with _$OrdersFilterModel {
  const OrdersFilterModel._();
  const factory OrdersFilterModel({
    String? searchQuery,
    DateTime? fromDate,
    DateTime? toDate,
    @Default([]) List<int> unifiedValueIds,
    OrderStatusEntity? selectedStatus,
    ProductModel? product,
  }) = _OrdersFilterModel;
  factory OrdersFilterModel.empty() => const OrdersFilterModel();
  bool get hasActiveFilters {
    return (searchQuery?.trim().isNotEmpty ?? false) ||
        fromDate != null ||
        toDate != null ||
        unifiedValueIds.isNotEmpty ||
        selectedStatus != null ||
        product != null;
  }
}
