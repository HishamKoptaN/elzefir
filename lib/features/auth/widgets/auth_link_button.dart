import 'package:flutter/material.dart';
import '../../../../core/theme/app_text_styles.dart';

class AuthLinkButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const AuthLinkButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: AppTextStyles.authLinkText,
      ),
    );
  }
}
