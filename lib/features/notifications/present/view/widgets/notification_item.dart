import 'package:flutter/material.dart';
import '../../../domain/entities/notification_entity.dart';
import 'types/NewUserRegistered.dart';

abstract class NotificationTileBuilder {
  Widget build({NotificationEntity notification});
}

class NotificationItem extends StatelessWidget {
  final NotificationEntity notification;
  final VoidCallback? onTap;
  const NotificationItem({super.key, required this.notification, this.onTap});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    switch (notification.type) {
      case NotificationType.newUserRegistered:
        return NewUserRegistered(
          notification: notification,
          colorScheme: colorScheme,
          textTheme: textTheme,
          onTap: onTap,
        );
      default:
        return NewUserRegistered(
          notification: notification,
          colorScheme: colorScheme,
          textTheme: textTheme,
          onTap: onTap,
        );
    }
  }
}
