import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../../core/utils/extensions/scaled.dart';

class CustomOrderFilterBtn extends StatelessWidget {
  const CustomOrderFilterBtn({
    super.key,
    required this.label,
    required this.widget,
  });
  final String label;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 4.h),
          child: Text(
            '*$label',
            textAlign: .start,
            style: TextStyle(fontSize: 20.sp.scaled(context)),
          ),
        ),
        Container(
          height: 52.h.scaled(context),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFEFF0F6), width: 1),
          ),
          child: widget,
        ),
      ],
    );
  }
}
