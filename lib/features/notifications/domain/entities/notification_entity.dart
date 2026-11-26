import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/data/entities/meta_entity.dart';
part 'notification_entity.freezed.dart';

enum NotificationType {
  info('info'),
  navigation('navigation'),
  actionable('actionable'),
  newUserRegistered('new_user_registered'),
  newOrder('new_order'),
  orderUpdated('order_updated');

  const NotificationType(this.name);
  final String name;
  factory NotificationType.fromString({required String type}) {
    return NotificationType.values.firstWhere(
      (element) {
        return element.name == type;
      },
      orElse: () {
        return NotificationType.info;
      },
    );
  }
}

@freezed
abstract class NotificationsResEntity with _$NotificationsResEntity {
  const factory NotificationsResEntity({
    @Default([]) List<NotificationEntity> notifications,
    MetaEntity? meta,
  }) = _NotificationsResEntity;
}

@freezed
abstract class NotificationEntity with _$NotificationEntity {
  const factory NotificationEntity({
    required String id,
    @Default('') String title,
    @Default('') String body,
    @Default(<String, dynamic>{}) Map<String, dynamic> data,
    @Default('') String targetUrl,
    @Default('') String createdAt,
    @Default('') String imageUrl,
    @Default(false) bool read,
    @Default(NotificationType.info) NotificationType type,
  }) = _NotificationEntity;
}
