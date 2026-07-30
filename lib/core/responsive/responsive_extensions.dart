import 'package:flutter/material.dart';

import 'device_helper.dart';

extension DeviceContext on BuildContext {
  DeviceType get deviceType => DeviceInfo.type(this);

  bool get isMobile => deviceType == DeviceType.mobile;

  bool get isTablet => deviceType == DeviceType.tablet;

  bool get isDesktop => deviceType == DeviceType.desktop;
}

extension ResponsiveContext on BuildContext {
  T responsive<T>({required T mobile, required T tablet, required T desktop}) {
    switch (deviceType) {
      case DeviceType.mobile:
        return mobile;
      case DeviceType.tablet:
        return tablet;
      case DeviceType.desktop:
        return desktop;
    }
  }
}
