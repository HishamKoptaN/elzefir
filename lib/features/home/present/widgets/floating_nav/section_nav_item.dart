import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SectionNavItem {
  const SectionNavItem({
    required this.label,
    required this.icon,
    required this.key,
  });

  final String label;
  final FaIconData icon;
  final GlobalKey key;
}
