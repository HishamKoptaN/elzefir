class WorkingHoursEntity {
  static const Map<int, String> _dayNames = {
    1: 'الاثنين',
    2: 'الثلاثاء',
    3: 'الأربعاء',
    4: 'الخميس',
    5: 'الجمعة',
    6: 'السبت',
    7: 'الأحد',
  };

  final int openMinutes;
  final int closeMinutes;
  final List<int> days;

  /// حالة صريحة للمحل تُدار من فايرستور (فتح/غلق يدوي).
  /// عند تركها null تُحسب الحالة تلقائياً من المواعيد والأيام.
  final bool? isOpenOverride;

  const WorkingHoursEntity({
    required this.openMinutes,
    required this.closeMinutes,
    required this.days,
    this.isOpenOverride,
  });

  factory WorkingHoursEntity.fromFirestore(Map<String, dynamic> data) {
    return WorkingHoursEntity(
      openMinutes:
          _readMinutes(
            data['openMinutes'] ?? data['openTime'] ?? data['open'],
          ) ??
          540,
      closeMinutes:
          _readMinutes(
            data['closeMinutes'] ?? data['closeTime'] ?? data['close'],
          ) ??
          1380,
      days: _readDays(data['days']),
      isOpenOverride: _readIsOpen(data),
    );
  }

  bool get isOpenNow {
    if (isOpenOverride != null) {
      return isOpenOverride!;
    }
    final now = DateTime.now();
    final currentDay = now.weekday;
    if (!days.contains(currentDay)) {
      return false;
    }
    final currentMinutes = now.hour * 60 + now.minute;
    if (closeMinutes >= openMinutes) {
      return currentMinutes >= openMinutes && currentMinutes <= closeMinutes;
    } else {
      return currentMinutes >= openMinutes || currentMinutes <= closeMinutes;
    }
  }

  String get formattedTime {
    return 'من ${_formatMinutes(openMinutes)} حتى ${_formatMinutes(closeMinutes)}';
  }

  /// أسماء أيام العمل القادمة من فايرستور.
  String get formattedDays {
    if (days.length >= 7) {
      return 'يومياً';
    }
    final sorted = [...days]..sort();
    return sorted.map((day) => _dayNames[day]).whereType<String>().join('، ');
  }

  /// صيغة مختصرة للمواعيد تناسب المساحات الضيقة.
  String get formattedTimeShort {
    return '${_formatMinutesShort(openMinutes)} - ${_formatMinutesShort(closeMinutes)}';
  }

  static String _formatMinutes(int minutes) {
    final hours = minutes ~/ 60;
    final mins = minutes % 60;
    final hour12 = hours == 0 ? 12 : (hours > 12 ? hours - 12 : hours);
    final period = hours >= 12 ? 'مساءً' : 'صباحاً';
    if (mins == 0) {
      return '$hour12:00 $period';
    }
    return '$hour12:${mins.toString().padLeft(2, '0')} $period';
  }

  static String _formatMinutesShort(int minutes) {
    final hours = minutes ~/ 60;
    final mins = minutes % 60;
    final hour12 = hours == 0 ? 12 : (hours > 12 ? hours - 12 : hours);
    final period = hours >= 12 ? 'م' : 'ص';
    return '$hour12:${mins.toString().padLeft(2, '0')} $period';
  }

  static bool? _readIsOpen(Map<String, dynamic> data) {
    for (final key in const ['isOpen', 'is_open', 'status', 'open']) {
      final value = data[key];
      if (value is bool) {
        return value;
      }
      if (value is String) {
        final normalized = value.trim().toLowerCase();
        if (normalized == 'open' || normalized == 'مفتوح') {
          return true;
        }
        if (normalized == 'closed' ||
            normalized == 'close' ||
            normalized == 'مغلق') {
          return false;
        }
      }
    }
    return null;
  }

  static int? _readMinutes(Object? value) {
    if (value is num) {
      final minutes = value.toInt();
      // القيم الصغيرة تُفهم كساعات (9 => 540 دقيقة).
      return minutes >= 0 && minutes <= 24 ? minutes * 60 : minutes;
    }
    if (value is String) {
      final match = RegExp(r'(\d{1,2})\s*[:.]?\s*(\d{2})?')
          .firstMatch(value.trim());
      if (match == null) {
        return null;
      }
      var hours = int.parse(match.group(1)!);
      final mins = int.tryParse(match.group(2) ?? '') ?? 0;
      final lower = value.toLowerCase();
      final isPm = lower.contains('pm') || value.contains('مساء');
      final isAm = lower.contains('am') || value.contains('صباح');
      if (isPm && hours < 12) {
        hours += 12;
      }
      if (isAm && hours == 12) {
        hours = 0;
      }
      if (hours > 23 || mins > 59) {
        return null;
      }
      return hours * 60 + mins;
    }
    return null;
  }

  static List<int> _readDays(Object? value) {
    if (value is List) {
      final days = value
          .map((e) {
            if (e is num) return e.toInt();
            if (e is String) return int.tryParse(e.trim());
            return null;
          })
          .whereType<int>()
          .where((day) => day >= 1 && day <= 7)
          .toList();
      if (days.isNotEmpty) {
        return days;
      }
    }
    return const [1, 2, 3, 4, 5, 6, 7];
  }
}
