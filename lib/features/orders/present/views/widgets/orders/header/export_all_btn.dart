import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/responsive/app_responsive.dart';
import '../../../../../../../core/responsive/device_helper.dart';
import '../../../../../../../core/utils/extensions/scaled.dart';

class ExportAllBtn extends StatelessWidget {
  const ExportAllBtn({super.key, required this.canExport, required this.onTap});
  final bool canExport;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        height: 45.h.scaled(context),
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFEFF0F6), width: 1),
        ),
        child: Center(
          child: InkWell(
            onTap: canExport ? onTap : null,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.file_download,
                  size: 20,
                  color: canExport
                      ? Colors.black
                      : Colors.grey.withOpacity(0.5),
                ),
                SizedBox(width: 6.w),
                Text(
                  'تصدير',
                  style: TextStyle(
                    fontSize: 20.sp.scaled(context),
                    fontWeight: FontWeight.bold,
                    color: canExport
                        ? Colors.black
                        : Colors.grey.withOpacity(0.5),
                  ),
                ),
                SizedBox(width: 6.w),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
