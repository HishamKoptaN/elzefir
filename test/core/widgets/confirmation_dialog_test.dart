import 'package:elzefir/core/widgets/custom_dialog/confirmation_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('dialog content scrolls when shorter than its content', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(1000, 700);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(
      ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) => MaterialApp(
          home: Scaffold(
            body: Center(
              child: SizedBox(
                height: 443,
                width: 1000,
                child: ConfirmationDialog(
                  title: 'الخصوصية',
                  message: 'نستخدم التحليلات لتحسين تجربتك. هل توافق؟',
                  onConfirm: () {},
                  onCancel: () {},
                ),
              ),
            ),
          ),
        ),
      ),
    );

    expect(find.byType(SingleChildScrollView), findsOneWidget);
    expect(find.text('تأكيد'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
