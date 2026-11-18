import 'package:elzefir/core/responsive/responsive_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/routing/utils/navigation_service.dart';
import '../../../../../core/utils/extensions/device_type_extension.dart';
import '../../../../../core/utils/extensions/responsive_icon_extension .dart';
import '../../../../../core/utils/extensions/theme_ext.dart';
import '../../../../info_pages/present/views/about_view.dart';
import '../../../../info_pages/present/views/contact_view.dart';
import '../../../../info_pages/present/views/privacy_view.dart';
import '../../../../info_pages/present/views/terms_view.dart';
import '../../home.dart';
import '../restaurant_info_builder.dart';
import '../store_status_builder.dart';
import 'footer_desk_layout.dart';
import 'footer_mobile_layout.dart';

Future<void> execuateLaunchUrl(String urlString) async {
  try {
    final Uri url = urlString.startsWith('/')
        ? Uri.base.resolve(urlString)
        : Uri.parse(urlString);

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: .externalApplication);
    } else {
      await launchUrl(url, mode: .platformDefault);
    }
  } catch (e) {
    debugPrint('Error launching $urlString: $e');
  }
}

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF001629),
      padding: .symmetric(
        vertical: context.isMob ? 24.h : 34.h,
        horizontal: context.isMob ? 16.w : 40.w,
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          context.isDesk ? FooterDeskLayout() : FooterMobileLayout(),
          CustomFooterDividerWidget(),
          const Center(child: FooterLegalLinks()),
          SizedBox(height: 16.h),
          CopyRightWidget(),
        ],
      ),
    );
  }
}

class FooterLegalLinks extends StatelessWidget {
  const FooterLegalLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: .center,
      spacing: 20.w,
      runSpacing: 10.h,
      children: [
        _buildFooterLink(context, 'الرئيسية', HomeView.routeName, isHome: true),
        _buildFooterLink(context, 'من نحن', AboutView.routeName),
        _buildFooterLink(context, 'اتصل بنا', ContactView.routeName),
        _buildFooterLink(context, 'سياسة الخصوصية', PrivacyView.routeName),
        _buildFooterLink(context, 'الشروط والأحكام', TermsView.routeName),
      ],
    );
  }

  Widget _buildFooterLink(
    BuildContext context,
    String title,
    String routeName, {
    bool isHome = false,
  }) {
    return InkWell(
      onTap: () {
        if (isHome) {
          NavigationService.goNamed(context: context, routeName: routeName);
        } else {
          NavigationService.pushNamed(context: context, routeName: routeName);
        }
      },
      child: Text(
        title,
        style: context.textTheme.bodyMedium?.copyWith(
          color: const Color(0xFFFACC15),
          decoration: .underline,
          decorationColor: const Color(0xFFFACC15).withValues(alpha: 0.5),
        ),
      ),
    );
  }
}

