import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/extensions/theme_ext.dart';
import '../../../../../../generated/assets.gen.dart';
import '../landing_food_dots.dart';
import 'landing_food_card.dart';

class LandingFoodStrip extends StatefulWidget {
  const LandingFoodStrip({super.key});
  @override
  State<LandingFoodStrip> createState() => _LandingFoodStripState();
}

class _LandingFoodStripState extends State<LandingFoodStrip> {
  static const _slideDuration = Duration(milliseconds: 600);
  static const _interval = Duration(seconds: 4);
  final PageController _controller = PageController(viewportFraction: 0.85);
  Timer? _timer;
  int _index = 0;
  List<(String, String, String)> get _items => [
    (Assets.images.landingFoodPlatter.path, 'طاجن فواكه البحر', '١٨٥ ج.م'),
    (Assets.images.landingFoodSeabass.path, 'دنيس مشوي', '٢٢٠ ج.م'),
    (Assets.images.landingFoodTajine.path, 'طاجن إسكندراني', '١٩٥ ج.م'),
  ];
  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(_interval, (_) {
      if (!_controller.hasClients) {
        return;
      }
      final nextIndex = _index + 1;
      if (nextIndex >= _items.length) {
        _controller.jumpToPage(0);
        return;
      }
      _controller.animateToPage(
        nextIndex,
        duration: _slideDuration,
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    return Column(
      crossAxisAlignment: .start,
      spacing: 8.h,
      children: [
        Row(
          mainAxisSize: .min,
          spacing: 6.w,
          children: [
            Icon(
              Icons.local_fire_department_rounded,
              size: 18.r,
              color: colors.brandGold,
            ),
            Text(
              'مختارات الطاهي المميزة',
              style: context.textTheme.titleMedium?.copyWith(
                color: colors.onPrimary,
                fontWeight: .w700,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 200.h,
          child: PageView.builder(
            controller: _controller,
            itemCount: _items.length,
            onPageChanged: (index) {
              setState(() {
                _index = index;
              });
            },
            itemBuilder: (context, index) {
              return LandingFoodCard(item: _items[index], index: index);
            },
          ),
        ),
        LandingFoodDots(count: _items.length, activeIndex: _index),
      ],
    );
  }
}
