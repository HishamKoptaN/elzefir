import 'package:flutter/services.dart';
import 'package:pdf/widgets.dart' as pw;

enum PdfFont {
  notoNaskhArabic('نوتو ناسخ اربي', 'NotoNaskhArabic');

  const PdfFont(this.displayName, this.family);
  final String displayName;
  final String family;
}

enum PdfFontWeightType { light, regular, medium, bold, extraBold, black }

class PdfFontManager {
  PdfFontManager._();
  static final Map<String, pw.Font> _cache = {};
  static bool _initialized = false;
  static Future<void> init() async {
    if (_initialized) return;
    await _loadFonts();
    _initialized = true;
  }

  static Future<void> _loadFonts() async {
    final fonts = <String, String>{
      _key(PdfFont.notoNaskhArabic, PdfFontWeightType.bold):
          'assets/fonts/noto_naskh_arabic/NotoNaskhArabic-Bold.ttf',
      _key(PdfFont.notoNaskhArabic, PdfFontWeightType.regular):
          'assets/fonts/noto_naskh_arabic/NotoNaskhArabic-Regular.ttf',
      _key(PdfFont.notoNaskhArabic, PdfFontWeightType.medium):
          'assets/fonts/noto_naskh_arabic/NotoNaskhArabic-Medium.ttf',
    };
    for (final item in fonts.entries) {
      final data = await rootBundle.load(item.value);
      _cache[item.key] = pw.Font.ttf(data);
    }
  }

  static String _key(PdfFont family, PdfFontWeightType weight) {
    return '${family.name}_${weight.name}';
  }

  static pw.Font getFont({
    required PdfFont family,
    PdfFontWeightType weight = PdfFontWeightType.regular,
  }) {
    if (!_initialized) {
      throw Exception('PdfFontManager.init() not called');
    }

    final key = _key(family, weight);
    final font = _cache[key];

    if (font == null) {
      throw Exception(
        'Font not found for family: ${family.name} '
        'weight: ${weight.name}',
      );
    }

    return font;
  }

  static pw.Font get bold {
    return getFont(
      family: PdfFont.notoNaskhArabic,
      weight: PdfFontWeightType.bold,
    );
  }

  static pw.Font get regular {
    return getFont(
      family: PdfFont.notoNaskhArabic,
      weight: PdfFontWeightType.regular,
    );
  }
}
