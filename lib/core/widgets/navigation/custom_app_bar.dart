import 'package:flutter/material.dart';
import '../../utils/extensions/theme_ext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.colorScheme.surface,
      title: Text(
        title,
        style: TextStyle(fontSize: 36.sp, fontWeight: FontWeight.bold),
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_forward),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: true,
      actions: [],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
