import '../local_storage.dart';

/// لا يُستخدم فعليًا؛ StorageModule يعيد `SecureStorage` على غير الويب.
/// موجود فقط حتى يبقى استيراد `WebStorage` صالحًا في اختبارات الـ VM.
class WebStorage implements LocalStorage {
  @override
  Future<void> write({required String key, required String value}) async {
    throw UnsupportedError('WebStorage is only available on the web');
  }

  @override
  Future<String?> read({required String key}) async {
    throw UnsupportedError('WebStorage is only available on the web');
  }

  @override
  Future<void> delete({required String key}) async {
    throw UnsupportedError('WebStorage is only available on the web');
  }

  @override
  Future<void> clear() async {
    throw UnsupportedError('WebStorage is only available on the web');
  }
}
