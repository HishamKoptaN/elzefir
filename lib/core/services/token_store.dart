import 'package:flutter/foundation.dart';

import '../globals/database/shared_pref_keys.dart';
import '../storage/local_storage.dart';

abstract interface class TokenStore {
  Future<String?> read();
  Future<void> write(String token);
  Future<void> clear();
}

/// توكن الويب يعيش في ذاكرة التطبيق فقط، ولا يُكتب إلى localStorage.
class MemoryTokenStore implements TokenStore {
  MemoryTokenStore._();

  static final MemoryTokenStore instance = MemoryTokenStore._();
  static String? _token;

  @override
  Future<String?> read() async => _token;

  @override
  Future<void> write(String token) async => _token = token;

  @override
  Future<void> clear() async => _token = null;
}

class PersistedTokenStore implements TokenStore {
  const PersistedTokenStore(this._storage);

  final LocalStorage _storage;

  @override
  Future<String?> read() async =>
      _storage.read(key: SharedPrefKeys.jwtToken);

  @override
  Future<void> write(String token) async =>
      _storage.write(key: SharedPrefKeys.jwtToken, value: token);

  @override
  Future<void> clear() async =>
      _storage.delete(key: SharedPrefKeys.jwtToken);
}

TokenStore createTokenStore(LocalStorage storage) {
  return kIsWeb ? MemoryTokenStore.instance : PersistedTokenStore(storage);
}
