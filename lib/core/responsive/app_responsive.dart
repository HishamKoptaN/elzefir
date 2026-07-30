import 'package:flutter/material.dart';

import 'app_breakpoints.dart';

class AppResponsive {
  static double responsive(
    BuildContext context, {
    required double mobile,
    required double tablet,
    required double desktop,
  }) {
    final w = MediaQuery.of(context).size.width;
    if (w < Breakpoints.mobile) return mobile;
    if (w < Breakpoints.mobile) return mobile;
    if (w < Breakpoints.desktop) return tablet;
    return desktop;
  }
}

// T responsiveValue<T>({
//   required BuildContext context,
//   required T mobile,
//   required T tablet,
//   required T desktop,
// }) {
//   switch (getDeviceType(context)) {
//     case DeviceType.mobile:
//       return mobile;
//     case DeviceType.tablet:
//       return tablet;
//     case DeviceType.desktop:
//       return desktop;
//   }
// }

// class AdaptiveValue<T> {
//   final BuildContext context;
//   final T mobile;
//   final T tablet;
//   final T desktop;

//   AdaptiveValue({
//     required this.context,
//     required this.mobile,
//     required this.tablet,
//     required this.desktop,
//   });

//   T build() {
//     return responsiveValue(
//       context: context,
//       mobile: mobile,
//       tablet: tablet,
//       desktop: desktop,
//     );
//   }
// }
