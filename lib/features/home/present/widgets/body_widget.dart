import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/di/dependency_injection.dart';
import '../bloc/home_bloc.dart';
import 'about/about.dart';
import 'categories_nav.dart';
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
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: .symmetric(horizontal: 12.w),
        child: BlocBuilder<HomeBloc, HomeState>(
          bloc: getIt<HomeBloc>(),
          builder: (context, state) {
            return state.maybeMap(
              loaded: (state) {
                return Column(
                  crossAxisAlignment: .center,
                  spacing: 24.h,
                  children: [
                    RestaurantAppBar(
                      onMenu: widget.onProcudcts,
                      onAbout: widget.onAbout,
                      onContact: widget.onContact,
                    ),
                    OfferWidget(),
                    CategoriesNav(
                      categories: state.homeRes?.categories ?? [],
                      selectedCategoryId: state.selectedCategoryId,
                      onChanged: (categoryId) {
                        getIt<HomeBloc>().add(
                          HomeEvent.selectCategoryId(id: categoryId),
                        );
                      },
                    ),
                    ProductsSection(
                      key: widget.productsKey,
                      products: state.homeRes?.products ?? [],
                    ),
                    AboutSection(key: widget.aboutKey),
                    FooterWidget(key: widget.contactKey),
                  ],
                );
              },
              orElse: () {
                return SizedBox();
              },
            );
          },
        ),
      ),
    );
  }
}
