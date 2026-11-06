import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../model/product_model.dart';
import '../../domain/repo/products_repo.dart';

@Singleton(as: ProductsRepo)
class ProductsRepoImpl implements ProductsRepo {
  final FirebaseFirestore firestore;
  ProductsRepoImpl(this.firestore);

  @override
  Future<ApiResult<List<ProductModel>>> get() async {
    try { 
      final snapshot = await firestore.collection('products').get();
      final products = snapshot.docs.map((doc) {
        final data = Map<String, dynamic>.from(doc.data());
        if (data['id'] == null) {
          data['id'] = int.tryParse(doc.id);
        }
        return ProductModel.fromJson(data);
      }).toList();
      return ApiResult.success(data: products);
    } catch (e, s) {
      return ApiResult.failure(errorInfo: ErrorHandler.handle(e, s));
    }
  }

  @override
  Future<ApiResult<List<ProductModel>>> getProductsMapping() async {
    try {
      final snapshot = await firestore.collection('products').get();
      final products = snapshot.docs.map((doc) {
        final data = Map<String, dynamic>.from(doc.data());
        if (data['id'] == null) {
          data['id'] = int.tryParse(doc.id);
        }
        return ProductModel.fromJson(data);
      }).toList();
      return ApiResult.success(data: products);
    } catch (e, s) {
      return ApiResult.failure(errorInfo: ErrorHandler.handle(e, s));
    }
  }
}
