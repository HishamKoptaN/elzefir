import 'package:flutter/material.dart'
    show VerticalDivider, ElevatedButton, CircularProgressIndicator;
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/utils/extensions/theme_ext.dart';
import '../../../products/present/blocs/bloc/products_bloc.dart';
import '../../../products/data/mapper/products_mapper.dart';
import 'about/about.dart';
import 'footer/footer_widget.dart';
import 'home_app_bar/home_status_badge.dart';
import 'menu_prices_section.dart';
import 'products/products_section_header.dart';
import 'site_info/site_info_section.dart';
import 'products/products_widget.dart';
import 'home_app_bar/home_app_bar.dart';
import 'quick_contact/quick_contact_buttons.dart';

class BodyWidget extends StatefulWidget {
  const BodyWidget({
    super.key,
    required this.productsKey,
    required this.aboutKey,
    required this.contactKey,
    required this.onProcudcts,
    required this.onAbout,
    required this.onContact,
  });

  final GlobalKey productsKey;
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
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: .symmetric(horizontal: 12.w),
        child: Column(
          crossAxisAlignment: .center,
          spacing: 12.h,
          children: [
            HomeAppBar(
              onMenu: widget.onProcudcts,
              onAbout: widget.onAbout,
              onContact: widget.onContact,
            ),
            const HomeStatusBadge(),
            const QuickContactButtons(),
            const ProductsSectionHeader(),
            _ProductLayout(
              productsKey: widget.productsKey,
              onProductsLoaded: () {
                getIt<ProductsBloc>().add(const .get());
              },
            ),
            const MenuPricesSection(),
            AboutSection(key: widget.aboutKey),
            const SiteInfoSection(),
            FooterWidget(key: widget.contactKey, onAbout: widget.onAbout),
          ],
        ),
      ),
    );
  }
}

class _ProductLayout extends StatelessWidget {
  const _ProductLayout({
    required this.productsKey,
    required this.onProductsLoaded,
  });

  final GlobalKey productsKey;
  final VoidCallback onProductsLoaded;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: .start,
      children: [
        _ProductsColumn(
          productsKey: productsKey,
          onProductsLoaded: onProductsLoaded,
        ),
      ],
    );
  }
}

class _ProductsColumn extends StatelessWidget {
  const _ProductsColumn({
    required this.productsKey,
    required this.onProductsLoaded,
  });

  final GlobalKey productsKey;
  final VoidCallback onProductsLoaded;

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
              return ProductsSection(
                key: productsKey,
                products: products,
                onAssetsLoaded: onProductsLoaded,
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
                          getIt<ProductsBloc>().add(const .get());
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
