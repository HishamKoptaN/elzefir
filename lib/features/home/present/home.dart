import 'package:alzefr/core/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../core/di/dependency_injection.dart';
import '../../../core/utils/device_helper.dart';
import '../../../core/utils/extensions/device_type_extension.dart';
import '../../../core/widgets/app_navigation.dart';
import '../../notifications/present/bloc/notifications_bloc.dart';
import 'bloc/home_bloc.dart';
import 'widgets/body_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  
  static const String routeName = "home";
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final offerWidget = GlobalKey();
  final categoriesKey = GlobalKey();
  final productsKey = GlobalKey();
  final additionsKey = GlobalKey();
  final aboutKey = GlobalKey();
  final contactKey = GlobalKey();
  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context == null) return;
    Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  void initState() {
    super.initState();
    getIt<HomeBloc>().add(HomeEvent.get());
    getIt<NotificationsBloc>().add(NotificationsEvent.watch());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // showAppBar: false,
      backgroundColor: const Color(0xFFFFFFFF),
      drawer: !context.isDesk
          ? Drawer(
              elevation: 10,
              width:
                  MediaQuery.sizeOf(context).width *
                  AppResponsive.responsive(
                    context,
                    mobile: 0.5,
                    tablet: 1 / 3,
                    desktop: 0.25,
                  ),
              child: Column(
                mainAxisAlignment: .start,
                crossAxisAlignment: .start,
                spacing: 12.h,
                children: [
                  Gap(10.h),
                  ...AppNavigation.items(
                    onMenu: () {
                      scrollToSection(productsKey);
                    },
                    onAbout: () {
                      scrollToSection(aboutKey);
                    },
                    onContact: () {
                      scrollToSection(contactKey);
                    },
                  ),
                ],
              ),
            )
          : null,
      body: BodyWidget(
        productsKey: productsKey,
        aboutKey: aboutKey,
        contactKey: contactKey,
        offerWidget: offerWidget,
        onProcudcts: () {
          scrollToSection(productsKey);
        },
        onAbout: () {
          scrollToSection(aboutKey);
        },
        onContact: () {
          scrollToSection(contactKey);
        },
      ),
    );
  }
}
