import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../generated/assets.gen.dart';
import '../store_status_builder.dart';

class DrawerHeaderWidget extends StatelessWidget {
  const DrawerHeaderWidget({super.key, required this.pulseAnimation});

  final Animation<double> pulseAnimation;

  // Stitch Design Colors
  static const Color brand50 = Color(0xFFF0F6FA);
  static const Color brand100 = Color(0xFFE1EEF5);
  static const Color brand800 = Color(0xFF124370);
  static const Color emeraldBg = Color(0xFFECFDF5);
  static const Color emeraldBorder = Color(0xFFA7F3D0);
  static const Color emeraldText = Color(0xFF065F46);
  static const Color emeraldDot = Color(0xFF10B981);

  static const Color roseBg = Color(0xFFFEF2F2);
  static const Color roseBorder = Color(0xFFFECACA);
  static const Color roseText = Color(0xFF991B1B);
  static const Color roseDot = Color(0xFFEF4444);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFFDFBF7), Color(0xFFF7F9FC), Colors.white],
        ),
        border: Border(bottom: BorderSide(color: brand50, width: 1.5)),
      ),
      padding: EdgeInsets.only(
        top: 14.h,
        bottom: 16.h,
        left: 16.w,
        right: 16.w,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Close button
          Positioned(
            left: 0,
            top: 0,
            child: Material(
              color: brand50,
              shape: const CircleBorder(),
              child: InkWell(
                customBorder: const CircleBorder(),
                onTap: () {
                  Navigator.maybePop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FaIcon(
                    FontAwesomeIcons.xmark,
                    size: 16,
                    color: brand800,
                  ),
                ),
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Logo Container
              Container(
                width: 90,
                height: 90,
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: brand100, width: 2),
                  boxShadow: [
                    BoxShadow(
                      color: brand800.withValues(alpha: 0.08),
                      blurRadius: 16,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Image.asset(
                    Assets.logos.solidLogo.path,
                    fit: BoxFit.contain,
                    errorBuilder: (_, _, _) {
                      return Image.asset(
                        Assets.logos.logoPng.path,
                        fit: BoxFit.contain,
                        errorBuilder: (_, _, _) => const FaIcon(
                          FontAwesomeIcons.utensils,
                          size: 36,
                          color: brand800,
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // Open status pill
              StoreStatusBuilder(
                builder: (context, workingHours) {
                  final isOpen = workingHours?.isOpenNow;
                  final bg = switch (isOpen) {
                    true => emeraldBg,
                    false => roseBg,
                    null => brand50,
                  };
                  final border = switch (isOpen) {
                    true => emeraldBorder,
                    false => roseBorder,
                    null => brand100,
                  };
                  final textCol = switch (isOpen) {
                    true => emeraldText,
                    false => roseText,
                    null => brand800,
                  };
                  final dotCol = switch (isOpen) {
                    true => emeraldDot,
                    false => roseDot,
                    null => const Color(0xFF94A3B8),
                  };
                  final statusText = switch (isOpen) {
                    true => 'مفتوح الآن لاستقبال الطلبات',
                    false => 'مغلق الآن',
                    null => 'جارٍ التحقق من الحالة',
                  };

                  return Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: bg,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: border),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FadeTransition(
                          opacity: pulseAnimation,
                          child: Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: dotCol,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          statusText,
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: textCol,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 6),
              // Slogan
              Text(
                'السمك على أصوله • طازج يومياً',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: brand800.withValues(alpha: 0.75),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
