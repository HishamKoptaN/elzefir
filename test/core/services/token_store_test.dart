import 'package:elzefir/core/globals/database/shared_pref_keys.dart';
import 'package:elzefir/core/services/token_store.dart';
import 'package:elzefir/core/storage/local_storage.dart';
import 'package:flutter_test/flutter_test.dart';

class _FakeStorage implements LocalStorage {
  final Map<String, String> values = {};

  @override
  Future<void> write({required String key, required String value}) async =>
      values[key] = value;

  @override
  Future<String?> read({required String key}) async => values[key];

  @override
  Future<void> delete({required String key}) async => values.remove(key);

  @override
  Future<void> clear() async => values.clear();
}

void main() {
  setUp(() async => MemoryTokenStore.instance.clear());

  test('persisted store uses the jwt key', () async {
    final storage = _FakeStorage();
    final store = PersistedTokenStore(storage);

    await store.write('secret');
    expect(storage.values[SharedPrefKeys.jwtToken], 'secret');
    expect(await store.read(), 'secret');

    await store.clear();
    expect(storage.values, isEmpty);
  });

  test('memory store is shared but never persisted', () async {
    final store = MemoryTokenStore.instance;
    await store.write('web-secret');

    expect(await store.read(), 'web-secret');
    expect(await MemoryTokenStore.instance.read(), 'web-secret');

    await store.clear();
    expect(await MemoryTokenStore.instance.read(), isNull);
  });

  test('native platforms keep the persisted store', () async {
    final store = createTokenStore(_FakeStorage());

    expect(store, isA<PersistedTokenStore>());
  });
}
