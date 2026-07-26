import 'custom_templates_seal_typoghrovy.dart';
import 'flutter_custom_templates_seal.dart';
import 'pdf_custom_templates_seal.dart';

class CustomTemplatesSeal {
  CustomTemplatesSeal._();
  static dynamic build() {
    return PdfCustomTemplatesSeal().build(
      path: TemplatesSealDimensions.logoPath,
      height: TemplatesSealDimensions.height,
      width: TemplatesSealDimensions.width,
    );
  }
}

abstract class CustomTemplatesSealRenderer<T> {
  T build({
    required String path,
    required double height,
    required double width,
  });
}
