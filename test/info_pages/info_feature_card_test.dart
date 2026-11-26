import 'package:elzefir/core/theme/app_theme.dart';
import 'package:elzefir/features/info_pages/present/models/info_section.dart';
import 'package:elzefir/features/info_pages/present/views/widgets/info_feature_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('info feature cards paint without a border assertion', (
    tester,
  ) async {
    await tester.pumpWidget(
      ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        builder: (context, _) => MaterialApp(
          theme: AppTheme.theme(context),
          home: const Scaffold(
            body: InfoFeatureGrid(
              features: [
                InfoFeature(title: 'عنوان الخدمة', description: 'وصف الخدمة'),
              ],
            ),
          ),
        ),
      ),
    );
    await tester.pump();

    expect(find.text('عنوان الخدمة'), findsOneWidget);
    expect(find.text('وصف الخدمة'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
