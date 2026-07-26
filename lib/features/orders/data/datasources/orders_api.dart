import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart' show singleton, factoryMethod;
import 'package:retrofit/retrofit.dart';
import '../../../../../core/networking/api_constants.dart';
import '../models/filter_model.dart';
import '../models/order/orders_res_model.dart';
part 'orders_api.g.dart';

@singleton
@RestApi()
abstract class OrdersApi {
  @factoryMethod
  factory OrdersApi(Dio dio) = _OrdersApi;
  @GET(ApiConstants.orders)
  Future<OrdersResModel> getOrders({
    @Query("page") int? page,
    @Query("per_page") required int perPage,
    @Query("query") String? query,
    @Query("start_date") String? startDate,
    @Query("end_date") String? endDate,
    @Query("unified_value_ids[]") List<int>? unifiedValueIds,
    @Query("product_id") int? productId,
    @Query("salla_order_status_id") int? status,
  });
  @GET(ApiConstants.filters)
  Future<List<FilterModel>> getFilters();
}
