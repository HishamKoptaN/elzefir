import 'package:elzefir/core/utils/extensions/theme_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum AppSnackBarType { success, error, warning, info }

extension AppSnackBarExtension on BuildContext {
  void showSuccessSnackBar({
    required String title,
    String? message,
    Duration? duration,
  }) {
    AppSnackBar.show(
      context: this,
      title: title,
      message: message,
      type: AppSnackBarType.success,
      duration: duration,
    );
  }

  void showErrorSnackBar({
    required String title,
    String? message,
    Duration? duration,
  }) {
    AppSnackBar.show(
      context: this,
      title: title,
      message: message,
      type: AppSnackBarType.error,
      duration: duration,
    );
  }

  void showWarningSnackBar({
    required String title,
    String? message,
    Duration? duration,
  }) {
    AppSnackBar.show(
      context: this,
      title: title,
      message: message,
      type: AppSnackBarType.warning,
      duration: duration,
    );
  }

  void showInfoSnackBar({
    required String title,
    String? message,
    Duration? duration,
  }) {
    AppSnackBar.show(
      context: this,
      title: title,
      message: message,
      type: AppSnackBarType.info,
      duration: duration,
    );
  }
}

class AppSnackBar {
  static void show({
    required BuildContext context,
    required String title,
    String? message,
    required AppSnackBarType type,
    Duration? duration,
    bool autoDismiss = true,
    VoidCallback? onTap,
  }) {
    final theme = Theme.of(context);
    late final Color backgroundColor;
    late final Color borderColor;
    late final IconData icon;
    late final Color iconColor;
    switch (type) {
      case AppSnackBarType.success:
        backgroundColor = context.colorScheme.primary;
        borderColor = context.colorScheme.statusDot;
        icon = Icons.check_circle_rounded;
        iconColor = context.colorScheme.statusDot;
        break;
      case AppSnackBarType.error:
        backgroundColor = context.colorScheme.brandNavyDeep;
        borderColor = context.colorScheme.error;
        icon = Icons.error_outline_rounded;
        iconColor = context.colorScheme.error;
        break;
      case AppSnackBarType.warning:
        backgroundColor = context.colorScheme.brandNavyDeep;
        borderColor = context.colorScheme.brandGold;
        icon = Icons.warning_amber_rounded;
        iconColor = context.colorScheme.brandGold;
        break;
      case AppSnackBarType.info:
        backgroundColor = context.colorScheme.brandNavyDeep;
        borderColor = theme.primaryColor;
        icon = Icons.info_outline_rounded;
        iconColor = theme.primaryColor;
        break;
    }

    final snackBar = SnackBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      behavior: SnackBarBehavior.fixed,
      duration: duration ?? const Duration(seconds: 4),
      dismissDirection: DismissDirection.horizontal,
      content: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(16.r),
          margin: EdgeInsets.only(bottom: 16.h, left: 16.w, right: 16.w),
          decoration: BoxDecoration(
            color: backgroundColor,
            border: Border(
              left: BorderSide(color: borderColor, width: 4.w),
            ),
            boxShadow: [
              BoxShadow(
                color: context.colorScheme.shadow.withOpacity(0.1),
                blurRadius: 10.r,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(8.r),
                decoration: BoxDecoration(
                  color: borderColor.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: iconColor, size: 24),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontSize: 22.sp,
                        color: context.colorScheme.onPrimary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    if (message != null) ...{
                      SizedBox(height: 4.h),
                      Text(
                        message,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontSize: 20.sp,
                          color: context.colorScheme.onPrimary.withOpacity(0.8),
                        ),
                      ),
                    },
                  ],
                ),
              ),
              if (autoDismiss)
                IconButton(
                  icon: Icon(
                    Icons.close,
                    color: context.colorScheme.onPrimary.withOpacity(0.6),
                    size: 18,
                  ),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  },
                ),
            ],
          ),
        ),
      ),
    );
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
