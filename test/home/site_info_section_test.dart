import 'package:elzefir/core/theme/app_theme.dart';
import 'package:elzefir/features/home/present/widgets/site_info/site_info_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';

const _titles = [
  'الأسماك الطازجة بالكيلو',
  'الجمبري والمأكولات البحرية',
  'الوجبات والساندوتشات',
  'المقبلات والأطباق الجانبية',
];

void main() {
  for (final width in [390.0, 820.0, 1440.0]) {
    testWidgets('SiteInfoSection fits width $width', (tester) async {
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = Size(width, 900);
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);

      await tester.pumpWidget(
        ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp(
              theme: AppTheme.theme(context),
              home: const Directionality(
                textDirection: .rtl,
                child: Scaffold(
                  body: SingleChildScrollView(child: SiteInfoSection()),
                ),
              ),
            );
          },
        ),
      );

      expect(find.text('مطعم أسماك الزفر'), findsOneWidget);
      expect(find.text('خدماتنا ومميزاتنا'), findsOneWidget);
      for (final title in _titles) {
        expect(find.text(title), findsOneWidget);
      }
      expect(tester.takeException(), isNull);

      for (final title in _titles) {
        final rect = tester.getRect(find.text(title));
        expect(rect.left, greaterThanOrEqualTo(0));
        expect(rect.right, lessThanOrEqualTo(width));
      }
      for (final element in find.byType(RichText).evaluate()) {
        final paragraph = element.renderObject! as RenderParagraph;
        expect(paragraph.didExceedMaxLines, isFalse);
      }
    });
  }
}
