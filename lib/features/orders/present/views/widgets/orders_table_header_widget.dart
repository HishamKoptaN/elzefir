import 'package:flutter/material.dart';
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
          _buildHeaderItem('معرف المستخدم', flex: 2),
          _buildHeaderItem('الاسم', flex: 3),
          _buildHeaderItem('الدور', flex: 2),
          _buildHeaderItem('الحالة', flex: 2),
          _buildHeaderItem('الإجراءات', flex: 1),
        ],
      ),
    );
  }

  Widget _buildHeaderItem(String title, {required int flex}) {
    return Expanded(
      flex: flex,
      child: Text(
        title,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF6B7088),
        ),
      ),
    );
  }
}
