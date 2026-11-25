import 'package:dart_pusher_channels/dart_pusher_channels.dart';
import 'package:elzefir/core/services/auth_storage_service.dart';
import 'package:elzefir/core/services/pusher_service.dart';
import 'package:elzefir/core/storage/local_storage.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter_test/flutter_test.dart';

class _FakeStorage implements LocalStorage {
  @override
  Future<void> write({required String key, required String value}) async {}

  @override
  Future<String?> read({required String key}) async => null;

  @override
  Future<void> delete({required String key}) async {}

  @override
  Future<void> clear() async {}
}

void main() {
  PusherService buildService() {
    return PusherService(AuthStorageService(_FakeStorage()), EventBus());
  }

  test('does not connect when the key is empty', () async {
    final service = buildService();
    addTearDown(service.dispose);

    await service.init(
      options: PusherChannelsOptions.fromCluster(
        scheme: 'wss',
        cluster: 'eu',
        key: '',
        port: 443,
      ),
    );
  });

  test('subscribing before init is a no-op', () async {
    final service = buildService();
    addTearDown(service.dispose);

    await service.subscribeUser(userId: '1');
  });
}
