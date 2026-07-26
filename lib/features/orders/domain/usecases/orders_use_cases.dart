import '../../../../../core/networking/api_result.dart';
import '../../data/models/order/orders_filter_model.dart';
import '../entities/orders_res_entity.dart';
import '../repo/orders_repo.dart';
import 'package:injectable/injectable.dart';

@singleton
class OrdersUseCases {
  final OrdersRepo ordersRepo;
  OrdersUseCases(this.ordersRepo);

  Future<ApiResult<OrdersResEntity>> getOrders({
    int? page,
    OrdersFilterModel? ordersFilter,
    required int perPage,
  }) async {
    return await ordersRepo.getOrders(
      page: page,
      ordersFilter: ordersFilter,
      perPage: perPage,
    );
  }
}
