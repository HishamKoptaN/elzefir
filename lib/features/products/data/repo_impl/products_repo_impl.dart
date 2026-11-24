import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../model/product_model.dart';
import '../model/products_page.dart';
import '../../domain/repo/products_repo.dart';

@Singleton(as: ProductsRepo)
class ProductsRepoImpl implements ProductsRepo {
  ProductsRepoImpl(this.firestore);

  static const _pageSize = 12;

  final FirebaseFirestore firestore;
  final List<QueryDocumentSnapshot<Map<String, dynamic>>> _pageCache = [];
  bool _fullyLoaded = false;

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
  Future<ApiResult<ProductsPage>> getPage() async {
    try {
      if (_pageCache.isEmpty) {
        final docs = await _fetchPage(_pageSize);
        _pageCache.addAll(docs);
        _fullyLoaded = docs.length < _pageSize;
      }
      return ApiResult.success(data: _buildPage(0));
    } catch (e, s) {
      return ApiResult.failure(errorInfo: ErrorHandler.handle(e, s));
    }
  }

  @override
  Future<ApiResult<ProductsPage>> loadMore({required String cursor}) async {
    try {
      final found = _pageCache.indexWhere((doc) => doc.id == cursor);
      final start = found == -1 ? _pageCache.length : found + 1;
      if (start >= _pageCache.length && !_fullyLoaded) {
        final docs = await _fetchPage(_pageSize, cursor: cursor);
        _pageCache.addAll(docs);
        _fullyLoaded = docs.length < _pageSize;
      }
      return ApiResult.success(data: _buildPage(start));
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

  Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>> _fetchPage(
    int limit, {
    String? cursor,
  }) async {
    Query<Map<String, dynamic>> query = firestore.collection('products');
    if (cursor != null) {
      query = query.where(FieldPath.documentId, isGreaterThan: cursor);
    }
    final snapshot = await query.orderBy(FieldPath.documentId).limit(limit).get();
    return snapshot.docs;
  }

  ProductsPage _buildPage(int start) {
    final end =
        start + _pageSize > _pageCache.length
            ? _pageCache.length
            : start + _pageSize;
    final docs = _pageCache.sublist(start, end);
    return ProductsPage(
      products: docs.map(_mapDoc).toList(),
      cursor: docs.isEmpty ? null : docs.last.id,
      hasMore: end < _pageCache.length || !_fullyLoaded,
    );
  }

  ProductModel _mapDoc(QueryDocumentSnapshot<Map<String, dynamic>> doc) {
    final data = Map<String, dynamic>.from(doc.data());
    if (data['id'] == null) {
      data['id'] = int.tryParse(doc.id);
    }
    return ProductModel.fromJson(data);
  }
}
