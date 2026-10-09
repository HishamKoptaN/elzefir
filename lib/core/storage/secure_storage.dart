import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'local_storage.dart';

// @Singleton(as: LocalStorage)
class SecureStorage implements LocalStorage {
  final FlutterSecureStorage storage;

  SecureStorage(this.storage);

  @override
  Future<void> write({required String key, required String value}) {
    return storage.write(key: key, value: value);
  }

  @override
  Future<String?> read({required String key}) {
    return storage.read(key: key);
  }

  @override
  Future<void> delete({required String key}) {
    return storage.delete(key: key);
  }

  @override
  Future<void> clear() {
    return storage.deleteAll();
  }
}
