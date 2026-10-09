import 'package:injectable/injectable.dart';
import '../../../../../core/networking/api_result.dart';
import '../../data/model/product_model.dart';
import '../repo/products_repo.dart';

@singleton
class ProductsUseCase {
  final ProductsRepo productsRepo;
  ProductsUseCase({required this.productsRepo});
  Future<ApiResult<List<ProductModel>>> get() async {
    return await productsRepo.get();
  } Future<ApiResult<List<ProductModel>>> getProductsMapping() async {
    return await productsRepo.getProductsMapping();
  }
}
