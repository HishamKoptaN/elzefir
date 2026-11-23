// ignore: avoid_web_libraries_in_flutter, deprecated_member_use
import 'dart:html' as html;

import '../local_storage.dart';

/// تخزين المتصفح؛ يُستدعى فقط عندما يكون التطبيق يعمل على الويب.
class WebStorage implements LocalStorage {
  @override
  Future<void> write({required String key, required String value}) async {
    html.window.localStorage[key] = value;
  }

  @override
  Future<String?> read({required String key}) async {
    return html.window.localStorage[key];
  }

  @override
  Future<void> delete({required String key}) async {
    html.window.localStorage.remove(key);
  }

  @override
  Future<void> clear() async {
    html.window.localStorage.clear();
  }
}
