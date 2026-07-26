import 'package:pdf/widgets.dart' as pw;
import '../../helper/pdf/pdf_image_cache.dart';
import 'render_image_component.dart';

class PdfRenderImage extends RenderImageComponent<Future<pw.Widget>> {
  @override
  Future<pw.Widget> build({
    required String path,
    required double height,
    required double width,
  }) async {
    try {
      return pw.Image(
        await PdfImageCache.get(path),
        height: height,
        width: width,
      );
    } catch (e) {
      return pw.SizedBox(width: width, height: height);
    }
  }
}
