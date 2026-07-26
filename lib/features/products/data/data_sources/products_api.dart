import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/networking/api_constants.dart';
import '../model/product_model.dart';
part 'products_api.g.dart';

@singleton
@RestApi()
abstract class ProductsApi {
  @factoryMethod
  factory ProductsApi(Dio dio) = _ProductsApi;
  //! Get
  @GET(ApiConstants.products)
  Future<List<ProductModel>> get();
  //! Get
  @GET(ApiConstants.productsMapping)
  Future<List<ProductModel>> getMapping();
}
