import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/di/dependency_injection.dart';
import '../bloc/home_bloc.dart';
import 'about/about.dart';
import 'additions/additions_widget.dart';
import 'categories_nav.dart';
import 'offer_widget.dart';
import 'products/products_widget.dart';
import 'restaurant_app_bar.dart';

class BodyWidget extends StatefulWidget {
  const BodyWidget({super.key});
  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  int selectedCategoryIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: BlocBuilder<HomeBloc, HomeState>(
          bloc: getIt<HomeBloc>(),
          builder: (context, state) {
            return state.maybeMap(
              loaded: (state) {
                return Column(
                  spacing: 24.h,
                  crossAxisAlignment: .center,
                  children: [
                    RestaurantAppBar(count: 3),
                    OfferWidget(),
                    CategoriesNav(
                      categories: state.homeRes?.categories ?? [],
                      selectedIndex: 1,
                      onChanged: (v) {},
                    ),
                    ProductsSection(products: state.homeRes?.products ?? []),
                    AdditionsSection(additions: state.homeRes?.additions ?? []),
                    AboutSection(),
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
