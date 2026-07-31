import 'package:alzefr/core/responsive/responsive_extensions.dart';
import 'package:alzefr/core/utils/extensions/theme_ext.dart';
import 'package:alzefr/core/widgets/custom_image.dart';
import 'package:alzefr/generated/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/di/dependency_injection.dart';
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
              elevation: 12,
              backgroundColor: Colors.white,
              width:
                  MediaQuery.sizeOf(context).width *
                  context.responsive(mobile: .78, tablet: .45, desktop: .3),
              child: SafeArea(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.w,
                        vertical: 24.h,
                      ),
                      decoration: const BoxDecoration(color: Color(0xFFFFF8F3)),
                      child: AspectRatio(
                        aspectRatio: 2.5,
                        child: CustomImage(
                          image: Assets.logos.circleLogo.path,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Divider(height: 1, color: Colors.grey.shade200),
                    ),
                    SizedBox(height: 16.h),
                    Expanded(
                      child: SingleChildScrollView(
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        child: Column(
                          spacing: 8.h,
                          children: AppNavigation.items(
                            onMenu: () {
                              Navigator.pop(context);
                              scrollToSection(productsKey);
                            },
                            onAbout: () {
                              Navigator.pop(context);
                              scrollToSection(aboutKey);
                            },
                            onContact: () {
                              Navigator.pop(context);
                              scrollToSection(contactKey);
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 16.h,
                      ),
                      child: Text(
                        "© Alzefr",
                        style: context.textTheme.bodySmall?.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
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
