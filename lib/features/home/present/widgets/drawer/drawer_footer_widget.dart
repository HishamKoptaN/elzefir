import 'package:flutter/material.dart';
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
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 14,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF8FAFC),
        border: Border(
          top: BorderSide(
            color: Colors.grey.shade200,
            width: 1,
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSocialButton(
                icon: FontAwesomeIcons.facebookF,
                onTap: () {
                  _launch('https://facebook.com');
                },
              ),
              const SizedBox(width: 14),
              _buildSocialButton(
                icon: FontAwesomeIcons.instagram,
                onTap: () {
                  _launch('https://instagram.com');
                },
              ),
              const SizedBox(width: 14),
              _buildSocialButton(
                icon: FontAwesomeIcons.locationDot,
                onTap: () {
                  _launch('https://maps.google.com');
                },
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'Elzefir Seafood © 2025',
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: Color(0xFF64748B),
            ),
          ),
          const SizedBox(height: 2),
          const Text(
            'جميع الحقوق محفوظة • إصدار v1.1.0',
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 10,
              color: Color(0xFF94A3B8),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialButton({
    required FaIconData icon,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.white,
      shape: const CircleBorder(),
      elevation: 1,
      shadowColor: Colors.black12,
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.grey.shade300,
            ),
          ),
          child: Center(
            child: FaIcon(
              icon,
              size: 15,
              color: const Color(0xFF475569),
            ),
          ),
        ),
      ),
    );
  }
}
