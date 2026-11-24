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

class _Repo implements ProductsRepo {
  const _Repo(this.products);
  final List<ProductModel> products;

  @override
  Future<ApiResult<List<ProductModel>>> get() async =>
      ApiResult.success(data: products);

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
  Future<ApiResult<List<ProductModel>>> getProductsMapping() async =>
      ApiResult.success(data: products);
}

void main() {
  tearDown(() async => getIt.reset());

  testWidgets('dashboard-selected most requested leads the marquee', (
    tester,
  ) async {
    getIt.registerSingleton<ProductsBloc>(
      ProductsBloc(
        productsUseCases: ProductsUseCase(
          productsRepo: const _Repo([
            ProductModel(name: 'مميز', isFeatured: true),
            ProductModel(name: 'الأكثر طلباً', isMostRequested: true),
          ]),
        ),
      ),
    );
    getIt<ProductsBloc>().add(const ProductsEvent.getPage());
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

    final track = tester.widget<LandingMarqueeTrack>(
      find.byType(LandingMarqueeTrack),
    );
    expect(track.names, ['الأكثر طلباً', 'مميز']);
  });
}
