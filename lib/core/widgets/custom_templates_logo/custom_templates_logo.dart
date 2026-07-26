import 'custom_templates_logo_typoghrovy.dart';
import 'pdf_custom_templates_logo.dart';

class CustomTemplatesLogo {
  CustomTemplatesLogo._();
  static dynamic build({double? height, double? width}) {
    return PdfCustomTemplatesLogo().build(
      path: TemplatesLogoDimensions.logoPath,
      height: height ?? TemplatesLogoDimensions.height,
      width: width ?? TemplatesLogoDimensions.width,
    );
  }
}

abstract class CustomTemplatesLogoRenderer<T> {
  T build({
    required String path,
    required double height,
    required double width,
  });
}
