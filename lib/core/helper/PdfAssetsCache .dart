import 'package:pdf/widgets.dart' as pw;
import 'package:flutter/services.dart';

class PdfAssetsCache {
  static final Map<String, pw.MemoryImage> images = {};

  static Future<void> initialize() async {
    await Future.wait([
      image('assets/images/dedication_bg.png'),
      // image('assets/images/invoice_bg.png'),
      // image('assets/images/certificate_bg.png'),
    ]);
  }

  static Future<pw.MemoryImage> image(String path) async {
    if (images.containsKey(path)) {
      return images[path]!;
    }

    final bytes = await rootBundle.load(path);

    final memoryImage = pw.MemoryImage(bytes.buffer.asUint8List());

    images[path] = memoryImage;

    return memoryImage;
  }
}
