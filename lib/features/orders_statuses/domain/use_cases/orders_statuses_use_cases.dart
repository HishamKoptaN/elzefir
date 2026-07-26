import 'package:injectable/injectable.dart';
import '../../../../core/networking/api_result.dart';
import '../../data/model/order_status_model.dart';
import '../../data/repo/orders_statuses_repo.dart';
import '../entities/order_status_entity.dart';
import '../entities/update_order_status_req_entity.dart';

@singleton
class OrdersStatusesUseCases {
  final OrdersStatusesRepo ordersStatusesRepo;
  OrdersStatusesUseCases({required this.ordersStatusesRepo});
  Future<ApiResult<List<OrderStatusEntity>>> get() async {
    return await ordersStatusesRepo.get();
  }
}
