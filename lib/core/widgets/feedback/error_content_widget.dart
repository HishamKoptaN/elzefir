import 'package:flutter/material.dart';
import '../../utils/extensions/theme_ext.dart';

class CustomErrorWidget extends StatelessWidget {
  final String message;
  final VoidCallback? onRetry;
  final String? retryText;
  final IconData? icon;
  final double? iconSize;
  final bool showRetryButton;
  final Color? iconColor;
  final Color? textColor;
  final Color? buttonColor;
  final Color? buttonTextColor;

  const CustomErrorWidget({
    super.key,
    required this.message,
    this.onRetry,
    this.retryText,
    this.icon,
    this.iconSize,
    this.showRetryButton = true,
    this.iconColor,
    this.textColor,
    this.buttonColor,
    this.buttonTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon ?? Icons.error_outline,
            size: iconSize ?? 64,
          ),
          const SizedBox(height: 16),
          Text(
            message,
            textAlign: TextAlign.center,
          ),
          if (showRetryButton && onRetry != null) ...[
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: onRetry!,
              style: ElevatedButton.styleFrom(
                foregroundColor:
                  buttonTextColor ?? context.colorScheme.onPrimary,
              ),
              child: Text(retryText ?? 'Retry'),
            ),
          ],
        ],
      ),
    );
  }
}
