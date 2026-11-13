import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/responsive/responsive_extensions.dart';
import 'drawer_footer_widget.dart';
import 'drawer_header_widget.dart';
import 'drawer_nav_items_widget.dart';
import 'drawer_quick_order_widget.dart';
import 'drawer_working_hours_card.dart';

class ElzefirDrawer extends StatefulWidget {
  const ElzefirDrawer({
    super.key,
    this.onMenuTap,
    this.onOffersTap,
    this.onCookingTap,
    this.onAboutTap,
    this.onBranchesTap,
  });

  final VoidCallback? onMenuTap;
  final VoidCallback? onOffersTap;
  final VoidCallback? onCookingTap;
  final VoidCallback? onAboutTap;
  final VoidCallback? onBranchesTap;

  @override
  State<ElzefirDrawer> createState() {
    return _ElzefirDrawerState();
  }
}

class _ElzefirDrawerState extends State<ElzefirDrawer>
    with SingleTickerProviderStateMixin {
  late final AnimationController _pulseController;
  late final Animation<double> _pulseAnimation;

  @override
  void initState() {
    super.initState();
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400),
    )..repeat(reverse: true);

    _pulseAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _pulseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final drawerWidth = context.responsive(
      mobile: (screenWidth * 0.85).clamp(300.0, 380.0),
      tablet: 380.0,
      desktop: 400.0,
    );

    return Drawer(
      elevation: 24,
      width: drawerWidth,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(36),
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            DrawerHeaderWidget(pulseAnimation: _pulseAnimation),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    DrawerNavItemsWidget(
                      onMenuTap: widget.onMenuTap,
                      onOffersTap: widget.onOffersTap,
                      onCookingTap: widget.onCookingTap,
                      onAboutTap: widget.onAboutTap,
                      onBranchesTap: widget.onBranchesTap,
                    ),
                    const SizedBox(height: 16),
                    Divider(height: 1, color: Colors.grey.shade200),
                    const SizedBox(height: 16),
                    const DrawerQuickOrderWidget(),
                    const SizedBox(height: 16),
                    const DrawerWorkingHoursCard(),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ),
            const DrawerFooterWidget(),
          ],
        ),
      ),
    );
  }
}
