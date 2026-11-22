import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';
import 'gallery_indicator.dart';
import 'gallery_item.dart';
import 'gallery_slide.dart';

class GallerySection extends StatefulWidget {
  const GallerySection({super.key});

  @override
  State<GallerySection> createState() => _GallerySectionState();
}

class _GallerySectionState extends State<GallerySection> {
  static const _slideDuration = Duration(milliseconds: 600);
  static const _autoPlayInterval = Duration(seconds: 4);

  final List<GalleryItem> _items = GalleryItem.items;
  late final PageController _controller;
  Timer? _timer;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(viewportFraction: 0.9);
    _timer = Timer.periodic(_autoPlayInterval, (_) {
      _goToNextSlide();
    });
  }

  void _goToNextSlide() {
    if (!_controller.hasClients) {
      return;
    }
    final nextIndex = _currentIndex + 1;
    if (nextIndex >= _items.length) {
      _controller.jumpToPage(0);
      return;
    }
    _controller.animateToPage(
      nextIndex,
      duration: _slideDuration,
      curve: Curves.easeInOut,
    );
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
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
    return Column(
      crossAxisAlignment: .stretch,
      spacing: 10.h,
      children: [
        Text(
          'معرض الصور',
          style: context.textTheme.headlineSmall?.copyWith(
            color: context.colorScheme.brandNavyDeep,
            fontWeight: .w800,
          ),
        ),
        SizedBox(
          height: 220.h,
          child: PageView.builder(
            controller: _controller,
            itemCount: _items.length,
            onPageChanged: _onPageChanged,
            itemBuilder: (context, index) {
              return Padding(
                padding: .symmetric(horizontal: 4.w),
                child: GallerySlide(item: _items[index]),
              );
            },
          ),
        ),
        GalleryIndicator(count: _items.length, activeIndex: _currentIndex),
      ],
    );
  }
}
