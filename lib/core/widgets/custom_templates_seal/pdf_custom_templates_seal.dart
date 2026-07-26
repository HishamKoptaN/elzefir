import '../../../../core/widgets/image/render_image.dart';
import 'custom_templates_seal.dart';
import 'package:pdf/widgets.dart' as pw;

class PdfCustomTemplatesSeal extends CustomTemplatesSealRenderer {
  @override
  Future<pw.Transform> build({
    required String path,
    required double height,
    required double width,
  }) async {
    final imageWidget = await RenderImage.build(
      path: path,
      height: height,
      width: width,
    );
    return pw.Transform.rotate(angle: -0.2, child: imageWidget);
  }
}
