// Run with: flutter test --platform chrome test/home (web-only app storage).
@TestOn('browser')
library;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';

import 'status_badge_harness.dart';

void main() {
  for (final width in [320.0, 390.0, 800.0, 1440.0]) {
    for (final textScale in [1.0, 2.0]) {
      testWidgets('RTL status fits width $width at text scale $textScale', (
        tester,
      ) async {
        final controller = await mountBadge(
          tester,
          width: width,
          textScale: textScale,
        );
        final now = DateTime.now();
        final minutes = now.hour * 60 + now.minute;
        final hours = WorkingHoursEntity(
          openMinutes: (minutes + 60) % 1440,
          closeMinutes: (minutes + 120) % 1440,
          days: const [1, 2, 3, 4, 5, 6, 7],
        );
        await emitHours(tester, controller, hours);
        expect(find.text(orderNotice), findsOneWidget);
        expect(
          find.textContaining('يفتح يومياً ${hours.formattedTime}'),
          findsOneWidget,
        );
        expect(tester.takeException(), isNull);
        final noticeRect = tester.getRect(find.text(orderNotice));
        expect(noticeRect.left, greaterThanOrEqualTo(0));
        expect(noticeRect.right, lessThanOrEqualTo(width));
        for (final element in find.byType(RichText).evaluate()) {
          final paragraph = element.renderObject! as RenderParagraph;
          expect(paragraph.didExceedMaxLines, isFalse);
          expect(paragraph.textDirection, TextDirection.rtl);
        }
        await emitHours(tester, controller, openHours);
        expect(find.text(orderNotice), findsNothing);
        expect(tester.takeException(), isNull);
      });
    }
  }
}
