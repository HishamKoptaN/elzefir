import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/utils/extensions/device_type_extension.dart';
import '../../domain/entities/restaurant_info_entity.dart';
import '../../../products/present/blocs/bloc/products_bloc.dart';
import 'about/about.dart';
import 'footer/footer_widget.dart';
import 'gallery/gallery_section.dart';
import 'home_app_bar/home_app_bar.dart';
import 'home_app_bar/home_status_badge.dart';
import 'landing/landing_hero_section.dart';
import 'landing/landing_marquee_section.dart';
import 'menu_prices_section.dart';
import 'orders/orders_teaser_section.dart';
import 'products/products_auto_loader.dart';
import 'products/products_list_section.dart';
import 'products/products_section_header.dart';
import 'quick_contact/quick_contact_buttons.dart';
import 'restaurant_info_builder.dart';

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
  final _productsListKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    getIt<ProductsBloc>().add(const .getPage());
  }

  @override
  Widget build(BuildContext context) {
    return RestaurantInfoBuilder(
      builder: (context, info) {
        return ProductsAutoLoader(
      listKey: _productsListKey,
      child: SingleChildScrollView(
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
              const HomeStatusBadge(),
              ..._sections(info),
            ],
          ),
        ),
      ),
    );
      },
    );
  }

  /// الأقسام السبعة القابلة لإعادة الترتيب من الداشبورد. أي معرّف غير معروف
  /// يُتجاهل، وما لم يُذكر يبقى في نهاية الصفحة بترتيبه الافتراضي.
  List<Widget> _sections(RestaurantInfoEntity info) {
    final blocks = <String, Widget>{
      'hero': Column(
        spacing: 12.h,
        children: [
          LandingHeroSection(
            key: widget.heroKey,
            onExplore: widget.onProcudcts,
          ),
          const LandingMarqueeSection(),
        ],
      ),
      'gallery': Column(
        spacing: 12.h,
        children: [
          GallerySection(key: widget.galleryKey),
          const QuickContactButtons(),
        ],
      ),
      'products': KeyedSubtree(
        key: widget.productsKey,
        child: Column(
          spacing: 12.h,
          children: [
            const ProductsSectionHeader(),
            _ProductLayout(key: _productsListKey),
          ],
        ),
      ),
      'prices': MenuPricesSection(key: widget.pricesKey),
      'orders': const OrdersTeaserSection(),
      'about': AboutSection(key: widget.aboutKey),
      'contact': FooterWidget(key: widget.contactKey, onAbout: widget.onAbout),
    };

    final ordered = <Widget>[];
    final raw = info.raw['section_order_json'];
    if (raw is String && raw.trim().isNotEmpty) {
      for (final id in raw.split(RegExp(r'[,\n]'))) {
        final block = blocks.remove(id.trim());
        if (block != null) ordered.add(block);
      }
    }
    ordered.addAll(blocks.values);
    return ordered;
  }
}

class _ProductLayout extends StatelessWidget {
  const _ProductLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(crossAxisAlignment: .start, children: [ProductsColumn()]);
  }
}
