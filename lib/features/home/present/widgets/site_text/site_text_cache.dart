import 'dart:convert';

import '../../../../../core/globals/database/shared_pref_helper.dart';

/// ذاكرة محلية خفيفة لنصوص `settings/general`، تُستخدم قبل أول قراءة من
/// فايرستور وعند تعذّر الوصول إليه، فتظل الواجهة سليمة بدون اتصال.
class SiteTextCache {
  SiteTextCache._();

  static const _prefsKey = 'site_text_cache';
  static final Map<String, String> _values = <String, String>{};
  static bool _loaded = false;

  static Map<String, dynamic> get snapshot =>
      Map<String, dynamic>.unmodifiable(_values);

  static Future<void> load() async {
    if (_loaded) {
      return;
    }
    _loaded = true;
    try {
      final stored = await SharedPrefHelper.getString(key: _prefsKey);
      if (stored == null) {
        return;
      }
      final decoded = jsonDecode(stored);
      if (decoded is Map<String, dynamic>) {
        for (final entry in decoded.entries) {
          if (entry.value is String) {
            _values[entry.key] = entry.value as String;
          }
        }
      }
    } catch (_) {
      // قيمة تالفة أو تخزين غير متاح؛ نكتفي بالقيم الافتراضية.
    }
  }

  static Future<void> save(Map<String, dynamic> raw) async {
    for (final entry in raw.entries) {
      final value = entry.value;
      if (value is String && value.trim().isNotEmpty) {
        _values[entry.key] = value.trim();
      }
    }
    if (_values.isEmpty) {
      return;
    }
    await SharedPrefHelper.setData(key: _prefsKey, value: jsonEncode(_values));
  }

  static String cachedValue(String key, String fallback) =>
      _values[key] ?? fallback;

  static Future<void> clear() async {
    _values.clear();
    _loaded = false;
    await SharedPrefHelper.removeData(key: _prefsKey);
  }
}
