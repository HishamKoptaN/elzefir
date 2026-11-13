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
    final colorScheme = Theme.of(context).colorScheme;

    return Drawer(
      elevation: 24,
      width: MediaQuery.sizeOf(context).width *
          context.responsive(mobile: .78, tablet: .65, desktop: .3),
      backgroundColor: colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(left: Radius.circular(36.r)),
      ),
      child: SafeArea(
        child: Column(
          children: [
            DrawerHeaderWidget(pulseAnimation: _pulseAnimation),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: .symmetric(
                  horizontal: 16.w,
                  vertical: 12.h,
                ),
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
                    SizedBox(height: 16.h),
                    Divider(
                      height: 1.h,
                      color: colorScheme.outlineVariant,
                    ),
                    SizedBox(height: 16.h),
                    const DrawerQuickOrderWidget(),
                    SizedBox(height: 16.h),
                    const DrawerWorkingHoursCard(),
                    SizedBox(height: 8.h),
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
