import 'package:flutter/services.dart';
import 'package:pdf/widgets.dart' as pw;

class PdfAssetsManager {
  PdfAssetsManager._();
  static bool _initialized = false;
  static String? _globeRawSvg;
  static String? _phoneRawSvg;
  static Future<void> init() async {
    if (_initialized) return;
    _globeRawSvg = await rootBundle.loadString(
      'assets/icons/streamline-plump_web.svg',
    );
    _phoneRawSvg = await rootBundle.loadString(
      'assets/icons/ic_baseline-whatsapp.svg',
    );
    _initialized = true;
  }

  static pw.Widget getGlobeIcon({required String colorHex, double size = 24}) {
    _ensureInit();
    return _buildSvgWidget(rawSvg: _globeRawSvg!, colorHex: colorHex);
  }

  static pw.Widget getPhoneIcon({required String colorHex, double size = 24}) {
    _ensureInit();
    return _buildSvgWidget(rawSvg: _phoneRawSvg!, colorHex: colorHex);
  }

  static pw.Widget _buildSvgWidget({
    required String rawSvg,
    required String colorHex,
    double? height,
    double? width,
  }) {
    String coloredSvg = rawSvg
        .replaceAll('#000000', colorHex)
        .replaceAll('currentColor', colorHex);
    return pw.SvgImage(svg: coloredSvg, height: height, width: width);
  }

  static void _ensureInit() {
    if (!_initialized) {
      throw Exception('PdfAssetsManager.init() must be called first');
    }
  }
}
