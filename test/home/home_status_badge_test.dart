// Run with: flutter test --platform chrome test/home (web-only app storage).
@TestOn('browser')
library;

import 'package:flutter_test/flutter_test.dart';

import 'status_badge_harness.dart';

void main() {
  testWidgets('Scheduled closure explains ordering and configured hours', (
    tester,
  ) async {
    final controller = await mountBadge(tester);
    final hours = closedHours();
    await emitHours(tester, controller, hours);
    expect(find.text('مغلق الآن'), findsOneWidget);
    expect(find.text(orderNotice), findsOneWidget);
    expect(
      find.textContaining(
        'يفتح ${hours.formattedDays} من 10:30 صباحاً حتى 10:00 مساءً',
      ),
      findsOneWidget,
    );
  });

  testWidgets('Opening hides deferred preparation notice', (tester) async {
    final controller = await mountBadge(tester);
    await emitHours(tester, controller, closedHours());
    expect(find.text(orderNotice), findsOneWidget);
    await emitHours(tester, controller, openHours);
    expect(find.text('مفتوح الآن لاستقبال الطلبات'), findsOneWidget);
    expect(find.text(orderNotice), findsNothing);
    expect(find.textContaining(openHours.formattedTimeShort), findsOneWidget);
  });

  for (final override in [false, true]) {
    testWidgets('Manual override $override never promises deferred orders', (
      tester,
    ) async {
      final controller = await mountBadge(tester);
      await emitHours(tester, controller, closedHours(override: override));
      expect(find.text(orderNotice), findsNothing);
      expect(
        find.text(override ? 'مفتوح الآن لاستقبال الطلبات' : 'مغلق الآن'),
        findsOneWidget,
      );
      expect(find.textContaining('يفتح'), findsNothing);
    });
  }

  testWidgets('Loading, missing data and stream errors do not promise orders', (
    tester,
  ) async {
    final controller = await mountBadge(tester);
    expect(find.text('جارٍ التحقق من الحالة'), findsOneWidget);
    expect(find.text(orderNotice), findsNothing);
    await emitHours(tester, controller, closedHours());
    await emitHours(tester, controller, null);
    expect(find.text(orderNotice), findsNothing);
    expect(find.textContaining('يفتح'), findsNothing);
    await emitHours(tester, controller, closedHours());
    controller.addError(StateError('Working hours unavailable'));
    await tester.pump();
    await tester.pump();
    expect(find.text('جارٍ التحقق من الحالة'), findsOneWidget);
    expect(find.text(orderNotice), findsNothing);
    expect(find.textContaining('يفتح'), findsNothing);
  });

  testWidgets('Timer re-evaluates availability without a stream event', (
    tester,
  ) async {
    final controller = await mountBadge(tester);
    final days = [DateTime.now().weekday % 7 + 1];
    await emitHours(
      tester,
      controller,
      WorkingHoursEntity(openMinutes: 0, closeMinutes: 1439, days: days),
    );
    expect(find.text(orderNotice), findsOneWidget);
    days.add(DateTime.now().weekday);
    await tester.pump(const Duration(seconds: 30));
    expect(find.text(orderNotice), findsNothing);
    expect(find.text('مفتوح الآن لاستقبال الطلبات'), findsOneWidget);
  });
}
