import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../responsive/app_responsive.dart';

extension ResponsiveFontExtension on num {
  double rf(BuildContext context) {
    return AppResponsive.responsive(
      context,
      mobile: this * 1,
      tablet: this * 0.5,
      desktop: this * 0.5,
    );
  }
}

TextTheme getLightTextTheme({required BuildContext context}) {
  return TextTheme(
    // هذا النص هو أهم شيء في الشاشة
    displayLarge: TextStyle(fontSize: 104.sp.rf(context), fontWeight: .bold),
    displayMedium: TextStyle(fontSize: 96.sp.rf(context), fontWeight: .bold),
    displaySmall: TextStyle(fontSize: 88.sp.rf(context), fontWeight: .bold),
    // هل هذا النص ينظم الصفحة؟
    headlineLarge: TextStyle(fontSize: 80.sp.rf(context), fontWeight: .bold),
    headlineMedium: TextStyle(fontSize: 72.sp.rf(context), fontWeight: .bold),
    headlineSmall: TextStyle(fontSize: 64.sp.rf(context), fontWeight: .bold),
    // هل هذا النص يعرّف عنصرًا
    titleLarge: TextStyle(fontSize: 58.sp.rf(context), fontWeight: .bold),
    titleMedium: TextStyle(fontSize: 54.sp.rf(context), fontWeight: .w600),
    titleSmall: TextStyle(fontSize: 52.sp.rf(context), fontWeight: .w500),
    // هل الهدف من النص أن يُقر
    bodyLarge: TextStyle(
      fontSize: 52.sp.rf(context),
      height: 1.6,
      fontWeight: .w600,
    ),
    bodyMedium: TextStyle(
      fontSize: 50.sp.rf(context),
      height: 1.6,
      fontWeight: .w600,
    ),
    bodySmall: TextStyle(
      fontSize: 48.sp.rf(context),
      height: 1.6,
      fontWeight: .w600,
    ),
    // هل النص داخل عنصر تفاعلي
    labelLarge: TextStyle(fontSize: 48.sp.rf(context), fontWeight: .w600),
    labelMedium: TextStyle(fontSize: 46.sp.rf(context), fontWeight: .w600),
    labelSmall: TextStyle(fontSize: 44.sp.rf(context), fontWeight: .w600),
  );
}
