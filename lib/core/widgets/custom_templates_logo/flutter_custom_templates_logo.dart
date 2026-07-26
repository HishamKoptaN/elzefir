import '../../../../core/widgets/image/render_image.dart';
import 'custom_templates_logo.dart';

class FlutterCustomTemplatesLogo extends CustomTemplatesLogoRenderer {
  @override
  Object build({
    required String path,
    required double height,
    required double width,
  }) {
    return RenderImage.build(path: path, height: height, width: width);
  }
}
