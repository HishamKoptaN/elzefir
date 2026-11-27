import 'package:elzefir/core/theme/app_theme.dart';
import 'package:elzefir/features/dish_details/present/views/dish_details_view.dart';
import 'package:elzefir/features/home/present/widgets/products/card/product_card.dart';
import 'package:elzefir/features/products/domain/entities/product_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:visibility_detector/visibility_detector.dart';

void main() {
  setUp(() {
    VisibilityDetectorController.instance.updateInterval = Duration.zero;
  });

  testWidgets('tapping a product does not open details while disabled', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    const product = ProductEntity(id: '1', name: 'سمك', price: '180');
    final router = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          name: 'home',
          builder: (context, state) => const Scaffold(
            body: SingleChildScrollView(child: ProductCard(product: product)),
          ),
        ),
        GoRoute(
          path: '/${DishDetailsView.routeName}',
          name: DishDetailsView.routeName,
          builder: (context, state) => const Scaffold(
            body: Center(child: Text('تفاصيل المنتج')),
          ),
        ),
      ],
    );

    await tester.pumpWidget(
      ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        builder: (context, _) => MaterialApp.router(
          theme: AppTheme.theme(context),
          routerConfig: router,
        ),
      ),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.text('سمك'));
    await tester.pumpAndSettle();

    expect(find.text('تفاصيل المنتج'), findsNothing);
    expect(find.byType(ProductCard), findsOneWidget);
  });
}
