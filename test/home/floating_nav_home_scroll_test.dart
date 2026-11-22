import 'package:elzefir/core/theme/app_theme.dart';
import 'package:elzefir/features/home/present/widgets/floating_nav/floating_section_nav.dart';
import 'package:elzefir/features/home/present/widgets/floating_nav/section_nav_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  testWidgets('tapping الرئيسية scrolls to top', (tester) async {
    final controller = ScrollController();
    addTearDown(controller.dispose);
    final heroKey = GlobalKey();
    final productsKey = GlobalKey();

    await tester.pumpWidget(ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, __) => MaterialApp(
        theme: AppTheme.theme(context),
        home: Scaffold(
          body: Stack(
            children: [
              SingleChildScrollView(
                controller: controller,
                child: Column(
                  children: [
                    Container(key: heroKey, height: 900, color: Colors.red),
                    Container(key: productsKey, height: 900, color: Colors.blue),
                  ],
                ),
              ),
              FloatingSectionNav(
                items: [
                  SectionNavItem(label: 'الرئيسية', icon: FontAwesomeIcons.house, key: heroKey),
                  SectionNavItem(label: 'القائمة', icon: FontAwesomeIcons.utensils, key: productsKey),
                ],
                controller: controller,
                onSelected: (i) {
                  final key = [heroKey, productsKey][i];
                  final ctx = key.currentContext;
                  if (ctx != null) {
                    Scrollable.ensureVisible(ctx, duration: const Duration(milliseconds: 300));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    ));
    await tester.pumpAndSettle();

    controller.jumpTo(400);
    await tester.pumpAndSettle();
    expect(controller.offset, greaterThan(0));

    await tester.tap(find.text('الرئيسية'));
    await tester.pumpAndSettle();

    expect(controller.offset, 0);
  });
}
