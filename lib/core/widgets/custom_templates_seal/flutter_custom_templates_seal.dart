import 'package:flutter/material.dart';
import '../../../../core/widgets/image/render_image.dart';
import 'custom_templates_seal.dart';

class FlutterCustomTemplatesSeal extends CustomTemplatesSealRenderer {
  @override
  Transform build({
    required String path,
    required double height,
    required double width,
  }) {
    return Transform.rotate(
      angle: 0.2,
      child: RenderImage.build(path: path, height: height, width: width),
    );
  }
}
