import 'package:elzefir/core/analytics/consent_gate.dart';
import 'package:elzefir/core/analytics/consent_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';

class _FakeConsent implements ConsentDecision {
  bool decided = false;
  String? last;

  @override
  Future<bool> isDecided() async => decided;

  @override
  Future<void> grant() async => last = 'grant';

  @override
  Future<void> deny() async => last = 'deny';
}

Widget _harness(ConsentDecision consent) {
  return ScreenUtilInit(
    designSize: const Size(360, 690),
    builder: (context, child) => MaterialApp(
      home: ConsentGate(consent: consent, child: const SizedBox.shrink()),
    ),
  );
}

void main() {
  testWidgets('asks once and stores acceptance', (tester) async {
    tester.view.physicalSize = const Size(360, 690);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final consent = _FakeConsent();
    await tester.pumpWidget(_harness(consent));
    await tester.pumpAndSettle();

    expect(find.text('الخصوصية'), findsOneWidget);
    await tester.tap(find.text('تأكيد'));
    await tester.pumpAndSettle();

    expect(consent.last, 'grant');
  });

  testWidgets('skips the dialog when a decision exists', (tester) async {
    tester.view.physicalSize = const Size(360, 690);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final consent = _FakeConsent()..decided = true;
    await tester.pumpWidget(_harness(consent));
    await tester.pumpAndSettle();

    expect(find.text('الخصوصية'), findsNothing);
    expect(consent.last, isNull);
  });

  testWidgets('asks through the navigator when placed above it', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(360, 690);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final navKey = GlobalKey<NavigatorState>();
    final consent = _FakeConsent();
    await tester.pumpWidget(
      ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) => MaterialApp(
          navigatorKey: navKey,
          home: const SizedBox.shrink(),
          builder: (context, child) => ConsentGate(
            navigatorKey: navKey,
            consent: consent,
            child: child!,
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('الخصوصية'), findsOneWidget);
    await tester.tap(find.text('تأكيد'));
    await tester.pumpAndSettle();

    expect(consent.last, 'grant');
  });
}
