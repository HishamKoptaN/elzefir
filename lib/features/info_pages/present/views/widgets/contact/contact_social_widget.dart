import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../core/utils/extensions/theme_ext.dart';
import '../../../content/contact_content.dart';

class ContactSocialWidget extends StatelessWidget {
  const ContactSocialWidget({super.key});

  void _launch(String url) {
    launchUrl(Uri.parse(url), mode: .externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12.w,
      runSpacing: 12.h,
      children: [
        _SocialButton(
          icon: Icons.facebook_rounded,
          label: 'فيسبوك',
          onPressed: () {
            _launch(ContactContent.facebookUrl);
          },
        ),
        _SocialButton(
          icon: Icons.chat_rounded,
          label: 'واتساب',
          onPressed: () {
            _launch(ContactContent.whatsappUrl);
          },
        ),
        _SocialButton(
          icon: Icons.camera_alt_rounded,
          label: 'إنستغرام',
          onPressed: () {
            _launch(ContactContent.instagramUrl);
          },
        ),
        _SocialButton(
          icon: Icons.map_rounded,
          label: 'موقعنا على الخريطة',
          onPressed: () {
            _launch(ContactContent.mapsUrl);
          },
        ),
      ],
    );
  }
}

class _SocialButton extends StatelessWidget {
  const _SocialButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        foregroundColor: context.colorScheme.primary,
        side: BorderSide(color: context.colorScheme.outlineVariant),
        padding: .symmetric(horizontal: 16.w, vertical: 12.h),
      ),
      onPressed: onPressed,
      icon: Icon(icon, size: 20.r),
      label: Text(
        label,
        style: context.textTheme.labelLarge?.copyWith(fontWeight: .w600),
      ),
    );
  }
}
