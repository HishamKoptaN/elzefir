import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/utils/extensions/theme_ext.dart';
import '../../../products/present/blocs/bloc/products_bloc.dart';
import '../../../products/data/mapper/products_mapper.dart';
import 'about/about.dart';
import 'footer/footer_widget.dart';
import 'offer_widget.dart';
import 'products/products_widget.dart';
import 'home_app_bar/home_app_bar.dart';

class BodyWidget extends StatefulWidget {
  const BodyWidget({
    super.key,
    required this.productsKey,
    required this.aboutKey,
    required this.contactKey,
    required this.offerWidget,
    required this.onProcudcts,
    required this.onAbout,
    required this.onContact,
  });
  final GlobalKey productsKey;
  final GlobalKey aboutKey;
  final GlobalKey contactKey;
  final GlobalKey offerWidget;
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
    getIt<ProductsBloc>().add(const .get());
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: .symmetric(horizontal: 12.w),
        child: Column(
          crossAxisAlignment: .center,
          spacing: 24.h,
          children: [
            RestaurantAppBar(
              onMenu: widget.onProcudcts,
              onAbout: widget.onAbout,
              onContact: widget.onContact,
            ),
            const OfferWidget(),
            BlocBuilder<ProductsBloc, ProductsState>(
              bloc: getIt<ProductsBloc>(),
              builder: (context, state) {
                return state.maybeMap(
                  loaded: (state) {
                    final products =
                        state.products?.map((e) => e.toEntity()).toList() ?? [];
                    return ProductsSection(
                      key: widget.productsKey,
                      products: products,
                    );
                  },
                  failure: (f) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 40.h),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'تعذر تحميل المنتجات من فايرستور',
                              style: context.textTheme.titleMedium,
                            ),
                            SizedBox(height: 12.h),
                            ElevatedButton(
                              onPressed: () {
                                getIt<ProductsBloc>().add(
                                  const ProductsEvent.get(),
                                );
                              },
                              child: const Text('إعادة المحاولة'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  orElse: () => Padding(
                    padding: EdgeInsets.symmetric(vertical: 40.h),
                    child: Center(
                      child: CircularProgressIndicator(
                        color: context.colorScheme.primary,
                      ),
                    ),
                  ),
                );
              },
            ),
            AboutSection(key: widget.aboutKey),
            FooterWidget(key: widget.contactKey),
          ],
        ),
      ),
    );
  }
}
