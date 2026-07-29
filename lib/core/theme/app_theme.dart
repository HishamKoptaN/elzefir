import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';
import 'core/text_theme.dart';

class AppTheme {
  AppTheme._({required BuildContext context});
  static const AppColors _light = LightColors();
  static const AppColors _dark = DarkColors();
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      fontFamily: 'FreeSerif',
      scaffoldBackgroundColor: _light.background,
      textTheme: getLightTextTheme(context: context),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        linearMinHeight: 2,
        color: Colors.white,
        strokeWidth: 2,
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          textStyle: WidgetStatePropertyAll(
            TextStyle(fontWeight: FontWeight.bold, fontSize: 22.sp),
          ),
        ),
      ),
      cardTheme: CardThemeData(color: _light.surface, elevation: 4),
      tooltipTheme: TooltipThemeData(
        textStyle: TextStyle(color: Colors.white, fontSize: 18.sp),
      ),
      colorScheme: ColorScheme.light(
        primary: _light.primary,
        onPrimary: Colors.white,
        secondary: const Color(0xFFFBECE6),
        tertiary: const Color(0xFFC88A67),
        surface: _light.background,
        surfaceContainer: _light.surface,
        error: AppColors.danger,
        onSurface: _light.textPrimary,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          backgroundColor: _light.primary,
          foregroundColor: Colors.white,
          disabledBackgroundColor: _light.textSecondary.withValues(alpha: 0.24),
          disabledForegroundColor: _light.textSecondary.withValues(alpha: 0.48),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: const Color(0xFF001629),
          foregroundColor: Colors.white,
          elevation: 0,
          shape: const StadiumBorder(),
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
        ),
        //   tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: _light.surface,
        prefixIconColor: _light.textSecondary.withValues(alpha: 0.6),
        suffixIconColor: _light.textSecondary.withValues(alpha: 0.6),
        hintStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 22.sp,
          height: 27 / 24,
          color: _light.textSecondary.withValues(alpha: 0.5),
        ),
        alignLabelWithHint: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        contentPadding: EdgeInsets.symmetric(vertical: 15.h),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: _light.textSecondary.withValues(alpha: 0.2),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: _light.primary, width: 1.5),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.danger),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.danger, width: 1.5),
        ),
        errorStyle: TextStyle(color: AppColors.danger, fontSize: 12.sp),
      ),
      iconTheme: IconThemeData(
        color: _light.textPrimary.withValues(alpha: 0.6),
      ),
      dropdownMenuTheme: DropdownMenuThemeData(
        textStyle: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.w500,
          color: _light.textPrimary,
        ),
        menuStyle: MenuStyle(
          backgroundColor: WidgetStateProperty.all(_light.surface),
          elevation: WidgetStateProperty.all(8),
          surfaceTintColor: WidgetStateProperty.all(Colors.transparent),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              side: BorderSide(
                color: _light.textSecondary.withValues(alpha: 0.1),
              ),
            ),
          ),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8.h)),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: _light.textSecondary,
          // side: BorderSide(color: _light.outline, width: 1),
          textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      fontFamily: 'NotoNaskhArabic',
      scaffoldBackgroundColor: _dark.background,
      colorScheme: ColorScheme.dark(
        primary: _dark.primary,
        surface: _dark.surface,
        error: AppColors.danger,
        onPrimary: Colors.black,
        onSurface: _dark.textPrimary,
      ),
      cardTheme: CardThemeData(color: _light.surface, elevation: 4),
    );
  }
}
