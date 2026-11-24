import 'package:elzefir/core/di/dependency_injection.dart';
import 'package:elzefir/core/networking/api_result.dart';
import 'package:elzefir/core/theme/app_theme.dart';
import 'package:elzefir/features/home/present/widgets/landing/landing_marquee_section.dart';
import 'package:elzefir/features/home/present/widgets/landing/landing_marquee_track.dart';
import 'package:elzefir/features/products/data/model/product_model.dart';
import 'package:elzefir/features/products/data/model/products_page.dart';
import 'package:elzefir/features/products/domain/repo/products_repo.dart';
import 'package:elzefir/features/products/domain/use_cases/products_use_cases.dart';
import 'package:elzefir/features/products/present/blocs/bloc/products_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';

class _FakeProductsRepo implements ProductsRepo {
  const _FakeProductsRepo(this.products);

  final List<ProductModel> products;

  @override
  Future<ApiResult<List<ProductModel>>> get() async {
    return ApiResult.success(data: products);
  }

  @override
  Future<ApiResult<ProductsPage>> getPage() async => ApiResult.success(
    data: ProductsPage(products: products, cursor: null, hasMore: false),
  );

  @override
  Future<ApiResult<ProductsPage>> loadMore({required String cursor}) async =>
      ApiResult.success(
        data: const ProductsPage(products: [], cursor: null, hasMore: false),
      );

  @override
  Future<ApiResult<List<ProductModel>>> getProductsMapping() async {
    return ApiResult.success(data: products);
  }
}

void main() {
  tearDown(() async => getIt.reset());

  Future<void> pumpSection(
    WidgetTester tester,
    List<ProductModel> products,
  ) async {
    getIt.registerSingleton<ProductsBloc>(
      ProductsBloc(
        productsUseCases: ProductsUseCase(
          productsRepo: _FakeProductsRepo(products),
        ),
      ),
    );
    await tester.pumpWidget(
      ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        builder: (context, _) => MaterialApp(
          theme: AppTheme.theme(context),
          home: const Scaffold(body: LandingMarqueeSection()),
        ),
      ),
    );
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 50));
  }

  testWidgets('shows Firestore product names in the marquee', (tester) async {
    await pumpSection(tester, [
      const ProductModel(name: 'كابوريا مبطرخة'),
      const ProductModel(name: 'دنيس طازج'),
      const ProductModel(name: ''),
    ]);

    expect(find.text('كابوريا مبطرخة'), findsWidgets);
    expect(find.text('دنيس طازج'), findsWidgets);
    expect(find.byType(LandingMarqueeTrack), findsOneWidget);
  });

  testWidgets('hides the marquee when Firestore has no products', (
    tester,
  ) async {
    await pumpSection(tester, const []);

    expect(find.byType(LandingMarqueeTrack), findsNothing);
  });

  testWidgets('shows featured products first and at most seven names', (
    tester,
  ) async {
    await pumpSection(tester, [
      for (var i = 1; i <= 8; i++) ProductModel(name: 'منتج $i'),
      const ProductModel(name: 'دنيس طازج', isFeatured: true),
    ]);

    expect(find.text('دنيس طازج'), findsWidgets);
    expect(find.text('منتج 1'), findsWidgets);
    expect(find.text('منتج 8'), findsNothing);
  });
}
