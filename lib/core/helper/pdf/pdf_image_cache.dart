import 'package:flutter/services.dart';
import 'package:pdf/widgets.dart' as pw;

class PdfImageCache {
  PdfImageCache._();
  static final Map<String, Future<pw.MemoryImage>> _cache = {};
  static Future<pw.MemoryImage> get(String path) {
    return _cache.putIfAbsent(path, () async {
      final data = await rootBundle.load(path);
      return pw.MemoryImage(data.buffer.asUint8List());
    });
  }

  static Future<void> preload(List<String> assets) async {
    await Future.wait(assets.map(get));
  }

  static void remove(String assetPath) {
    _cache.remove(assetPath);
  }

  static void clear() {
    _cache.clear();
  }

  static bool contains(String assetPath) {
    return _cache.containsKey(assetPath);
  }

  static int get count => _cache.length;
}
