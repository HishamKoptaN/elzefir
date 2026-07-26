import '../../../../../core/networking/api_result.dart';
import '../model/product_model.dart';

abstract class ProductsRepo {
  Future<ApiResult<List<ProductModel>>> get();
  Future<ApiResult<List<ProductModel>>> getProductsMapping();
}
