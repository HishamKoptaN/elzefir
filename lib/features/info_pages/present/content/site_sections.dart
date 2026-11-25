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
