import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/utils/extensions/device_type_extension.dart';
import '../../../core/utils/extensions/theme_ext.dart';
import 'widgets/body_widget.dart';
import 'widgets/drawer/drawer.dart';
import 'widgets/floating_nav/floating_section_nav.dart';
import 'widgets/floating_nav/section_nav_item.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const String routeName = "home";
  @override
  State<HomeView> createState() {
    return _HomeViewState();
  }
}

class _HomeViewState extends State<HomeView> {
  final scrollController = ScrollController();
  final heroKey = GlobalKey();
  final galleryKey = GlobalKey();
  final productsKey = GlobalKey();
  final pricesKey = GlobalKey();
  final aboutKey = GlobalKey();
  final contactKey = GlobalKey();

  Future<void> scrollToSection(GlobalKey key) async {
    if (key == heroKey && scrollController.hasClients) {
      await scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
      return;
    }
    final targetContext = key.currentContext;
    if (targetContext == null) return;
    await Scrollable.ensureVisible(
      targetContext,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      alignment: 0.08,
    );
  }

  List<SectionNavItem> get _navItems {
    return [
      .new(label: 'الرئيسية', icon: FontAwesomeIcons.house, key: heroKey),
      .new(label: 'المعرض', icon: FontAwesomeIcons.images, key: galleryKey),
      .new(label: 'القائمة', icon: FontAwesomeIcons.utensils, key: productsKey),
      .new(label: 'الأسعار', icon: FontAwesomeIcons.tag, key: pricesKey),
      .new(label: 'من نحن', icon: FontAwesomeIcons.bookOpen, key: aboutKey),
      .new(label: 'تواصل', icon: FontAwesomeIcons.phone, key: contactKey),
    ];
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.surface,
      drawer: !context.isDesk ? ElzefirDrawer() : null,
      body: Stack(
        children: [
          BodyWidget(
            controller: scrollController,
            heroKey: heroKey,
            galleryKey: galleryKey,
            productsKey: productsKey,
            pricesKey: pricesKey,
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
          FloatingSectionNav(
            items: _navItems,
            controller: scrollController,
            onSelected: (index) {
              scrollToSection(_navItems[index].key);
            },
          ),
        ],
      ),
    );
  }
}
