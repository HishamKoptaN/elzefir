import 'package:flutter/material.dart';
import 'contacts_items.dart';
import 'footer_widget.dart';

class FooterDeskLayout extends StatelessWidget implements FooterWidget {
  const FooterDeskLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: .start,
      mainAxisAlignment: .spaceBetween,
      children: [
        FooterDesktopAboutSection(),
        Expanded(flex: 2, child: const FooterContactsItems()),
        Expanded(
          flex: 2,
          child: WorkTimeWidget(
          ),
        ),
      ],
    );
  }
}
