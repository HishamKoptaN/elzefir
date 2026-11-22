import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/utils/extensions/theme_ext.dart';
import '../../../../../../generated/assets.gen.dart';
import '../../../../../products/data/mapper/products_mapper.dart';
import '../../../../../products/domain/entities/product_entity.dart';
import '../../../../../products/present/blocs/bloc/products_bloc.dart';
import '../landing_food_dots.dart';
import 'landing_food_card.dart';

/// شريط "مختارات الطاهي" يعرض منتجات فايرستور مع تبديل تلقائي.
class LandingFoodStrip extends StatelessWidget {
  const LandingFoodStrip({super.key});

  static List<ChefSlide> get _fallback => [
    (
      image: Assets.images.landingFoodPlatter.path,
      name: 'طاجن فواكه البحر',
      price: '١٨٥ ج.م',
      product: null,
    ),
    (
      image: Assets.images.landingFoodSeabass.path,
      name: 'دنيس مشوي',
      price: '٢٢٠ ج.م',
      product: null,
    ),
    (
      image: Assets.images.landingFoodTajine.path,
      name: 'طاجن إسكندراني',
      price: '١٩٥ ج.م',
      product: null,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(
      bloc: getIt<ProductsBloc>(),
      builder: (context, state) {
        final products = state.maybeMap(
          loaded: (s) => s.products?.map((e) => e.toEntity()).toList() ?? [],
          orElse: () => <ProductEntity>[],
        );
        final withImages = products.where((p) => p.image.isNotEmpty).toList();
        final featured = withImages.where((p) => p.isFeatured).take(6).toList();
        final selected = featured.isNotEmpty
            ? featured
            : withImages.take(6).toList();
        final items = selected.isEmpty
            ? _fallback
            : selected
                  .map(
                    (p) => (
                      image: p.image,
                      name: p.name,
                      price: '${p.price} ج.م',
                      product: p,
                    ),
                  )
                  .toList();
        return _Carousel(items: items);
      },
    );
  }
}

class _Carousel extends StatefulWidget {
  const _Carousel({required this.items});

  final List<ChefSlide> items;

  @override
  State<_Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<_Carousel> {
  final _controller = PageController(viewportFraction: 0.85);
  Timer? _timer;
  int _index = 0;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 4), (_) {
      if (!_controller.hasClients || widget.items.isEmpty) return;
      final next = _index + 1;
      if (next >= widget.items.length) {
        _controller.jumpToPage(0);
      } else {
        _controller.animateToPage(
          next,
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void didUpdateWidget(_Carousel old) {
    super.didUpdateWidget(old);
    if (_index >= widget.items.length) {
      _index = 0;
      if (_controller.hasClients) _controller.jumpToPage(0);
    }
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
                color: colors.onSurface,
                fontWeight: .w700,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 200.h,
          child: PageView.builder(
            controller: _controller,
            itemCount: widget.items.length,
            onPageChanged: (i) => setState(() => _index = i),
            itemBuilder: (context, i) =>
                LandingFoodCard(item: widget.items[i], index: i),
          ),
        ),
        LandingFoodDots(count: widget.items.length, activeIndex: _index),
      ],
    );
  }
}
