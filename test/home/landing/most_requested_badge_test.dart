import 'package:elzefir/core/theme/app_theme.dart';
import 'package:elzefir/features/home/present/widgets/landing/hero/landing_food_card.dart';
import 'package:elzefir/features/products/domain/entities/product_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Future<void> pumpCard(WidgetTester tester, ProductEntity product) async {
    await tester.pumpWidget(
      ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        builder: (context, _) => MaterialApp(
          theme: AppTheme.theme(context),
          home: Scaffold(
            body: LandingFoodCard(
              item: (
                image: 'assets/images/landing_food_platter.png',
                name: product.name,
                price: '100 ج.م',
                product: product,
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pump();
  }

  testWidgets('badge follows the dashboard flag, not the slide position', (
    tester,
  ) async {
    await pumpCard(
      tester,
      const ProductEntity(id: '1', name: 'دنيس مشوي', isMostRequested: true),
    );
    expect(find.text('الأكثر طلباً'), findsOneWidget);

    await pumpCard(
      tester,
      const ProductEntity(id: '2', name: 'بوري مشوي', isFeatured: true),
    );
    expect(find.text('الأكثر طلباً'), findsNothing);
  });

  testWidgets('tapping the chef slide stays on home while details are disabled', (
    tester,
  ) async {
    await pumpCard(
      tester,
      const ProductEntity(id: '3', name: 'سمك مشوي'),
    );
    await tester.tap(find.text('سمك مشوي'));
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
  });
}
