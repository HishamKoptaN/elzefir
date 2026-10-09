import 'package:injectable/injectable.dart';
import '../../../../core/errors/error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../model/product_model.dart';
import '../../domain/repo/products_repo.dart';
import '../data_sources/products_api.dart';

@Singleton(as: ProductsRepo)
class ProductsRepoImpl implements ProductsRepo {
  final ProductsApi productsApi;
  ProductsRepoImpl(this.productsApi);
  @override
  Future<ApiResult<List<ProductModel>>> get() async {
    try {
      final res = await productsApi.get();
      return ApiResult.success(data: res);
    } catch (e, s) {
      return ApiResult.failure(errorInfo: ErrorHandler.handle(e, s));
    }
  }

  @override
  Future<ApiResult<List<ProductModel>>> getProductsMapping() async {
    try {
      final res = await productsApi.getMapping();
      return ApiResult.success(data: res);
    } catch (e, s) {
      return ApiResult.failure(errorInfo: ErrorHandler.handle(e, s));
    }
  }
}
