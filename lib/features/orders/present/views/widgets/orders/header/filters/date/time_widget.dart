import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum TimePeriod {
  am("صباحاً"),
  pm("مساءً");

  final String label;
  const TimePeriod(this.label);
  int to24Hour(int hour) {
    if (this == TimePeriod.pm && hour != 12) return hour + 12;
    if (this == TimePeriod.am && hour == 12) return 0;
    return hour;
  }
}

class CustomTimePicker extends StatefulWidget {
  final DateTime? date;
  final Function({required DateTime date}) onTimeSelected;
  const CustomTimePicker({
    super.key,
    required this.date,
    required this.onTimeSelected,
  });

  @override
  State<CustomTimePicker> createState() => _CustomTimePickerState();
}

class _CustomTimePickerState extends State<CustomTimePicker> {
  Timer? _timer;

  void _startTimer(VoidCallback action) {
    _timer = Timer.periodic(const Duration(milliseconds: 100), (_) => action());
  }

  void _stopTimer() => _timer?.cancel();

  @override
  void dispose() {
    _stopTimer();
    super.dispose();
  }

  Widget _buildRepeatableButton({
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return GestureDetector(
      onLongPressStart: (_) {
        _startTimer(onPressed);
      },
      onLongPressEnd: (_) {
        _stopTimer();
      },
      onLongPressCancel: () {
        _stopTimer();
      },
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, size: 24.r),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.date == null) return const SizedBox.shrink();

    bool isPm = widget.date!.hour >= 12;
    int displayHour = widget.date!.hour % 12;
    if (displayHour == 0) displayHour = 12;
    String periodLabel = isPm ? "مساءً" : "صباحاً";

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            _buildRepeatableButton(
              icon: Icons.keyboard_arrow_up,
              onPressed: () {
                widget.onTimeSelected(date: _incrementMinute(widget.date!));
              },
            ),
            Text(widget.date!.minute.toString().padLeft(2, '0')),
            _buildRepeatableButton(
              icon: Icons.keyboard_arrow_down,
              onPressed: () {
                widget.onTimeSelected(date: _decrementMinute(widget.date!));
              },
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0.w),
          child: Text(
            ":",
            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
          ),
        ),
        Column(
          children: [
            IconButton(
              onPressed: () {
                widget.onTimeSelected(date: _incrementHour(widget.date!));
              },
              icon: Icon(Icons.keyboard_arrow_up, size: 24.r),
            ),
            Text(displayHour.toString().padLeft(2, '0')),
            IconButton(
              onPressed: () {
                widget.onTimeSelected(date: _decrementHour(widget.date!));
              },
              icon: Icon(Icons.keyboard_arrow_down, size: 24.r),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0.w),
          child: Column(
            children: [
              IconButton(
                onPressed: () {
                  widget.onTimeSelected(date: _toggleAmPm(widget.date!));
                },
                icon: Icon(Icons.keyboard_arrow_up, size: 24.r),
              ),
              Text(periodLabel),
              IconButton(
                onPressed: () {
                  widget.onTimeSelected(date: _toggleAmPm(widget.date!));
                },
                icon: Icon(Icons.keyboard_arrow_down, size: 24.r),
              ),
            ],
          ),
        ),
      ],
    );
  }

  DateTime _incrementMinute(DateTime d) {
    return d.copyWith(minute: (d.minute + 1) % 60);
  }

  DateTime _decrementMinute(DateTime d) {
    return d.copyWith(minute: (d.minute - 1) < 0 ? 59 : d.minute - 1);
  }

  DateTime _incrementHour(DateTime d) {
    return d.copyWith(hour: (d.hour + 1) % 24);
  }

  DateTime _decrementHour(DateTime d) {
    return d.copyWith(hour: (d.hour - 1) < 0 ? 23 : d.hour - 1);
  }

  DateTime _toggleAmPm(DateTime d) {
    return d.copyWith(hour: (d.hour + 12) % 24);
  }
}
