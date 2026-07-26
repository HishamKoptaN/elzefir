import '../../../../core/networking/api_result.dart';
import '../../domain/entities/order_status_entity.dart';
import '../../domain/entities/update_order_status_req_entity.dart';

abstract class OrdersStatusesRepo {
  Future<ApiResult<List<OrderStatusEntity>>> get();
}
