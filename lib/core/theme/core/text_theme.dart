import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextTheme getLightTextTheme({required BuildContext context}) {
  return TextTheme(
    // هذا النص هو أهم شيء في الشاشة
    displayLarge: TextStyle(fontWeight: .bold, fontSize: 94.sp),
    displayMedium: TextStyle(fontWeight: .bold, fontSize: 86.sp),
    displaySmall: TextStyle(fontWeight: .bold, fontSize: 78.sp),
    // هل هذا النص ينظم الصفحة؟
    headlineLarge: TextStyle(fontWeight: .bold, fontSize: 70.sp),
    headlineMedium: TextStyle(fontWeight: .bold, fontSize: 62.sp),
    headlineSmall: TextStyle(fontWeight: .bold, fontSize: 54.sp),
    // هل هذا النص يعرّف عنصرًا
    titleLarge: TextStyle(fontWeight: .bold, fontSize: 54.sp),
    titleMedium: TextStyle(fontWeight: .w600, fontSize: 50.sp),
    titleSmall: TextStyle(fontWeight: .w500, fontSize: 48.sp),
    // هل الهدف من النص أن يُقر
    bodyLarge: TextStyle(fontSize: 48.sp, height: 1.6, fontWeight: .w600),
    bodyMedium: TextStyle(fontSize: 46.sp, height: 1.6, fontWeight: .w600),
    bodySmall: TextStyle(fontSize: 44.sp, height: 1.6, fontWeight: .w600),
    // هل النص داخل عنصر تفاعلي
    labelLarge: TextStyle(fontWeight: .w600, fontSize: 46.sp),
    labelMedium: TextStyle(fontWeight: .w600, fontSize: 44.sp),
    labelSmall: TextStyle(fontWeight: .w600, fontSize: 42.sp),
  );
}
