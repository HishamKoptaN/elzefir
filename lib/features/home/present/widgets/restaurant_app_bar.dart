import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/extensions/responsive_icon_extension .dart';

class RestaurantAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RestaurantAppBar({super.key, this.count = 0});
  static const Color primary = Color(0xFF0F3A75);
  final int count;
  @override
  Widget build(BuildContext context) {
    final GlobalKey _iconKey = GlobalKey();
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      toolbarHeight: 72,
      titleSpacing: 16,
      title: Row(
        spacing: 14.w,
        children: [
          BadgeTheme(
            data: BadgeThemeData(
              smallSize: 2,
              largeSize: 2,
              backgroundColor: Colors.red,
              textColor: Colors.white,
            ),
            child: Badge(
              isLabelVisible: (count) > 0,
              label: Text('$count', style: TextStyle(fontSize: 16.sp)),
              backgroundColor: Colors.red,
              largeSize: 2,
              child: IconButton(
                key: _iconKey,
                icon: Icon(
                  (count) > 0
                      ? Icons.shopping_cart_outlined
                      : Icons.shopping_cart_outlined,

                  size: 22.iconRes,
                ),
                onPressed: () {
                  // final RenderBox renderBox =
                  //     _iconKey.currentContext!.findRenderObject() as RenderBox;
                  // final Offset position = renderBox.localToGlobal(Offset.zero);
                  // showNotificationOverlay(
                  //   context: context,
                  //   iconPosition: position,
                  // );
                },
              ),
            ),
          ),
          BlocBuilder<NotificationsBloc, NotificationsState>(
            bloc: getIt<NotificationsBloc>(),
            builder: (context, state) {
              return state.maybeMap(
                loaded: (state) {
                  final GlobalKey _iconKey = GlobalKey();
                  return Skeletonizer(
                    enabled: false,
                    effect: ShimmerEffect(
                      baseColor: Colors.grey.shade300,
                      highlightColor: Colors.grey.shade100,
                      duration: const Duration(seconds: 1),
                    ),
                    child: BadgeTheme(
                      data: BadgeThemeData(
                        smallSize: 2,
                        largeSize: 2,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                      ),
                      child: Badge(
                        isLabelVisible: (state.unreadCount ?? 0) > 0,
                        label: Text(
                          '${state.unreadCount}',
                          style: TextStyle(fontSize: 16.sp),
                        ),
                        backgroundColor: Colors.red,
                        largeSize: 2,
                        child: IconButton(
                          key: _iconKey,
                          icon: Icon(
                            (state.unreadCount ?? 0) > 0
                                ? Icons.notifications_active
                                : Icons.notifications,
                            size: dh.DeviceHelper.icon(
                              context,
                              mobile: 16,
                              tablet: 22,
                              desktop: 22,
                            ),
                          ),
                          onPressed: () {
                            final RenderBox renderBox =
                                _iconKey.currentContext!.findRenderObject()
                                    as RenderBox;
                            final Offset position = renderBox.localToGlobal(
                              Offset.zero,
                            );
                            showNotificationOverlay(
                              context: context,
                              iconPosition: position,
                            );
                          },
                        ),
                      ),
                    ),
                  );
                },
                initial: (state) {
                  return const SizedBox.shrink();
                },
                orElse: () {
                  return const SizedBox.shrink();
                },
              );
            },
          ),
          FilledButton(
            onPressed: () {},
            child: Text(
              'تسجيل الدخول',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22.sp,
                height: 16 / 12,
                letterSpacing: 0.6,
                textBaseline: .alphabetic,
                // overflow: .ellipsis,
              ),
            ),
          ),
          // Container(
          //   width: 48,
          //   height: 48,
          //   decoration: BoxDecoration(
          //     // color: Colors.white.withOpacity(.12),
          //     borderRadius: BorderRadius.circular(12),
          //   ),
          //   child: const Icon(
          //     Icons.set_meal_rounded,
          //     // color: Colors.white,
          //     size: 26,
          //   ),
          // ),
          // const Expanded(
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Row(
          //         children: [
          //           Icon(Icons.circle, size: 8, color: Colors.greenAccent),
          //           SizedBox(width: 6),
          //           Text(
          //             'مفتوح الآن',
          //             style: TextStyle(color: Colors.white70, fontSize: 12),
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
      actions: [
        // CustomImage(image: 'assets/logos/logo.jpg', width: 40),
        // Gap(10.w),
        // Padding(
        //   padding: EdgeInsets.only(left: 12.w),
        //   child: Text(
        //     'مطعم الزفر',
        //     style: TextStyle(
        //       fontSize: 20,
        //       fontWeight: FontWeight.bold,
        //       color: context.colorScheme.primary,
        //     ),
        //   ),
        // ),
        // Stack(
        //     clipBehavior: Clip.none,
        //     children: [
        //       IconButton(
        //         onPressed: () {},
        //         icon: const Icon(Icons.shopping_cart_outlined),
        //       ),
        //       Positioned(
        //         top: 6,
        //         right: 6,
        //         child: Container(
        //           width: 18,
        //           height: 18,
        //           decoration: const BoxDecoration(
        //             color: Colors.red,
        //             shape: BoxShape.circle,
        //           ),
        //           alignment: Alignment.center,
        //           child: const Text(
        //             '2',
        //             style: TextStyle(
        //               color: Colors.white,
        //               fontSize: 10,
        //               fontWeight: FontWeight.bold,
        //             ),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(72);
}
