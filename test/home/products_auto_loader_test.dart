import 'package:elzefir/core/di/dependency_injection.dart';
import 'package:elzefir/core/networking/api_result.dart';
import 'package:elzefir/features/home/present/widgets/products/products_auto_loader.dart';
import 'package:elzefir/features/products/data/model/product_model.dart';
import 'package:elzefir/features/products/data/model/products_page.dart';
import 'package:elzefir/features/products/domain/repo/products_repo.dart';
import 'package:elzefir/features/products/domain/use_cases/products_use_cases.dart';
import 'package:elzefir/features/products/present/blocs/bloc/products_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class _PagingRepo implements ProductsRepo {
  int loadMoreCalls = 0;

  @override
  Future<ApiResult<List<ProductModel>>> get() async =>
      ApiResult.success(data: []);

  @override
  Future<ApiResult<ProductsPage>> getPage() async => ApiResult.success(
    data: const ProductsPage(products: [], cursor: 'cursor-1', hasMore: true),
  );

  @override
  Future<ApiResult<ProductsPage>> loadMore({required String cursor}) async {
    loadMoreCalls++;
    return ApiResult.success(
      data: const ProductsPage(products: [], cursor: null, hasMore: false),
    );
  }

  @override
  Future<ApiResult<List<ProductModel>>> getProductsMapping() async =>
      ApiResult.success(data: []);
}

void main() {
  tearDown(() async => getIt.reset());

  testWidgets('loads the next page when the product list end is reached', (
    tester,
  ) async {
    final repo = _PagingRepo();
    getIt.registerSingleton<ProductsBloc>(
      ProductsBloc(productsUseCases: ProductsUseCase(productsRepo: repo)),
    );
    final listKey = GlobalKey();
    await tester.pumpWidget(
      MediaQuery(
        data: const MediaQueryData(size: Size(400, 600)),
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: ProductsAutoLoader(
            listKey: listKey,
            child: SingleChildScrollView(
              child: SizedBox(key: listKey, height: 1200),
            ),
          ),
        ),
      ),
    );
    getIt<ProductsBloc>().add(const .getPage());
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 50));
    await tester.drag(find.byType(SingleChildScrollView), const Offset(0, -800));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 50));

    expect(repo.loadMoreCalls, 1);
  });
}
