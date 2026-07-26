import 'flutter_render_image.dart';
import 'pdf_render_image.dart';

class RenderImage {
  RenderImage._();
  static dynamic build({
    required String path,
    required double height,
    required double width,
  }) {
    return FlutterRenderImage().build(path: path, height: height, width: width);
  }
}
