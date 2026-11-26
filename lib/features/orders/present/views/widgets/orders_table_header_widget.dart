import 'package:flutter/material.dart';
import '../../../../../core/utils/extensions/theme_ext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UsersTableHeaderWidget extends StatelessWidget {
  const UsersTableHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1138.w,
      height: 40.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          _buildHeaderItem(context, 'معرف المستخدم', flex: 2),
          _buildHeaderItem(context, 'الاسم', flex: 3),
          _buildHeaderItem(context, 'الدور', flex: 2),
          _buildHeaderItem(context, 'الحالة', flex: 2),
          _buildHeaderItem(context, 'الإجراءات', flex: 1),
        ],
      ),
    );
  }

  Widget _buildHeaderItem(BuildContext context, String title, {required int flex}) {
    return Expanded(
      flex: flex,
      child: Text(
        title,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
          color: context.colorScheme.onSurfaceVariant,
        ),
      ),
    );
  }
}
