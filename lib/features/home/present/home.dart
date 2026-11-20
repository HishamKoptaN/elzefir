import 'package:flutter/material.dart';

import '../../../core/utils/extensions/device_type_extension.dart';
import '../../../core/utils/extensions/theme_ext.dart';
import 'widgets/body_widget.dart';
import 'widgets/drawer/drawer.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const String routeName = "home";
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.surface,
      drawer: !context.isDesk ? ElzefirDrawer() : null,
      body: BodyWidget(
        productsKey: productsKey,
        aboutKey: aboutKey,
        contactKey: contactKey,
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
