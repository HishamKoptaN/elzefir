import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/networking/api_constants.dart';
import '../model/order_status_model.dart';
part 'orders_statuses_api.g.dart';

@singleton
@RestApi()
abstract class OrdersStatusesApi {
  @factoryMethod
  factory OrdersStatusesApi(Dio dio) = _OrdersStatusesApi;
  //! Get
  @GET(ApiConstants.ordersStatuses)
  Future<List<OrderStatusModel>> get();
}
