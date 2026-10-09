import '../../../../../core/networking/api_result.dart';
import '../../data/model/product_model.dart';

abstract class ProductsRepo {
  Future<ApiResult<List<ProductModel>>> get();
  Future<ApiResult<List<ProductModel>>> getProductsMapping();
}
