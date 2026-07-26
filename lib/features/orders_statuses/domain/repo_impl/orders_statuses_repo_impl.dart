import 'package:injectable/injectable.dart';
import '../../../../core/errors/error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../data/mapper/orders_statuses_mapper.dart';
import '../../data/repo/orders_statuses_repo.dart';
import '../../data/data_sources/orders_statuses_api.dart';
import '../entities/order_status_entity.dart';

@Singleton(as: OrdersStatusesRepo)
class OrdersStatusesRepoImpl implements OrdersStatusesRepo {
  final OrdersStatusesApi ordersStatusesApi;
  OrdersStatusesRepoImpl(this.ordersStatusesApi);
  @override
  Future<ApiResult<List<OrderStatusEntity>>> get() async {
    try {
      final res = await ordersStatusesApi.get();
      final entity = res.map((e) => e.toEntity()).toList();
      return ApiResult.success(data: entity);
    } catch (e, s) {
      return ApiResult.failure(errorInfo: ErrorHandler.handle(e, s));
    }
  }
}
