import 'dart:html' as html;
import 'package:injectable/injectable.dart';
import 'local_storage.dart';

// @Singleton(as: LocalStorage)
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
