import 'package:flutter/material.dart';

import '../../responsive/app_responsive.dart';
import '../../responsive/device_helper.dart';
import '../../responsive/responsive_extensions.dart';

extension DeviceTypeExtension on BuildContext {
  bool get isDesk => DeviceInfo.type(this) == DeviceType.desktop;
  bool get isMob => DeviceInfo.type(this) == DeviceType.mobile;
  bool get isTab => DeviceInfo.type(this) == DeviceType.tablet;
}

extension IconSizeExtension on BuildContext {
  double iconSize({required double size}) {
    return this.responsive(
      mobile: size * 0.8,
      tablet: size,
      desktop: size,
    );
  }
}
