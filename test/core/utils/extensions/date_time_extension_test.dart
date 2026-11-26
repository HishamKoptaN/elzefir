import 'package:elzefir/core/utils/extensions/date_time_extension.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  setUpAll(() async {
    await initializeDateFormatting('en', null);
  });

  group('DateTimeFormatterX', () {
    test('التاريخ والوقت يستخدمان علامتي صباح ومساء بالعربية', () {
      final date = DateTime(2026, 6, 17, 23, 44);

      expect(
        date.toFormattedDateString(),
        matches(RegExp(r'^\d{4}-\d{2}-\d{2}$')),
      );
      expect(date.toFormattedTimeString(), matches(RegExp(r'^\d{2}:\d{2} (ص|م)$')));
      expect(
        date.toFullDateTimeString(),
        matches(RegExp(r'^\d{4}-\d{2}-\d{2} \d{2}:\d{2} (ص|م)$')),
      );
    });

    test('الوقت النسبي يغطي الحالات القريبة والبعيدة', () {
      final now = DateTime.now();

      expect(now.toRelativeTimeString(), 'الآن');
      expect(
        now.subtract(const Duration(minutes: 5)).toRelativeTimeString(),
        'منذ 5 دقيقة',
      );
      expect(
        now.subtract(const Duration(hours: 2)).toRelativeTimeString(),
        'منذ 2 ساعة',
      );
      expect(now.subtract(const Duration(days: 1)).toRelativeTimeString(), 'أمس');
      expect(
        now.subtract(const Duration(days: 2)).toRelativeTimeString(),
        'منذ يومين',
      );
      expect(
        now.subtract(const Duration(days: 5)).toRelativeTimeString(),
        'منذ 5 أيام',
      );
      expect(
        now.subtract(const Duration(days: 40)).toRelativeTimeString(),
        matches(RegExp(r'^\d{4}-\d{2}-\d{2}$')),
      );
    });
  });
}
