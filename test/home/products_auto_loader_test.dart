import 'dart:async';

import 'package:elzefir/core/di/dependency_injection.dart';
import 'package:elzefir/core/networking/api_result.dart';
import 'package:elzefir/core/theme/app_theme.dart';
import 'package:elzefir/features/home/present/widgets/products/products_auto_loader.dart';
import 'package:elzefir/features/home/present/widgets/products/products_widget.dart';
import 'package:elzefir/features/products/data/model/product_model.dart';
import 'package:elzefir/features/products/data/model/products_page.dart';
import 'package:elzefir/features/products/domain/entities/product_entity.dart';
import 'package:elzefir/features/products/domain/repo/products_repo.dart';
import 'package:elzefir/features/products/domain/use_cases/products_use_cases.dart';
import 'package:elzefir/features/products/present/blocs/bloc/products_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:visibility_detector/visibility_detector.dart';

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

class _GatedPagingRepo implements ProductsRepo {
  final Completer<ApiResult<ProductsPage>> gate = Completer();
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
    return gate.future;
  }

  @override
  Future<ApiResult<List<ProductModel>>> getProductsMapping() async =>
      ApiResult.success(data: []);
}

void main() {
  setUp(() {
    VisibilityDetectorController.instance.updateInterval = Duration.zero;
  });

  tearDown(() async => getIt.reset());

  Future<void> pumpLoader(
    WidgetTester tester,
    ProductsRepo repo,
    GlobalKey listKey,
  ) async {
    getIt.registerSingleton<ProductsBloc>(
      ProductsBloc(productsUseCases: ProductsUseCase(productsRepo: repo)),
    );
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
  }

  testWidgets('loads the next page when the product list end is reached', (
    tester,
  ) async {
    final repo = _PagingRepo();
    await pumpLoader(tester, repo, GlobalKey());

    await tester.drag(
      find.byType(SingleChildScrollView),
      const Offset(0, -800),
    );
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 50));

    expect(repo.loadMoreCalls, 1);
  });

  testWidgets('ignores repeated scrolling while a page is loading', (
    tester,
  ) async {
    final repo = _GatedPagingRepo();
    await pumpLoader(tester, repo, GlobalKey());

    await tester.drag(
      find.byType(SingleChildScrollView),
      const Offset(0, -800),
    );
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 50));
    expect(repo.loadMoreCalls, 1);

    await tester.drag(find.byType(SingleChildScrollView), const Offset(0, 800));
    await tester.pump();
    await tester.drag(
      find.byType(SingleChildScrollView),
      const Offset(0, -800),
    );
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 50));

    expect(repo.loadMoreCalls, 1);

    repo.gate.complete(
      ApiResult.success(
        data: const ProductsPage(
          products: [],
          cursor: 'cursor-2',
          hasMore: true,
        ),
      ),
    );
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 50));

    expect(getIt<ProductsBloc>().isLoadingMore, isFalse);
  });

  testWidgets('shows list end and retries a failed page', (tester) async {
    var retries = 0;

    Widget buildSection({required bool hasMore, required bool failed}) {
      return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        builder: (context, _) => MaterialApp(
          theme: AppTheme.theme(context),
          home: Scaffold(
            body: ProductsSection(
              products: const [ProductEntity(name: 'منتج')],
              hasMore: hasMore,
              isLoadingMore: false,
              loadMoreFailed: failed,
              onRetry: () => retries++,
            ),
          ),
        ),
      );
    }

    await tester.pumpWidget(buildSection(hasMore: false, failed: false));
    expect(find.text('وصلت إلى نهاية المنتجات'), findsOneWidget);

    await tester.pumpWidget(buildSection(hasMore: true, failed: true));
    await tester.pump();

    expect(find.text('تعذر تحميل المزيد من المنتجات'), findsOneWidget);
    await tester.tap(find.text('إعادة المحاولة'));
    expect(retries, 1);
  });
}
