import 'package:flutter/widgets.dart';
import 'app_breakpoints.dart';

enum DeviceType { mobile, tablet, desktop }

class DeviceInfo {
  static DeviceType getDeviceType(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < Breakpoints.mobile) {
      return DeviceType.mobile;
    } else {
      return DeviceType.desktop;
    }
  }
}

class DeviceHelper {
  static DeviceType getDeviceType(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width > 1024) {
      return DeviceType.desktop;
    } else if (width > 600) {
      return DeviceType.tablet;
    } else {
      return DeviceType.mobile;
    }
  }

  static T responsive<T>(
    BuildContext context, {
    required T mobile,
    required T tablet,
    required T desktop,
  }) {
    final width = MediaQuery.sizeOf(context).width;
    if (width < 400) return mobile;
    if (width < 1024) return tablet;
    return desktop;
  }
}

// class ResponsiveLayout extends StatelessWidget {
//   final Widget mobile;
//   final Widget tablet;
//   final Widget desktop;

//   const ResponsiveLayout({
//     super.key,
//     required this.mobile,
//     required this.tablet,
//     required this.desktop,
//   });

//   static const double mobileMax = 600;
//   static const double tabletMax = 1024;

//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;

//     if (width < mobileMax) {
//       return mobile;
//     } else if (width < tabletMax) {
//       return tablet;
//     } else {
//       return desktop;
//     }
//   }
// }

DeviceType getDeviceType(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  if (width < Breakpoints.mobile) return DeviceType.mobile;
  if (width < Breakpoints.tablet) return DeviceType.tablet;
  return DeviceType.desktop;
}

DeviceType getDeviceTypeFromConstraints(BoxConstraints constraints) {
  final width = constraints.maxWidth;
  if (width < Breakpoints.mobile) return DeviceType.mobile;
  if (width < Breakpoints.tablet) return DeviceType.tablet;
  return DeviceType.desktop;
}

bool isLandscape(BuildContext context) =>
    MediaQuery.of(context).orientation == Orientation.landscape;
bool isPortrait(BuildContext context) =>
    MediaQuery.of(context).orientation == Orientation.portrait;

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  final WidgetBuilder mobileLayout;
  final WidgetBuilder tabletLayout;
  final WidgetBuilder desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final type = getDeviceTypeFromConstraints(constraints);
        switch (type) {
          case DeviceType.mobile:
            return mobileLayout(context);
          case DeviceType.tablet:
            return tabletLayout(context);
          case DeviceType.desktop:
            return desktopLayout(context);
        }
      },
    );
  }
}
