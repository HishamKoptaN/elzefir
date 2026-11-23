import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/data/entities/formatted_date_time_entity.dart';
import '../../../../../../../core/utils/extensions/scaled.dart';

class CreatedAtWidget extends StatelessWidget {
  final FormattedDateTimeEntity formattedDateTimeorder;

  const CreatedAtWidget({super.key, required this.formattedDateTimeorder});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 6.w.scaled(context),
      children: [
        Text(
          formattedDateTimeorder.fullDateTime ?? 'غير محدد',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16.sp.scaled(context)),
        ),
        Icon(Icons.calendar_today_outlined, size: 16.sp.scaled(context)),
      ],
    );
  }
}
