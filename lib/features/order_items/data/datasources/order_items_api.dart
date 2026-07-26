import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart' show singleton, factoryMethod;
import 'package:retrofit/retrofit.dart';
import '../../../../../core/networking/api_constants.dart';
part 'order_items_api.g.dart';

@singleton
@RestApi()
abstract class OrderItemsApi {
  @factoryMethod
  factory OrderItemsApi(Dio dio) = _OrderItemsApi;
  @PATCH("${ApiConstants.orders}/{id}")
  Future<void> update({
    @Path('id') required int id,
    @Body() required Map<String, dynamic> body,
  });
}
