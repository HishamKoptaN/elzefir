import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// لمسة إضاءة خفيفة في خلفية كارت الطلبات.
class TeaserGlow extends StatelessWidget {
  const TeaserGlow({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Container(
        width: 96.r,
        height: 96.r,
        decoration: BoxDecoration(shape: .circle, color: color),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
          child: const SizedBox(),
        ),
      ),
    );
  }
}
