import 'package:elzefir/core/utils/extensions/theme_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'dialog_header.dart';

class ConfirmationDialog extends StatelessWidget {
  const ConfirmationDialog({
    super.key,
    required this.title,
    required this.message,
    required this.onConfirm,
    required this.onCancel,
  });
  final String title;
  final String message;
  final VoidCallback onConfirm;
  final VoidCallback onCancel;

  static Future<bool?> show({
    required BuildContext context,
    required String title,
    required String message,
  }) {
    return showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return ConfirmationDialog(
          title: title,
          message: message,
          onConfirm: () {
            Navigator.of(context).pop(true);
          },
          onCancel: () {
            Navigator.of(context).pop(false);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: context.colorScheme.primary,
      insetPadding: EdgeInsets.zero,
      child: IntrinsicWidth(
        child: Container(
          decoration: BoxDecoration(
            color: context.colorScheme.surface,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: .min,
              children: [
                DialogHeader(title: title),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 30.h,
                  ),
                  child: Text(
                    message,
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: context.colorScheme.onSurface,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                    vertical: 14.h,
                  ),
                  decoration: BoxDecoration(
                    color: context.colorScheme.surfaceContainerLowest,
                    border: Border(
                      top: BorderSide(
                        color: context.colorScheme.outlineVariant,
                        width: 1,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: onCancel,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 24.w,
                            vertical: 10.h,
                          ),
                          decoration: BoxDecoration(
                            color: context.colorScheme.surface,
                            border: Border.all(
                              color: context.colorScheme.outlineVariant,
                            ),
                          ),
                          child: Text(
                            'إلغاء',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp,
                              color: context.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 12.w),
                      GestureDetector(
                        onTap: onConfirm,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 24.w,
                            vertical: 10.h,
                          ),
                          decoration: BoxDecoration(
                            color: context.colorScheme.primary,
                          ),
                          child: Text(
                            'تأكيد',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp,
                              color: context.colorScheme.onPrimary,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
