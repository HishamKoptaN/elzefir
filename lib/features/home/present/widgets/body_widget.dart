import 'package:flutter/material.dart'
    show ElevatedButton, CircularProgressIndicator;
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/utils/extensions/device_type_extension.dart';
import '../../../../core/utils/extensions/theme_ext.dart';
import '../../../products/present/blocs/bloc/products_bloc.dart';
import '../../../products/data/mapper/products_mapper.dart';
import 'about/about.dart';
import 'footer/footer_widget.dart';
import 'home_app_bar/home_status_badge.dart';
import 'gallery/gallery_section.dart';
import 'landing/landing_hero_section.dart';
import 'landing/landing_marquee_section.dart';
import 'menu_prices_section.dart';
import 'products/products_section_header.dart';
import 'products/products_widget.dart';
import 'home_app_bar/home_app_bar.dart';
import 'quick_contact/quick_contact_buttons.dart';

class BodyWidget extends StatefulWidget {
  const BodyWidget({
    super.key,
    required this.controller,
    required this.heroKey,
    required this.galleryKey,
    required this.productsKey,
    required this.pricesKey,
    required this.aboutKey,
    required this.contactKey,
    required this.onProcudcts,
    required this.onAbout,
    required this.onContact,
  });

  final ScrollController controller;
  final GlobalKey heroKey;
  final GlobalKey galleryKey;
  final GlobalKey productsKey;
  final GlobalKey pricesKey;
  final GlobalKey aboutKey;
  final GlobalKey contactKey;
  final VoidCallback onProcudcts;
  final VoidCallback onAbout;
  final VoidCallback onContact;

  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  @override
  void initState() {
    super.initState();
    getIt<ProductsBloc>().add(const .getPage());
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: widget.controller,
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: .only(
          left: 12.w,
          right: 12.w,
          bottom: context.isMob ? 88.h : 0,
        ),
        child: Column(
          crossAxisAlignment: .center,
          spacing: 12.h,
          children: [
            HomeAppBar(
              onMenu: widget.onProcudcts,
              onAbout: widget.onAbout,
              onContact: widget.onContact,
            ),
            LandingHeroSection(
              key: widget.heroKey,
              onExplore: widget.onProcudcts,
            ),
            const LandingMarqueeSection(),
            const HomeStatusBadge(),
            GallerySection(key: widget.galleryKey),
            const QuickContactButtons(),
            KeyedSubtree(
              key: widget.productsKey,
              child: const ProductsSectionHeader(),
            ),
            const _ProductLayout(),
            MenuPricesSection(key: widget.pricesKey),
            AboutSection(key: widget.aboutKey),
            FooterWidget(key: widget.contactKey, onAbout: widget.onAbout),
          ],
        ),
      ),
    );
  }
}

class _ProductLayout extends StatelessWidget {
  const _ProductLayout();

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: .start,
      children: [_ProductsColumn()],
    );
  }
}

class _ProductsColumn extends StatelessWidget {
  const _ProductsColumn();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: BlocBuilder<ProductsBloc, ProductsState>(
        bloc: getIt<ProductsBloc>(),
        builder: (context, state) {
          return state.maybeMap(
            loaded: (state) {
              final products =
                  state.products?.map((e) {
                    return e.toEntity();
                  }).toList() ??
                  [];
              final productsBloc = getIt<ProductsBloc>();
              return ProductsSection(
                products: products,
                hasMore: productsBloc.hasMore && productsBloc.cursor != null,
                isLoadingMore: productsBloc.isLoadingMore,
                onLoadMore: () {
                  final cursor = productsBloc.cursor;
                  if (cursor == null) {
                    return;
                  }
                  productsBloc.add(ProductsEvent.loadMore(cursor: cursor));
                },
              );
            },
            failure: (f) {
              return Padding(
                padding: .symmetric(vertical: 40.h),
                child: Center(
                  child: Column(
                    mainAxisSize: .min,
                    children: [
                      Text(
                        'تعذر تحميل المنتجات من فايرستور',
                        style: context.textTheme.titleMedium,
                      ),
                      SizedBox(height: 12.h),
                      ElevatedButton(
                        onPressed: () {
                          getIt<ProductsBloc>().add(const .getPage());
                        },
                        child: const Text('إعادة المحاولة'),
                      ),
                    ],
                  ),
                ),
              );
            },
            orElse: () {
              return Padding(
                padding: .symmetric(vertical: 40.h),
                child: const Center(
                  child: CircularProgressIndicator(color: Color(0xFF124370)),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