class WorkTimeWidget extends StatelessWidget {
  const WorkTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreStatusBuilder(
      builder: (context, workingHours) {
        final workTimeText = workingHours == null
            ? 'من السبت الى الخميس : من 9:00 صباحا الى 11:00 مساء'
            : '${workingHours.formattedDays} : ${workingHours.formattedTime}';
        final isOpen = workingHours?.isOpenNow;
        final statusText = switch (isOpen) {
          true => 'مفتوح الآن',
          false => 'مغلق الآن',
          null => 'جارٍ التحقق من الحالة',
        };
        final statusDotColor = switch (isOpen) {
          true => const Color(0xFF22C55E),
          false => const Color(0xFFEF4444),
          null => const Color(0xFF94A3B8),
        };
        final statusTextColor = switch (isOpen) {
          true => const Color(0xFF86EFAC),
          false => const Color(0xFFFCA5A5),
          null => const Color(0xFFCBD5E1),
        };

        return Wrap(
          runSpacing: 12.h,
          children: [
            CustomFooterTitleWidget(title: 'ساعات العمل'),
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.05),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white10),
              ),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    workTimeText,
                    style: context.textTheme.bodyLarge?.copyWith(
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    padding: .symmetric(horizontal: 10.w, vertical: 5.h),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.05),
                      borderRadius: BorderRadius.circular(999),
                      border: .all(color: Colors.white10),
                    ),
                    child: Row(
                      mainAxisSize: .min,
                      spacing: 6.w,
                      children: [
                        Container(
                          height: 8.r,
                          width: 8.r,
                          decoration: BoxDecoration(
                            shape: .circle,
                            color: statusDotColor,
                          ),
                        ),
                        Text(
                          statusText,
                          style: context.textTheme.labelMedium?.copyWith(
                            color: statusTextColor,
                            fontWeight: .w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomFooterDividerWidget(),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

Widget buildSocialIcon({
  required BuildContext context,
  required Widget icon,
  required VoidCallback onTap,
}) {
  return InkWell(
    onTap: onTap,
    borderRadius: .circular(50.r),
    child: CircleAvatar(
      radius: context.responsive(mobile: 20.r, tablet: 32.5.r, desktop: 27.5.r),
      backgroundColor: Colors.white.withValues(alpha: .08),
      child: icon,
    ),
  );
}

class FooterDesktopAboutSection extends StatelessWidget {
  const FooterDesktopAboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment: .start,
        children: [
          FooterTitleWidget(),
          SizedBox(height: 16.h),
          FooterDescriptionWidget(),
          SizedBox(height: 20.h),
          RestaurantHighlights(),
        ],
      ),
    );
  }
}

class FooterTitleWidget extends StatelessWidget {
  const FooterTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: .all(8.sp),
          decoration: BoxDecoration(
            color: const Color(0xFFFACC15).withValues(alpha: 0.15),
            shape: .circle,
          ),
          child: Icon(
            Icons.set_meal,
            color: const Color(0xFFFACC15),
            size: 24.iconRes,
          ),
        ),
        SizedBox(width: 12.w),
        RestaurantInfoBuilder(
          builder: (context, info) {
            return CustomFooterTitleWidget(title: info.name);
          },
        ),
      ],
    );
  }
}

class CustomFooterTitleWidget extends StatelessWidget {
  const CustomFooterTitleWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: context.textTheme.titleLarge?.copyWith(color: Colors.white),
    );
  }
}

Widget buildContactItem({
  required BuildContext context,
  required Widget icon,
  required String text,
  required VoidCallback onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Row(
      mainAxisSize: .min,
      spacing: 20.w,
      children: [
        CircleAvatar(
          radius: context.responsive(
            mobile: 20.r,
            tablet: 32.5.r,
            desktop: 27.5.r,
          ),
          backgroundColor: Colors.white.withValues(alpha: .08),
          child: icon,
        ),
        Expanded(
          child: Text(
            text,
            overflow: .visible,
            style: context.textTheme.labelLarge?.copyWith(
              color: Colors.white70,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildBadge({required BuildContext context, required String text}) {
  return Container(
    padding: .symmetric(horizontal: 10.w, vertical: 5.h),
    decoration: BoxDecoration(
      color: Colors.white.withValues(alpha: 0.06),
      borderRadius: BorderRadius.circular(20.r),
      border: .all(color: Colors.white10),
    ),
    child: Text(
      text,
      style: context.textTheme.labelLarge?.copyWith(color: Colors.white70),
    ),
  );
}

class RestaurantHighlights extends StatelessWidget {
  const RestaurantHighlights({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6,
      runSpacing: 6,
      crossAxisAlignment: .start,
      children: [buildBadge(context: context, text: 'طازج يومياً 🐟')],
    );
  }
}

class CustomFooterDividerWidget extends StatelessWidget {
  const CustomFooterDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .symmetric(vertical: 14.h),
      child: Divider(color: Colors.white12),
    );
  }
}

class FooterDescriptionWidget extends StatelessWidget {
  const FooterDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'نقدم أشهى المأكولات البحرية الطازجة منذ أكثر من 20 عامًا بجودة عالية وأسعار تناسب الجميع.',
      style: context.textTheme.bodyLarge?.copyWith(color: Colors.white70),
    );
  }
}

class CopyRightWidget extends StatelessWidget {
  const CopyRightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RestaurantInfoBuilder(
        builder: (context, info) {
          return Text(
            "© ${DateTime.now().year} ${info.name}. جميع الحقوق محفوظة.",
            textAlign: TextAlign.center,
            style: context.textTheme.bodyLarge?.copyWith(color: Colors.white70),
          );
        },
      ),
    );
  }
}
