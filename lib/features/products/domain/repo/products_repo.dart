import '../../../../../core/networking/api_result.dart';
import '../../data/model/product_model.dart';
import '../../data/model/products_page.dart';

abstract class ProductsRepo {
  Future<ApiResult<List<ProductModel>>> get();
  Future<ApiResult<ProductsPage>> getPage();
  Future<ApiResult<ProductsPage>> loadMore({required String cursor});
  Future<ApiResult<List<ProductModel>>> getProductsMapping();
}
