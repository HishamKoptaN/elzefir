import 'dart:async';

import 'package:elzefir/core/networking/api_result.dart';
import 'package:elzefir/features/notifications/domain/entities/notification_entity.dart';
import 'package:elzefir/features/notifications/domain/repo/notifications_repo.dart';
import 'package:elzefir/features/notifications/domain/usecases/notifications_use_cases.dart';
import 'package:elzefir/features/notifications/present/bloc/notifications_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

class _FakeRepo implements NotificationsRepo {
  final controller = StreamController<List<NotificationEntity>>.broadcast();
  List<NotificationEntity> current = [];

  @override
  Stream<List<NotificationEntity>> watch() => controller.stream;

  @override
  Future<void> saveNotification({
    required NotificationEntity notification,
  }) async {}

  @override
  Future<ApiResult<void>> getNotifications() async =>
      const ApiResult.success(data: null);

  @override
  Future<ApiResult<void>> markAsRead({required String id}) async {
    current = current.map((n) {
      return n.id == id ? n.copyWith(read: true) : n;
    }).toList();
    controller.add(current);
    return const ApiResult.success(data: null);
  }
}

void main() {
  test('markAsRead runs while watch is subscribed and clears the badge', () async {
    final repo = _FakeRepo();
    final bloc = NotificationsBloc(NotificationsUseCases(repo));
    addTearDown(bloc.close);
    addTearDown(repo.controller.close);

    bloc.add(const NotificationsEvent.watch());
    await pumpEventQueue();

    repo.current = [const NotificationEntity(id: '1', title: 'new')];
    repo.controller.add(repo.current);
    await pumpEventQueue();
    expect(bloc.state.mapOrNull(loaded: (s) => s.unreadCount), 1);

    bloc.add(const NotificationsEvent.markAsRead(id: '1'));
    await pumpEventQueue();

    final loaded = bloc.state.mapOrNull(loaded: (s) => s);
    expect(loaded, isNotNull);
    expect(loaded!.notifications!.single.read, isTrue);
    expect(loaded.unreadCount, 0);
  });
}
