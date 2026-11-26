import 'package:elzefir/core/theme/app_theme.dart';
import 'package:elzefir/features/auth/widgets/auth_page_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('auth title paints with the color from the theme', (
    tester,
  ) async {
    late Color expected;

    await tester.pumpWidget(
      ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        builder: (context, _) {
          final theme = AppTheme.theme(context);
          expected = theme.colorScheme.primary;
          return MaterialApp(
            theme: theme,
            home: const Scaffold(body: AuthTitleWidget(title: 'تسجيل الدخول')),
          );
        },
      ),
    );

    final title = tester.widget<Text>(find.text('تسجيل الدخول'));
    expect(title.style?.color, expected);
    expect(title.style?.color, isNot(const Color(0xFF54392E)));
  });
}
