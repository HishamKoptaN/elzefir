import 'package:flutter/material.dart';
import '../../utils/extensions/theme_ext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title,
    this.width,
    this.height = 73,
    this.backgroundColor,
    this.borderColor,
    this.titleStyle,
    this.icon,
    this.iconColor,
    this.iconSize,
    this.padding,
    this.alignment = Alignment.center,
  });

  final String title;
  final double? width;
  final double height;
  final Color? backgroundColor;
  final Color? borderColor;
  final TextStyle? titleStyle;
  final IconData? icon;
  final Color? iconColor;
  final double? iconSize;
  final EdgeInsetsGeometry? padding;
  final AlignmentGeometry alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1400.w,
      height: height.h,
      padding: padding,
      decoration: BoxDecoration(
        // color: backgroundColor ?? AppColors.primaryLight,
        border: Border.all(
          color: borderColor ??
              context.colorScheme.outlineVariant.withValues(alpha: 0.44),
        ),
      ),
      child: alignment == Alignment.center
          ? _buildCenteredContent(context)
          : _buildPaddedContent(context),
    );
  }

  Widget _buildCenteredContent(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 5.w,
        children: [
          if (icon != null) ...[
            Icon(
              icon,
              color: iconColor ?? context.colorScheme.onPrimary,
              size: iconSize?.w ?? 24.w,
            ),
          ],
          Text(
            title,
            style:
                titleStyle ??
                TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18.sp,
                  // color: AppColors.primary,
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildPaddedContent(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        spacing: 5.w,
        children: [
          if (icon != null) ...[
            Icon(
              icon,
              color: iconColor ?? context.colorScheme.onPrimary,
              size: iconSize?.w ?? 24.w,
            ),
          ],
          Text(
            title,
            style:
                titleStyle ??
                TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18.sp,
                  color: context.colorScheme.onPrimary,
                ),
          ),
        ],
      ),
    );
  }
}
