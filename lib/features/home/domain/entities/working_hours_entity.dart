class WorkingHoursEntity {
  final int openMinutes;
  final int closeMinutes;
  final List<int> days;

  const WorkingHoursEntity({
    required this.openMinutes,
    required this.closeMinutes,
    required this.days,
  });

  bool get isOpenNow {
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
}
