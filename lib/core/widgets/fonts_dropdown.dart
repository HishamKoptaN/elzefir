import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/widgets/forms/custom_dropdown_form_field.dart';
import '../helper/fonts/pdf_font_manager.dart';

class FontsDropdown extends StatefulWidget {
  const FontsDropdown({super.key});

  @override
  State<FontsDropdown> createState() => _FontsDropdownState();
}

class _FontsDropdownState extends State<FontsDropdown> {
  late Key _dropdownKey;

  @override
  void initState() {
    super.initState();
    _dropdownKey = UniqueKey();
  }

  @override
  Widget build(BuildContext context) {
    return CustomDropdownFormField<PdfFont>(
      key: _dropdownKey,
      width: 250.w,
      hintText: 'نوع الخط',
      onChanged: (v) async {},
      initialValue: PdfFont.values.first,
      items: PdfFont.values.map((font) {
        return DropdownMenuItem<PdfFont>(
          value: font,
          child: Text(font.displayName),
        );
      }).toList(),
    );
  }
}
