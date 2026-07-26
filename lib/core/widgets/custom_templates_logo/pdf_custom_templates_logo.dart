import '../../../../core/widgets/image/render_image.dart';
import 'custom_templates_logo.dart';
import 'package:pdf/widgets.dart' as pw;

class PdfCustomTemplatesLogo extends CustomTemplatesLogoRenderer {
  @override
  Future<pw.Widget> build({
    required String path,
    required double height,
    required double width,
  }) async {
    return RenderImage.build(path: path, height: height, width: width);
  }
}
