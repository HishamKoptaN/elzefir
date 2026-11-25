import 'dart:convert';

import '../../../home/domain/entities/restaurant_info_entity.dart';
import '../models/info_section.dart';

/// يقرأ أقسام الصفحة من الحقل الذي حرّره المشرف في `settings/general`.
/// أي قيمة غائبة أو تالفة تُعرض معها النسخة الافتراضية بدل تعطيل الصفحة.
List<InfoSection> readInfoSections(
  RestaurantInfoEntity info,
  String key,
  List<InfoSection> fallback,
) {
  final raw = info.raw[key];
  if (raw is! String || raw.trim().isEmpty) return fallback;
  try {
    final decoded = jsonDecode(raw);
    if (decoded is! List || decoded.isEmpty) return fallback;
    final sections = <InfoSection>[];
    for (final item in decoded) {
      if (item is Map<String, dynamic>) {
        sections.add(InfoSection.fromSiteJson(item));
      }
    }
    return sections.isEmpty ? fallback : sections;
  } catch (_) {
    return fallback;
  }
}

/// أقسام وميزات صفحة «من نحن» كما حرّرها المشرف، مع قيم غائبة تعني استخدام
/// الثوابت الأصلية في الواجهة.
class AboutSiteContent {
  const AboutSiteContent({
    this.sectionsById = const {},
    this.features,
    this.featuresTitle,
    this.ctaTitle,
    this.ctaSubtitle,
    this.ctaPhone,
  });

  final Map<String, InfoSection> sectionsById;
  final List<InfoFeature>? features;
  final String? featuresTitle;
  final String? ctaTitle;
  final String? ctaSubtitle;
  final String? ctaPhone;

  static AboutSiteContent read(RestaurantInfoEntity info) {
    final sections = <String, InfoSection>{};
    for (final item in _decodeList(info.raw['about_sections_json'])) {
      if (item is Map<String, dynamic>) {
        final id = item['id']?.toString();
        if (id != null && id.isNotEmpty) {
          sections[id] = InfoSection.fromSiteJson(item);
        }
      }
    }
    final features = <InfoFeature>[];
    for (final item in _decodeList(info.raw['about_features_json'])) {
      if (item is Map<String, dynamic>) {
        features.add(InfoFeature.fromSiteJson(item));
      }
    }
    String? optional(String key) {
      final value = info.text(key, '');
      return value.isEmpty ? null : value;
    }

    return AboutSiteContent(
      sectionsById: sections,
      features: features.isEmpty ? null : features,
      featuresTitle: optional('about_features_title'),
      ctaTitle: optional('about_cta_title'),
      ctaSubtitle: optional('about_cta_subtitle'),
      ctaPhone: optional('about_cta_phone'),
    );
  }

  static List<Object?> _decodeList(Object? raw) {
    if (raw is! String || raw.trim().isEmpty) return const [];
    try {
      final decoded = jsonDecode(raw);
      return decoded is List ? decoded : const [];
    } catch (_) {
      return const [];
    }
  }
}
