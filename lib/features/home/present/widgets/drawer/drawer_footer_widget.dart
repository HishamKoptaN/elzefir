import 'package:flutter/material.dart';

import '../../../../../../core/build/app_version.dart';
import '../../../../../../core/utils/extensions/theme_ext.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerFooterWidget extends StatelessWidget {
  const DrawerFooterWidget({super.key});

  Future<void> _launch(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: context.colorScheme.slateCardBg,
        border: Border(
          top: BorderSide(color: context.colorScheme.outlineVariant, width: 1),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSocialButton(
                context: context,
                icon: FontAwesomeIcons.facebookF,
                onTap: () {
                  _launch('https://facebook.com');
                },
              ),
              const SizedBox(width: 14),
              _buildSocialButton(
                context: context,
                icon: FontAwesomeIcons.instagram,
                onTap: () {
                  _launch('https://instagram.com');
                },
              ),
              const SizedBox(width: 14),
              _buildSocialButton(
                context: context,
                icon: FontAwesomeIcons.locationDot,
                onTap: () {
                  _launch('https://maps.google.com');
                },
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            'Elzefir Seafood © 2025',
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: context.colorScheme.slateText,
            ),
          ),
          const SizedBox(height: 2),
          FutureBuilder<String>(
            future: AppVersion.display,
            builder: (context, snapshot) {
              final version = snapshot.data ?? '';
              final suffix = version.isEmpty ? '' : ' • إصدار v$version';
              return Text(
                'جميع الحقوق محفوظة$suffix',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 10,
                  color: context.colorScheme.onSurfaceVariant,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSocialButton({
    required BuildContext context,
    required FaIconData icon,
    required VoidCallback onTap,
  }) {
    return Material(
      color: context.colorScheme.surface,
      shape: const CircleBorder(),
      elevation: 1,
      shadowColor: context.colorScheme.shadow.withValues(alpha: 0.12),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: context.colorScheme.outlineVariant),
          ),
          child: Center(
            child: FaIcon(
              icon,
              size: 15,
              color: context.colorScheme.onSurfaceVariant,
            ),
          ),
        ),
      ),
    );
  }
}
