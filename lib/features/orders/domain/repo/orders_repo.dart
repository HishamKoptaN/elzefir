import '../../../../../core/networking/api_result.dart';
import '../../data/models/order/orders_filter_model.dart';
import '../entities/orders_res_entity.dart';

abstract class OrdersRepo {
  Future<ApiResult<OrdersResEntity>> getOrders({
    int? page,
    required int perPage,
    OrdersFilterModel? ordersFilter,
  });
}
