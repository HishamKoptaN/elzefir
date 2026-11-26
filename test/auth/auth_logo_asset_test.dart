import 'dart:io';

import 'package:elzefir/core/theme/app_theme.dart';
import 'package:elzefir/core/widgets/custom_templates_logo/custom_templates_logo_typoghrovy.dart'
    as templates_logo;
import 'package:elzefir/features/auth/widgets/auth_page_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';

const assetPath = 'assets/logos/solid_logo.png';

void main() {
  test('auth logo paths point to an existing asset', () {
    expect(File(assetPath).existsSync(), isTrue);
    expect(templates_logo.TemplatesLogoDimensions.logoPath, assetPath);
  });

  testWidgets('auth layout loads the solid logo', (tester) async {
    await tester.pumpWidget(
      ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        builder: (context, _) => MaterialApp(
          theme: AppTheme.theme(context),
          home: const Scaffold(
            body: AuthPageLayout(title: 'تسجيل الدخول', form: SizedBox()),
          ),
        ),
      ),
    );
    await tester.pump();

    final image = tester.widget<Image>(find.byType(Image).first);
    expect(image.image, isA<ExactAssetImage>());
    expect((image.image as ExactAssetImage).assetName, assetPath);
    expect(tester.takeException(), isNull);
  });
}
